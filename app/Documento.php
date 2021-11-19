<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Documento extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'titulo', 'arquivo', 'pasta_documento_id'
    ];

    public function pasta()
    {
        return $this->belongsTo(
            'App\PastaDocumento'
        );
    }
}
