@extends('layout.app2')

@section('content')
    <h1>Ajoutez un film :</h1>
    

    <form action="/creeFilm" method="POST" >
    {{csrf_field()}}
    <input type="text" placeholder="Titre" name="titre" value="{{old('titre')}}" required />
    <br/>
    <input type="number" placeholder="Annee" name="annee" value="{{old('annee')}}" required />
    <br/>
    <input type="number" placeholder="Nombre de spectateur" name="nbSpectateurs" value="{{old('nbSpectateurs')}}" required />
    <button type='submit'>Envoyer</button>
    </form>


@endsection