@extends('layout.app2')

@section('content')
    <h1>Toutes les personnes de la BD :</h1>
    <ul>
        @foreach($personnes as $p)
            <li><a href="/personne/{{$p->id}}">{{$p->nom}} {{$p->prenom}}</a> </li>
        @endforeach
    </ul>
@endsection