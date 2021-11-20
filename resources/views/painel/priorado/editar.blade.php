@extends('app')

@section('titulo')
Editar priorado
@stop

@section('conteudo')
<h3>Editar priorado</h3>

<div class="masonry-item col-md-12">
    <div class="bgc-white p-20 bd">
        <div class="mT-30">
            @foreach ($priorado as $p)
            <form method="post" action="{{ route('painel.priorado.edit') }}" enctype="multipart/form-data">
                <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                <input type="hidden" name="id" value="{{ $p->id }}">
                <div class="form-row">
                    <div class="form-group col-md-6"><label for="name">Nome</label>
                        <input type="text" value="{{ old('nome') }}" class="form-control {{ $errors->has('nome') ? ' border-danger' : '' }}" id="name" name="nome" placeholder="Nome do priorado" required>
                        @if ($errors->has('nome'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('nome') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group col-md-6"><label for="numero">Número</label>
                        <input type="number" value="{{ old('numero') }}" class="form-control {{ $errors->has('numero') ? ' border-danger' : '' }}" id="numero" name="numero" placeholder="Número" required>
                        @if ($errors->has('numero'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('numero') }}</strong>
                        </span>
                        @endif
                    </div>                    
                    <div class="form-group col-md-6">
                        <label for="regiao_id">Região</label>
                        <select id="regiao_id" name="regiao_id" class="form-control" required>
                            <option value="">Selecione</option>
                        @foreach ($regiaos as $r)
                        <option value="{{ $r->id }}">
                            {{ $r->nome }}
                        </option>
                        @endforeach
                    </select></div>
                    <div class="form-group col-md-6"><label for="imagem">Brasão</label>
                        <input type="file" value="{{ old('imagem') }}" class="form-control" id="imagem" name="imagem" required>
                    </div>
                </div>
                <div class="form-group">
                <button type="submit" class="btn btn-primary">Salvar</button>
                </div>
                <br>
                <div class="col-sm-2">
                    <div class="thumbnail">
                        <img alt="Brasão-{{ $p->nome }}" title="Brasão-{{ $p->nome }}" class="img-responsive img-thumbnail" src="{{ url('storage/'.$p->imagem) }}" style="width:100%" />
                    </div>
                </div>
                @endforeach
            </form>
        </div>
    </div>
</div>


@stop