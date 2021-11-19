@extends('app')

@section('titulo')
Cadastrar capitulo
@stop

@section('conteudo')
<h3>Cadastrar capitulo</h3>

<div class="masonry-item col-md-12">
    <div class="bgc-white p-20 bd">
        <div class="mT-30">
            <form method="POST" action="{{ url('capitulo/store') }}" enctype="multipart/form-data">
                <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                <div class="form-row">
                    <div class="form-group col-md-6"><label for="name">Nome</label>
                        <input type="text" class="form-control" id="name" name="nome" placeholder="Nome do capitulo" required>
                    </div>
                    <div class="form-group col-md-6"><label for="numero">Número</label>
                        <input type="number" class="form-control" id="numero" name="numero" placeholder="Número" required>
                    </div>
                    <div class="form-group col-md-6"><label for="cidade">Cidade</label><select id="cidade" name="cidade_id" class="form-control" required>
                            <option value="">Selecione</option>
                            @foreach ($cidade as $c)
                            <option value="{{ $c->id }}">{{ $c->nome }} / {{ $c->estado }}</option>
                            @endforeach
                        </select></div>
                    <div class="form-group col-md-6"><label for="imagem">Brasão</label>
                        <input type="file" class="form-control" id="imagem" name="imagem" required>
                    </div>
                </div>
                <div class="form-group">
                </div><button type="submit" class="btn btn-primary">Salvar</button>
            </form>
        </div>
    </div>
</div>


@stop