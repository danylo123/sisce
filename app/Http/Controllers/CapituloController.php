<?php

namespace App\Http\Controllers;

use App\Capitulo;
use App\Cidade;
use App\Http\Requests\CapituloRquest;
use App\User;
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

        $capitulos = Capitulo::orderBy('numero', 'asc')->with('regiao')->get();

        $cidades = Cidade::all();

        return view('capitulo/listar')->with('capitulos', $capitulos)->with('cidades', $cidades);
    }

    public function listarMembro($numero)
    {        
        $capitulos = Capitulo::where('numero', $numero)->get();
                
        return view('capitulo/membros')->with('capitulos', $capitulos);
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

    public function update(Request $resquest)
    {
        $data = $resquest->all();
        $id = $resquest->id;

        $capitulo = Capitulo::find($id);


        if ($resquest->hasFile('imagem') && $resquest->imagem->isValid()) {

            $upload = $resquest->imagem->store('capitulos');

            $data['imagem'] = $upload;
        }


        $update = $capitulo->update($data);

        if ($update) {
            toastr()->success('Sucesso ao atualizar capitulo');

            return redirect()->route('painel.capitulos');
        } else {
            toastr()->error('Falha ao atualizar capitulo');

            return redirect()->back();
        }
    }

    public function excluir($id)
    {

        $capitulo = Capitulo::find($id);

        $excluir = $capitulo->delete();

        if ($excluir) {
            toastr()->success('Sucesso ao excluir capitulo');
            return redirect()->route('painel.capitulos');
        } else {
            toastr()->error('Falha ao excluir o capitulo');

            return redirect()->back();
        }
    }

    public function cadastrar()
    {

        $cidade = Cidade::all();

        return view('capitulo/cadastrar')->with('cidade', $cidade);
    }

    public function store(CapituloRquest $resquest)
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
            toastr()->success('Capítulo cadastrado com sucesso!');
            return redirect()->route('painel.capitulos');
        } else {
            toastr()->error('Erro ao cadastrar capítulo!');
            return redirect()->back();
        }
    }
}
