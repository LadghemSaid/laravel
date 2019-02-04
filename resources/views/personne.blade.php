@extends('layout.app2')

@section('content')
    <h1>{{$personne->prenom}} {{$personne->nom}}</h1>
    
    <p>Nationalité :{{$personne->pays}} </p>

    <p>Date de naissance :{{$personne->naissance}} </p>

    @if($personne->mort!=null)
    <p>Décédé le : {{$personne->mort}}</p>
    @endif

    <h4>Realisation :</h4>
    <ul>
        @foreach($personne->realisation as $f)
            <li><a href='/film/{{$f->id}}'>{{$f->titre}}</a></li>
        @endforeach
    </ul>


    <h4>Acteur dans :</h4>
    <ul>
    @foreach($personne->joueDans as $f)
            <li><a href='/film/{{$f->id}}'>{{$f->titre}}</a></li>
        @endforeach
    </ul>

@endsection