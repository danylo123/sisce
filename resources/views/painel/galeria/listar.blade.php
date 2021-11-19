@extends('app')

@section('titulo')
Capitulos
@stop

@section('conteudo')
<a href="{{ url('/painel/galeria/novo') }}" class="btn cur-p btn-primary float-right">Novo</a>
<h3>Painel Galerias</h3>

<div class="container-fluid">
    <div class="row">

        <div class="col-md-12">

            <div class="bgc-white bd bdrs-3 p-20 mB-20">

                <div class="table-responsive row">
                    <input class="form-control" id="myInput" type="text" placeholder="Procure...">
                    <p></p>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Nome</th>
                                <th scope="col">Cargo</th>
                                <th scope="col">Gestão</th>
                                <th scope="col">Última atualização</th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody id="myTable">
                            @foreach ($galeria as $c)
                            <tr>
                                <th scope="row">#{{ $c->id }}</th>
                                <td>{{ $c->nome }}</td>
                                <td>{{ $c->cargo }}</td>
                                <td>{{ $c->periodo }}</td>
                                <td>{{ $c->updated_at->format('d/m/Y H:i:s') }}</td>
                                <td><a class="btn btn-warning" href="{{ url('/painel/galeria/editar/') }}/{{ $c->id }}">Editar</a>
                                    <!--
                                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#confirm{{ $c->id }}">Excluir</button>
                                    <div class="modal fade" id="confirm{{ $c->id }}" role="dialog">
                                        <div class="modal-dialog modal-md">
                                            <div class="modal-content">
                                                <div class="modal-body">
                                                    <p>Deseja realmente excluir <b>{{ $c->nome }}</b>?</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <a href="{{ url('/galeria/excluir/') }}/{{ $c->id }}" type="button" class="btn btn-danger" id="delete">Excluir</a>
                                                    <button type="button" data-dismiss="modal" class="btn btn-default">Cancelar</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    -->
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
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