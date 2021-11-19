@extends('app')

@section('titulo')
Portal da Transparência ADACE
@stop

@section('conteudo')
<h1>Portal da Transparência ADACE </h1>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="bgc-white bd bdrs-3 p-20 mB-20">
                <div class="row">
                    @foreach($transparencia as $t)
                    <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">{{ $t->titulo }}</h5>
                                <h6 class="card-subtitle mb-2 text-muted">{{ $t->titulo }}</h6>
                                <p class="card-text">Data envio {{ date( 'd/m/Y' , strtotime($t->created_at))}}</p>
                                <a href="" data-toggle="modal" data-target="#{{ $t->id }}" class="card-link">Ver arquivo</a>
                                <div class="modal fade" id="{{ $t->id }}" role="dialog">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">{{ $t->titulo }}</h4>
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                                <object type="application/pdf" data="{{ url('storage/'.$t->arquivo) }}" width="100%" height="100%" style="height: 75vh;">No Support</object>
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