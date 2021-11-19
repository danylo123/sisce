<?php

namespace App\Http\Controllers;

use App\Galeria;
use App\Http\Requests\GaleriaRquest;
use App\TipoGaleria;
use Illuminate\Http\Request;

class GaleriaController extends Controller
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
        $tipo_galeria = TipoGaleria::all();

        return view('galeria/cadastrar')->with('tipo_galeria', $tipo_galeria);
    }

    public function store(GaleriaRquest $resquest)
    {
        $galeria = new Galeria();

        $galeria->imagem = $resquest->imagem;

        if ($resquest->hasFile('imagem') && $resquest->file('imagem')->isValid()) {

            $upload = $resquest->imagem->store('galerias');

            $galeria->imagem = $upload;
        }

        $galeria->nome = $resquest->nome;
        $galeria->nome_gestao = $resquest->nome_gestao;
        $galeria->cargo = $resquest->cargo;
        $galeria->periodo = $resquest->periodo;
        $galeria->tipo_galeria_id = $resquest->tipo_galeria_id;


        $insert = $galeria->save();

        if ($insert) {
            toastr()->success('Galeria cadastrada com sucesso!');
            return redirect()->route('painel.galerias');
        } else {
            toastr()->error('Erro, tente novamente!');
            return redirect()->back();
        }
    }

    public function edit(GaleriaRquest $resquest)
    {
        $id = $resquest->id;
        $galeria = Galeria::find($id);

        if ($resquest->imagem != null) {

            $galeria->imagem = $resquest->imagem;

            if ($resquest->hasFile('imagem') && $resquest->file('imagem')->isValid()) {

                $upload = $resquest->imagem->store('galerias');

                $galeria->imagem = $upload;
            }
        }

        $galeria->nome = $resquest->nome;
        $galeria->nome_gestao = $resquest->nome_gestao;
        $galeria->cargo = $resquest->cargo;
        $galeria->periodo = $resquest->periodo;
        $galeria->tipo_galeria_id = $resquest->tipo_galeria_id;


        $insert = $galeria->update();

        if ($insert) {
            toastr()->success('Galeria editada com sucesso!');
            return redirect()->route('painel.galerias');
        } else {
            toastr()->error('Erro ao editar, tente novamente!');
            return redirect()->back();
        }
    }

    public function listarGme()
    {
        $galeria = Galeria::where('tipo_galeria_id', 1)->orderBy('periodo', 'asc')->get();

        return view('galeria/gme/listar')->with('galeria', $galeria);
    }

    public function listarMce()
    {
        $galeria = Galeria::where('tipo_galeria_id', 2)->orderBy('periodo', 'asc')->get();

        return view('galeria/mce/listar')->with('galeria', $galeria);
    }

    public function listarIcce()
    {
        $galeria = Galeria::where('tipo_galeria_id', 3)->orderBy('periodo', 'asc')->get();

        return view('galeria/icce/listar')->with('galeria', $galeria);
    }

    public function listarOfcExec()
    {
        $galeria = Galeria::where('tipo_galeria_id', 4)->orderBy('periodo', 'asc')->get();

        return view('galeria/ofc_executivo/listar')->with('galeria', $galeria);
    }

    public function listarMcr()
    {
        $galeria = Galeria::where('tipo_galeria_id', 5)->orderBy('periodo', 'asc')->get();

        return view('galeria/mcr/listar')->with('galeria', $galeria);
    }

    public function listarAdace()
    {
        $galeria = Galeria::where('tipo_galeria_id', 6)->orderBy('periodo', 'asc')->get();

        return view('galeria/adace/listar')->with('galeria', $galeria);
    }

    public function listarGcc()
    {
        $galeria = Galeria::where('tipo_galeria_id', 7)->orderBy('periodo', 'asc')->get();

        return view('galeria/gcc/listar')->with('galeria', $galeria);
    }
}
