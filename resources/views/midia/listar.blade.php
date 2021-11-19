@extends('app')

@section('titulo')
Mídia
@stop

@section('conteudo')
<h1>Mídias</h1>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="bgc-white bd bdrs-3 p-20 mB-20">
                <div class="row">
                    @foreach($pasta as $p)
                    <div class="col-md-3">
                        <a class="btn btn-lg btn-outline-dark btn-block" href="{{ url('midia/pasta') }}/{{ $p->id }}">
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