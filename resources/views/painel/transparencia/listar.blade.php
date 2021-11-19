@extends('app')

@section('titulo')
Painel Transparência
@stop

@section('conteudo')

<a href="{{ url('/painel/transparencia/cadastrar') }}" class="btn cur-p btn-primary float-right">Novo</a>
<h3>Painel Arquivos Transparência</h3>

<div class="container-fluid">
    <div class="row">

        <div class="col-md-12">

            <div class="bgc-white bd bdrs-3 p-20 mB-20">

                <div class="row">
                    <input class="form-control col-md-3" id="myInput" type="text" placeholder="Procure..">
                    <br>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Título</th>
                                <th scope="col">Associação</th>
                                <th scope="col">Data</th>
                                <th scope="col">Ano</th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody id="myTable">
                            @foreach ($transparencia as $t)
                            <tr>
                                <th scope="row">#{{ $t->id }}</th>
                                <td>{{ $t->titulo }}</td>
                                <td>@if($t->tipo == 1)
                                    GCE
                                    @else
                                    ADACE
                                    @endif
                                </td>
                                <td>{{ $t->created_at->format('d/m/Y H:i:s') }}</td>
                                <td>{{ $t->ano }}</td>

                                <td><a class="btn btn-warning" href="{{ url('/painel/transparencia/editar/') }}/{{ $t->id }}">Editar</a>
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