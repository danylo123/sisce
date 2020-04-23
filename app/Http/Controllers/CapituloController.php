<?php

namespace App\Http\Controllers;

use App\Capitulo;
use App\Cidade;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class CapituloController extends Controller
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

        $capitulos = Capitulo::all();

        $cidades = Cidade::all();

        return view('capitulo/listar')->with('capitulos', $capitulos)->with('cidades', $cidades);
    }

    public function editarCapitulo($id)
    {
        Capitulo::all();
        Capitulo::find($id);
        $capitulo = Capitulo::where("id", $id)->get();

        $cidade = Cidade::all();
        // Chama a view listar e envia os produtos buscados
        return view('capitulo/editar')->with('capitulo', $capitulo)->with('cidades', $cidade);
    }

    public function update($id, Request $resquest)
    {
        $data = $resquest->all();

        $capitulo = Capitulo::find($id);


        if ($resquest->hasFile('imagem') && $resquest->imagem->isValid()) {

            $upload = $resquest->imagem->store('capitulos');

            $data['imagem'] = $upload;
        }


        $update = $capitulo->update($data);

        if ($update) {
            return redirect()->route('capitulos')->with('success', 'Sucesso ao atualizar');
        } else {
            return redirect()->back()->with('error', 'Falha ao atualizar o capitulo...');
        }
    }

    public function cadastrar()
    {

        $cidade = Cidade::all();

        return view('capitulo/cadastrar')->with('cidade', $cidade);
    }

    public function store(Request $resquest)
    {
        $capitulo = new Capitulo();

        $capitulo->imagem = $resquest->imagem;

        if ($resquest->hasFile('imagem') && $resquest->file('imagem')->isValid()) {

            $upload = $resquest->imagem->store('capitulos');

            $capitulo->imagem = $upload;
        }

        $capitulo->nome = $resquest->nome;
        $capitulo->numero = $resquest->numero;
        $capitulo->cidade_id = $resquest->cidade_id;


        $insert = $capitulo->save();

        if ($insert) {
            return redirect()->route('capitulos')->with('success', 'Sucesso ao cadastrar capitulo');
        } else {
            return redirect()->back()->with('error', 'Falha ao cadastrar capitulo...');
        }
    }
}
