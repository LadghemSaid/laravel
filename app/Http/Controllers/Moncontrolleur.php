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
        
    }
}
