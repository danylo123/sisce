<?php

namespace App\Http\Middleware;

use Closure;

class AcessoAdmin
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
        $nivel = auth()->user()->nivel;


        // Verifica se é gmail.com, caso não se redireciona para a Home Page
        if ($nivel <= '2') {
            toastr()->warning('Você não tem permissão para acessar essa página.');
            return redirect()->back();
        }

        // Permite que continue (Caso não entre em nenhum dos if acima)...
        return $next($request);
    }
}
