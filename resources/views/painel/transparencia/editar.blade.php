@extends('app')

@section('titulo')
Cadastro transparencia
@stop

@section('conteudo')
<h3>Editar arquivo transparância</h3>

<div class="masonry-item col-md-12">
    <div class="bgc-white p-20 bd">
        <div class="mT-30">
            <form method="POST" action="{{ route('painel.transparencia.editar') }}" enctype="multipart/form-data">
                @foreach($transparencia as $t)
                <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                <input type="hidden" name="id" value="{{ $t->id }}">

                <div class="form-row">
                    <div class="form-group col-md-6"><label for="titulo">Titulo</label>
                        <input type="text" class="form-control" id="titulo" value="{{ $t->titulo }}" name="titulo" placeholder="Titulo" required>
                    </div>
                    <div class="form-group col-md-6"><label for="ano">Ano</label>
                        <input type="number" id="ano" name="ano" value="{{ $t->ano }}" class="form-control {{ $errors->has('ano') ? ' border-danger' : '' }}" maxlength="4" minlength="4" required>
                        @if ($errors->has('ano'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('ano') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group col-md-6"><label for="arquivo">Arquivo</label>
                        <input type="file" class="form-control" id="arquivo" name="arquivo">

                        <a class="btn btn-default" href="" data-toggle="modal" data-target="#{{ $t->id }}" class="card-link">Ver arquivo</a>
                        <div class="modal fade" id="{{ $t->id }}" role="dialog">
                            <div class="modal-dialog">
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
                    <div class="form-group col-md-6"><label for="tipo">Associação</label>
                        <select class="form-control" id="tipo" name="tipo" required>
                            <option selected>Selecione</option>
                            <option value="{{ $t->tipo }}" selected>@if($t->tipo == 1)
                                GCE
                                @else
                                ADACE
                                @endif</option>
                            <option value="1">GCE</option>
                            <option value="2">ADACE</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                </div><button type="submit" class="btn btn-primary">Salvar</button>
                @endforeach
            </form>
        </div>
    </div>
</div>


@stop