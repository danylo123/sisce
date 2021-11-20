<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Priorado extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'numero', 'nome', 'imagem', 'regiao_id'
    ];

    public function regiao()
    {
        return $this->belongsTo(
            'App\Regiao'
        );
    }
}
