<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Personne;
use App\Film;

class Moncontrolleur extends Controller
{
    function index(){

        return view('index');
    }
    function test(){
        return "cc"; 
    }

    function bonjour($nom){
        return view('bonjour', [ "name" => $nom ] );
    }

    function personnes(){
        $personnes= Personne::all();
        return view('personnes',["personnes" => $personnes]);

    }
    function personne($id){
        $personne= Personne::find($id);
        if(!$personne){
            return abort('404');
        }
        return view('personne',["personne" => $personne]);

    }


    function films(){
        $films= Film::all();
        return view('films',["films" => $films]);
    }


    function film($id){
        $film= Film::find($id);
        if(!$film){
            return abort('404');
        }
        return view('film',["film" => $film]);

    }

    function ajout(){
        return view('formAjout');
    }
    
    function cree(Request $request){
        $request->validate([
            'titre'=>"required|min:3",
            'annee'=>"required|min:4",
            'nbSpectateurs'=>"required"
            
        ]);

        $f = new Film();
        $f->titre = $request->input('titre');
        $f->annee = $request->input('annee');
        $f->nbSpectateurs = $request->input('nbSpectateurs');
        $f->save();
        return redirect("/");
    }

}
