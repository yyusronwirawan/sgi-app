<x-app-layout>
    @section('css')
        @vite(['node_modules/choices.js/public/assets/styles/choices.min.css'])
    @endsection
    @section('title', $title)
    @if (session('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Success!</strong> {{ session('success') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endif
    <div class="row justify-content-center">
        <div class="col-lg-8">
            <div class="card">
                <form method="POST" action="{{ route('laporan-vendor.update', $konveksi->id) }}"
                    enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="card-body">
                        <!-- Nama Customer -->
                        <div class="mb-3">
                            <x-input-label for="customer" :value="__('Nama Customer')" />
                            <x-text-input id="customer" type="text" name="customer"
                                value="{{ old('customer', $konveksi->customer) }}" required />
                            <x-input-error :messages="$errors->get('customer')" class="mt-2" />
                        </div>
                        <!-- Nomor PO -->
                        <div class="mb-3">
                            <x-input-label for="no_po" :value="__('Nomor PO')" />
                            <x-text-input id="no_po" type="text" name="no_po"
                                value="{{ old('no_po', $konveksi->no_po) }}" />
                            <small class="text-muted">Biarkan kosong untuk generate otomatis</small>
                            <x-input-error :messages="$errors->get('no_po')" class="mt-2" />
                        </div>

                        <!-- Tanggal -->
                        <div class="mb-3">
                            <x-input-label for="date" :value="__('Tanggal')" />
                            <x-text-input id="date" type="date" name="date"
                                value="{{ old('date', $konveksi->date->toDateString()) }}" required />
                            <x-input-error :messages="$errors->get('date')" class="mt-2" />
                        </div>

                        <!-- Nama Pesanan -->
                        <div class="mb-3">
                            <x-input-label for="nama_pesanan" :value="__('Nama Pesanan')" />
                            <x-text-input id="nama_pesanan" type="text" name="nama_pesanan"
                                value="{{ old('nama_pesanan', $konveksi->nama_pesanan) }}" required />
                            <x-input-error :messages="$errors->get('nama_pesanan')" class="mt-2" />
                        </div>

                        <!-- Tombol Submit -->
                        <div class="mb-1 text-right float-end">
                            <x-primary-button type="submit">
                                Update Data
                            </x-primary-button>
                        </div>
                    </div>
                </form>
            </div>

            <div class="card" id="progress">
                <div class="card-header">
                    <h4 class="card-title">Progress</h4>
                </div>
                <div class="card-body">
                    <form method="POST" action="{{ route('laporan-vendor.progress', $konveksi->id) }}"
                        enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <x-input-label for="progress" :value="__('Progress')" />
                            <div class="col-md-6 mb-3">
                                <select id="progress" name="progress" class="form-select" data-choices
                                    data-choices-groups data-placeholder="Pilih Persentase Progress">
                                    @for ($i = 10; $i <= 100; $i += 10)
                                        @if (in_array($i, $progressExist))
                                            @continue
                                        @endif
                                        <option value="{{ $i }}">{{ $i }}%</option>
                                    @endfor
                                </select>
                                <x-input-error :messages="$errors->get('progress')" class="mt-2" />
                            </div>

                            <div class="col-md-6 mb-3">
                                <select id="desc" name="desc" class="form-select" data-choices
                                    data-choices-groups data-placeholder="Pilih Progress">
                                    @foreach (\App\Enums\ProgressProduksi::getAllCases() as $item)
                                        @if (in_array($item->value, $descriptionExist))
                                            @continue
                                        @endif
                                        <option value="{{ $item->value }}">{{ $item->value }}</option>
                                    @endforeach
                                </select>
                                <x-input-error :messages="$errors->get('desc')" class="mt-2" />
                            </div>
                        </div>
                        <div class="mb-3">
                            <x-input-label for="photo" :value="__('Bukti Foto')" />
                            <div class="border p-4 text-center" id="dropzone"
                                style="cursor: pointer; background-color: #f7f7f7;">
                                <p class="text-muted">Drag and drop foto di sini, atau klik untuk memilih foto</p>
                                <input type="file" name="photo" id="photo" class="d-none" accept="image/*"
                                    onchange="previewImage(event)" />
                                <div class="mt-3" id="imagePreview" style="display: none;">
                                    <img id="imagePreviewImg" src="#" alt="Pratinjau Foto" class="img-fluid"
                                        style="max-width: 200px;" />
                                </div>
                            </div>
                            <x-input-error :messages="$errors->get('photo')" class="mt-2" />
                        </div>

                        <div class="mb-3 d-flex justify-content-end">
                            <x-primary-button type="submit">
                                Tambah Progress
                            </x-primary-button>
                        </div>
                    </form>
                    @if (session('success-progress'))
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <strong>Success!</strong> {{ session('success-progress') }}
                            <button type="button" class="btn-close" data-bs-dismiss="alert"
                                aria-label="Close"></button>
                        </div>
                    @endif
                    <div class="row">
                        <div class="table-responsive">
                            <table class="table align-middle mb-0 table-hover table-centered text-center">
                                <thead class="bg-light-subtle">
                                    <tr>
                                        <th>Update Terakhir</th>
                                        <th>Persentase</th>
                                        <th>Detail</th>
                                        <th>Bukti</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse ($konveksi->progress as $item)
                                        <tr>
                                            <td>
                                                {{ $item->created_at->diffForHumans() }}
                                            </td>
                                            <td>
                                                {{ $item->progress }}%
                                            </td>
                                            <td>
                                                {{ $item->desc }}
                                            </td>
                                            <td>
                                                <div class="d-flex align-items-center gap-2">
                                                    <div
                                                        class="rounded bg-light avatar-md d-flex align-items-center justify-content-center">
                                                        <img src="{{ $item->photo_url }}"
                                                            alt="Bukti Foto {{ $item->desc }}"
                                                            class="avatar-md " />
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="d-flex gap-2">
                                                    <a href="javascript:;" class="btn btn-soft-danger btn-sm"
                                                        onclick="confirm('Apakah Anda yakin ingin menghapus data ini?') ? document.getElementById('delete-{{ $item->id }}').submit() : ''">
                                                        <iconify-icon icon="solar:trash-bin-minimalistic-2-broken"
                                                            class="align-middle fs-18"></iconify-icon>
                                                    </a>
                                                    <form
                                                        action="{{ route('laporan-vendor.progress.destroy', $item->id) }}"
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
                </div>
            </div>
        </div>
    </div>
    @section('script-bottom')
        @vite(['resources/js/pages/app-ecommerce-product.js'])
        <script>
            document.getElementById('dropzone').addEventListener('click', function() {
                document.getElementById('photo').click();
            });

            // Fungsi untuk menangani dragover dan drop event
            const dropzone = document.getElementById('dropzone');

            dropzone.addEventListener('dragover', function(event) {
                event.preventDefault();
                dropzone.style.backgroundColor = '#e9ecef';
            });

            dropzone.addEventListener('dragleave', function(event) {
                dropzone.style.backgroundColor = '#f7f7f7';
            });

            dropzone.addEventListener('drop', function(event) {
                event.preventDefault();
                dropzone.style.backgroundColor = '#f7f7f7';
                const files = event.dataTransfer.files;
                document.getElementById('photo').files = files; // Memasukkan file ke input
                previewImage(event); // Menampilkan pratinjau gambar
            });

            // Fungsi untuk menampilkan pratinjau gambar setelah pemilihan file
            function previewImage(event) {
                var reader = new FileReader();
                reader.onload = function() {
                    var output = document.getElementById('imagePreview');
                    var img = document.getElementById('imagePreviewImg');
                    img.src = reader.result;
                    output.style.display = 'block'; // Menampilkan pratinjau gambar
                };
                reader.readAsDataURL(event.target.files[0]);
            }
        </script>
    @endsection
    <!-- Menambahkan Footer -->
    @include('layouts.partials.footer')
</x-app-layout>
