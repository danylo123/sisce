<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PastaDocumento extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'titulo', 'tipo'
    ];

    public function documento()
    {
        return $this->hasMany(
            'App\Documento'
        );
    }
    
}
