@extends('app')

@section('titulo')
Cadastro mídias
@stop

@section('conteudo')

<h3>Cadastro mídia</h3>

<div class="masonry-item col-md-12">
    <div class="bgc-white p-20 bd">
        <div class="mT-30">
            <form method="POST" action="{{ url('painel/midia/store') }}" enctype="multipart/form-data">
                <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                <div class="form-row">
                    <div class="form-group col-md-6"><label for="titulo">Titulo</label>
                        <input type="text" class="form-control" id="titulo" name="titulo" placeholder="Titulo" required>
                    </div>
                    <div class="form-group col-md-6"><label for="pasta">Pasta</label>
                        <select id="pasta" name="pasta_midia_id" class="form-control" required>
                            @foreach($pasta as $p)
                            <option value="{{ $p->id }}">{{ $p->titulo }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group col-md-6"><label for="arquivo">Arquivo</label>
                        <input type="file" class="form-control" id="arquivo" name="arquivo" required>
                    </div>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Salvar</button>
                </div>
            </form>
        </div>
    </div>
</div>

@stop