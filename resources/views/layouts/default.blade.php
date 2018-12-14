<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>{{ $title }}</title>
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