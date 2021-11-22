@extends('app')

@section('titulo')
Editar calendário
@stop

@section('conteudo')
<h3>Editar calendário</h3>

<div class="masonry-item col-md-12">
    <div class="bgc-white p-20 bd">
        <div class="mT-30">
            @foreach ($calendario as $c)
            <form method="post" action="{{ route('painel.calendario.editar') }}" enctype="multipart/form-data">
                <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                <input type="hidden" name="id" value="{{ $c->id }}">
                <div class="form-row">
                    <div class="form-group col-md-6"><label for="ano">Ano</label>
                        <input type="number" class="form-control" id="ano" name="ano" value="{{ $c->ano }}" placeholder="Ano" required>
                    </div>                    
                    <div class="form-group col-md-6"><label for="semestre">Semestre</label>
                        <select class="form-control" id="semestre" name="semestre">
                        <option value="">Selecione</option>
                            <option value="1" @if(1 == $c->semestre)selected @endif>Primeiro</option>
                            <option value="2" @if(2 == $c->semestre)selected @endif>Segundo</option>
                        </select>
                    </div>                    
                    <div class="form-group col-md-6"><label for="cidade">Capitulo</label><select id="capitulo" name="capitulo_id" class="form-control" required>
                            @foreach ($capitulos as $capitulo)
                            <option value="{{ $capitulo->id }}" @if($capitulo->id == $c->capitulo_id)
                                selected
                                @endif>
                                {{ $capitulo->nome }}
                            </option>
                            @endforeach
                        </select></div>                       
                    <div class="form-group col-md-6"><label for="arquivo">Documento</label>
                        <input type="file" class="form-control" id="arquivo" name="arquivo">
                    </div>
                    <div class="form-group">
                        <a href="{{ url('storage/'.$c->arquivo) }}" target="_blank" class="btn btn-outline-primary">Ver arquivo</a>                
                    </div>
                </div>
                
                <div class="form-group float-md-right">
                <button type="submit" class="btn btn-primary">Salvar</button>
                </div>
                <br>                
                @endforeach
            </form>
        </div>
    </div>
</div>


@stop