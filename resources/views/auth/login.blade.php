@extends('layouts.guest', ['title' => 'Login'])

@section('content')
    <div class="row g-0 h-100">
        <!-- Kolom Form Login -->
        <div class="col-12 col-md-7 d-flex justify-content-center align-items-center">
            <div class="row justify-content-center w-100">
                <div class="col-lg-8 col-md-10 py-lg-5 py-4">
                    <div class="d-flex flex-column justify-content-start text-start">
                        <!-- Logo -->
                        <div class="auth-logo mb-3">
                            <img src="/images/logo-dark.png" height="24" alt="logo dark">
                        </div>

                        <!-- Judul dan Deskripsi -->
                        <h2 class="fw-bold fs-24">Masuk</h2>
                        <p class="text-muted mt-1 mb-4">
                            Masukkan nama pengguna dan kata sandi Anda untuk masuk ke akun Anda.
                        </p>

                        <!-- Form -->
                        <form method="POST" action="{{ route('login') }}" class="authentication-form" id="login-form">
                            @csrf
                            <!-- Email Address -->
                            <div class="mb-3">
                                <x-input-label for="username" :value="__('Username')" />
                                <x-text-input id="username" type="text" name="username" :value="old('username')"
                                    required autofocus autocomplete="username"
                                    placeholder="Masukkan username" class="w-100" />
                                <x-input-error :messages="$errors->get('username')" class="mt-2" />
                            </div>

                            <!-- Password -->
                            <div class="mb-3">
                                @if (Route::has('password.request'))
                                    <a href="{{ route('password.request') }}"
                                       class="float-end text-muted text-unline-dashed ms-1">Reset Kata Sandi</a>
                                @endif
                                <x-input-label for="password" :value="__('Kata Sandi')" />
                                <x-text-input id="password" class="block mt-1 w-100" type="password"
                                    name="password" required autocomplete="current-password"
                                    placeholder="Masukkan password" />
                                <x-input-error :messages="$errors->get('password')" class="mt-2" />
                            </div>

                            <!-- Remember Me -->
                            <div class="mb-3">
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="remember_me" name="remember">
                                    <label class="form-check-label" for="remember_me">{{ __('Remember me') }}</label>
                                </div>
                            </div>

                            <!-- Tombol Login -->
                            <div class="mb-1 text-center d-grid">
                                <button class="btn btn-soft-primary" type="submit" id="login-button">
                                    <span class="spinner-border spinner-border-sm me-2" role="status"
                                        aria-hidden="true" style="display: none;" id="spinner"></span>
                                    Masuk
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Kolom Gambar -->
        <div class="col-12 col-md-5 d-none d-md-flex">
            <div class="card h-100 mb-0 overflow-hidden">
                <div class="d-flex flex-column h-100">
                    <img src="/images/small/img-10.jpg" alt="" class="w-100 h-100 object-fit-cover">
                </div>
            </div>
        </div>
    </div>

    <script>
        document.getElementById('login-form').addEventListener('submit', function () {
            const loginButton = document.getElementById('login-button');
            const spinner = document.getElementById('spinner');

            // Tampilkan spinner
            spinner.style.display = 'inline-block';

            // Nonaktifkan tombol untuk mencegah klik ganda
            loginButton.disabled = true;
        });
    </script>

    <!-- Menambahkan Footer -->
    @include('layouts.partials.footer')
@endsection
