@extends('layouts.default')

@section('content')
    <card_info :card-id="{{Request::segment(2)}}"></card_info>
@endsection