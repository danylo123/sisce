<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Aviso extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'titulo', 'ativo', 'imagem', 'user_name'
    ];
}
