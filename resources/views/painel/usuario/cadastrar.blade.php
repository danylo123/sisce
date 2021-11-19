@extends('app')

@section('titulo')
Cadastro Usuário
@stop

@section('conteudo')
<h3>Cadastro Usuário</h3>

</div>
<div class="masonry-item col-md-12">
    <div class="bgc-white p-20 bd">
        <div class="mT-30">
            <form method="post" action="{{ route('painel.usuario.novo') }}">
                <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                <div class="form-row">

                    <div class="form-group col-md-6"><label for="nome">Nome</label>
                        <input type="text" class="form-control {{ $errors->has('name') ? ' border-danger' : '' }}" id="nome" value="{{ old('name') }}" name="name" placeholder="Nome completo">
                        @if ($errors->has('name'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('name') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group col-md-6"><label for="email">E-mail</label>
                        <input type="text" class="form-control {{ $errors->has('email') ? ' border-danger' : '' }}" id="email" value="{{ old('email') }}" name="email" placeholder="E-mail">
                        @if ($errors->has('email'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('email') }}</strong>
                        </span>
                        @endif
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6 "><label for="id_sisdm">ID SISDM</label>
                        <input type="number" class="form-control {{ $errors->has('id_sisdm') ? ' border-danger' : '' }}" id="id_sisdm" value="{{ old('id_sisdm') }}" name="id_sisdm" placeholder="ID SISDM">
                        @if ($errors->has('id_sisdm'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('id_sisdm') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group col-md-6"><label for="senha">Senha</label>
                        <input type="password" class="form-control {{ $errors->has('password') ? ' border-danger' : '' }}" id="senha" name="password" placeholder="Senha">
                        @if ($errors->has('password'))
                        <span class="error text-danger">
                            <strong>{{ $errors->first('password') }}</strong>
                        </span>
                        @endif
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6"><label for="capitulo">Capitulo</label>
                        <select id="capitulo" name="capitulo_id" class="form-control">
                            <option selected="selected">Selecione...</option>
                            @foreach ($capitulo as $c)
                            <option value="{{ $c->id }}">{{ $c->nome }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="form-group col-md-6"><label for="permissao">Permissão de acesso</label>
                        <select id="nivel" name="nivel" class="form-control">
                            <option selected="selected">Selecione...</option>
                            <option value="1">Padrão</option>
                            <option value="2">Moderador</option>
                            <option value="3">Administrador</option>
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