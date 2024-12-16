<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}" class="h-100">

<head>
    @include('layouts.partials/title-meta')
    @yield('css')
    @include('layouts.partials/head-css')
</head>

<body class="h-100">
    @yield('content')

    @include('layouts.partials/footer-scripts')
    @vite(['resources/js/app.js', 'resources/js/layout.js'])
</body>

</html>
