<div class="main-nav d-flex flex-column">
    <!-- Sidebar Logo -->
    <div class="logo-box">
        <a href="/" class="logo-dark">
            <img src="{{ asset('/images/logo-sm.png') }}" class="logo-sm" alt="Logo Small">
            <img src="{{ asset('/images/logo-dark.png') }}" class="logo-lg" alt="Logo Dark">
        </a>
        <a href="/" class="logo-light">
            <img src="{{ asset('/images/logo-sm.png') }}" class="logo-sm" alt="Logo Small">
            <img src="{{ asset('/images/logo-light.png') }}" class="logo-lg" alt="Logo Light">
        </a>
    </div>

    <!-- Menu Toggle Button -->
    <button type="button" class="button-sm-hover" aria-label="Show Full Sidebar">
        <iconify-icon icon="solar:double-alt-arrow-right-bold-duotone" class="button-sm-hover-icon"></iconify-icon>
    </button>

    <div class="scrollbar flex-grow-1" data-simplebar>
        <ul class="navbar-nav" id="navbar-nav">
        <li class="menu-title">Umum</li>
            <li class="nav-item">
                <a class="nav-link" href="{{ route('dashboard') }}">
                    <span class="nav-icon">
                        <iconify-icon icon="solar:widget-5-bold-duotone" class="menu-icon"></iconify-icon>
                    </span>
                    <span class="nav-text">Beranda</span>
                </a>
            </li>
            <!-- Konveksi -->
            <li class="nav-item">
                <a class="nav-link" href="{{ route('konveksi.index') }}">
                    <span class="nav-icon">
                        <iconify-icon icon="solar:t-shirt-bold-duotone" class="menu-icon"></iconify-icon>
                    </span>
                    <span class="nav-text">Konveksi</span>
                </a>
            </li>
            <!-- Estimasi Produksi -->
            <li class="nav-item">
                <a class="nav-link" href="{{ route('estimasi-produksi.index') }}">
                    <span class="nav-icon">
                        <iconify-icon icon="solar:box-bold-duotone" class="menu-icon"></iconify-icon>
                    </span>
                    <span class="nav-text">Estimasi Produksi</span>
                </a>
            </li>
            <!-- Laporan Vendor -->
            <li class="nav-item">
                <a class="nav-link" href="{{ route('laporan-vendor.index') }}">
                    <span class="nav-icon">
                        <iconify-icon icon="solar:clipboard-list-bold-duotone" class="menu-icon"></iconify-icon>
                    </span>
                    <span class="nav-text">Laporan Vendor</span>
                </a>
            </li>

            <li class="menu-title">Lainnya</li>

            <!-- Profile -->
            <li class="nav-item">
                <a class="nav-link" href="{{ route('profile.edit') }}">
                    <span class="nav-icon">
                        <iconify-icon icon="solar:user-bold-duotone" class="menu-icon"></iconify-icon>
                    </span>
                    <span class="nav-text">Profile</span>
                </a>
            </li>

            <!-- Logout -->
            <li class="nav-item">
                <a href="#" class="nav-link" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                    <span class="nav-icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <path fill="currentColor" d="M15 2h-1c-2.828 0-4.243 0-5.121.879C8 3.757 8 5.172 8 8v8c0 2.828 0 4.243.879 5.121C9.757 22 11.172 22 14 22h1c2.828 0 4.243 0 5.121-.879C21 20.243 21 18.828 21 16V8c0-2.828 0-4.243-.879-5.121C19.243 2 17.828 2 15 2" opacity="0.6"/>
                            <path fill="currentColor" d="M8 8c0-1.538 0-2.657.141-3.5H8c-2.357 0-3.536 0-4.268.732S3 7.143 3 9.5v5c0 2.357 0 3.535.732 4.268S5.643 19.5 8 19.5h.141C8 18.657 8 17.538 8 16z" opacity="0.4"/>
                            <path fill="currentColor" fill-rule="evenodd" d="M4.47 11.47a.75.75 0 0 0 0 1.06l2 2a.75.75 0 0 0 1.06-1.06l-.72-.72H14a.75.75 0 0 0 0-1.5H6.81l.72-.72a.75.75 0 1 0-1.06-1.06z" clip-rule="evenodd"/>
                        </svg>
                    </span>
                    <span class="nav-text">Keluar</span>
                </a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    @csrf
                </form>
            </li>
        </ul>
    </div>

    <script>
        function handleLogout() {
            if (confirm('Apakah Anda yakin ingin logout?')) {
                document.getElementById('logout-form').submit();
            }
        }
    </script>

</div>

<style>
    .main-nav {
        display: flex;
        flex-direction: column;
        height: 100vh;
    }

    .scrollbar {
        flex-grow: 1;
    }

    .logout-container {
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 1rem;
    }
</style>
