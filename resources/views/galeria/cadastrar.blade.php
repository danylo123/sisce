@extends('app')

@section('titulo')
Cadastro Galeria
@stop

@section('conteudo')
<h3>Cadastro Galeria</h3>

<div class="masonry-item col-md-12">
    <div class="bgc-white p-20 bd">
        <div class="mT-30">
            <form method="POST" action="{{ url('galeria/store') }}" enctype="multipart/form-data">
                <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                <div class="form-row">
                    <div class="form-group col-md-6"><label for="nome">Nome</label>
                        <input type="text" class="form-control" id="nome" name="nome" placeholder="Nome completo">
                    </div>
                    <div class="form-group col-md-6"><label for="cargo">Cargo</label>
                        <input type="text" class="form-control" id="cargo" name="cargo" placeholder="Cargo">
                    </div>
                    <div class="form-group col-md-6"><label for="nome_gestao">Nome da gestão</label>
                        <input type="text" class="form-control" id="nome_gestao" name="nome_gestao" placeholder="Nome da gestão">
                    </div>
                    <div class="form-group col-md-6"><label for="foto">Foto</label>
                        <input type="file" class="form-control" id="foto" name="imagem">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6"><label for="tipo_galeria_id">Tipo</label><select id="tipo" name="tipo_galeria_id" class="form-control">
                            <option value="">Selecione...</option>
                            @foreach ($tipo_galeria as $t)
                            <option value="{{ $t->id }}">{{ $t->nome }}</option>
                            @endforeach
                        </select></div>

                    <div class="form-group col-md-6"><label for="periodo">Periodo</label>
                        <input type="text" class="form-control" id="periodo" name="periodo" placeholder="Periodo">
                    </div>
                </div>
                <div class="form-group">
                </div><button type="submit" class="btn btn-primary">Salvar</button>
            </form>
        </div>
    </div>
</div>


@stop