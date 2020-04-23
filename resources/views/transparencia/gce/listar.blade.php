@extends('app')

@section('titulo')
Poral da Transparência GCE
@stop

@section('conteudo')
<h1>Poral da Transparência GCE</h1>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="bgc-white bd bdrs-3 p-20 mB-20">
                <div class="row">
                    @foreach($ano as $a)
                    <div class="col-md-2">
                        <a class="btn btn-lg" href="{{ url('transparencia/gce') }}/{{ $a->ano }}">
                            <span class="icon-holder"><i class="c-brown-500 ti-folder"> {{ $a->ano }}</i></span>
                        </a>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>

@stop