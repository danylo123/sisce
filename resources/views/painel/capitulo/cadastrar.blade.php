@extends('app')

@section('titulo')
Cadastrar capitulo
@stop

@section('conteudo')
<h3>Cadastrar capitulo</h3>

<div class="masonry-item col-md-12">
    <div class="bgc-white p-20 bd">
        <div class="mT-30">
            <form method="POST" action="{{ url('painel/capitulo/novo') }}" enctype="multipart/form-data">
                <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                <div class="form-row">
                    <div class="form-group col-md-6"><label for="name">Nome</label>
                        <input type="text" value="{{ old('nome') }}" class="form-control {{ $errors->has('nome') ? ' border-danger' : '' }}" id="name" name="nome" placeholder="Nome do capitulo" required>
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
                    <div class="form-group col-md-6"><label for="cidade">Cidade</label>
                        <select id="cidade" name="cidade_id" class="form-control {{ $errors->has('cidade_id') ? ' border-danger' : '' }}" required>
                            <option value="">Selecione</option>
                            @foreach ($cidade as $c)
                            <option value="{{ $c->id }}">{{ $c->nome }} / {{ $c->estado }}</option>
                            @endforeach
                        </select>
                        @if ($errors->has('cidade_id'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('cidade_id') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group col-md-6">
                        <label for="regiao_id">Região</label>
                        <select id="regiao_id" name="regiao_id" class="form-control" required>
                            <option value="">Selecione</option>
                        @foreach ($regiaos as $r)
                        <option value="{{ $r->id }}"
                            @if($r->id == $c->regiao_id)
                            selected 
                            @endif>
                            {{ $r->nome }}
                        </option>
                        @endforeach
                    </select></div>
                    <div class="form-group col-md-6"><label for="imagem">Brasão</label>
                        <input type="file" value="{{ old('imagem') }}" class="form-control" id="imagem" name="imagem" required>
                    </div>
                </div>
                <div class="form-group">
                </div><button type="submit" class="btn btn-primary">Salvar</button>
            </form>
        </div>
    </div>
</div>


@stop