<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    @include('layouts.partials/title-meta')
    @yield('css')
    @include('layouts.partials/head-css')
</head>

<body>
    <div class="wrapper">
        @include('layouts.partials/topbar')
        @include('layouts.partials/main-nav')
        <div class="page-content">

            <div class="container-fluid">
                {{ $slot }}
            </div>
        </div>

    </div>
    @include('layouts.partials/right-sidebar')
    @include('layouts.partials/footer-scripts')
    @vite(['resources/js/app.js', 'resources/js/layout.js'])

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            document.querySelectorAll('form').forEach((form) => {
                form.addEventListener('submit', function(event) {
                    const submitButton = form.querySelector('button[type="submit"]');
                    const spinner = submitButton.querySelector('.spinner-border');

                    if (submitButton) {
                        if (spinner) spinner.style.display = 'inline-block';

                        submitButton.disabled = true;
                    }
                });
            });
        });
    </script>
</body>

</html>
