@extends($activeTemplate . 'layouts.master2')

@section('content')
<main class="p-4 sm:px-6 flex-1 overflow-auto bg-gray-900">
    <div class="grid grid-cols-1 lg:grid-cols-42 gap-6">
        <!-- Deposits Section -->
        <div class="p-6 bg-gray-800 rounded-xl shadow-lg border border-gray-700">
            <div class="flex flex-col sm:flex-row justify-between items-start sm:items-center mb-6 gap-4">
                <h1 class="text-2xl font-bold text-white">Deposits</h1>
                <button onclick="openModal()" class="bg-gradient-to-r from-blue-600 to-indigo-600 hover:from-blue-700 hover:to-indigo-700 px-5 py-2.5 rounded-lg text-white font-medium shadow-md transition-all">
                    Deposit now
                </button>
            </div>

            <!-- Responsive Table -->
            <div class="w-full overflow-x-auto rounded-lg border border-gray-700">
                <table class="min-w-full text-sm text-left text-gray-300">
                    <thead class="bg-gray-700 text-gray-300 font-medium">
                        <tr>
                            <th class="px-4 py-3">Date</th>
                            <th class="px-4 py-3">Reference</th>
                            <th class="px-4 py-3">Method</th>
                            <th class="px-4 py-3">Network</th>
                            <th class="px-4 py-3">Amount</th>
                            <th class="px-4 py-3">In (USD)</th>
                            <th class="px-4 py-3">Status</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-gray-700">
                        @forelse($cryptoDeposits as $deposit)
                            <tr class="hover:bg-gray-700 transition">
                                <td class="px-4 py-3 text-white">{{ $deposit->created_at->format('Y-m-d H:i') }}</td>
                                <td class="px-4 py-3 text-white">{{ $deposit->reference }}</td>
                                <td class="px-4 py-3 text-white">{{ $deposit->currency }}</td>
                                <td class="px-4 py-3 text-white">{{ $deposit->network ?? 'N/A' }}</td>
                                <td>
                                    <span class="fw-bold">{{ $deposit->amount }} {{ $deposit->currency }}</span>
                                    <br>
                                    <span class="badge bg-info text-dark mt-1">≈ ${{ number_format($deposit->usd_equivalent, 2) }}</span>
                                </td>
                                <td class="px-4 py-3 text-white" id="usd-amount-{{ $deposit->id }}"></td>
                                <td class="px-4 py-3 text-white">
                                    <span class="px-3 py-1 rounded-full text-xs font-medium
                                        @if($deposit->status == 1) bg-green-900 text-green-300
                                        @elseif($deposit->status == 2) bg-amber-900 text-amber-300
                                        @elseif($deposit->status == 3) bg-red-900 text-red-300
                                        @else bg-gray-700 text-gray-300
                                        @endif">
                                        @if($deposit->status == 0) Initiated
                                        @elseif($deposit->status == 1) Completed
                                        @elseif($deposit->status == 2) Pending
                                        @elseif($deposit->status == 3) Rejected
                                        @else Pending
                                        @endif
                                    </span>
                                </td>
                            </tr>
                            <script>
                                fetch(`https://min-api.cryptocompare.com/data/price?fsym={{ $deposit->currency }}&tsyms=USD&api_key=6994a7265d2d0ad7b35a3de4ff877b7c54d8e922f7c7c05141a4583ed300fcfd`)
                                    .then(response => response.json())
                                    .then(data => {
                                        const usdAmount = ({{ $deposit->amount }} * data.USD).toFixed(2);
                                        document.getElementById('usd-amount-{{ $deposit->id }}').textContent = `$${usdAmount}`;
                                    })
                                    .catch(error => console.error('Error fetching USD conversion:', error));
                            </script>
                        @empty
                            <tr>
                                <td colspan="7" class="text-center py-6 text-gray-400">
                                    You have not made any deposits yet.
                                    <button onclick="openModal()" class="text-blue-400 hover:text-blue-300 hover:underline ml-1 font-medium">
                                        Click here to make a deposit.
                                    </button>
                                </td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Deposit Modal -->
    <div id="depositModal" class="hidden fixed inset-0 bg-gray-900 bg-opacity-75 flex items-center justify-center z-50 p-4">
        <div class="bg-gray-800 rounded-xl shadow-xl w-full max-w-md p-6 border border-gray-700">
            <div class="flex justify-between items-center mb-4">
                <h2 class="text-xl font-bold text-white">Deposit Crypto</h2>
                <button id="closeModalButton" class="text-gray-400 hover:text-white">
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"/>
                    </svg>
                </button>
            </div>

            <p class="text-gray-400 text-sm mb-6">
                Select cryptocurrency and network to get deposit address
            </p>

            <form action="{{ route('user.crypto.deposit.store') }}" method="POST" enctype="multipart/form-data" id="depositForm">
                @csrf
                <input type="hidden" name="type" value="crypto">

                <div class="space-y-4">
                    <!-- Cryptocurrency Selection -->
                    <div>
                        <label class="block text-sm font-medium text-gray-300 mb-1">Cryptocurrency:</label>
                        <select name="currency" id="cryptoCurrency" class="w-full bg-gray-700 border border-gray-600 rounded-lg px-4 py-2.5 text-white focus:ring-blue-500 focus:border-blue-500" required>
                            <option value="" selected disabled>Select cryptocurrency</option>
                            <option value="BTC">Bitcoin (BTC)</option>
                            <option value="ETH">Ethereum (ETH)</option>
                            <option value="USDT">Tether (USDT)</option>
                            <option value="USDC">USD Coin (USDC)</option>
                            <option value="SOL">Solana (SOL)</option>
                            <option value="TRX">Tron (TRX)</option>
                        </select>
                    </div>

                    <!-- Network Selection (will be populated dynamically) -->
                    <div id="networkSelectionContainer" class="hidden">
                        <label class="block text-sm font-medium text-gray-300 mb-1">Network:</label>
                        <select name="network" id="cryptoNetwork" class="w-full bg-gray-700 border border-gray-600 rounded-lg px-4 py-2.5 text-white focus:ring-blue-500 focus:border-blue-500" required>
                            <option value="" selected disabled>Select network</option>
                            <!-- Networks will be populated here based on cryptocurrency selection -->
                        </select>
                    </div>

                    <!-- Deposit Address (shown after network selection) -->
                    <div id="addressContainer" class="hidden">
                        <label class="block text-sm font-medium text-gray-300 mb-1">Deposit Address:</label>
                        <div class="flex items-center space-x-2">
                            <input type="text" id="walletAddress" class="w-full bg-gray-700 border border-gray-600 rounded-lg px-4 py-2 text-white text-sm" readonly>
                            <button type="button" id="copyAddressButton" class="text-gray-400 hover:text-blue-400 transition">
                                <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                                    <path d="M8 3a1 1 0 011-1h2a1 1 0 110 2H9a1 1 0 01-1-1z"/>
                                    <path d="M6 3a2 2 0 00-2 2v11a2 2 0 002 2h8a2 2 0 002-2V5a2 2 0 00-2-2 3 3 0 01-3 3H9a3 3 0 01-3-3z"/>
                                </svg>
                            </button>
                        </div>
                        <p class="text-xs text-red-400 mt-1" id="networkWarning">Make sure you're sending through the correct network to avoid loss of funds.</p>
                    </div>

                    <!-- Amount -->
                    <div id="amountContainer" class="hidden">
                        <label class="block text-sm font-medium text-gray-300 mb-1">Amount:</label>
                        <div class="flex items-center rounded-lg bg-gray-700 border border-gray-600 focus-within:ring-2 focus-within:ring-blue-500">
                            <input
                                type="number"
                                name="amount"
                                id="amount"
                                min="0.00000001"
                                step="0.00000001"
                                placeholder="Enter amount"
                                required
                                class="flex-1 bg-transparent border-none px-4 py-2 text-white focus:outline-none"
                                autocomplete="off"
                            >
                            <span id="cryptoCurrencySymbol" class="px-4 py-2 text-gray-300 font-semibold"></span>
                        </div>
                    </div>

                    <!-- Payment Proof -->
                    <div id="proofContainer" class="hidden">
                        <label class="block text-sm font-medium text-gray-300 mb-1">Transaction Hash/Proof:</label>
                        <input type="text" name="proof" required class="w-full bg-gray-700 border border-gray-600 rounded-lg px-4 py-2 text-white" placeholder="Enter transaction hash">
                        <p class="text-xs text-gray-400 mt-1">Please provide the transaction hash from your wallet</p>
                    </div>

                    <!-- Submit Button -->
                    <div class="pt-2 hidden" id="submitContainer">
                        <button type="submit" class="w-full bg-blue-600 hover:bg-blue-700 text-white py-2.5 rounded-lg font-medium transition">
                            Submit Deposit
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</main>

<script>
    // Crypto networks and addresses
    const cryptoNetworks = {
        BTC: {
            networks: [
                { name: 'Bitcoin Network', value: 'BTC' }
            ],
            address: 'bc1q2vn9hhsdgej2p8jd89wfnfj85kfgy9adh7vyxs'
        },
        ETH: {
            networks: [
                { name: 'Ethereum Network (ERC20)', value: 'ETH' }
            ],
            address: '0x1979B6A224074DfC7C05289b260af113F198a5bD'
        },
        USDT: {
            networks: [
                { name: 'Ethereum Network (ERC20)', value: 'USDT_ERC20' },
                { name: 'Tron Network (TRC20)', value: 'USDT_TRC20' },
                { name: 'Solana Network', value: 'USDT_SOL' }
            ],
            addresses: {
                'USDT_ERC20': '0x1979B6A224074DfC7C05289b260af113F198a5bD',
                'USDT_TRC20': 'TSUGbqhpf4J4YAEL8Lt6kGTBoJbukHseNu',
                'USDT_SOL': 'DZN8jHdpAC5NsoXtYN8ZeYPxqxKmceXUPGa4fPo6CkzV'
            }
        },
        USDC: {
            networks: [
                { name: 'Ethereum Network (ERC20)', value: 'USDC_ERC20' },
                { name: 'Tron Network (TRC20)', value: 'USDC_TRC20' },
                { name: 'Solana Network', value: 'USDC_SOL' }
            ],
            addresses: {
                'USDC_ERC20': '0x1979B6A224074DfC7C05289b260af113F198a5bD',
                'USDC_TRC20': 'TSUGbqhpf4J4YAEL8Lt6kGTBoJbukHseNu',
                'USDC_SOL': 'DZN8jHdpAC5NsoXtYN8ZeYPxqxKmceXUPGa4fPo6CkzV'
            }
        },
        SOL: {
            networks: [
                { name: 'Solana Network', value: 'SOL' }
            ],
            address: 'DZN8jHdpAC5NsoXtYN8ZeYPxqxKmceXUPGa4fPo6CkzV'
        },
        TRX: {
            networks: [
                { name: 'Tron Network', value: 'TRX' }
            ],
            address: 'TSUGbqhpf4J4YAEL8Lt6kGTBoJbukHseNu'
        }
    };

    // Toggle Modal
    function openModal() {
        document.getElementById('depositModal').classList.remove('hidden');
        resetForm();
    }

    document.getElementById('closeModalButton')?.addEventListener('click', () => {
        document.getElementById('depositModal').classList.add('hidden');
        resetForm();
    });

    // Reset form to initial state
    function resetForm() {
        document.getElementById('networkSelectionContainer').classList.add('hidden');
        document.getElementById('addressContainer').classList.add('hidden');
        document.getElementById('amountContainer').classList.add('hidden');
        document.getElementById('proofContainer').classList.add('hidden');
        document.getElementById('submitContainer').classList.add('hidden');
        document.getElementById('cryptoNetwork').innerHTML = '<option value="" selected disabled>Select network</option>';
    }

    // Handle cryptocurrency selection change
    document.getElementById('cryptoCurrency').addEventListener('change', function() {
        const selectedCrypto = this.value;
        const networkContainer = document.getElementById('networkSelectionContainer');
        const networkSelect = document.getElementById('cryptoNetwork');

        // Reset other fields
        document.getElementById('addressContainer').classList.add('hidden');
        document.getElementById('amountContainer').classList.add('hidden');
        document.getElementById('proofContainer').classList.add('hidden');
        document.getElementById('submitContainer').classList.add('hidden');

        if (selectedCrypto) {
            // Populate networks
            networkSelect.innerHTML = '<option value="" selected disabled>Select network</option>';
            cryptoNetworks[selectedCrypto].networks.forEach(network => {
                const option = document.createElement('option');
                option.value = network.value;
                option.textContent = network.name;
                networkSelect.appendChild(option);
            });

            // Show network selection
            networkContainer.classList.remove('hidden');
        } else {
            networkContainer.classList.add('hidden');
        }
    });

    // Handle network selection change
    document.getElementById('cryptoNetwork').addEventListener('change', function() {
        const selectedCrypto = document.getElementById('cryptoCurrency').value;
        const selectedNetwork = this.value;
        const addressContainer = document.getElementById('addressContainer');
        const walletAddress = document.getElementById('walletAddress');

        if (selectedNetwork) {
            // Set the wallet address based on selection
            if (selectedCrypto === 'USDT' || selectedCrypto === 'USDC') {
                walletAddress.value = cryptoNetworks[selectedCrypto].addresses[selectedNetwork];
            } else {
                walletAddress.value = cryptoNetworks[selectedCrypto].address;
            }

            // Set currency symbol for amount input
            document.getElementById('cryptoCurrencySymbol').textContent = selectedCrypto;

            // Show address and other fields
            addressContainer.classList.remove('hidden');
            document.getElementById('amountContainer').classList.remove('hidden');
            document.getElementById('proofContainer').classList.remove('hidden');
            document.getElementById('submitContainer').classList.remove('hidden');
        } else {
            addressContainer.classList.add('hidden');
            document.getElementById('amountContainer').classList.add('hidden');
            document.getElementById('proofContainer').classList.add('hidden');
            document.getElementById('submitContainer').classList.add('hidden');
        }
    });

    // Copy address button
    document.getElementById('copyAddressButton')?.addEventListener('click', function() {
        const walletAddress = document.getElementById('walletAddress');
        walletAddress.select();
        document.execCommand('copy');

        // Show copied feedback
        const originalText = this.innerHTML;
        this.innerHTML = '<svg class="w-5 h-5 text-green-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"/></svg>';
        setTimeout(() => {
            this.innerHTML = originalText;
        }, 2000);
    });
</script>
@endsection
