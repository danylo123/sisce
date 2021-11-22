<?php

namespace App\Http\Controllers;

use App\Aviso;
use App\Capitulo;
use App\Cidade;
use App\Galeria;
use App\TipoGaleria;
use App\Transparencia;
use App\User;
use Illuminate\Http\Request;
use Alert;
use App\Calendario;
use App\Documento;
use App\PastaDocumento;
use App\Priorado;
use App\Regiao;
use Illuminate\Support\Facades\Auth;

class PainelController extends Controller
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

    public function capituloListar()
    {

        $capitulos = Capitulo::orderBy('numero', 'asc')->with('regiao')->get();

        $cidades = Cidade::all();
        $regiaos = Regiao::all();

        return view('painel/capitulo/listar')->with('capitulos', $capitulos)->with('cidades', $cidades)->with('regiaos');
    }

    public function capituloCadastrar()
    {

        $cidade = Cidade::all();
        $regiaos = Regiao::all();

        return view('painel/capitulo/cadastrar')->with('cidade', $cidade)->with('regiaos', $regiaos);
    }
    public function capituloEditar($id)
    {
        Capitulo::all();
        Capitulo::find($id);
        $capitulo = Capitulo::where("id", $id)->get();

        $cidade = Cidade::all();
        $regiaos = Regiao::all();
        // Chama a view listar e envia os produtos buscados
        return view('painel/capitulo/editar')->with('capitulo', $capitulo)->with('cidades', $cidade)->with('regiaos', $regiaos);
    }

    public function galeriaListar()
    {
        $tipoGaleria = TipoGaleria::all();
        $galeria = Galeria::all();

        return view('painel/galeria/listar')->with('galeria', $galeria)->with('tipoGaleria', $tipoGaleria);
    }
    public function galeriaCadastrar()
    {
        $tipo_galeria = TipoGaleria::all();

        return view('painel/galeria/cadastrar')->with('tipo_galeria', $tipo_galeria);
    }

    public function galeriaEditar($id)
    {
        $tipo_galeria = TipoGaleria::all();
        $galeria = Galeria::where("id", $id)->get();

        return view('painel/galeria/editar')->with('galeria', $galeria)->with('tipo_galeria', $tipo_galeria);
    }

    public function usuarioCadastrar()
    {

        $capitulo = Capitulo::all();

        return view('painel/usuario/cadastrar')->with('capitulo', $capitulo);
    }

    public function usuarioListar()
    {

        $usuario = User::paginate(10);
        $capitulo = Capitulo::all();

        return view('painel/usuario/listar')->with('usuarios', $usuario)->with('capitulo', $capitulo);
    }

    public function usuarioSearch(Request $request)
    {
        $data = $request->except('_token');
        $id_sisdm = $request->id_sisdm;
        $nome = $request->name;
        $status = $request->status;
        $capitulo_id = $request->capitulo_id;

        $query = User::select('*');
        if ($id_sisdm) {
            $query->where('id_sisdm', 'like', '%' . $id_sisdm . '%');
        }
        if ($nome) {
            $query->where('name', 'like', '%' . $nome . '%');
        }
        if ($status) {
            $query->where('status', '=',  $status);
        }
        if ($capitulo_id) {
            $query->where('capitulo_id', $capitulo_id);
        }
        $usuario = $query->paginate(10);
        $capitulo = Capitulo::all();
        return view('painel/usuario/listar')->with('usuarios', $usuario)->with('capitulo', $capitulo)->with('data', $data);
    }

    public function usuarioEditar($id)
    {
        $usuario = User::where("id", $id)->get();

        $capitulo = Capitulo::all();

        return view('painel/usuario/editar')->with('usuario', $usuario)->with('capitulo', $capitulo);
    }


    public function avisoCadastrar()
    {
        return view('painel/aviso/cadastrar');
    }

    public function avisoListar()
    {
        $aviso = Aviso::orderBy('updated_at', 'desc')->get();

        return view('painel/aviso/listar')->with('aviso', $aviso);
    }
    public function avisoEditar($id)
    {
        $aviso = Aviso::where("id", $id)->get();

        return view('painel/aviso/editar')->with('aviso', $aviso);
    }

    public function transparenciaCadastrar()
    {
        return view('painel/transparencia/cadastrar');
    }

    public function transparenciaListar()
    {
        $transparencia = Transparencia::all();
        return view('painel/transparencia/listar')->with('transparencia', $transparencia);
    }

    public function transparenciaEditar($id)
    {
        $transparencia = Transparencia::where("id", $id)->get();

        return view('painel/transparencia/editar')->with('transparencia', $transparencia);
    }

    public function documentoCadastrar($id)
    {
        $pasta = PastaDocumento::where('id', $id)->where('status', 'ativa')->get();

        if (count($pasta) == 0) {
            toastr()->warning('Essa página não existe!');
            return redirect()->back();
        } else {
            return view('painel/documento/cadastrar')->with('pasta', $pasta);
        }
    }

    public function documentoListar()
    {
        $pasta = PastaDocumento::where('status', 'ativa')->get();
        return view('painel/documento/listar')->with('pasta', $pasta);
    }

    public function documentoEditar($id)
    {
        $pasta = PastaDocumento::all();
        $documento = Documento::where("id", $id)->get();

        return view('painel/documento/editar')->with('documento', $documento)->with('pasta', $pasta);
    }

    public function prioradoCadastrar()
    {
        $regiaos = Regiao::all();
        return view('painel/priorado/cadastrar')->with('regiaos', $regiaos);
    }

    public function prioradoListar()
    {
        $priorados = Priorado::orderBy('numero', 'asc')->get();
        return view('painel/priorado/listar')->with('priorados', $priorados);
    }

    public function prioradoEditar($id)
    {
        Priorado::all();
        Priorado::find($id);
        $priorado = Priorado::where("id", $id)->get();

        $regiaos = Regiao::all();
        // Chama a view listar e envia os produtos buscados
        return view('painel/priorado/editar')->with('priorado', $priorado)->with('regiaos', $regiaos);
    }

    public function calendarioCadastrar()
    {
        $calendarios = Calendario::all();
        $capitulos = Capitulo::all();
        return view('painel/calendario/cadastrar')->with('calendarios', $calendarios)->with('capitulos', $capitulos);
    }

    public function calendarioListar()
    {
        $calendarios = Calendario::orderBy('id', 'asc')->get();
        return view('painel/calendario/listar')->with('calendarios', $calendarios);
    }

    public function calendarioEditar($id)
    {
        Calendario::all();
        Calendario::find($id);
        $calendario = Calendario::where("id", $id)->get();

        $capitulos = Capitulo::all();
        // Chama a view listar e envia os produtos buscados
        return view('painel/calendario/editar')->with('calendario', $calendario)->with('capitulos', $capitulos);
    }
}
