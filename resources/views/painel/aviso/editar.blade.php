@extends('app')

@section('titulo')
Editar aviso
@stop

@section('conteudo')
<h3>Editar aviso</h3>

<div class="masonry-item col-md-12">
    <div class="bgc-white p-20 bd">
        <div class="mT-30">
            <form method="POST" action="{{ route('painel.aviso.editar') }}" enctype="multipart/form-data">
                @foreach($aviso as $u)
                <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                <input type="hidden" name="id" value="{{ $u->id }}">
                <input type="hidden" name="user_name" value="{{ $u->user_name }}">

                <div class="form-row">
                    <div class="form-group col-md-6"><label for="titulo">Titulo</label>
                        <input type="text" class="form-control {{ $errors->has('titulo') ? ' border-danger' : '' }}" id="name" name="titulo" required value="{{ $u->titulo }}" placeholder="Titulo">
                        @if ($errors->has('titulo'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('titulo') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group col-md-6"><label for="ativo" required>Ativo</label>
                        <select name="ativo" class="form-control">
                            <option value="1" @if($u->ativo == 1) selected @endif>Sim</option>
                            <option value="2" @if($u->ativo == 2) selected @endif>Não</option>
                        </select>
                        @if ($u->ativo == 1)
                        <span class="info text-info">
                            <strong>Esse aviso está sendo mostrado na página inicial.</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group col-md-6"><label for="imagem">Imagem</label>
                        <input type="file" class="form-control" id="imagem" name="imagem">
                    </div>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Salvar</button>
                </div>
                <br>
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img alt="Aviso-{{ $u->titulo }}" title="{{ $u->titulo }}" class="img-responsive img-thumbnail" src="{{ url('storage/avisos/'.$u->imagem) }}" style="width:100%" />
                    </div>
                </div>
                @endforeach

            </form>
        </div>
    </div>
</div>


@stop