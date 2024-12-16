<x-app-layout>
@section('title', $title)
    <div class="row">
        <div class="col-md-6">
        <div class="alert alert-primary mb-3" role="alert" style="overflow: hidden; white-space: nowrap;">
        <span class="marquee-text">Hi 👋🏻 Selamat datang, Admin! Masuk ke Sistem Manajemen Konveksi SGI Holding Company.</span>
        </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="card overflow-hidden">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-6">
                                    <div class="avatar-md bg-soft-primary rounded">
                                        <iconify-icon icon="solar:cart-5-bold-duotone"
                                            class="avatar-title fs-32 text-primary"></iconify-icon>
                                    </div>
                                </div>
                                <div class="col-6 text-end">
                                    <p class="text-muted mb-0 text-truncate">Total Orders</p>
                                    <h3 class="text-dark mt-1 mb-0">{{ number_format($totalOrders) }}</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card overflow-hidden">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-6">
                                    <div class="avatar-md bg-soft-primary rounded">
                                        <i class="bx bx-award avatar-title fs-24 text-primary"></i>
                                    </div>
                                </div>
                                <div class="col-6 text-end">
                                    <p class="text-muted mb-0 text-truncate">Total Projects</p>
                                    <h3 class="text-dark mt-1 mb-0">{{ number_format($totalProjects) }}</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card overflow-hidden">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-6">
                                    <div class="avatar-md bg-soft-primary rounded">
                                        <i class="bx bxs-backpack avatar-title fs-24 text-primary"></i>
                                    </div>
                                </div>
                                <div class="col-6 text-end">
                                    <p class="text-muted mb-0 text-truncate">Avg Progress</p>
                                    <h3 class="text-dark mt-1 mb-0">{{ number_format($avgProgress, 2) }}%</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card overflow-hidden">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-6">
                                    <div class="avatar-md bg-soft-primary rounded">
                                        <i class="bx bx-time avatar-title text-primary fs-24"></i>
                                    </div>
                                </div>
                                <div class="col-6 text-end">
                                    <p class="text-muted mb-0 text-truncate">Total Production Estimation</p>
                                    <h3 class="text-dark mt-1 mb-0">{{ number_format($totalProductionEstimation) }}</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex justify-content-between align-items-center">
                        <h4 class="card-title">Performa</h4>
                        <div>
                            <button type="button" id="filter-all" class="btn btn-sm btn-outline-light">ALL</button>
                            <button type="button" id="filter-1m" class="btn btn-sm btn-outline-light">1M</button>
                            <button type="button" id="filter-6m" class="btn btn-sm btn-outline-light">6M</button>
                            <button type="button" id="filter-1y"
                                class="btn btn-sm btn-outline-light active">1Y</button>
                        </div>
                    </div> <!-- end card-title-->

                    <div id="loading" class="justify-content-center align-items-center" style="display: none;">
                        <div class="spinner-border" role="status">
                            <span class="visually-hidden">Loading...</span>
                        </div>
                    </div>

                    <div dir="ltr">
                        <div id="dash-performance-chart" class="apex-charts"></div>
                    </div>
                </div> <!-- end card body -->
            </div> <!-- end card -->
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex align-items-center justify-content-between">
                        <h4 class="card-title">
                            PO Saat ini
                        </h4>
                    </div>
                </div>
                <!-- end card body -->
                <div class="table-responsive table-centered">
                    <table class="table mb-0">
                        <tbody>
                            @forelse ($poNow as $item)
                                <tr>
                                    <td class="ps-3 shadow-sm border-0">
                                        <a
                                            href="{{ route('laporan-vendor.edit', $item->id) }}">{{ $item->customer }}</a>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td class="ps-3 shadow-sm border-0">
                                        <a href="{{ route('laporan-vendor.edit', $item->id) }}">Tidak ada data</a>
                                    </td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
                <!-- table responsive -->

                <div class="card-footer border-top">
                    <div class="row g-3">
                        <div class="col-sm">

                        </div>

                        <div class="col-sm-auto">
                            {{ $poNow->links() }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex align-items-center justify-content-between">
                        <h4 class="card-title">
                            PO Yang Akan Datang
                        </h4>
                    </div>
                </div>
                <!-- end card body -->
                <div class="table-responsive table-centered">
                    <table class="table mb-0">
                        <tbody>
                            @forelse ($poNext as $item)
                                <tr>
                                    <td class="ps-3">
                                        <a href="apps-ecommerce-order-detail.html">{{ $item->customer }}</a>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td class="ps-3">
                                        <a href="apps-ecommerce-order-detail.html">Tidak ada data</a>
                                    </td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
                <!-- table responsive -->

                <div class="card-footer border-top">
                    <div class="row g-3">
                        <div class="col-sm">

                        </div>

                        <div class="col-sm-auto">
                            {{ $poNext->links() }}
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <style>
    .marquee-text {
        display: inline-block;
        animation: marquee 15s linear infinite;
    }

    @keyframes marquee {
        from {
            transform: translateX(100%);
        }
        to {
            transform: translateX(-100%);
        }
    }
</style>

        <!-- end card -->
        <!-- end col -->
    </div>
    @section('script')
        @vite(['resources/js/pages/dashboard.js'])
    @endsection
    
    <!-- Menambahkan Footer -->
    @include('layouts.partials.footer')

</x-app-layout>
