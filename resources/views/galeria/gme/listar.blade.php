@extends('app')

@section('titulo')
Galeria de GME
@stop

@section('conteudo')
<h3>Galeria de GME's</h3>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="bgc-white bd bdrs-3 p-20 mB-20">
                <div class="row">
                    @foreach ($galeria as $g)
                    <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="{{ url('storage/'.$g->imagem) }}" width="100" height="180" alt="{{ $g->nome }}">
                            <div class="card-body">
                                <h5 class="card-title">{{ $g->nome }}</h5>
                                <p class="card-text">Cargo {{ $g->cargo }} </p>
                                <p class="card-text">Pedíodo gestão {{ $g->periodo }} </p>
                                <button class="btn btn-secondary btn-block dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Mais</button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton"><a class="dropdown-item btn-block" href="{{ url('/geleria/editar/') }}/{{ $g->id }}">Editar</a>
                                    <button type="button" class="dropdown-item btn-block" data-toggle="modal" data-target="#confirm{{ $g->id }}">Excluir</button></div>
                                <div class="modal fade" id="confirm{{ $g->id }}" role="dialog">
                                    <div class="modal-dialog modal-md">
                                        <div class="modal-content">
                                            <div class="modal-body">
                                                <p>Deseja realmente excluir <b>{{ $g->nome }}</b>?</p>
                                            </div>
                                            <div class="modal-footer">
                                                <a href="{{ url('/galeria/excluir/') }}/{{ $g->id }}" class="btn btn-danger" id="delete">Excluir</a>
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