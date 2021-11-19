<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        toastr()->success('Bem vindo!');
        return view('welcome');
    }

    public function restrito()
    {
        return view('restrito');
    }

    public function sobre(int $id)
    {
        $eu = [
            'nome' => 'Danylo Alysson Dias de Aquino',
            'idade' => 24,
            'id' => $id
        ];

        return view('sobre', compact('eu'));
    }

    public function estruturaAdministrativa()
    {
        $row = [
            'nome' => 'Danylo',
            'cargo' => 'Cargo',
            'foto' => 'foto'
        ];
        return view('estrutura_administrativa/estruturaAdministrativa', compact('row'));
    }

    public function calendario()
    {
        return view('/calendario/cadastrar');
    }
}
