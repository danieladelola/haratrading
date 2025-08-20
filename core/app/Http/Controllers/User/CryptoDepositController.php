<?php

namespace App\Http\Controllers\User;

use App\Constants\Status;
use App\Models\Gateway;
use App\Models\UserWallet;
use App\Models\User;
use App\Http\Controllers\Controller;
use App\Models\CryptoDeposit;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Http;
use Illuminate\Http\Request;

class CryptoDepositController extends Controller
{
    public function cryptoDeposit()
    {
        $pageTitle = 'Crypto Deposit';
        $user = auth()->user();
        $gateways = Gateway::where('status', Status::ENABLE)->get();
        $cryptoDeposits = CryptoDeposit::where('user_id', auth()->id())
            ->orderBy('created_at', 'desc')
            ->get();

        return view('Template::user.crypto_deposit', compact('pageTitle', 'gateways', 'cryptoDeposits'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'fiat_amount' => 'required_if:type,fiat_to_crypto',
            'crypto_amount' => 'required_if:type,crypto_to_fiat',
            'amount' => 'required_if:type,crypto',
            'currency' => 'required',
        ]);

        $user = auth()->user();
        $conversionType = $request->input('type');

        if (!$conversionType) {
            $notify[] = ['error', 'Invalid conversion type!'];
            return back()->withNotify($notify);
        }

        if ($conversionType === 'fiat_to_crypto') {
            if ($user->balance < $request->fiat_amount) {
                $notify[] = ['error', 'Insufficient fiat balance!'];
                return back()->withNotify($notify);
            }

            $user->balance -= $request->fiat_amount;
            $user->save();

            $deposit = new CryptoDeposit();
            $deposit->amount = $request->crypto_amount;
            $deposit->currency = $request->currency;
            $deposit->user_id = $user->id;
            $deposit->proof = "Conversion";
            $deposit->reference = strtoupper(Str::random(12));
            $deposit->type = 'fiat_to_crypto';
            $deposit->status = '2'; // Pending
            $deposit->usd_equivalent = $this->calculateUsdEquivalent($request->currency, $request->crypto_amount);
            $deposit->save();

            $notify[] = ['success', 'Successfully converted fiat to crypto!'];
            return back()->withNotify($notify);
        } elseif ($conversionType === 'crypto_to_fiat') {
            $currency = strtoupper($request->currency);
            $wallet = UserWallet::where('user_id', auth()->id())
                               ->where('currency', $currency)
                               ->first();

            if (!$wallet || $wallet->balance < $request->crypto_amount) {
                $notify[] = ['error', 'Insufficient crypto balance!'];
                return back()->withNotify($notify);
            }

            $wallet->balance -= $request->crypto_amount;
            $wallet->save();

            $fiatAmount = (float)$request->fiat_amount;
            $user->balance += $fiatAmount;
            $user->save();

            $notify[] = ['success', 'Successfully converted crypto to fiat!'];
            return back()->withNotify($notify);
        }
        elseif ($conversionType === 'crypto') {
            $amount = (float) $request->amount; // Crypto amount (e.g., 20 BTC)
            $currency = $request->currency;

            // Map to CoinGecko IDs
            $ids = [
                'BTC' => 'bitcoin',
                'ETH' => 'ethereum',
                'USDT' => 'tether',
                'USDC' => 'usd-coin',
                'SOL' => 'solana',
                'TRX' => 'tron'
            ];
            $id = $ids[$currency] ?? strtolower($currency);

            // Fetch USD price from CoinGecko
            $usd = 0;
            try {
                $response = \Illuminate\Support\Facades\Http::get("https://api.coingecko.com/api/v3/simple/price", [
                    'ids' => $id,
                    'vs_currencies' => 'usd'
                ]);
                $json = $response->json();
                $usd = isset($json[$id]['usd']) ? (float) $json[$id]['usd'] : 0;
            } catch (\Exception $e) {
                $usd = 0;
            }

            $usd_equivalent = ($usd && $amount) ? $amount * $usd : 0;

            $deposit = new \App\Models\CryptoDeposit();
            $deposit->user_id = auth()->id();
            $deposit->currency = $currency;
            $deposit->network = $request->network;
            $deposit->amount = $amount; // Save as crypto
            $deposit->usd_equivalent = $usd_equivalent; // Save as USD
            $deposit->reference = strtoupper(\Illuminate\Support\Str::random(10));
            $deposit->proof = $request->proof;
            $deposit->status = 2; // Pending
            $deposit->type = 'crypto';
            $deposit->save();

            $notify[] = ['success', 'Crypto deposit submitted and pending approval!'];
            return back()->withNotify($notify);
        }

        $notify[] = ['error', 'Invalid conversion type!'];
        return back()->withNotify($notify);
    }

    public function updateUsdValue(Request $request)
    {
        $request->validate([
            'deposit_id' => 'required|exists:crypto_deposits,id,user_id,'.auth()->id(),
            'usd_equivalent' => 'required|numeric|min:0'
        ]);

        try {
            $deposit = CryptoDeposit::where('user_id', auth()->id())
                                  ->findOrFail($request->deposit_id);

            $deposit->usd_equivalent = $request->usd_equivalent;
            $deposit->save();

            Log::info('USD Value Updated', [
                'deposit_id' => $deposit->id,
                'user_id' => auth()->id(),
                'usd_value' => $deposit->usd_equivalent
            ]);

            return response()->json([
                'success' => true,
                'usd_value' => number_format($deposit->usd_equivalent, 2)
            ]);

        } catch (\Exception $e) {
            Log::error('USD Update Failed', [
                'error' => $e->getMessage(),
                'request' => $request->all()
            ]);

            return response()->json([
                'success' => false,
                'message' => 'Failed to update USD value'
            ], 500);
        }
    }

    private function updateUserWallet($userId, $currency, $amount)
    {
        $wallet = UserWallet::firstOrNew(['user_id' => $userId, 'currency' => $currency]);
        $wallet->balance = ($wallet->balance ?? 0) + $amount;
        $wallet->save();
    }

    private function calculateUsdEquivalent($currency, $amount)
    {
        $ids = [
            'BTC' => 'bitcoin',
            'ETH' => 'ethereum',
            'USDT' => 'tether',
            'USDC' => 'usd-coin',
            'SOL' => 'solana',
            'TRX' => 'tron'
        ];
        $id = $ids[$currency] ?? strtolower($currency);

        try {
            $response = Http::retry(3, 100)->get("https://api.coingecko.com/api/v3/simple/price", [
                'ids' => $id,
                'vs_currencies' => 'usd'
            ]);

            $data = $response->json();
            $rate = $data[$id]['usd'] ?? 0;

            return $amount * $rate;
        } catch (\Exception $e) {
            Log::error('CoinGecko API Error', [
                'error' => $e->getMessage(),
                'currency' => $currency
            ]);

            // Fallback rates if API fails
            $fallbackRates = [
                'BTC' => 30000,
                'ETH' => 2000,
                'USDT' => 1,
                'USDC' => 1,
                'SOL' => 50,
                'TRX' => 0.1
            ];

            return $amount * ($fallbackRates[$currency] ?? 0);
        }
    }
}
