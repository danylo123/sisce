<?php

namespace App\Http\Middleware;

use Closure;

class AcessoAtivo
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
     // Recupera o nivel do usuário logado
     $status = auth()->user()->status;


     // Verifica se o usuario esta com o status desativado
     if ($status == 'desativado') {
         return redirect()->route('expulsar');

     }

     // Permite que continue (Caso não entre em nenhum dos if acima)...
     return $next($request);
    }
}
