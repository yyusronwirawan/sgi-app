<x-app-layout>
    @section('title', $title)
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-12 d-flex justify-content-center">
                <!-- Vendor List -->
                <div class="vendor-list">
                    @foreach (\App\Enums\Bidang::getCases() as $vendor)
                        <div class="vendor-item mx-2 mb-3">
                            <a href="{{ route('laporan-vendor.show', \Str::slug($vendor->name)) }}"
                                class="list-group-item list-group-item-action">
                                {{ $vendor->value }}
                            </a>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
    <style>
        .vendor-list {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .vendor-item {
            position: relative;
            overflow: hidden;
            width: 260px;
            /* Lebar item diperbesar lagi */
        }

        .vendor-item .list-group-item {
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out, background-color 0.3s ease-in-out, color 0.3s ease-in-out;
            font-size: 16px;
            padding: 18px;
            text-align: center;
            width: 100%;
            border-radius: 8px;
            background-color: rgba(55, 108, 47, 0.1);
            /* Warna latar belakang default */
            color: #ff6c2f;
            /* Warna teks default */
        }

        .vendor-item:hover .list-group-item {
            transform: translateX(15px);
            /* Geser ke kanan saat hover */
            box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.2);
            /* Menambahkan bayangan */
            background-color: #ff6c2f;
            /* Warna latar belakang saat hover */
            color: #fff;
            /* Warna teks saat hover */
        }

        @media (max-width: 768px) {
            .vendor-item {
                width: 95%;
                /* Lebar tombol diperbesar lebih banyak untuk layar kecil */
            }

            .vendor-item .list-group-item {
                font-size: 18px;
                /* Sedikit perbesar ukuran font pada layar kecil */
            }
        }
    </style>
    <!-- Menambahkan Footer -->
    @include('layouts.partials.footer')
</x-app-layout>
