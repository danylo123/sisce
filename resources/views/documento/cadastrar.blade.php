@extends('app')

@section('titulo')
Cadastro documento
@stop

@section('conteudo')
<a href="" data-toggle="modal" data-target="#pasta" class="btn cur-p btn-primary float-right">Nova pasta</a>
<div class="modal fade" id="pasta" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Cadastrar nova pasta</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <form method="POST" action="{{ url('documento/storePasta') }}" enctype="multipart/form-data">
                    <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                    <div class="form-row">
                        <div class="form-group col-md-6"><label for="titulo">Titulo</label>
                            <input type="text" class="form-control" id="titulo" name="titulo" placeholder="Digite um titulo para a pasta" required>
                        </div>
                        <div class="form-group col-md-6"><label for="tipo">Tipo</label>
                            <select class="form-control" id="tipo" name="tipo" required>
                                <option selected>Selecione</option>
                                <option value="1">GCE</option>
                                <option value="2">ADACE</option>
                                <option value="3">ICCE</option>
                                <option value="4">GE</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                    </div><button type="submit" class="btn btn-primary">Salvar</button>
                </form>
            </div>
        </div>
    </div>
</div>

<h3>Cadastro documento</h3>

<div class="masonry-item col-md-12">
    <div class="bgc-white p-20 bd">
        <div class="mT-30">
            <form method="POST" action="{{ url('documento/store') }}" enctype="multipart/form-data">
                <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                <div class="form-row">
                    <div class="form-group col-md-6"><label for="titulo">Titulo</label>
                        <input type="text" class="form-control" id="titulo" name="titulo" placeholder="Titulo" required>
                    </div>
                    <div class="form-group col-md-6"><label for="pasta">Pasta</label>
                        <select id="pasta" name="pasta_documento_id" class="form-control" required>
                            <option value="">Selecione...</option>
                            @foreach($pasta as $p)
                            <option value="{{ $p->id }}">{{ $p->titulo }} /
                                @if($p->tipo == 1)
                                GCE
                                @elseif($p->tipo == 2)
                                ADACE
                                @elseif($p->tipo == 3)
                                ICCE
                                @elseif($p->tipo == 4)
                                GE
                                @endif
                            </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group col-md-6"><label for="arquivo">Arquivo</label>
                        <input type="file" class="form-control" id="arquivo" name="arquivo" required>
                    </div>
                </div>
                <div class="form-group">
                </div><button type="submit" class="btn btn-primary">Salvar</button>
            </form>
        </div>
    </div>
</div>

@stop