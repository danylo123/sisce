<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Capitulo extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'numero', 'nome', 'cidade_id', 'imagem'
    ];


    public function cidade()
    {
        return $this->belongsTo(
            'App\Cidade'
        );
    }
}
