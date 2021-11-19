@extends('app')

@section('titulo')
Cadastro documento
@stop

@section('conteudo')
<h3>Editar documento</h3>

<div class="masonry-item col-md-12">
    <div class="bgc-white p-20 bd">
        <div class="mT-30">
            <form method="POST" action="{{ route('painel.documento.editar') }}" enctype="multipart/form-data">
                @foreach($documento as $d)
                <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                <input type="hidden" name="id" value="{{ $d->id }}">

                <div class="form-row">
                    <div class="form-group col-md-6"><label for="titulo">Titulo</label>
                        <input type="text" class="form-control" value="{{ $d->titulo }}" id="titulo" name="titulo" placeholder="Titulo" required>
                    </div>
                    <div class="form-group col-md-6"><label for="pasta">Pasta</label>
                        <select id="pasta" name="pasta_documento_id" class="form-control" required>
                            <option value="">Selecione...</option>
                            @foreach($pasta as $p)
                            <option value="{{ $p->id }}" @if($d->pasta_documento_id == $p->id) selected @endif>{{ $p->titulo }} /
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
                        <input type="file" class="form-control" id="arquivo" name="arquivo">
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