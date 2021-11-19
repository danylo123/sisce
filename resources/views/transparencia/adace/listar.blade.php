@extends('app')

@section('titulo')
Portal da Transparência ADACE
@stop

@section('conteudo')
<h1>Portal da Transparência ADACE</h1>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="bgc-white bd bdrs-3 p-20 mB-20">
                <div class="row">
                    @foreach($ano as $a)
                    <div class="col-md-1">
                        <a class="btn btn-lg btn-outline-dark" href="{{ url('transparencia/adace') }}/{{ $a->ano }}">
                            <span class="icon-holder"><i class="ti-folder"> {{ $a->ano }}</i></span>
                        </a>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>

@stop