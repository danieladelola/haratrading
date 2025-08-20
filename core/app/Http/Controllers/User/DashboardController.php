<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Crypto;

class DashboardController extends Controller
{
    public function index()
    {
        $user = auth()->user();

        // Get all supported cryptos
        $cryptos = Crypto::all();

        // Attach user balance to each crypto
        foreach ($cryptos as $crypto) {
        $balances = $user->wallets->pluck('balance', 'currency');
where('currency', $crypto->symbol)->first();

        }
        // Pass to view
        return view('templates.basic.user.dashboard', compact('cryptos', 'balances'));
    }
}
?>
