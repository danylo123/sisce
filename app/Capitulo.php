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
        'numero', 'nome', 'cidade_id', 'imagem', 'regiao_id'
    ];


    public function cidade()
    {
        return $this->belongsTo(
            'App\Cidade'
        );
    }

    public function membro()
    {
        return $this->hasMany(
            'App\User'
        );
    }

    public function membros()
    {
        return $this->hasMany(
            'App\User'
        );
    }

    public function regiao()
    {
        return $this->belongsTo(
            'App\Regiao'
        );
    }
}
