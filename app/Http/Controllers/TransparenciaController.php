<?php

namespace App\Http\Controllers;

use App\Transparencia;
use Illuminate\Http\Request;

class TransparenciaController extends Controller
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
        return view('transparencia/cadastrar');
    }

    public function store(Request $resquest)
    {
        $transparencia = new Transparencia();

        $transparencia->arquivo = $resquest->arquivo;

        if ($resquest->hasFile('arquivo') && $resquest->file('arquivo')->isValid()) {

            $upload = $resquest->arquivo->store('transparencia');

            $transparencia->arquivo = $upload;
        }

        $transparencia->titulo = $resquest->titulo;
        $transparencia->ano = $resquest->ano;
        $transparencia->tipo = $resquest->tipo;

        $insert = $transparencia->save();

        if ($insert) {
            return redirect()->route('transparencia/cadastrar')->with('success', 'Sucesso ao cadastrar galeria');
        } else {
            return redirect()->back()->with('error', 'Falha ao cadastrar galeria...');
        }
    }

    public function listarGce()
    {
        $ano = Transparencia::orderBy('ano')->where('tipo', 1)->groupBy('ano')->get();

        return view('transparencia/gce/listar')->with('ano', $ano);
    }

    public function listarGceAno($ano)
    {
        $transparencia = Transparencia::orderBy('created_at')->where('ano', $ano)->where('tipo', 1)->get();

        return view('transparencia/gce/ano')->with('transparencia', $transparencia);
    }

    public function listarAdace()
    {
        $ano = Transparencia::orderBy('ano')->where('tipo', 2)->groupBy('ano')->get();

        return view('transparencia/adace/listar')->with('ano', $ano);
    }

    public function listarAdaceAno($ano)
    {
        $transparencia = Transparencia::orderBy('created_at')->where('ano', $ano)->where('tipo', 2)->get();

        return view('transparencia/adace/ano')->with('transparencia', $transparencia);
    }
}
