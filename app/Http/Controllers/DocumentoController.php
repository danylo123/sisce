<?php

namespace App\Http\Controllers;

use App\Documento;
use App\PastaDocumento;
use Illuminate\Http\Request;

class DocumentoController extends Controller
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
        $pasta = PastaDocumento::all();

        return view('painel/documento/cadastrar')->with('pasta', $pasta);
    }

    public function storePasta(Request $resquest)
    {
        $pasta = new PastaDocumento();

        $pasta->titulo = $resquest->titulo;
        $pasta->tipo = $resquest->tipo;
        $pasta->status = 'ativa';

        $insert = $pasta->save();

        if ($insert) {
            toastr()->success('Sucesso ao cadastrar pasta');
            return redirect()->route('painel.documentos');
        } else {
            toastr()->error('Falha ao cadastrar pasta');

            return redirect()->back();
        }
    }

    public function excluirPasta(Request $resquest)
    {
        $id = $resquest->id;
        $pasta = PastaDocumento::find($id);

        $pasta->status = 'desativada';

        $excluir = $pasta->save();

        if ($excluir) {
            toastr()->success('Pasta excluída com sucesso.');
            return redirect()->route('painel.documentos');
        } else {
            toastr()->error('Falha ao excluir pasta');

            return redirect()->back();
        }
    }

    public function store(Request $resquest)
    {
        $documento = new Documento();

        $documento->titulo = $resquest->titulo;
        $documento->pasta_documento_id = $resquest->pasta_documento_id;

        $documento->arquivo = $resquest->arquivo;

        if ($resquest->hasFile('arquivo') && $resquest->file('arquivo')->isValid()) {

            $upload = $resquest->arquivo->store('documentos');

            $documento->arquivo = $upload;
        }


        $insert = $documento->save();

        if ($insert) {
            toastr()->success('Documento salvo com sucesso!');
            return redirect()->back();
        } else {
            toastr()->error('Erro ao salvar documento!');
            return redirect()->back();
        }
    }

    public function edit(Request $resquest)
    {
        $id = $resquest->id;
        $documento = Documento::find($id);

        $documento->titulo = $resquest->titulo;
        $documento->pasta_documento_id = $resquest->pasta_documento_id;

        if ($resquest->imagem != null) {
            $documento->arquivo = $resquest->arquivo;

            if ($resquest->hasFile('arquivo') && $resquest->file('arquivo')->isValid()) {

                $upload = $resquest->arquivo->store('documentos');

                $documento->arquivo = $upload;
            }
        }


        $update = $documento->update();

        if ($update) {
            toastr()->success('Documento editado com sucesso!');
            return redirect()->back();
        } else {
            toastr()->error('Erro ao editar arquivo!');
            return redirect()->back();
        }
    }

    public function listarArquivos($id)
    {

        $documento = Documento::where('pasta_documento_id', $id)->get();
        $pasta = PastaDocumento::where('id', $id)->get();

        return view('painel/documento/listarArquivo')->with('documento', $documento)->with('pasta', $pasta);
    }

    public function listarAdace()
    {
        $pasta = PastaDocumento::where('tipo', 2)->where('status', 'ativa')->get();

        return view('documento/adace/listar')->with('pasta', $pasta);
    }

    public function listarAdacePasta($id)
    {
        $documento = Documento::where('pasta_documento_id', $id);

        return view('documento/adace/pasta')->with('documento', $documento);
    }

    public function listarGe()
    {
        $pasta = PastaDocumento::where('tipo', 4)->where('status', 'ativa')->get();

        return view('documento/ge/listar')->with('pasta', $pasta);
    }

    public function listarGePasta($id)
    {
        $documento = Documento::where('pasta_documento_id', $id)->get();
        return view('documento/ge/pasta')->with('documento', $documento);
    }

    public function listarGce()
    {
        $pasta = PastaDocumento::where('tipo', 1)->where('status', 'ativa')->get();

        return view('documento/gce/listar')->with('pasta', $pasta);
    }

    public function listarGcePasta($id)
    {
        $documento = Documento::where('pasta_documento_id', $id)->get();
        return view('documento/gce/pasta')->with('documento', $documento);
    }

    public function listarIcce()
    {
        $pasta = PastaDocumento::where('tipo', 3)->where('status', 'ativa')->get();

        return view('documento/icce/listar')->with('pasta', $pasta);
    }

    public function listarIccePasta($id)
    {
        $documento = Documento::where('pasta_documento_id', $id)->get();

        return view('documento/icce/pasta')->with('documento', $documento);
    }
}
