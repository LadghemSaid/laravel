@extends('layout.app2')

@section('content')
    <h1>{{$film->titre}}</h1>
    
    <p>Nombre de spectateur :{{$film->nbSpectateurs}} </p>

    <p>Annee :{{$film->annee}} </p>


    @if($film->realisateur != false) 
        <h4>Realisateur :</h4>
        <ul>   
                <li><a href='/personne/{{$film->realisateur->id}}'>{{$film->realisateur->nom}} {{$film->realisateur->prenom}}</a></li>
        </ul>
    @endif

    @if($film->acteurs != false) 
        <h4>Acteurs :</h4>
        <ul>
        @foreach($film->acteurs as $p)
                <li><a href='/personne/{{$p->id}}'>{{$p->nom}} {{$p->prenom}}</a></li>
        @endforeach
        </ul>
    @endif
@endsection