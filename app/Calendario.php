<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Calendario extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
         'ano', 'semestre', 'arquivo', 'capitulo_id'
    ];
    
    public function capitulo()
    {
        return $this->belongsTo(
            'App\Capitulo'
        );
    }
}
