<?php

namespace App\Http\Controllers;

use App\Galeria;
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

    public function store(Request $resquest)
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
            return redirect()->route('galeria/cadastrar')->with('success', 'Sucesso ao cadastrar galeria');
        } else {
            return redirect()->back()->with('error', 'Falha ao cadastrar galeria...');
        }
    }

    public function listarGme()
    {
        $galeria = Galeria::all()->where('tipo_galeria_id', 1);

        return view('galeria/gme/listar')->with('galeria', $galeria);
    }

    public function listarMce()
    {
        $galeria = Galeria::all()->where('tipo_galeria_id', 2);

        return view('galeria/mce/listar')->with('galeria', $galeria);
    }

    public function listarIcce()
    {
        $galeria = Galeria::all()->where('tipo_galeria_id', 3);

        return view('galeria/icce/listar')->with('galeria', $galeria);
    }

    public function listarOfcExec()
    {
        $galeria = Galeria::all()->where('tipo_galeria_id', 4);

        return view('galeria/ofc_executivo/listar')->with('galeria', $galeria);
    }

    public function listarMcr()
    {
        $galeria = Galeria::all()->where('tipo_galeria_id', 5);

        return view('galeria/mcr/listar')->with('galeria', $galeria);
    }

    public function listarAdace()
    {
        $galeria = Galeria::all()->where('tipo_galeria_id', 6);

        return view('galeria/adace/listar')->with('galeria', $galeria);
    }

    public function listarGcc()
    {
        $galeria = Galeria::all()->where('tipo_galeria_id', 7);

        return view('galeria/gcc/listar')->with('galeria', $galeria);
    }
}
