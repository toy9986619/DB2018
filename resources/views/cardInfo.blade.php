<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>卡片資料</title>
</head>

<body>
        
    <div id="app">
    <card_info :card-id="{{Request::segment(2)}}"></card_info>
    </div>

<script src="{{ asset('js/main.js')}}"></script>
</body>
</html>