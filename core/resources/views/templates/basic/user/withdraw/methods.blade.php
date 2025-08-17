@extends($activeTemplate . 'layouts.master2')

@section('content')
<main class="p-2 sm:px-2 flex-1 overflow-auto bg-gray-900">
    <div class="grid grid-cols-1 ld:grid-cols-2 gap-12">
        <div class="p-4 rounded-lg bg-gray-800 shadow-lg">

            <!-- Header -->
            <div class="flex justify-between items-center mb-6">
                <h1 class="text-xl font-semibold text-white">Withdraw</h1>
                <button id="openModal" class="bg-blue-600 hover:bg-blue-700 px-4 py-2 rounded-lg text-white transition-colors duration-200">
                    Withdraw
                </button>
            </div>

            <!-- Deposits Table -->
            <div class="w-full overflow-x-auto">
                @include($activeTemplate.'user.withdraw.log')
            </div>

            <!-- Withdraw Modal -->
            <div id="withdrawModal" class="fixed inset-0 bg-black bg-opacity-70 flex items-center justify-center hidden z-50">
                <div class="bg-gray-800 text-white rounded-lg p-6 w-full max-w-md relative shadow-2xl border border-gray-700">
                    <!-- Close Button -->
                    <button id="closeModal" class="absolute top-3 right-3 text-gray-400 hover:text-white text-2xl transition-colors duration-200">
                        &times;
                    </button>

                    <!-- Modal Content -->
                    <h3 class="text-lg font-bold mb-4 text-white">Withdraw Funds</h3>
                    <p class="text-gray-300 mb-4">
                        Select withdrawal method and enter your wallet details
                    </p>

                    <form action="{{ route('user.withdraw.money') }}" method="post" class="withdraw-form" id="withdrawForm">
                        @csrf

                        <!-- Method Selection -->
                        <div class="mb-4">
                            <label class="block text-sm font-medium mb-1 text-gray-300" for="type">Withdrawal Method:</label>
                            <select
                                id="type"
                                class="bg-gray-700 border border-gray-600 text-white rounded-md px-4 py-2 w-full focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500"
                                name="method_code"
                                required
                            >
                                <option value="" selected disabled>Select withdrawal method</option>
                                @foreach ($withdrawMethod as $data)
                                    <option value="{{ $data->id }}" data-gateway='@json($data)'>
                                        {{ __($data->name) }}
                                    </option>
                                @endforeach
                            </select>
                        </div>

                        <!-- Crypto Selection (shown when crypto method selected) -->
                        <div id="cryptoSelectionContainer" class="hidden mb-4">
                            <label class="block text-sm font-medium mb-1 text-gray-300">Cryptocurrency:</label>
                            <select id="cryptoCurrency" class="bg-gray-700 border border-gray-600 text-white rounded-md px-4 py-2 w-full focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500">
                                <option value="" selected disabled>Select cryptocurrency</option>
                                <option value="BTC">Bitcoin (BTC)</option>
                                <option value="ETH">Ethereum (ETH)</option>
                                <option value="USDT">Tether (USDT)</option>
                                <option value="USDC">USD Coin (USDC)</option>
                                <option value="SOL">Solana (SOL)</option>
                                <option value="TRX">Tron (TRX)</option>
                            </select>
                        </div>

                        <!-- Network Selection (shown when crypto selected) -->
                        <div id="networkSelectionContainer" class="hidden mb-4">
                            <label class="block text-sm font-medium mb-1 text-gray-300">Network:</label>
                            <select id="cryptoNetwork" name="network" class="bg-gray-700 border border-gray-600 text-white rounded-md px-4 py-2 w-full focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500">
                                <option value="" selected disabled>Select network</option>
                                <!-- Networks will be populated here based on cryptocurrency selection -->
                            </select>
                        </div>

                        <!-- Wallet Address Input (shown when network selected) -->
                        <div id="walletAddressContainer" class="hidden mb-4">
                            <label class="block text-sm font-medium mb-1 text-gray-300">Your Wallet Address:</label>
                            <input
                                type="text"
                                name="wallet_address"
                                class="bg-gray-700 border border-gray-600 text-white rounded-md px-4 py-2 w-full focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500"
                                placeholder="Enter your wallet address"
                                required
                            >
                            <p class="text-xs text-red-400 mt-1">Make sure this address supports the selected network</p>
                        </div>

                        <!-- Amount Input -->
                        <div class="mb-4">
                            <label class="block text-sm font-medium mb-1 text-gray-300" for="amount">Amount:</label>
                            <div class="flex gap-2 items-center">
                                <input
                                    type="number"
                                    id="amount"
                                    name="amount"
                                    placeholder="0.00"
                                    class="bg-gray-700 border border-gray-600 text-white rounded-md px-4 py-2 w-full focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500"
                                    value="{{ old('amount') }}"
                                    step="0.00000001"
                                    min="0.00000001"
                                    required
                                />
                                <span id="currencySymbol" class="text-gray-300">{{ gs('cur_sym') }}</span>
                            </div>
                            <div class="text-xs text-gray-400 mt-1">
                                Available: <span class="text-white">{{ showAmount(auth()->user()->balance) }} {{ gs('cur_text') }}</span>
                            </div>
                        </div>

                        <!-- Balance Information -->
                        <div class="text-sm text-gray-400 mb-4">
                            <p>Estimated in USD: <span id="usdEstimate" class="text-white font-medium">{{ showAmount(auth()->user()->balance * gs('usd_rate')) }}</span></p>
                        </div>

                        <!-- Withdraw Button -->
                        <button
                            class="bg-blue-600 text-white w-full py-2 rounded-md hover:bg-blue-700 transition-colors duration-200"
                            type="submit"
                            id="submitButton"
                        >
                            Confirm Withdrawal
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>

@push('style')
<style>
    .tooltip {
        position: relative;
    }

    .tooltip:before {
        content: attr(data-tooltip);
        position: absolute;
        bottom: 100%;
        left: 50%;
        transform: translateX(-50%);
        padding: 4px 8px;
        background-color: rgba(0, 0, 0, 0.8);
        color: white;
        border-radius: 4px;
        font-size: 12px;
        white-space: nowrap;
        opacity: 0;
        visibility: hidden;
        transition: opacity 0.2s, visibility 0.2s;
    }

    .tooltip:hover:before {
        opacity: 1;
        visibility: visible;
    }
</style>
@endpush

<script>
    // Crypto networks configuration (matches deposit form exactly)
    const cryptoNetworks = {
        BTC: [
            { name: 'Bitcoin Network', value: 'BTC' }
        ],
        ETH: [
            { name: 'Ethereum Network (ERC20)', value: 'ETH' }
        ],
        USDT: [
            { name: 'Ethereum Network (ERC20)', value: 'USDT_ERC20' },
            { name: 'Tron Network (TRC20)', value: 'USDT_TRC20' },
            { name: 'Solana Network', value: 'USDT_SOL' }
        ],
        USDC: [
            { name: 'Ethereum Network (ERC20)', value: 'USDC_ERC20' },
            { name: 'Tron Network (TRC20)', value: 'USDC_TRC20' },
            { name: 'Solana Network', value: 'USDC_SOL' }
        ],
        SOL: [
            { name: 'Solana Network', value: 'SOL' }
        ],
        TRX: [
            { name: 'Tron Network', value: 'TRX' }
        ]
    };

    // DOM elements
    const openModalButton = document.getElementById("openModal");
    const closeModalButton = document.getElementById("closeModal");
    const modal = document.getElementById("withdrawModal");
    const withdrawForm = document.getElementById("withdrawForm");
    const methodSelect = document.getElementById("type");
    const cryptoSelectionContainer = document.getElementById("cryptoSelectionContainer");
    const cryptoCurrencySelect = document.getElementById("cryptoCurrency");
    const networkSelectionContainer = document.getElementById("networkSelectionContainer");
    const cryptoNetworkSelect = document.getElementById("cryptoNetwork");
    const walletAddressContainer = document.getElementById("walletAddressContainer");
    const amountInput = document.getElementById("amount");
    const currencySymbol = document.getElementById("currencySymbol");
    const usdEstimate = document.getElementById("usdEstimate");
    const submitButton = document.getElementById("submitButton");

    // Open modal
    openModalButton.addEventListener("click", () => {
        modal.classList.remove("hidden");
        resetForm();
    });

    // Close modal
    closeModalButton.addEventListener("click", () => {
        modal.classList.add("hidden");
    });

    // Close modal when clicking outside of it
    window.addEventListener("click", (e) => {
        if (e.target === modal) {
            modal.classList.add("hidden");
        }
    });

    // Reset form to initial state
    function resetForm() {
        cryptoSelectionContainer.classList.add('hidden');
        networkSelectionContainer.classList.add('hidden');
        walletAddressContainer.classList.add('hidden');
        cryptoNetworkSelect.innerHTML = '<option value="" selected disabled>Select network</option>';
        currencySymbol.textContent = '{{ gs('cur_sym') }}';
    }

    // Handle method selection change
    methodSelect.addEventListener('change', function() {
        const selectedMethod = this.options[this.selectedIndex].text.toLowerCase();

        resetForm();

        // Show crypto selection if method is crypto
        if (selectedMethod.includes('crypto')) {
            cryptoSelectionContainer.classList.remove('hidden');
            currencySymbol.textContent = ''; // Will be set when crypto is selected
        } else {
            // For fiat methods
            cryptoSelectionContainer.classList.add('hidden');
            networkSelectionContainer.classList.add('hidden');
            walletAddressContainer.classList.add('hidden');
            currencySymbol.textContent = '{{ gs('cur_sym') }}';
        }
    });

    // Handle cryptocurrency selection change
    cryptoCurrencySelect.addEventListener('change', function() {
        const selectedCrypto = this.value;

        // Reset network selection
        cryptoNetworkSelect.innerHTML = '<option value="" selected disabled>Select network</option>';
        walletAddressContainer.classList.add('hidden');

        if (selectedCrypto) {
            // Populate networks
            cryptoNetworks[selectedCrypto].forEach(network => {
                const option = document.createElement('option');
                option.value = network.value;
                option.textContent = network.name;
                cryptoNetworkSelect.appendChild(option);
            });

            // Show network selection
            networkSelectionContainer.classList.remove('hidden');
            currencySymbol.textContent = selectedCrypto;
        } else {
            networkSelectionContainer.classList.add('hidden');
        }
    });

    // Handle network selection change
    cryptoNetworkSelect.addEventListener('change', function() {
        if (this.value) {
            walletAddressContainer.classList.remove('hidden');
        } else {
            walletAddressContainer.classList.add('hidden');
        }
    });

    // Update USD estimate when amount changes
    amountInput.addEventListener('input', function() {
        const amount = parseFloat(this.value) || 0;
        const usdRate = parseFloat('{{ gs('usd_rate') }}');
        usdEstimate.textContent = (amount * usdRate).toFixed(2);
    });
</script>
@endsection
