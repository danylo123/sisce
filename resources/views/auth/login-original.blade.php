@extends('layouts.login')

@section('content')

<div id="login">
    <h3 class="text-center text-dark pt-3">SISCE 1.0</h3>
    <div class="container">
        <div id="login-row" class="row justify-content-center align-items-center">
            <div id="login-column" class="col-md-6">
                <div id="login-box" class="col-md-12">
                    <form class="form" id="login-form" method="POST" action="{{ route('login') }}">
                        {{ csrf_field() }}
                        <div class="form-group{{ $errors->has('id_sisdm') ? ' has-error' : '' }}">
                            <label for="id_sisdm">ID SISDM</label>
                            <input id="id_sisdm" type="number" class="form-control" name="id_sisdm" value="{{ old('id_sisdm') }}" required autofocus>

                            @if ($errors->has('id_sisdm'))
                            <span class="error text-danger">
                                <strong>{{ $errors->first('id_sisdm') }}</strong>
                            </span>
                            @endif
                        </div>
                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label for="password">Senha</label>

                            <input id="password" type="password" class="form-control" name="password" required>

                            @if ($errors->has('password'))
                            <span class="error text-danger">
                                <strong>{{ $errors->first('password') }}</strong>
                            </span>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="remember-me"><span>Lembre-me</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>

                            <button type="submit" class="btn btn-primary">
                                Entrar
                            </button>

                            <!--  <a class="btn btn-link" href="{{ route('password.request') }}">
                                Esqueceu a senha?
                            </a> -->
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>






















<!-- <div class="panel panel-default">
                <div class="panel-heading">Login</div>

                <div class="panel-body">
                    <form class="form-horizontal" method="POST" action="{{ route('login') }}">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('id_sisdm') ? ' has-error' : '' }}">
                            <label for="id_sisdm" class="col-md-4 control-label">ID SISDM</label>

                            <div class="col-md-6">
                                <input id="id_sisdm" type="email" class="form-control" name="email" value="{{ old('email') }}" required autofocus>

                                @if ($errors->has('email'))
                                    <span class="error text-danger">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label for="password" class="col-md-4 control-label">Senha</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="error text-danger">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> Lembrar                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-8 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    Entrar
                                </button>

                                <a class="btn btn-link" href="{{ route('password.request') }}">
                                    Esqueceu a senha?
                                </a>
                            </div>
                        </div>
                    </form>
                </div>
            </div> -->

@endsection