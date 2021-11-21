<?php

namespace App\Http\Controllers;

use App\Http\Requests\PrioradoRequest;
use App\Priorado;
use Illuminate\Http\Request;

class PrioradoController extends Controller
{
    public function store(Request $resquest)
    {
        $priorado = new Priorado();

        $priorado->imagem = $resquest->imagem;

        if ($resquest->hasFile('imagem') && $resquest->file('imagem')->isValid()) {

            $upload = $resquest->imagem->store('priorados');

            $priorado->imagem = $upload;
        }

        $priorado->nome = $resquest->nome;
        $priorado->numero = $resquest->numero;
        $priorado->regiao_id = $resquest->regiao_id;


        $insert = $priorado->save();

        if ($insert) {
            toastr()->success('Priorado cadastrado com sucesso!');
            return redirect()->route('painel.priorados');
        } else {
            toastr()->error('Erro ao cadastrar priorado!');
            return redirect()->back();
        }
    }

    public function update(Request $resquest)
    {
        $data = $resquest->all();
        $id = $resquest->id;

        $capitulo = Priorado::find($id);


        if ($resquest->hasFile('imagem') && $resquest->imagem->isValid()) {

            $upload = $resquest->imagem->store('priorados');

            $data['imagem'] = $upload;
        }


        $update = $capitulo->update($data);

        if ($update) {
            toastr()->success('Sucesso ao atualizar priorado');

            return redirect()->route('painel.priorados');
        } else {
            toastr()->error('Falha ao atualizar priorado');

            return redirect()->back();
        }
    }

    public function listar()
    {

        $priorados = Priorado::orderBy('numero', 'asc')->with('regiao')->get();

        return view('priorado/listar')->with('priorados', $priorados);
    }
}
