<x-app-layout>
    @section('css')
        @vite(['node_modules/choices.js/public/assets/styles/choices.min.css'])
    @endsection
    @section('title', $title)
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <!-- Nama Model / Tipe -->
                    <div class="mb-3">
                        <x-input-label for="model" :value="__('Jenis Model / Tipe')" />
                        <x-text-input id="model" type="text" name="model" :value="$produksi->model" required disabled
                            autofocus placeholder="Masukkan nama model / tipe" />
                        <x-input-error :messages="$errors->get('model')" class="mt-2" />
                    </div>

                    <!-- Nama Bahan -->
                    <div class="mb-3">
                        <x-input-label for="bahan" :value="__('Nama Bahan')" />
                        <x-text-input id="bahan" type="text" name="bahan" :value="$produksi->bahan" required disabled
                            placeholder="Masukkan nama bahan" />
                        <x-input-error :messages="$errors->get('bahan')" class="mt-2" />
                    </div>

                    <!-- Jumlah Order -->
                    <div class="mb-3">
                        <x-input-label for="jumlah_order" :value="__('Jumlah Order')" />
                        <x-text-input id="jumlah_order" type="number" name="jumlah_order" disabled :value="$produksi->jumlah_order"
                            required placeholder="Masukkan jumlah order" />
                        <x-input-error :messages="$errors->get('jumlah_order')" class="mt-2" />
                    </div>

                    <!-- Detail Aksesoris -->
                    <div class="mb-3">
                        <x-input-label for="detail_aksesoris" :value="__('Detail Aksesoris')" />
                        <x-text-input id="detail_aksesoris" type="text" name="detail_aksesoris" disabled
                            :value="$produksi->detail_aksesoris" placeholder="Masukkan detail aksesoris" />
                        <x-input-error :messages="$errors->get('detail_aksesoris')" class="mt-2" />
                    </div>

                    <!-- Catatan -->
                    <div class="mb-3">
                        <x-input-label for="catatan" :value="__('Catatan')" />
                        <textarea id="catatan" class="form-control" name="catatan" data-id="{{ $produksi->id }}" autofocus>{!! $produksi->catatan !!}</textarea>
                        <small class="text-muted">Catatan ini akan disimpan secara otomatis.</small>
                        <x-input-error :messages="$errors->get('catatan')" class="mt-2" />
                    </div>

                    <!-- Indent Bahan -->
                    <div class="mb-3">
                        <x-input-label for="indent_bahan" :value="__('Indent Bahan')" />
                        <x-text-input id="indent_bahan" type="text" name="indent_bahan" disabled :value="$produksi->indent_bahan . ' Hari'"
                            required placeholder="Masukkan total hari indent bahan" />
                        <x-input-error :messages="$errors->get('indent_bahan')" class="mt-2" />
                    </div>
                    <div class="mb-1 text-right float-end">
                        <x-primary-button type="submit" id="cetak-pdf">
                            {{ __('Cetak PDF') }}
                        </x-primary-button>
                    </div>
                    <div class="card-header">
                    <h4 class="card-title text-center font-bold">Estimasi Produksi: {{ $produksi->estimasi_produksi }}
                        Hari
                    </h4>
                </div>
                </div>
            </div>
        </div>
    </div>
    @section('script-bottom')
        @vite(['resources/js/pages/app-ecommerce-product.js'])
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

        <script>
            $(document).ready(function() {
                $('#cetak-pdf').on('click', function() {
                    window.open("{{ route('estimasi-produksi.pdf', $produksi->id) }}", "_blank");
                });

                $('#catatan').on('input', function() {
                    let catatan = $(this).val();
                    let produksiId = $(this).data('id');

                    $.ajax({
                        url: "{{ route('estimasi-produksi.update-catatan') }}",
                        method: 'POST',
                        data: {
                            _token: '{{ csrf_token() }}',
                            id: produksiId,
                            catatan: catatan,
                        },
                        success: function(response) {
                            // console.log('Catatan berhasil diperbarui:', response);
                        },
                        error: function(xhr) {
                            console.error('Gagal memperbarui catatan:', xhr.responseText);
                        }
                    });
                });
            });
        </script>
    @endsection
    <!-- Menambahkan Footer -->
    @include('layouts.partials.footer')
</x-app-layout>
