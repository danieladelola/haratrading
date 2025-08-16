@extends($activeTemplate . 'layouts.master2')

@section('content')
<main class="p-2 sm:px-2 flex-1 overflow-auto bg-gray-900 text-gray-100">
    <div class="grid grid-cols-1 ld:grid-cols-2 gap-12">
        <div class="p-4 rounded-lg shadow-lg bg-gray-800 border border-gray-700">
            <div class="container mx-auto p-4">
                <div class="mt-8">
                    <table class="min-w-full bg-gray-800 text-gray-100 rounded-lg overflow-hidden">
                        <thead class="bg-gray-700">
                            <tr>
                                <th class="py-3 px-4 text-left font-medium">ID</th>
                                <th class="py-3 px-4 text-left font-medium">Currency</th>
                                <th class="py-3 px-4 text-left font-medium">Balance</th>
                            </tr>
                        </thead>
                        <tbody class="divide-y divide-gray-700">
                            @foreach($wallets as $wallet)
                                @php
                                    $symbollowcase = strtolower($wallet->currency);
                                    $price = file_get_contents('https://min-api.cryptocompare.com/data/price?fsym=' . strtoupper($wallet->currency) . '&tsyms=USD');
                                    $priceData = json_decode($price, true);
                                    $price = $priceData['USD'] ?? 0;
                                    $usdBalance = $wallet->balance * $price;
                                @endphp
                                <tr class="hover:bg-gray-700 transition-colors duration-200">
                                    <td class="py-3 px-4">{{ $wallet->id }}</td>
                                    <td class="py-3 px-4 flex items-center">
                                        <img src="https://raw.githubusercontent.com/spothq/cryptocurrency-icons/refs/heads/master/svg/color/{{ $symbollowcase }}.svg"
                                             alt="{{ $wallet->currency }}"
                                             class="h-6 w-6 mr-2">
                                        <span class="font-medium">{{ $wallet->currency }}</span>
                                    </td>
                                    <td class="py-3 px-4">
                                        <div class="flex flex-col">
                                            <span class="font-medium">{{ number_format($wallet->balance, 4) }} {{ $wallet->currency }}</span>
                                            <span class="text-blue-400">${{ number_format($usdBalance, 2) }}</span>
                                            @if ($price == 0)
                                                <span class="text-xs text-red-400 mt-1">(Price unavailable)</span>
                                            @endif
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</main>
@endsection
