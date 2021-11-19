<?php

namespace App\Http\Controllers;

use App\Http\Requests\UsuarioRquest;
use App\User;
use Illuminate\Support\Facades\Validator;
use Exception;
use Illuminate\Database\QueryException;
use Illuminate\Http\Request;
use Illuminate\Validation\Validator as IlluminateValidationValidator;

class UsuarioController extends Controller
{

    public function store(UsuarioRquest $resquest)
    {

        $user = new User();

        $data = $resquest->all();

        $user->name = $resquest->name;
        $user->id_sisdm = $resquest->id_sisdm;
        $user->email = $resquest->email;
        $user->password = bcrypt($resquest->password);
        $user->capitulo_id = $resquest->capitulo_id;
        $user->status = 'ativo';
        $user->nivel = $resquest->nivel;

        $insert = $user->save();

        if ($insert) {
            toastr()->success('Usuário cadastrado com sucesso!');
            return redirect()->route('painel.usuarios');
        } else {
            toastr()->error('Erro, tente novamente!');
            return redirect()->back();
        }
    }

    public function edit(Request $resquest)
    {


        try {
            $id = $resquest->id;

            $user = User::find($id);
            $user->id = $resquest->id;
            $user->name = $resquest->name;
            $user->id_sisdm = $resquest->id_sisdm;
            $user->email = $resquest->email;
            $user->nivel = $resquest->nivel;

            if ($resquest->imagem != null) {
                $user->imagem = $resquest->imagem;

                if ($resquest->hasFile('imagem') && $resquest->file('imagem')->isValid()) {
                    if ($user->imagem) {
                        $name = $user->id_sisdm . '-' . +1 . kebab_case($user->name);
                    } else {
                        $name = $user->id_sisdm . kebab_case($user->name);
                    }

                    $extenstion = $resquest->imagem->extension();
                    $nameFile = "{$name}.{$extenstion}";

                    $user->imagem = $nameFile;

                    $upload = $resquest->imagem->storeAs('users', $nameFile);

                    if (!$upload) {
                        toastr()->error('Erro ao fazer upload da imagem!');
                        return redirect()->back();
                    }
                }
            }




            if ($user->password != null) {
                $user->password = bcrypt($resquest->password);
            } else {
                unset($user->password);
            }

            $data = $resquest->all();


            $user->capitulo_id = $resquest->capitulo_id;

            $update = $user->update();



            if ($update) {
                toastr()->success('Usuário editado com sucesso!');
                return redirect()->route('painel.usuarios');
            } else {
                toastr()->error('Erro, tente novamente!');
                return redirect()->back();
            }
        } catch (Exception $ex) {
            toastr()->error($ex->getMessage());
        }
    }
    public function excluir(Request $request)
    {
        $id = $request->id;
        $user = User::find($id);
        $user->status = 'desativado';

        $excluir = $user->update();
        if ($excluir) {
            toastr()->success('Usuário excluído com sucesso!');
            return redirect()->route('painel.usuarios');
        } else {
            toastr()->error('Erro ao excluir usuário, tente novamente!');
            return redirect()->back();
        }
    }
}
