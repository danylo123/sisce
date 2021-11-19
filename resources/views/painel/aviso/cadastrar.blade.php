@extends('app')

@section('titulo')
Novo aviso
@stop

@section('conteudo')
<h3>Novo aviso</h3>

<div class="masonry-item col-md-12">
    <div class="bgc-white p-20 bd">
        <div class="mT-30">
            <form method="POST" action="" enctype="multipart/form-data">
                <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                <input type="hidden" name="user_name" value="{{ auth()->user()->name }}">
                <div class="form-row">
                    <div class="form-group col-md-6"><label for="titulo">Titulo</label>
                        <input type="text" class="form-control {{ $errors->has('titulo') ? ' border-danger' : '' }}" id="titulo" name="titulo" required placeholder="Titulo">
                        @if ($errors->has('titulo'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('titulo') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group col-md-6"><label for="ativo" required>Ativo</label>
                        <select name="ativo" class="form-control">
                            <option value="1">Sim</option>
                            <option value="2">Não</option>

                        </select>
                    </div>
                    <div class="form-group col-md-6"><label for="imagem">Imagem</label>
                        <input type="file" class="form-control" id="imagem" name="imagem" required>
                        @if ($errors->has('imagem'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('imagem') }}</strong>
                        </span>
                        @endif
                    </div>
                    
                </div>
                <div class="form-group">
                </div><button type="submit" class="btn btn-primary">Salvar</button>
            </form>
        </div>
    </div>
</div>


@stop