@extends('app')

@section('titulo')
Documentos GCE
@stop

@section('conteudo')
<h1>Documentos GCE</h1>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="bgc-white bd bdrs-3 p-20 mB-20">
                <div class="row">
                @foreach($pasta as $p)
                    <div class="col-md-2">
                        <a class="btn btn-lg btn-warning" href="{{ url('documento/gce') }}/{{ $p->id }}">
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