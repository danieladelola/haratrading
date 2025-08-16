<script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<!-- Desktop Sidebar -->
<aside class="hidden lg:flex lg:flex-col w-64 border-r border-gray-800 p-4 bg-black shadow-none">
    <!-- Logo / Title -->
    <div class="mb-8">
        <a href="#" class="text-2xl font-bold text-white flex items-center gap-2">
            <i class="ri-flashlight-fill text-purple-400"></i>
            HaraTrading
        </a>
    </div>
    <nav class="space-y-2 flex-1">
        <a href="{{ route('user.home') }}" class="flex items-center gap-3 rounded-lg px-3 py-2 bg-gradient-to-r from-[#9333ea] to-[#2563eb] text-white shadow-md hover:shadow-lg transition-all">
            <i class="ri-dashboard-line"></i> Dashboard
        </a>
        <a href="{{ route('crypto.deposit.index') }}" class="flex items-center gap-3 rounded-lg px-3 py-2 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
            <i class="ri-arrow-right-circle-line"></i> Deposit
        </a>
        <a href="{{ route('user.withdraw') }}" class="flex items-center gap-3 rounded-lg px-3 py-2 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
            <i class="ri-arrow-left-circle-line"></i> Withdraw
        </a>
        <a href="{{ route('user.wallet.list') }}" class="flex items-center gap-3 rounded-lg px-3 py-2 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
            <i class="ri-wallet-3-line"></i> Wallet
        </a>
        <a href="{{ route('user.assets.index') }}" class="flex items-center gap-3 rounded-lg px-3 py-2 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
            <i class="ri-coin-line"></i> Assets
        </a>
        <a href="{{ route('market.index') }}" class="flex items-center gap-3 rounded-lg px-3 py-2 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
            <i class="ri-line-chart-line"></i> Markets
        </a>
        <a href="{{ route('trade.index') }}" class="flex items-center gap-3 rounded-lg px-3 py-2 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
            <i class="ri-exchange-box-line"></i> Trade
        </a>
        <a href="{{ route('subscribers.index') }}" class="flex items-center gap-3 rounded-lg px-3 py-2 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
            <i class="ri-radio-line"></i> Subscribe
        </a>
        <a href="{{ route('user.signals.index') }}" class="flex items-center gap-3 rounded-lg px-3 py-2 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
            <i class="ri-signal-tower-line"></i> Signals
        </a>
        <a href="{{ route('staking.index') }}" class="flex items-center gap-3 rounded-lg px-3 py-2 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
            <i class="ri-money-dollar-circle-line"></i> Stake
        </a>
        <a href="#" class="flex items-center gap-3 rounded-lg px-3 py-2 text-gray-400 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
            <i class="ri-share-forward-line"></i> Referrals <span class="ml-2 text-xs text-purple-300">(Coming Soon)</span>
        </a>
        <a href="#" onclick="walletNotAvailable()" class="flex items-center gap-3 rounded-lg px-3 py-2 text-gray-400 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
            <i class="ri-wallet-3-line"></i> Connect wallet
        </a>
        <script>
            function walletNotAvailable() {
                Swal.fire({
                    icon: 'warning',
                    title: 'Wallet Not Available',
                    text: 'The wallet feature is currently not available. Please try again later.',
                    confirmButtonText: 'OK',
                    confirmButtonColor: '#9333ea'
                });
            }
        </script>
        <a href="{{ route('copy.expert.index') }}" class="flex items-center gap-3 rounded-lg px-3 py-2 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
            <i class="ri-user-follow-line"></i> Copy Experts
        </a>
        <a href="{{ route('user.profile.setting') }}" class="flex items-center gap-3 rounded-lg px-3 py-2 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
            <i class="ri-settings-3-line"></i> Settings
        </a>
        <a href="{{ route('user.logout') }}" class="flex flex-col items-center gap-1 rounded-lg p-3 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
            <i class="ri-logout-circle-line text-2xl"></i> Logout
        </a>
    </nav>
</aside>

<!-- Mobile Menu -->
<div x-data="{ open: false }" class="lg:hidden inset-0 overflow-hidden z-50" role="dialog">
    <!-- Menu Button -->
    <button @click="open = true" class="p-2 text-white bg-gradient-to-r from-[#9333ea] to-[#2563eb] rounded-md shadow-md">
        <i class="ri-menu-line"></i>
    </button>

    <!-- Menu Content -->
    <div x-show="open" @click.away="open = false" class="fixed inset-0 z-50 flex items-center justify-center bg-black bg-opacity-90">
        <div class="bg-gray-900 rounded-lg p-4 w-11/12 max-w-md relative shadow-xl">
            <button @click="open = false" class="absolute top-4 right-4 text-gray-300 hover:text-purple-400">
                <i class="ri-close-line"></i>
            </button>
            <nav class="grid grid-cols-4 gap-4">
                <a href="{{ route('user.home') }}" class="flex flex-col items-center gap-1 rounded-lg p-3 bg-gradient-to-r from-[#9333ea] to-[#2563eb] text-white shadow-md">
                    <i class="ri-dashboard-line text-2xl"></i> Home
                </a>
                <a href="{{ route('crypto.deposit.index') }}" class="flex flex-col items-center gap-1 rounded-lg p-3 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
                    <i class="ri-arrow-right-circle-line text-2xl"></i> Deposit
                </a>
                <a href="{{ route('user.withdraw') }}" class="flex flex-col items-center gap-1 rounded-lg p-3 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
                    <i class="ri-arrow-left-circle-line text-2xl"></i> Withdraw
                </a>
                <a href="{{ route('user.wallet.list') }}" class="flex flex-col items-center gap-1 rounded-lg p-3 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
                    <i class="ri-wallet-3-line text-2xl"></i> Wallet
                </a>
                <a href="{{ route('user.assets.index') }}" class="flex flex-col items-center gap-1 rounded-lg p-3 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
                    <i class="ri-coin-line text-2xl"></i> Assets
                </a>
                <a href="{{ route('market.index') }}" class="flex flex-col items-center gap-1 rounded-lg p-3 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
                    <i class="ri-line-chart-line text-2xl"></i> Markets
                </a>
                <a href="{{ route('trade.index') }}" class="flex flex-col items-center gap-1 rounded-lg p-3 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
                    <i class="ri-exchange-box-line text-2xl"></i> Trade
                </a>
                <a href="{{ route('subscribers.index') }}" class="flex flex-col items-center gap-1 rounded-lg p-3 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
                    <i class="ri-radio-line text-2xl"></i> Subscribe
                </a>
                <a href="{{ route('user.signals.index') }}" class="flex flex-col items-center gap-1 rounded-lg p-3 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
                    <i class="ri-signal-tower-line text-2xl"></i> Signals
                </a>
                <a href="{{ route('staking.index') }}" class="flex flex-col items-center gap-1 rounded-lg p-3 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
                    <i class="ri-money-dollar-circle-line text-2xl"></i> Stake
                </a>
                <a href="#" class="flex flex-col items-center gap-1 rounded-lg p-3 text-gray-400 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
                    <i class="ri-wallet-3-line text-2xl"></i> Connect wallet
                </a>
                <a href="{{ route('copy.expert.index') }}" class="flex flex-col items-center gap-1 rounded-lg p-3 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
                    <i class="ri-user-follow-line text-2xl"></i> Copy Experts
                </a>
                <a href="{{ route('user.profile.setting') }}" class="flex flex-col items-center gap-1 rounded-lg p-3 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
                    <i class="ri-settings-3-line text-2xl"></i> Settings
                </a>
                <a href="{{ route('user.logout') }}" class="flex flex-col items-center gap-1 rounded-lg p-3 text-gray-300 hover:bg-gradient-to-r from-[#9333ea] to-[#2563eb] hover:text-white transition-all">
                    <i class="ri-logout-circle-line text-2xl"></i> Logout
                </a>
            </nav>
        </div>
    </div>
</div>
