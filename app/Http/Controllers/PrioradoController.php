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
}
