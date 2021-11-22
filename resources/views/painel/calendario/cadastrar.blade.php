@extends('app')

@section('titulo')
Cadastrar calendário
@stop

@section('conteudo')
<h3>Cadastrar calendário</h3>

<div class="masonry-item col-md-12">
    <div class="bgc-white p-20 bd">
        <div class="mT-30">
            <form method="POST" action="{{ url('painel/calendario/novo') }}" enctype="multipart/form-data">
                <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                <div class="form-row">
                    <div class="form-group col-md-6"><label for="ano">Ano</label>
                        <input type="number" class="form-control" id="ano" name="ano" placeholder="Ano" required>
                    </div>                    
                    <div class="form-group col-md-6"><label for="ano">Semestre</label>
                        <select class="form-control" id="semestre" name="semestre">
                        <option value="">Selecione</option>
                            <option value="1">Primeiro</option>
                            <option value="2">Segundo</option>
                        </select>
                    </div>                    
                    <div class="form-group col-md-6"><label for="cidade">Capitulo</label>
                        <select id="capitulo" name="capitulo_id" class="form-control" required>
                            <option value="">Selecione</option>
                            @foreach ($capitulos as $capitulo)
                            <option value="{{ $capitulo->id }}">
                                {{ $capitulo->nome }}
                            </option>
                            @endforeach
                        </select></div>                       
                    <div class="form-group col-md-6"><label for="arquivo">Calendário em formato PDF</label>
                        <input type="file" class="form-control" id="arquivo" name="arquivo">
                    </div>
                </div>
                <div class="form-group">
                </div><button type="submit" class="btn btn-primary">Salvar</button>
            </form>
        </div>
    </div>
</div>


@stop