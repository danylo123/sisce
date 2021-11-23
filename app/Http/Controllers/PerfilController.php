<?php

namespace App\Http\Controllers;

use App\Capitulo;
use Illuminate\Http\Request;

class PerfilController extends Controller
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

    public function perfil()
    {

        $capitulo = Capitulo::all()->take(1);
        return view('perfil/editar')->with('capitulo', $capitulo);
    }


    public function perfilEditar(Request $resquest)
    {

        $user = auth()->user();

        $data = $resquest->all();

        $data['imagem'] = $user->imagem;

        if ($resquest->hasFile('imagem') && $resquest->file('imagem')->isValid()) {

            $name = $user->id . '2' . kebab_case($user->name);


            $extenstion = $resquest->imagem->extension();
            $nameFile = "{$name}.{$extenstion}";

            $data['imagem'] = $nameFile;

            $upload = $resquest->imagem->storeAs('users', $nameFile);

            if (!$upload) {
                toastr()->error('Falha ao realizar upload da imagem');
                return redirect()->back();
            }
        }


        if ($data['password'] != null) {
            $data['password'] = bcrypt($data['password']);
        } else {
            unset($data['password']);
        }

        $update = auth()->user()->update($data);

        if ($update) {
            toastr()->success('Dados alterados');
            return redirect()->route('perfil');
        } else {
            toastr()->error('Falha ao atualizar o perfil');
            return redirect()->back();
        }
    }
}
