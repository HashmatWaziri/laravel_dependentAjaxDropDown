<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Album extends Model

{
    protected $table = 'albums';
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function songs()

    {

        return $this->hasMany('App\Song');


    }

    public function listeners()

    {


        return $this->belongsToMany('App\Listener');

    }

    /**
     * Get all of the albums's photos
     * @return \Illuminate\Database\Eloquent\Relations\MorphMany
     *
     */
    public function photos()

    {

        return $this->morphMany('App\Photo', 'imageable');


    }
}
