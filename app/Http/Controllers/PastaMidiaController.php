<?php

namespace App\Http\Controllers;

use App\Midia;
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

    public function listarPastas()
    {
        $pasta = PastaMidia::where('status', 'ativa')->get();

        return view('midia/listar')->with('pasta', $pasta);
    }
    public function listarArquivosPasta($id)
    {
        $midia = Midia::where('pasta_midia_id', $id)->get();
        return view('midia/pasta')->with('midia', $midia);

    }

    public function excluirPasta(Request $resquest)
    {
        $id = $resquest->id;
        $pasta = PastaMidia::find($id);

        $pasta->status = 'desativada';

        $excluir = $pasta->save();

        if ($excluir) {
            toastr()->success('Pasta excluída com sucesso.');
            return redirect()->route('painel.midias');
        } else {
            toastr()->error('Falha ao excluir pasta');
            return redirect()->back();
        }
    }

    public function listar()
    {
        $pasta = PastaMidia::where('status', 'ativa')->get();

        return view('painel/midia/listar')->with('pasta', $pasta);
    }

    public function listarArquivos($id)
    {
        $pasta = PastaMidia::where('id', $id)->get();
        $midia = Midia::where("pasta_midia_id", $id)->get();

        return view('painel/midia/listarArquivo')->with('pasta', $pasta)->with('midia', $midia);
    }

    public function cadastrar($id)
    {
        $pasta = PastaMidia::where('id', $id)->get();

        return view('painel/midia/cadastrar')->with('pasta', $pasta);
    }
    public function storePasta(Request $resquest)
    {
        $pasta = new PastaMidia();

        $pasta->titulo = $resquest->titulo;

        $insert = $pasta->save();

        if ($insert) {
            toastr()->success('Pasta criada com sucesso!');
            return redirect()->route('painel.midias');
        } else {
            toastr()->error('Erro ao criar pasta!');
            return redirect()->back();
        }
    }
}
