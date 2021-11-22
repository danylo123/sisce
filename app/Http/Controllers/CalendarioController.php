<?php

namespace App\Http\Controllers;

use App\Calendario;
use Illuminate\Http\Request;

class CalendarioController extends Controller
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

    public function store(Request $resquest)
    {
        $calendario = new Calendario();

        $calendario->arquivo = $resquest->imagem;

        if ($resquest->hasFile('arquivo') && $resquest->file('arquivo')->isValid()) {

            $upload = $resquest->arquivo->store('calendarios');

            $calendario->arquivo = $upload;
        }

        $calendario->ano = $resquest->ano;
        $calendario->semestre = $resquest->semestre;
        $calendario->capitulo_id = $resquest->capitulo_id;


        $insert = $calendario->save();

        if ($insert) {
            toastr()->success('Calendário cadastrado com sucesso!');
            return redirect()->route('painel.calendarios');
        } else {
            toastr()->error('Erro ao cadastrar calendário!');
            return redirect()->back();
        }
    }

    public function update(Request $resquest)
    {
        $data = $resquest->all();
        $id = $resquest->id;

        $capitulo = Calendario::find($id);


        if ($resquest->hasFile('arquivo') && $resquest->imagem->isValid()) {

            $upload = $resquest->arquivo->store('calendarios');

            $data['arquivo'] = $upload;
        }


        $update = $capitulo->update($data);

        if ($update) {
            toastr()->success('Sucesso ao atualizar calendário');

            return redirect()->route('painel.calendarios');
        } else {
            toastr()->error('Falha ao atualizar calendário');

            return redirect()->back();
        }
    }

    public function listar()
    {

        $calendarios = Calendario::orderBy('ano', 'desc')->with('capitulo')->get();

        return view('calendario/index')->with('calendarios', $calendarios);
    }
}
