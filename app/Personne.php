<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Personne extends Model
{
    protected $table = "personne";
    public $timestamps = false;

    function realisation(){
        return $this->hasMany("App\Film", "idRealisateur");
    }

    public function joueDans(){
        return $this->belongsToMany("App\Film", "joue", "idActeur", "idFilm");
    }
}
