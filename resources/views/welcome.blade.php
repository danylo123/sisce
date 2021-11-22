@extends('app')

@section('titulo')
    Página inicial
@stop
@section('conteudo')
    <div class="col-md-8">
        <div class="row">
            @include('dashboard.index')
        </div>
        <div class="row">
            @include('dashboard.avisos')
        </div>

    </div>

@stop
