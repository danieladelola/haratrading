<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CryptoTransaction;
use App\Models\UserWallet;
use App\Models\Currency;
use Illuminate\Support\Facades\Auth;

class CryptoTransactionController extends Controller
{
    /**
     * Handle buying cryptocurrency
     */
    public function buy(Request $request)
    {
        $request->validate([
            'currency' => 'required|string|max:10',
            'crypto_amount' => 'required|numeric|min:0.00000001',
            'fiat_amount' => 'required|numeric|min:0.01',
        ]);

        $user = Auth::user();
        $currency = Currency::where('symbol', $request->currency)->firstOrFail();

        // 1. Verify user has enough balance (example with USD balance)
        $usdWallet = UserWallet::firstOrCreate(
            ['user_id' => $user->id, 'currency' => 'USD'],
            ['balance' => 0]
        );

        if ($usdWallet->balance < $request->fiat_amount) {
            return back()->withErrors(['error' => 'Insufficient USD balance']);
        }

        // 2. Create transaction record
        $transaction = CryptoTransaction::create([
            'user_id' => $user->id,
            'type' => 'buy',
            'currency' => $request->currency,
            'amount' => $request->crypto_amount,
            'rate' => $request->fiat_amount / $request->crypto_amount,
            'total' => $request->fiat_amount,
            'status' => 'completed',
        ]);

        // 3. Update wallets
        $usdWallet->decrement('balance', $request->fiat_amount);

        $cryptoWallet = UserWallet::firstOrCreate(
            ['user_id' => $user->id, 'currency' => $request->currency],
            ['balance' => 0]
        );
        $cryptoWallet->increment('balance', $request->crypto_amount);

        return redirect()->back()->with('success', 'Successfully purchased '.$request->crypto_amount.' '.$request->currency);
    }

    /**
     * Handle fiat to crypto conversion (deposit)
     */
    public function store(Request $request)
    {
        $request->validate([
            'currency' => 'required|string|max:10',
            'fiat_amount' => 'required|numeric|min:0.01',
            'crypto_amount' => 'required|numeric|min:0.00000001',
        ]);

        $user = Auth::user();
        $currency = Currency::where('symbol', $request->currency)->firstOrFail();

        // Create transaction record
        $transaction = CryptoTransaction::create([
            'user_id' => $user->id,
            'type' => 'deposit',
            'currency' => $request->currency,
            'amount' => $request->crypto_amount,
            'rate' => $request->fiat_amount / $request->crypto_amount,
            'total' => $request->fiat_amount,
            'status' => 'completed',
        ]);

        // Update crypto wallet
        $cryptoWallet = UserWallet::firstOrCreate(
            ['user_id' => $user->id, 'currency' => $request->currency],
            ['balance' => 0]
        );
        $cryptoWallet->increment('balance', $request->crypto_amount);

        return redirect()->back()->with('success', 'Successfully deposited '.$request->crypto_amount.' '.$request->currency);
    }

    /**
     * Get current price for a cryptocurrency (API endpoint)
     */
    public function getPrice(Request $request)
    {
        $request->validate([
            'currency' => 'required|string|max:10',
            'amount' => 'required|numeric|min:0.00000001',
            'direction' => 'required|in:buy,sell'
        ]);

        $currency = Currency::where('symbol', $request->currency)->firstOrFail();

        // In a real app, you would fetch from an exchange API
        $mockPrice = $this->getMockPrice($currency->symbol);

        if ($request->direction === 'buy') {
            $total = $request->amount * $mockPrice;
            return response()->json([
                'fiat_amount' => number_format($total, 2),
                'rate' => number_format($mockPrice, 2)
            ]);
        } else {
            $total = $request->amount / $mockPrice;
            return response()->json([
                'crypto_amount' => number_format($total, 8),
                'rate' => number_format($mockPrice, 2)
            ]);
        }
    }

    /**
     * Mock price data - replace with real API call
     */
    private function getMockPrice($symbol)
    {
        $prices = [
            'BTC' => 50000,
            'ETH' => 3000,
            'USDT' => 1,
            'BNB' => 400,
            'XRP' => 0.5,
            'SOL' => 100,
            'ADA' => 0.4,
            'DOGE' => 0.1,
        ];

        return $prices[$symbol] ?? 1;
    }
}


/**
 * Handle selling cryptocurrency
 */
public function sell(Request $request)
{
    $request->validate([
        'currency' => 'required|string|max:10',
        'crypto_amount' => 'required|numeric|min:0.00000001',
        'fiat_amount' => 'required|numeric|min:0.01',
    ]);

    $user = Auth::user();
    $currency = Currency::where('symbol', $request->currency)->firstOrFail();

    // 1. Verify user has enough crypto balance
    $cryptoWallet = UserWallet::firstOrCreate(
        ['user_id' => $user->id, 'currency' => $request->currency],
        ['balance' => 0]
    );

    if ($cryptoWallet->balance < $request->crypto_amount) {
        return back()->withErrors(['error' => 'Insufficient '.$request->currency.' balance']);
    }

    // 2. Create transaction record
    $transaction = CryptoTransaction::create([
        'user_id' => $user->id,
        'type' => 'sell',
        'currency' => $request->currency,
        'amount' => $request->crypto_amount,
        'rate' => $request->fiat_amount / $request->crypto_amount,
        'total' => $request->fiat_amount,
        'status' => 'completed',
    ]);

    // 3. Update wallets
    $cryptoWallet->decrement('balance', $request->crypto_amount);

    $usdWallet = UserWallet::firstOrCreate(
        ['user_id' => $user->id, 'currency' => 'USD'],
        ['balance' => 0]
    );
    $usdWallet->increment('balance', $request->fiat_amount);

    return redirect()->back()->with('success', 'Successfully sold '.$request->crypto_amount.' '.$request->currency);
}
