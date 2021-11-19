<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'id_sisdm', 'email', 'password', 'imagem', 'capitulo_id', 'nivel',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public $rules = [
        'name' => 'required|min:3|max:100',
        'id_sisdm' => 'required|numeric|min:3|unique',
        'email' => 'required|email|unique',
    ];

    public function capitulo()
    {
        return $this->belongsTo(
            'App\Capitulo'
        );
    }

    
}
