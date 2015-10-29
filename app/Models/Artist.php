<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Artist extends Model
{
    public function albumSongs()
    {

        return $this->hasManyThrough('App\Song', 'App\Album');

    }

    /**
     * Get all of the artist's photos
     * @return \Illuminate\Database\Eloquent\Relations\MorphMany
     *
     */
    public function photos()
    {

        return $this->morphMany('App\Photo', 'imageable');

    }
}
