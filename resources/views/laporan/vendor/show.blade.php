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
                                    <th>No PO</th>
                                    <th>Customer</th>
                                    <th>Nama Pesanan</th>
                                    <th>Progress</th>
                                    <th>Terakhir Diupdate</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($konveksi as $item)
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input"
                                                    id="{{ $item->id }}">
                                                <label class="form-check-label" for="{{ $item->id }}">&nbsp;</label>
                                            </div>
                                        </td>
                                        <td>
                                            {{ $item->no_po }}
                                        </td>
                                        <td>
                                            {{ $item->customer }}
                                        </td>
                                        <td>
                                            {{ $item->nama_pesanan }}
                                        </td>
                                        <td>
                                            {{ $item->progress->first()?->desc ?? 'Belum ada progress' }}
                                        </td>
                                        <td data-bs-toggle="tooltip" data-bs-placement="top"
                                            data-bs-title="{{ $item->updated_at }}">
                                            {{ $item->updated_at->diffForHumans() }}
                                        </td>
                                        <td>
                                            <div class="d-flex gap-2">
                                                <a href="{{ route('laporan-vendor.edit', $item->id) }}"
                                                    class="btn btn-soft-primary btn-sm"><iconify-icon
                                                        icon="solar:pen-2-broken"
                                                        class="align-middle fs-18"></iconify-icon></a>
                                                <a href="javascript:;" class="btn btn-soft-danger btn-sm"
                                                    onclick="confirm('Apakah Anda yakin ingin menghapus data ini?') ? document.getElementById('delete-{{ $item->id }}').submit() : ''">
                                                    <iconify-icon icon="solar:trash-bin-minimalistic-2-broken"
                                                        class="align-middle fs-18"></iconify-icon>
                                                </a>
                                                <form action="{{ route('laporan-vendor.destroy', $item->id) }}"
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
                    {{ $konveksi->links() }}
                </div>
            </div>
        </div>

    </div>
    <!-- Menambahkan Footer -->
    @include('layouts.partials.footer')
</x-app-layout>
