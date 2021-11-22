@extends('app')

@section('titulo')
    Página inicial
@stop
@section('conteudo')
    <div class="col-md-10">
        <div class="row">
            @include('dashboard.avisos')
        </div>
        <div class="row">
            @include('dashboard.index')
        </div>
    </div>

@stop
