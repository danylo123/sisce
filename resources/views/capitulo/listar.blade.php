@extends('app')

@section('titulo')
Capitulos
@stop

@section('conteudo')
<a href="{{ url('/capitulo/cadastrar') }}" class="btn cur-p btn-primary float-right">Novo</a>
<h3>Capitulos</h3>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="bgc-white bd bdrs-3 p-20 mB-20">
                <div class="row">
                    @foreach ($capitulos as $c)
                    <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="{{ url('storage/'.$c->imagem) }}" width="100" height="180" alt="{{ $c->nome }}">
                            <div class="card-body">
                                <h5 class="card-title">{{ $c->nome }}</h5>                                
                                <p class="card-text">{{ $c->cidade->nome }} </p>
                                <button class="btn btn-secondary btn-block dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Mais</button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton"><a class="dropdown-item btn-block" href="{{ url('/capitulo/editar/') }}/{{ $c->id }}">Editar</a>
                                    <button type="button" class="dropdown-item btn-block" data-toggle="modal" data-target="#confirm{{ $c->id }}">Excluir</button></div>
                                <div class="modal fade" id="confirm{{ $c->id }}" role="dialog">
                                    <div class="modal-dialog modal-md">
                                        <div class="modal-content">
                                            <div class="modal-body">
                                                <p>Deseja realmente excluir <b>{{ $c->nome }}</b>?</p>
                                            </div>
                                            <div class="modal-footer">
                                                <a href="{{ url('/capitulo/excluir/') }}/{{ $c->id }}" type="button" class="btn btn-danger" id="delete">Excluir</a>
                                                <button type="button" data-dismiss="modal" class="btn btn-default">Cancelar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
@stop