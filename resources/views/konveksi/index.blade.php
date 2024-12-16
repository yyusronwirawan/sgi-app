<x-app-layout>
    @section('title', $title)
    <div class="row">
        <div class="col-xl-12">
            @if (session('success'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Success!</strong> {{ session('success') }}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            @endif
            <div class="card">
                <div class="d-flex flex-column flex-md-row card-header justify-content-between align-items-center">
                    <h4 class="card-title mb-2 mb-md-0">List Data Konveksi</h4>
                    <div class="d-flex flex-wrap gap-2 ms-auto">
                        <div class="dropdown">
                            <a href="#" class="dropdown-toggle btn btn-sm btn-outline-light rounded"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                Konveksi
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
                                @forelse ($konveksis as $item)
                                    <a href="javascript:;" class="dropdown-item" data-id="{{ $item->id }}"
                                        onclick="filterByKonveksi({{ $item->id }})">
                                        {{ $item->no_po }} - {{ $item->customer }}
                                    </a>
                                @empty
                                    <a href="javascript:;" class="dropdown-item">Tidak Ada Data</a>
                                @endforelse
                            </div>
                        </div>
                        <a href="{{ route('konveksi.create') }}" class="btn btn-primary btn-sm">Tambah Data</a>
                    </div>
                </div>
                <div>
                    <div class="table-responsive">
                        <table class="table align-middle mb-0 table-hover table-centered">
                            <thead class="bg-light-subtle">
                                <tr>
                                    <th style="width: 20px;">
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="customCheck1">
                                            <label class="form-check-label" for="customCheck1"></label>
                                        </div>
                                    </th>
                                    <th>Model</th>
                                    <th>Nama Bahan</th>
                                    <th>Jumlah Order</th>
                                    <th>Detail Aksesoris</th>
                                    <th>Indent Bahan</th>
                                    <th>Estimasi Produksi</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($produksi as $item)
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input"
                                                    id="{{ $item->id }}">
                                                <label class="form-check-label" for="{{ $item->id }}">&nbsp;</label>
                                            </div>
                                        </td>
                                        <td>
                                            {{ $item->model }}
                                        </td>
                                        <td>
                                            {{ $item->bahan }}
                                        </td>
                                        <td>
                                            {{ $item->jumlah_order }}
                                        </td>
                                        <td>
                                            {{ $item->detail_aksesoris }}
                                        </td>
                                        <td>
                                            {{ $item->indent_bahan }} Hari
                                        </td>
                                        <td>
                                            {{ $item->estimasi_produksi }} Hari
                                        </td>
                                        <td>
                                            <div class="d-flex gap-2">
                                                <a href="{{ route('konveksi.edit', $item->id) }}"
                                                    class="btn btn-soft-primary btn-sm"><iconify-icon
                                                        icon="solar:pen-2-broken"
                                                        class="align-middle fs-18"></iconify-icon></a>
                                                <a href="javascript:;" class="btn btn-soft-danger btn-sm"
                                                    onclick="confirm('Apakah Anda yakin ingin menghapus data ini?') ? document.getElementById('delete-{{ $item->id }}').submit() : ''">
                                                    <iconify-icon icon="solar:trash-bin-minimalistic-2-broken"
                                                        class="align-middle fs-18"></iconify-icon>
                                                </a>
                                                <form action="{{ route('konveksi.destroy', $item->id) }}"
                                                    method="POST" id="delete-{{ $item->id }}">
                                                    @csrf
                                                    @method('DELETE')
                                                </form>
                                            </div>
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="8" class="text-center">Tidak Ada Data</td>
                                    </tr>
                                @endforelse

                            </tbody>
                        </table>
                    </div>
                    <!-- end table-responsive -->
                </div>
                <div class="card-footer border-top">
                    {{ $produksi->links() }}
                </div>
            </div>
        </div>
    </div>

    <script>
        function filterByKonveksi(konveksiId) {
            window.location.href = '{{ url()->current() }}?konveksi_id=' + konveksiId;
        }
    </script>
    <!-- Menambahkan Footer -->
    @include('layouts.partials.footer')
</x-app-layout>
