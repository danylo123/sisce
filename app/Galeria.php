<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Galeria extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'nome', 'cargo', 'imagem', 'nome_gestao', 'periodo', 'tipo_galeria_id' 
    ];

    public function tipo_galeria()
    {
        return $this->belongsTo(
            'App\Galeria'
        );
    }
}
