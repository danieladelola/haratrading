@extends($activeTemplate . 'layouts.master2')

@section('content')
<main class="p-2 sm:px-2 flex-1 overflow-auto bg-black text-white">
    <div class="grid grid-cols-1 lg:grid-cols-2 gap-6">
        <div class="p-4 rounded-lg bg-gray-900 shadow-lg border border-gray-800">

            <!-- Header -->
            <div class="flex justify-between items-center mb-6">
                <h1 class="text-xl font-semibold text-white">Withdraw Funds</h1>
                <button id="openModal" class="bg-blue-600 hover:bg-blue-700 px-4 py-2 rounded-lg text-white transition-colors duration-200 flex items-center gap-2">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                        <path fill-rule="evenodd" d="M4 4a2 2 0 00-2 2v8a2 2 0 002 2h12a2 2 0 002-2V8a2 2 0 00-2-2h-5L9 4H4z" clip-rule="evenodd" />
                    </svg>
                    Withdraw
                </button>
            </div>

            <!-- Deposits Table -->
            <div class="w-full overflow-x-auto">
                @include($activeTemplate.'user.withdraw.log')
            </div>

            <!-- Withdraw Modal -->
            <div id="withdrawModal" class="fixed inset-0 bg-black bg-opacity-80 flex items-center justify-center hidden z-50 px-4">
                <div class="bg-gray-900 text-white rounded-lg p-6 w-full max-w-md relative shadow-2xl border border-gray-700">
                    <!-- Close Button -->
                    <button id="closeModal" class="absolute top-3 right-3 text-gray-400 hover:text-white text-2xl transition-colors duration-200">
                        &times;
                    </button>

                    <!-- Modal Content -->
                    <h3 class="text-lg font-bold mb-4 text-white flex items-center gap-2">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-blue-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7h12m0 0l-4-4m4 4l-4 4m0 6H4m0 0l4 4m-4-4l4-4" />
                        </svg>
                        Request Withdrawal
                    </h3>
                    <p class="text-gray-400 mb-6 text-sm">
                        To make a withdrawal, select your balance, amount and verify the address you wish for payment to be made into.
                    </p>
                    <form action="{{ route('user.withdraw.money') }}" method="post" class="withdraw-form">
                        @csrf
                        <!-- Type Selection -->
                        <div class="mb-4">
                            <label class="block text-sm font-medium mb-2 text-gray-300" for="type">Withdrawal Method:</label>
                            <select
                                id="type"
                                class="bg-gray-800 border border-gray-700 text-white rounded-lg px-4 py-3 w-full focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500"
                                name="method_code"
                            >
                                @foreach ($withdrawMethod as $data)
                                    <option value="{{ $data->id }}" data-gateway='@json($data)'>
                                        {{ __($data->name) }}
                                    </option>
                                @endforeach
                            </select>
                        </div>

                        <!-- Amount Input -->
                        <div class="mb-4">
                            <label class="block text-sm font-medium mb-2 text-gray-300" for="amount">Amount:</label>
                            <div class="relative">
                                <input
                                    type="number"
                                    id="amount"
                                    name="amount"
                                    placeholder="0.00"
                                    class="bg-gray-800 border border-gray-700 text-white rounded-lg px-4 py-3 w-full focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500"
                                    value="{{ old('amount') }}"
                                />
                                <span class="absolute right-3 top-3 text-gray-400">{{ gs('cur_sym') }}</span>
                            </div>
                        </div>

                        <!-- Balance Information -->
                        <div class="bg-gray-800 rounded-lg p-3 mb-6">
                            <div class="flex justify-between text-sm mb-1">
                                <span class="text-gray-400">Available Balance:</span>
                                <span class="text-white font-medium">{{ showAmount(auth()->user()->balance) }} {{ gs('cur_text') }}</span>
                            </div>
                            <div class="flex justify-between text-sm">
                                <span class="text-gray-400">Equivalent USD:</span>
                                <span class="text-white font-medium">${{ showAmount(auth()->user()->balance * gs('usd_rate')) }}</span>
                            </div>
                        </div>

                        <!-- Withdraw Button -->
                        <button
                            class="bg-blue-600 text-white w-full py-3 rounded-lg hover:bg-blue-700 transition-colors duration-200 flex items-center justify-center gap-2"
                            type="submit"
                        >
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                                <path fill-rule="evenodd" d="M4 4a2 2 0 00-2 2v8a2 2 0 002 2h12a2 2 0 002-2V8a2 2 0 00-2-2h-5L9 4H4z" clip-rule="evenodd" />
                            </svg>
                            Submit Withdrawal Request
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>

@push('style')
<style>
    /* Custom scrollbar */
    ::-webkit-scrollbar {
        width: 6px;
        height: 6px;
    }
    ::-webkit-scrollbar-track {
        background: #1a1a1a;
    }
    ::-webkit-scrollbar-thumb {
        background: #3b82f6;
        border-radius: 3px;
    }
    ::-webkit-scrollbar-thumb:hover {
        background: #2563eb;
    }

    /* Table styling */
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        padding: 12px 15px;
        text-align: left;
        border-bottom: 1px solid #2d3748;
    }
    th {
        background-color: #1a202c;
        color: #e2e8f0;
        font-weight: 600;
    }
    tr:hover {
        background-color: #1e293b;
    }

    /* Tooltip styling */
    .tooltip {
        position: relative;
    }
    .tooltip:before {
        content: attr(data-tooltip);
        position: absolute;
        bottom: 100%;
        left: 50%;
        transform: translateX(-50%);
        padding: 6px 12px;
        background-color: rgba(0, 0, 0, 0.9);
        color: white;
        border-radius: 4px;
        font-size: 12px;
        white-space: nowrap;
        opacity: 0;
        visibility: hidden;
        transition: opacity 0.2s, visibility 0.2s;
        z-index: 10;
    }
    .tooltip:hover:before {
        opacity: 1;
        visibility: visible;
    }
</style>
@endpush

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const openModalButton = document.getElementById("openModal");
        const closeModalButton = document.getElementById("closeModal");
        const modal = document.getElementById("withdrawModal");

        // Open modal
        openModalButton.addEventListener("click", () => {
            modal.classList.remove("hidden");
            document.body.style.overflow = 'hidden'; // Prevent scrolling when modal is open
        });

        // Close modal
        closeModalButton.addEventListener("click", () => {
            modal.classList.add("hidden");
            document.body.style.overflow = ''; // Re-enable scrolling
        });

        // Close modal when clicking outside of it
        modal.addEventListener("click", (e) => {
            if (e.target === modal) {
                modal.classList.add("hidden");
                document.body.style.overflow = '';
            }
        });

        // Close modal with Escape key
        document.addEventListener('keydown', (e) => {
            if (e.key === 'Escape' && !modal.classList.contains('hidden')) {
                modal.classList.add("hidden");
                document.body.style.overflow = '';
            }
        });

        // Form submission handling
        const form = document.querySelector('.withdraw-form');
        if (form) {
            form.addEventListener('submit', function(e) {
                const submitButton = this.querySelector('button[type="submit"]');
                submitButton.disabled = true;
                submitButton.innerHTML = `
                    <svg class="animate-spin h-5 w-5 mr-2" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                        <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
                        <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                    </svg>
                    Processing...
                `;
            });
        }
    });
</script>
@endsection
