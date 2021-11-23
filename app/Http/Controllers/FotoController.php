<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class FotoController extends Controller
{
    public function loadFoto(Request $request)
    {
        $dataForm = $request->all();
        $id_sisdm = $dataForm['id_sisdm'];
        $fotos = User::where('id_sisdm', $id_sisdm)->get();
        return view('auth.foto', ['fotos' => $fotos]);
    }
}
