<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Midia extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'titulo', 'arquivo', 'pasta_midia_id'
    ];
}
