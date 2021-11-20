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
            <form method="POST" action="{{ url('capitulo/update', $c->id) }}" enctype="multipart/form-data">            
            {{{ method_field('PUT') }}}
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
                            <option value="{{ $cidade->id }}"
                                @if($cidade->id == $c->cidade_id)
                                selected 
                                @endif>
                                {{ $cidade->nome }}
                            </option>
                            @endforeach
                        </select></div>
                        <div class="form-group col-md-6">
                            <label for="regiao_id">Região</label>
                            <select id="regiao_id" name="regiao_id" class="form-control" required>
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
                        <input type="file" class="form-control" id="imagem" name="imagem">
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