@extends('app')

@section('titulo')
Cadastro transparencia
@stop

@section('conteudo')
<h3>Cadastro transparencia</h3>

<div class="masonry-item col-md-12">
    <div class="bgc-white p-20 bd">
        <div class="mT-30">
            <form method="POST" action="{{ route('painel.transparencia.novo') }}" enctype="multipart/form-data">
                <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                <div class="form-row">
                    <div class="form-group col-md-6"><label for="titulo">Titulo</label>
                        <input type="text" value="{{ old('titulo') }}" class="form-control {{ $errors->has('titulo') ? ' border-danger' : '' }}" id="titulo" name="titulo" placeholder="Titulo" required>
                        @if ($errors->has('titulo'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('titulo') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group col-md-6"><label for="ano">Ano</label>
                        <input type="number" id="ano" name="ano" value="{{ old('ano') }}" class="form-control {{ $errors->has('ano') ? ' border-danger' : '' }}" maxlength="4" minlength="4" required>
                        @if ($errors->has('ano'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('ano') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group col-md-6"><label for="arquivo">Arquivo</label>
                        <input type="file" class="form-control" id="arquivo" name="arquivo" required>
                    </div>
                    <div class="form-group col-md-6"><label for="tipo">Associação</label>
                        <select class="form-control" id="tipo" name="tipo" required>
                            <option selected>Selecione</option>
                            <option value="1">GCE</option>
                            <option value="2">ADACE</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                </div><button type="submit" class="btn btn-primary">Salvar</button>
            </form>
        </div>
    </div>
</div>


@stop