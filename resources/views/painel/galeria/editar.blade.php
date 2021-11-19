@extends('app')

@section('titulo')
Editar Galeria
@stop

@section('conteudo')
<h3>Editar Galeria</h3>

<div class="masonry-item col-md-12">
    <div class="bgc-white p-20 bd">
        <div class="mT-30">
            <form method="POST" action="{{ route('painel.galeria.editar') }}" enctype="multipart/form-data">
                @foreach($galeria as $g)
                <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                <input type="hidden" name="id" value="{{ $g->id }}">
                <div class="form-row">
                    <div class="form-group col-md-6"><label for="nome">Nome</label>
                        <input type="text" class="form-control {{ $errors->has('nome') ? ' border-danger' : '' }}" value="{{ $g->nome }}" id="nome" name="nome" placeholder="Nome completo">
                        @if ($errors->has('nome'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('nome') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group col-md-6"><label for="cargo">Cargo</label>
                        <input type="text" class="form-control" value="{{ $g->cargo }}" id="cargo" name="cargo" placeholder="Cargo">
                        @if ($errors->has('cargo'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('cargo') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group col-md-6"><label for="nome_gestao">Nome da gestão</label>
                        <input type="text" class="form-control {{ $errors->has('nome_gestao') ? ' border-danger' : '' }}" value="{{ $g->nome_gestao }}" id="nome_gestao" name="nome_gestao" placeholder="Nome da gestão">
                        @if ($errors->has('nome_gestao'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('nome_gestao') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group col-md-6"><label for="foto">Foto</label>
                        <input type="file" class="form-control" id="foto" name="imagem">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6"><label for="tipo_galeria_id">Tipo</label>
                        <select id="tipo" name="tipo_galeria_id" class="form-control {{ $errors->has('tipo_galeria_id') ? ' border-danger' : '' }}">
                            <option value="">Selecione...</option>
                            @foreach ($tipo_galeria as $t)
                            <option value="{{ $t->id }}" @if($t->id == $g->tipo_galeria_id) selected @endif>{{ $t->nome }}</option>
                            @endforeach
                        </select>
                        @if ($errors->has('tipo_galeria_id'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('tipo_galeria_id') }}</strong>
                        </span>
                        @endif
                    </div>

                    <div class="form-group col-md-6"><label for="periodo">Periodo</label>
                        <input type="text" class="form-control {{ $errors->has('periodo') ? ' border-danger' : '' }}" value="{{ $g->periodo }}" id="periodo" name="periodo" placeholder="Periodo">
                        @if ($errors->has('periodo'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('periodo') }}</strong>
                        </span>
                        @endif
                    </div>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Salvar</button>
                </div>
                <br>
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img alt="Galeria-{{ $g->nome }}" title="{{ $g->nome }}" class="img-responsive img-thumbnail" src="{{ url('storage/'.$g->imagem) }}" style="width:100%" />
                    </div>
                </div>
                @endforeach

            </form>
        </div>
    </div>
</div>


@stop