@extends('app')

@section('titulo')
Página inicial
@stop
@section('conteudo')
<div class="col-md-8">
    <h5>Avisos</h5>

    @include('avisos')


</div>

@stop