<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Game extends Model
{
    protected $fillable = ['title', 'image_url', 'genre_id', 'description'];

    public function genre()
    {
        return $this->belongsTo(Genre::class);
    }
}
