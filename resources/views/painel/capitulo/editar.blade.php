@extends('app')

@section('titulo')
Editar capitulo
@stop

@section('conteudo')
<h3>Editar capitulo</h3>

<div class="masonry-item col-md-12">
    <div class="bgc-white p-20 bd">
        <div class="mT-30">
            @foreach ($capitulo as $c)
            <form method="post" action="{{ route('painel.capitulo.edit') }}" enctype="multipart/form-data">
                <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                <input type="hidden" name="id" value="{{ $c->id }}">
                <div class="form-row">
                    <div class="form-group col-md-6"><label for="name">Nome</label>
                        <input type="text" class="form-control" id="name" name="nome" value="{{ $c->nome }}" placeholder="Nome do capitulo" required>
                    </div>
                    <div class="form-group col-md-6"><label for="numero">Número</label>
                        <input type="number" class="form-control" id="numero" name="numero" value="{{ $c->numero }}" placeholder="Número" required>
                    </div>
                    <div class="form-group col-md-6"><label for="cidade">Cidade</label><select id="cidade" name="cidade_id" class="form-control" required>
                            @foreach ($cidades as $cidade)
                            <option value="{{ $cidade->id }}" @if($cidade->id == $c->cidade_id)
                                selected
                                @endif>
                                {{ $cidade->nome }}
                            </option>
                            @endforeach
                        </select></div>
                    <div class="form-group col-md-6"><label for="imagem">Brasão</label>
                        <input type="file" class="form-control" id="imagem" name="imagem">
                    </div>
                </div>
                <div class="form-group">
                <button type="submit" class="btn btn-primary">Salvar</button>
                </div>
                <br>
                <div class="col-sm-2">
                    <div class="thumbnail">
                        <img alt="Brasão-{{ $c->nome }}" title="Brasão-{{ $c->nome }}" class="img-responsive img-thumbnail" src="{{ url('storage/'.$c->imagem) }}" style="width:100%" />
                    </div>
                </div>
                @endforeach
            </form>
        </div>
    </div>
</div>


@stop