<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Film extends Model
{
  protected $table = "film";
  public $timestamps = false;

public function realisateur(){
    return $this->belongsTo("App\Personne","idRealisateur");
}
public function acteurs(){
    return $this->belongsToMany("App\Personne","joue","idFilm","idActeur");
}

}
