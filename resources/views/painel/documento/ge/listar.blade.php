@extends('app')

@section('titulo')
Documentos GE
@stop

@section('conteudo')
<h1>Documentos GE</h1>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="bgc-white bd bdrs-3 p-20 mB-20">
                <div class="row">
                @foreach($pasta as $p)
                    <div class="col-md-2">
                        <a class="btn btn-lg btn-outline-dark" href="{{ url('documento/ge') }}/{{ $p->id }}">
                            <span class="icon-holder"><i class="c-brown-500 ti-folder"> {{ $p->titulo }}</i></span>
                        </a>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>

@stop