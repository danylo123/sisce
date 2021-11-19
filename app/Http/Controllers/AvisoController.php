<?php

namespace App\Http\Controllers;

use App\Aviso;
use App\Http\Requests\AvisoRquest;
use Illuminate\Http\Request;

class AvisoController extends Controller
{
    public function store(AvisoRquest $resquest)
    {

        $aviso = new Aviso();

        $data = $resquest->all();

        $aviso->titulo = $resquest->titulo;
        $aviso->ativo = $resquest->ativo;
        $aviso->user_name = $resquest->user_name;

        $aviso->imagem = $resquest->imagem;

        if ($resquest->hasFile('imagem') && $resquest->file('imagem')->isValid()) {
            if ($aviso->imagem) {
                $name = $aviso->id . kebab_case($aviso->titulo);
            } else {
                $name = $aviso->id . kebab_case($aviso->titulo);
            }

            $extenstion = $resquest->imagem->extension();
            $nameFile = "{$name}.{$extenstion}";

            $aviso->imagem = $nameFile;

            $upload = $resquest->imagem->storeAs('avisos', $nameFile);

            if (!$upload) {
                toastr()->error('Erro ao enviar imagem!');
                return redirect()->back();
            }
        }

        $insert = $aviso->save();


        if ($insert) {
            toastr()->success('Aviso cadastrado com sucesso!');
            return redirect()->route('painel.avisos');
        } else {
            toastr()->error('Erro, tente novamente!');
            return redirect()->back();
        }
    }

    public function edit(AvisoRquest $resquest)
    {


        $id = $resquest->id;

        $aviso = Aviso::find($id);

        $data = $resquest->all();

        $aviso->titulo = $resquest->titulo;
        $aviso->ativo = $resquest->ativo;
        $aviso->user_name = $resquest->user_name;

        if ($resquest->imagem != null) {
            $aviso->imagem = $resquest->imagem;

            if ($resquest->hasFile('imagem') && $resquest->file('imagem')->isValid()) {
                if ($aviso->imagem) {
                    $name = $aviso->id . kebab_case($aviso->titulo);
                } else {
                    $name = $aviso->id . kebab_case($aviso->titulo);
                }

                $extenstion = $resquest->imagem->extension();
                $nameFile = "{$name}.{$extenstion}";

                $aviso->imagem = $nameFile;

                $upload = $resquest->imagem->storeAs('avisos', $nameFile);

                if (!$upload) {
                    toastr()->error('Erro ao enviar imagem!');
                    return redirect()->back();
                }
            }
        }

        $insert = $aviso->update();


        if ($insert) {
            toastr()->success('Aviso editado com sucesso!');
            return redirect()->route('painel.avisos');
        } else {
            toastr()->error('Erro, tente novamente!');
            return redirect()->back();
        }
    }
}
