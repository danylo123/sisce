@extends('app')

@section('titulo')
SEJA BEM VINDO
@stop

@section('conteudo')
<h2>Olá {{ auth()->user()->name  }}</h2>
<br>
<h4>Seja bem vindo ao SISCE</h4>





@stop