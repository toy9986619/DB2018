@extends('layouts.default')

@section('content')
    {{-- <p>{{ Auth::user()->name }}</p> --}}
    @if (Auth::guest())
    <card_info :card-id="{{Request::segment(2)}}" user-name="Guest"></card_info>
    @else
    <card_info :card-id="{{Request::segment(2)}}" user-name="{{ Auth::user()->name}}"></card_info>
    @endif
    
@endsection
