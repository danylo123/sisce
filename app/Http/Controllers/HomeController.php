<?php

namespace App\Http\Controllers;

use App\Aviso;
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
        $aviso = Aviso::where('ativo', 1)->orderBy('updated_at', 'desc')->limit(3)->get();
        return view('welcome')->with('aviso', $aviso);
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
