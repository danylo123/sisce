<?php

namespace App\Http\Controllers;

use App\PastaMidia;
use Illuminate\Http\Request;

class PastaMidiaController extends Controller
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

    public function listar()
    {
        $pasta = PastaMidia::all();

        return view('midia/listar')->with('pasta', $pasta);
    }

    public function storePasta(Request $resquest)
    {
        $pasta = new PastaMidia();

        $pasta->titulo = $resquest->titulo;

        $insert = $pasta->save();

        if ($insert) {
            return redirect()->route('midia/cadastrar')->with('success', 'Sucesso ao cadastrar pasta');
        } else {
            return redirect()->back()->with('error', 'Falha ao cadastrar pasta...');
        }
    }
}
