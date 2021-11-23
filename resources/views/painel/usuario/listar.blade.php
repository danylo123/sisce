@extends('app')

@section('titulo')
    Capitulos
@stop

@section('conteudo')
    <a href="{{ url('/painel/usuario/novo') }}" class="btn cur-p btn-primary float-right">Novo</a>
    <h3>Painel Usuários</h3>

    <div class="container-fluid">
        <div class="row">

            <div class="col-md-12">

                <div class="bgc-white bd bdrs-3 p-20 mB-20">
                    <form action="{{ route('painel.usuarios-search') }}" method="post">
                        {{ csrf_field() }}
                        <div class="form-row">
                            <div class="form-group col-md-2">
                                <input type="text" name="id_sisdm" @if (isset($data['id_sisdm'])) value="{{ $data['id_sisdm'] }}" @endif id="id_sisdm"
                                    class="form-control" placeholder="ID">
                            </div>
                            <div class="form-group col-md-3">
                                <input type="text" name="name" @if (isset($data['name'])) value="{{ $data['name'] }}" @endif id="name" class="form-control"
                                    placeholder="Nome">
                            </div>
                            <div class="form-group col-md-3">
                                <select class="form-control" name="capitulo_id" id="capitulo_id">
                                    <option value="">Capitulo</option>
                                    @foreach ($capitulo as $capitulo)
                                        <option value="{{ $capitulo->id }}" @if (isset($data['capitulo_id'])) @if ($data['capitulo_id'] == $capitulo->id) selected @endif @endif>
                                            {{ $capitulo->nome }} N° {{ $capitulo->numero }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group col-md-2">
                                <select class="form-control" name="status" id="status">
                                    <option value="">Status</option>
                                    <option value="ativo" @if (isset($data['status'])) @if ($data['status'] == 'ativo') selected @endif @endif>Ativo</option>
                                    <option value="desativado" @if (isset($data['status'])) @if ($data['status'] == 'desativado') selected @endif @endif>Inativo</option>
                                </select>
                            </div>
                            <div class="form-group col-md-2">
                                <button type="submit" class="form-control btn btn-primary">Filtrar</button>
                            </div>
                        </div>
                    </form>

                    <div class="row table-responsive">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Nome</th>
                                    <th scope="col">E-mail</th>
                                    <th scope="col">Capitulo</th>
                                    <th scope="col">Status</th>
                                    <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody id="myTable">
                                @foreach ($usuarios as $c)
                                    <tr>
                                        <th scope="row">
                                            <img width="30" height="30" src="
                                                 @if ($c->imagem == !null)
                                            {{ url('storage/users/' . $c->imagem) }}
                                        @else
                                            {{ url('storage/users/sem-foto.jpg') }}
                                @endif
                                " alt="{{ $c->name }}" class="rounded-circle" />
                                 #{{ $c->id_sisdm }}</th>
                                <td>{{ $c->name }}</td>
                                <td>{{ $c->email }}</td>
                                <td><span data-toggle="tooltip" data-placement="top"
                                        title="{{ $c->capitulo->cidade->nome }}">{{ $c->capitulo->nome }} N°
                                        {{ $c->capitulo->numero }}</span>
                                </td>
                                <td>
                                    @if ($c->status == 'ativo')
                                        <span class="badge badge-success">Ativo</span>
                                    @else
                                        <span class="badge badge-danger">Inativo</span>
                                    @endif

                                </td>
                                <td>
                                    @if ($c->status == 'ativo')
                                        <a class="btn btn-warning"
                                            href="{{ url('/painel/usuario/editar/') }}/{{ $c->id }}">Editar</a>
                                        <button type="button" class="btn btn-danger" data-toggle="modal"
                                            data-target="#confirm{{ $c->id }}">Excluir</button>
                                        <div class="modal fade" id="confirm{{ $c->id }}" role="dialog">
                                            <div class="modal-dialog modal-md">
                                                <div class="modal-content">
                                                    <div class="modal-body">
                                                        <p>Deseja realmente excluir <b>{{ $c->name }}</b>?</p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <a href="{{ url('/painel/usuario/excluir/') }}/{{ $c->id }}"
                                                            type="button" class="btn btn-danger" id="delete">Deletar</a>
                                                        <button type="button" data-dismiss="modal"
                                                            class="btn btn-default">Cancelar</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @else
                                        <span data-toggle="tooltip" data-placement="top"
                                            title="Para ativálo contate um administrador"><button type="button"
                                                class="btn btn-info">Info</button></span>
                                    @endif
                                </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                        {{-- Pagination --}}
                        <div class="d-flex justify-content-center">
                            @if (isset($data))
                                {{ $usuarios->appends($data)->links() }}
                            @else
                                {{ $usuarios->links() }}
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $("#myInput").on("keyup", function() {
                var value = $(this).val().toLowerCase();
                $("#myTable tr").filter(function() {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
    </script>
@stop
