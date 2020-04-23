<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transparencia extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'titulo', 'ano', 'arquivo', 'tipo'
    ];
}
