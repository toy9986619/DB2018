@extends('layouts.default')

@section('content')
    {{--  <p>{{ Auth::user()->name }}</p>
    <p>{{ Auth::user()->type }}</p>
    <p>{{ Auth::user()->select('name', 'type')->get() }}</p>  --}}
    @if (Auth::guest())
    <card_info :card-id="{{Request::segment(2)}}" user-name="Guest" user-type="guest"></card_info>
    @else
    <card_info :card-id="{{Request::segment(2)}}" user-name="{{Auth::user()->name}}" user-type="{{Auth::user()->type}}"></card_info>
    @endif
    
@endsection
