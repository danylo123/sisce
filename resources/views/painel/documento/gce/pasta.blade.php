@extends('app')

@section('titulo')
Pasta de documentos GCE
@stop

@section('conteudo')
<h1>Pasta de documentos GCE </h1>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="bgc-white bd bdrs-3 p-20 mB-20">
                <div class="row">
                    @foreach($documento as $d)
                    <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">{{ $d->titulo }}</h5>
                                <h6 class="card-subtitle mb-2 text-muted">{{ $d->titulo }}</h6>
                                <p class="card-text">Data envio {{ date( 'd/m/Y' , strtotime($d->created_at))}}</p>
                                <a href="" data-toggle="modal" data-target="#{{ $d->id }}" class="card-link">Ver arquivo</a>
                                <div class="modal fade" id="{{ $d->id }}" role="dialog">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">{{ $d->titulo }}</h4>
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                                <object type="application/pdf" data="{{ url('storage/'.$d->arquivo) }}" width="100%" height="100%" style="height: 75vh;">No Support</object>
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