<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Listener extends Model
{
    public function albums(){


        return $this->belongsToMany('App\Album');
    }
}
