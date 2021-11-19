@extends('app')

@section('titulo')
Editar usuário
@stop

@section('conteudo')
<h3>Editar usuário</h3>

<div class="masonry-item col-md-12">
    <div class="bgc-white p-20 bd">
        <div class="mT-30">
            <form method="POST" action="{{ route('painel.usuario.edit') }}" enctype="multipart/form-data">
                @foreach($usuario as $u)
                <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                <input type="hidden" name="id" value="{{ $u->id }}">
                <div class="form-row">
                    <div class="form-group col-md-6"><label for="name">Nome</label>
                        <input type="text" class="form-control {{ $errors->has('name') ? ' border-danger' : '' }}" id="name" name="name" required value="{{ $u->name }}" placeholder="Nome completo">
                        @if ($errors->has('name'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('name') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group col-md-6"><label for="email">E-mail</label>
                        <input type="email" class="form-control {{ $errors->has('email') ? ' border-danger' : '' }}" id="email" name="email" required value="{{ $u->email }}" placeholder="email">
                        @if ($errors->has('email'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('email') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group col-md-6"><label for="id_sisdm">ID SISDM</label>
                        <input type="number" class="form-control {{ $errors->has('id_sisdm') ? ' border-danger' : '' }}" id="id_sisdm" name="id_sisdm" required value="{{ $u->id_sisdm }}" placeholder="ID SISDM">
                        @if ($errors->has('id_sisdm'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('id_sisdm') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group col-md-6"><label for="password">Senha</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Senha">
                    </div>
                    <div class="form-group col-md-6"><label for="capitulo">Capitulo</label>
                        <select id="capitulo" name="capitulo_id" class="form-control">
                            @foreach ($capitulo as $c)
                            <option value="{{ $c->id }}" @if($c->id == $u->capitulo_id) selected @endif>{{ $c->nome }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="permissao">Permissão de acesso</label>
                        <select id="nivel" name="nivel" class="form-control">
                            <option value="1" @if('1'==$u->nivel) selected @endif>Padrão</option>
                            <option value="2" @if('2'==$u->nivel) selected @endif>Moderador</option>
                            <option value="3" @if('3'==$u->nivel) selected @endif>Administrador</option>
                        </select>
                    </div>
                    <div class="form-group col-md-6"><label for="imagem">Foto perfil</label>
                        <input type="file" accept="image/png, image/jpeg, image/jpg" class="form-control" id="imagem" name="imagem">
                    </div>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Salvar</button>
                </div>
                <br>
                <div class="col-sm-2">
                    <div class="thumbnail">
                        <img alt="{{ $u->name }}" title="{{ $u->name }}" class="img-responsive img-thumbnail" src="
                        @if($u->imagem == !null)
                                {{ url('storage/users/'.$u->imagem) }}
                                @else
                                {{ url('storage/users/sem-foto.jpg') }}
                                @endif" style="width:100%" />
                    </div>
                </div>
                @endforeach

            </form>
        </div>
    </div>
</div>


@stop