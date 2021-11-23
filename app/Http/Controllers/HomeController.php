<?php

namespace App\Http\Controllers;

use App\Aviso;
use App\Capitulo;
use App\Priorado;
use App\Regiao;
use App\User;
use Illuminate\Http\Request;

class HomeController extends Controller
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

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $demolaysAtivos = User::where('status', 'ativo')->get();
        $capitulos = Capitulo::all();
        $priorados = Priorado::all();
        $regioes = Regiao::all();


        $aviso = Aviso::where('ativo', 1)->orderBy('updated_at', 'desc')->limit(3)->get();
        return view('welcome')->with('aviso', $aviso)->with('demolaysAtivos', $demolaysAtivos)
            ->with('capitulos', $capitulos)->with('priorados', $priorados)->with('regioes', $regioes);
    }

    public function logout()
    {
        auth()->logout();

        toast()->success('message', 'Até logo');

        return redirect('/login');
    }

    public function expulsar()
    {
        //expulsar usuário com status desativado
        auth()->logout();
        toastr()->error('Você não tem permissão para acessar, contate um administrador!');
        return redirect()->route('login');
    }
}
