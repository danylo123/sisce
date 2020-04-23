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

        return view('documento/cadastrar')->with('pasta', $pasta);
    }

    public function storePasta(Request $resquest)
    {
        $pasta = new PastaDocumento();

        $pasta->titulo = $resquest->titulo;
        $pasta->tipo = $resquest->tipo;

        $insert = $pasta->save();

        if ($insert) {
            return redirect()->route('documento/cadastrar')->with('success', 'Sucesso ao cadastrar pasta');
        } else {
            return redirect()->back()->with('error', 'Falha ao cadastrar pasta...');
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
            return redirect()->route('documento/cadastrar')->with('success', 'Sucesso ao cadastrar documento');
        } else {
            return redirect()->back()->with('error', 'Falha ao cadastrar documento...');
        }
    }

    public function listarAdace()
    {
        $pasta = PastaDocumento::where('tipo', 2)->get();

        return view('documento/adace/listar')->with('pasta', $pasta);
    }

    public function listarAdacePasta($id)
    {
        $documento = Documento::where('pasta_documento_id', $id);

        return view('documento/adace/pasta')->with('documento', $documento);
    }

    public function listarGe()
    {
        $pasta = PastaDocumento::where('tipo', 4)->get();

        return view('documento/ge/listar')->with('pasta', $pasta);
    }

    public function listarGePasta($id)
    {
        $documento = Documento::where('pasta_documento_id', $id)->get();
        return view('documento/ge/pasta')->with('documento', $documento);
    }

    public function listarGce()
    {
        $pasta = PastaDocumento::where('tipo', 1)->get();

        return view('documento/gce/listar')->with('pasta', $pasta);
    }

    public function listarGcePasta($id)
    {
        $documento = Documento::where('pasta_documento_id', $id)->get();
        return view('documento/gce/pasta')->with('documento', $documento);
    }

    public function listarIcce()
    {
        $pasta = PastaDocumento::where('tipo', 3)->get();

        return view('documento/icce/listar')->with('pasta', $pasta);
    }

    public function listarIccePasta($id)
    {
        $documento = Documento::where('pasta_documento_id', $id)->get();

        return view('documento/icce/pasta')->with('documento', $documento);
    }
}
