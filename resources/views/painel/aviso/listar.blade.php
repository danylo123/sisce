@extends('app')

@section('titulo')
Avisos
@stop

@section('conteudo')
<a href="{{ url('/painel/aviso/novo') }}" class="btn cur-p btn-primary float-right">Novo</a>
<h3>Painel Avisos</h3>

<div class="container-fluid">
    <div class="row">
        <p><span class="info text-info">
                <strong>Os avisos que estão sendo mostrados na página inicial, são os 3 primeiros avisos na ordem crescente da tabela.</strong>
            </span></p>

        <div class="col-md-12">

            <div class="bgc-white bd bdrs-3 p-20 mB-20">

                <div class="row">
                    <input class="form-control col-md-3" id="myInput" type="text" placeholder="Procure..">
                    <br>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">Titulo</th>
                                <th scope="col">Status</th>
                                <th scope="col">Data Criação</th>
                                <th scope="col">Última Atualização</th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody id="myTable">
                            @foreach ($aviso as $c)
                            <tr>
                                <td>{{ $c->titulo }}</td>
                                <td>
                                    @if($c->ativo == 1)
                                    <span class="badge badge-success">Ativo</span>
                                    @else
                                    <span class="badge badge-danger">Inativo</span>
                                    @endif
                                </td>
                                <td>{{ $c->created_at->format('d/m/Y H:i:s') }}</td>
                                <td>{{ $c->updated_at->format('d/m/Y H:i:s') }}</td>
                                <td><a class="btn btn-warning" href="{{ url('/painel/aviso/editar/') }}/{{ $c->id }}">Editar</a>

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