@extends('app')

@section('titulo')
Galeria
@stop

@section('conteudo')
<h3>Cadastro Galeria</h3>

<div class="masonry-item col-md-12">
    <div class="bgc-white p-20 bd">
        <div class="mT-30">
            <form method="POST" action="{{ route('painel.galeria.novo') }}" enctype="multipart/form-data">
                <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                <div class="form-row">
                    <div class="form-group col-md-6"><label for="nome">Nome</label>
                        <input type="text" class="form-control {{ $errors->has('nome') ? ' border-danger' : '' }}" id="nome" name="nome" placeholder="Nome completo" required>
                        @if ($errors->has('nome'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('nome') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group col-md-6"><label for="cargo">Cargo</label>
                        <input type="text" class="form-control {{ $errors->has('cargo') ? ' border-danger' : '' }}" id="cargo" name="cargo" placeholder="Cargo" required>
                        @if ($errors->has('cargo'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('cargo') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group col-md-6"><label for="nome_gestao">Nome da gestão</label>
                        <input type="text" class="form-control {{ $errors->has('nome_gestao') ? ' border-danger' : '' }}" id="nome_gestao" name="nome_gestao" placeholder="Nome da gestão">
                        @if ($errors->has('nome_gestao'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('nome_gestao') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group col-md-6"><label for="foto">Foto</label>
                        <input type="file" class="form-control" id="foto" name="imagem" required>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6"><label for="tipo_galeria_id">Tipo</label>
                        <select id="tipo" name="tipo_galeria_id" class="form-control {{ $errors->has('tipo_galeria_id') ? ' border-danger' : '' }}" required>
                            <option value="">Selecione...</option>
                            @foreach ($tipo_galeria as $t)
                            <option value="{{ $t->id }}">{{ $t->nome }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="form-group col-md-6"><label for="periodo">Periodo</label>
                        <input type="text" class="form-control {{ $errors->has('periodo') ? ' border-danger' : '' }}" id="periodo" name="periodo" placeholder="Periodo" required>
                        @if ($errors->has('periodo'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('periodo') }}</strong>
                        </span>
                        @endif
                    </div>
                </div>
                <div class="form-group">
                </div><button type="submit" class="btn btn-primary">Salvar</button>
            </form>
        </div>
    </div>
</div>


@stop