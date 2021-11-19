@extends('app')

@section('titulo')
Editar perfil
@stop

@section('conteudo')
<h3>Editar perfil</h3>

<div class="masonry-item col-md-12">
    <div class="bgc-white p-20 bd">
        <div class="mT-30">
            <form method="POST" action="{{ url('perfil/perfilEditar') }}" enctype="multipart/form-data">
        
                <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                <div class="form-row">
                    <div class="form-group col-md-6"><label for="name">Nome</label>
                        <input type="text" class="form-control" id="name" name="name" required value="{{ auth()->user()->name }}" placeholder="Nome completo">
                    </div>
                    <div class="form-group col-md-6"><label for="id_sisdm">ID SISDM</label>
                        <input type="number" class="form-control" id="id_sisdm" readonly required value="{{ auth()->user()->id_sisdm }}" placeholder="ID SISDM">
                    </div>
                    <div class="form-group col-md-6"><label for="email">E-mail</label>
                        <input type="email" class="form-control" id="email" name="email" required value="{{ auth()->user()->email }}" placeholder="email">
                    </div>
                    <div class="form-group col-md-6"><label for="password">Senha</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Senha">
                    </div>
                    <div class="form-group col-md-6"><label for="capitulo">Capitulo</label><select readonly id="capitulo" class="form-control">
                            @foreach ($capitulo as $c)
                            <option value="{{ $c->id }}" @if($c->id == auth()->user()->capitulo_id) selected @endif>{{ $c->nome }}</option>
                            @endforeach
                        </select></div>
                    <div class="form-group col-md-6"><label for="imagem">Foto perfil</label>
                        <input type="file" accept="image/png, image/jpeg, image/jpg" class="form-control" id="imagem" name="imagem">
                    </div>
                </div>
                <div class="form-group">
                </div><button type="submit" class="btn btn-primary">Salvar</button>
            </form>
        </div>
    </div>
</div>


@stop