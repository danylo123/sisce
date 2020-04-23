<?php

namespace App\Http\Controllers;

use App\Midia;
use App\PastaMidia;
use Illuminate\Http\Request;

class MidiaController extends Controller
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

    public function cadastrar()
    {
        $pasta = PastaMidia::all();

        return view('midia/cadastrar')->with('pasta', $pasta);
    }

    public function store(Request $resquest)
    {
        $midia = new Midia();

        $midia->titulo = $resquest->titulo;
        $midia->pasta_midia_id = $resquest->pasta_midia_id;

        $midia->arquivo = $resquest->arquivo;

        if ($resquest->hasFile('arquivo') && $resquest->file('arquivo')->isValid()) {

            $upload = $resquest->arquivo->store('midias');

            $midia->arquivo = $upload;

            if (!$upload) {
                return redirect()->back()->with('error', 'Falha ao cadastrar mídia...');
            }
        } else {
            return redirect()->back()->with('error', 'Falha ao fazer upload da mídia...');
        }


        $insert = $midia->save();

        if ($insert) {
            return redirect()->route('midia/cadastrar')->with('success', 'Sucesso ao cadastrar mídia');
        } else {
            return redirect()->back()->with('error', 'Falha ao cadastrar mídia...');
        }
    }

    public function listarPasta($id)
    {
        $midia = Midia::where('pasta_midia_id', $id)->get();

        return view('midia/pasta')->with('midia', $midia);
    }
}
