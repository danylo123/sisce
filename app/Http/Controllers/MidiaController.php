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

    public function store(Request $resquest)
    {
        $midia = new Midia();

        $midia->titulo = $resquest->titulo;
        $midia->pasta_midia_id = $resquest->pasta_midia_id;


        if ($resquest->hasFile('arquivo') && $resquest->file('arquivo')->isValid()) {
            $midia->arquivo = $resquest->arquivo;

            $upload = $resquest->arquivo->store('midias');

            $midia->arquivo = $upload;

            if (!$upload) {
                toastr()->error('Falha ao cadastrar mídia...');
                return redirect()->back();
            }
        } else {
            toastr()->error('Falha ao fazer upload da mídia...');

            return redirect()->back();
        }


        $insert = $midia->save();

        if ($insert) {
            toastr()->success('Mídia cadastrada com sucesso!');
            return redirect()->route('painel.midias');
        } else {
            toastr()->error('Erro, tente novamente!');
            return redirect()->back();
        }
    }
}
