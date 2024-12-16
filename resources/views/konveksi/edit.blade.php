<x-app-layout>
    @section('css')
        @vite(['node_modules/choices.js/public/assets/styles/choices.min.css'])
    @endsection
    @section('title', $title)
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <form method="POST" action="{{ route('konveksi.update', $produksi->id) }}" class="data-entry-form">
                    @csrf
                    @method('PUT') <!-- Metode untuk update -->
                    <div class="card-body">
                        <!-- Konveksi -->
                        <div class="mb-3">
                            <x-input-label for="konveksi" :value="__('Konveksi (optional)')" />
                            <select class="form-control" id="konveksi" name="konveksi" data-choices data-choices-groups
                                data-placeholder="Pilih Konveksi">
                                @foreach ($konveksis as $konveksi)
                                    <option value="{{ $konveksi->id }}"
                                        {{ $produksi->konveksi_id == $konveksi->id ? 'selected' : '' }}>
                                        {{ $konveksi->no_po }} - {{ $konveksi->customer }}
                                    </option>
                                @endforeach
                            </select>
                            <x-input-error :messages="$errors->get('konveksi')" class="mt-2" />
                        </div>

                        <!-- Nama Model / Tipe -->
                        <div class="mb-3">
                            <x-input-label for="model" :value="__('Nama Model / Tipe')" />
                            <x-text-input id="model" type="text" name="model" :value="$produksi->model" required
                                autofocus placeholder="Masukkan nama model / tipe" />
                            <x-input-error :messages="$errors->get('model')" class="mt-2" />
                        </div>

                        <!-- Nama Bahan -->
                        <div class="mb-3">
                            <x-input-label for="bahan" :value="__('Nama Bahan')" />
                            <x-text-input id="bahan" type="text" name="bahan" :value="$produksi->bahan" required
                                placeholder="Masukkan nama bahan" />
                            <x-input-error :messages="$errors->get('bahan')" class="mt-2" />
                        </div>

                        <!-- Jumlah Order -->
                        <div class="mb-3">
                            <x-input-label for="jumlah_order" :value="__('Jumlah Order')" />
                            <x-text-input id="jumlah_order" type="number" name="jumlah_order" :value="$produksi->jumlah_order"
                                required placeholder="Masukkan jumlah order" />
                            <x-input-error :messages="$errors->get('jumlah_order')" class="mt-2" />
                        </div>

                        <!-- Detail Aksesoris -->
                        <div class="mb-3">
                            <x-input-label for="detail_aksesoris" :value="__('Detail Aksesoris')" />
                            <x-text-input id="detail_aksesoris" type="text" name="detail_aksesoris"
                                :value="$produksi->detail_aksesoris" placeholder="Masukkan detail aksesoris" />
                            <x-input-error :messages="$errors->get('detail_aksesoris')" class="mt-2" />
                        </div>

                        <!-- Indent Bahan -->
                        <div class="mb-3">
                            <x-input-label for="indent_bahan" :value="__('Indent Bahan')" />
                            <x-text-input id="indent_bahan" type="number" name="indent_bahan" :value="$produksi->indent_bahan"
                                required placeholder="Masukkan total hari indent bahan" />
                            <x-input-error :messages="$errors->get('indent_bahan')" class="mt-2" />
                        </div>

                        <!-- Estimasi Produksi -->
                        <div class="mb-3">
                            <x-input-label for="estimasi_produksi" :value="__('Estimasi Produksi')" />
                            <x-text-input id="estimasi_produksi" type="number" name="estimasi_produksi"
                                :value="$produksi->estimasi_produksi" required placeholder="Masukkan hari estimasi produksi" />
                            <x-input-error :messages="$errors->get('estimasi_produksi')" class="mt-2" />
                        </div>

                        <!-- Tombol Submit -->
                        <div class="mb-1 text-center d-grid">
                            <x-primary-button type="submit" id="submit-button">
                                Simpan Perubahan
                            </x-primary-button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
    @section('script-bottom')
        @vite(['resources/js/pages/app-ecommerce-product.js'])
    @endsection
    <!-- Menambahkan Footer -->
    @include('layouts.partials.footer')
</x-app-layout>
