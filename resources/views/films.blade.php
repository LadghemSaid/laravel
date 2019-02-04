@extends('layout.app2')

@section('content')
    <h1>Les films :</h1>
    

    <ul>
        @foreach($films as $f)
            <li><a href='/film/{{$f->id}}'>{{$f->titre}}</a></li>
        @endforeach
    </ul>


@endsection