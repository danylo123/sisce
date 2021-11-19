<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PastaMidia extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'titulo'
    ];

    public function midia()
    {
        return $this->hasMany(
            'App\Midia'
        );
    }
}
