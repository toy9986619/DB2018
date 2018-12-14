<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>{{ $title or '主頁' }}</title>
    <link rel=stylesheet type="text/css" href="{{ asset('css/all.css') }}">
</head>
<body>
    @section('navbar')
        @include('layouts.navbar')
    @show

    {{-- Vue.js 掛載點 --}}
    <div id="app">
        @yield('content')
    </div>
 <script src="{{ asset('js/main.js')}}"></script>
</body>
</html>