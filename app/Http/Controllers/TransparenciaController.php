<?php

namespace App\Http\Controllers;

use App\Http\Requests\TransparenciaRequest;
use App\Transparencia;
use Illuminate\Foundation\Http\Middleware\TransformsRequest;
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

    public function store(TransparenciaRequest $resquest)
    {
        $transparencia = new Transparencia();

        $transparencia->titulo = $resquest->titulo;
        $transparencia->ano = $resquest->ano;
        $transparencia->tipo = $resquest->tipo;
        $transparencia->arquivo = $resquest->arquivo;

        if ($resquest->hasFile('arquivo') && $resquest->file('arquivo')->isValid()) {

            $upload = $resquest->arquivo->store('transparencia');

            $transparencia->arquivo = $upload;
        }



        $insert = $transparencia->save();

        if ($insert) {
            toastr()->success('Arquivos salvo com sucesso!');
            return redirect()->route('painel.transparencia');
        } else {
            toastr()->error('Erro ao salvar arquivo!');
            return redirect()->back();
        }
    }

    public function edit(TransparenciaRequest $resquest)
    {
        $id = $resquest->id;
        $transparencia = Transparencia::find($id);

        $transparencia->arquivo = $resquest->arquivo;

        if ($resquest->hasFile('arquivo') && $resquest->file('arquivo')->isValid()) {

            $upload = $resquest->arquivo->store('transparencia');

            $transparencia->arquivo = $upload;
        }

        if ($transparencia->arquivo == null) {
            unset($transparencia->arquivo);
        }

        $transparencia->titulo = $resquest->titulo;
        $transparencia->ano = $resquest->ano;
        $transparencia->tipo = $resquest->tipo;

        $update = $transparencia->update();


        if ($update) {
            toastr()->success('Arquivos editado com sucesso!');
            return redirect()->route('painel.transparencia');
        } else {
            toastr()->error('Erro ao editar arquivo!');
            return redirect()->back();
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
