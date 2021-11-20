@extends('app')

@section('titulo')
Priorados
@stop

@section('conteudo')
<a href="{{ url('/painel/priorado/novo') }}" class="btn cur-p btn-primary float-right">Novo</a>
<h3>Painel Priorados</h3>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="bgc-white bd bdrs-3 p-20 mB-20">
                <div class="table-responsive row">
                    <input class="form-control" id="myInput" type="text" placeholder="Procure...">

                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">Número</th>
                                <th scope="col">Nome</th>
                                <th scope="col">Região</th>
                                <th scope="col">Última atualização</th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody id="myTable">
                            @foreach ($priorados as $p)
                            <tr>
                                <th scope="row">#{{ $p->numero }}</th>
                                <td>{{ $p->nome }}</td>
                                <td>{{ $p->regiao->nome }}</td>
                                <td>{{ $p->updated_at->format('d/m/Y H:i:s') }}</td>
                                <td><a class="btn btn-warning" href="{{ url('/painel/priorado/editar/') }}/{{ $p->id }}">Editar</a>
                                    <!--
                                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#confirm{{ $p->id }}">Excluir</button>
                                    <div class="modal fade" id="confirm{{ $p->id }}" role="dialog">
                                        <div class="modal-dialog modal-md">
                                            <div class="modal-content">
                                                <div class="modal-body">
                                                    <p>Deseja realmente excluir <b>{{ $p->nome }}</b>?</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <a href="{{ url('/capitulo/excluir/') }}/{{ $p->id }}" type="button" class="btn btn-danger" id="delete">Excluir</a>
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