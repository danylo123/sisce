@extends('app')

@section('titulo')
Avisos
@stop

@section('conteudo')
@foreach($pasta as $pasta)
<a href="{{ url('/painel/documento/cadastrar') }}/{{ $pasta->id }}" class="btn cur-p btn-primary float-right">Novo</a>
@endforeach
<h3>Documento pasta

</h3>

<div class="container-fluid">
    <div class="row">

        <div class="col-md-12">

            <div class="bgc-white bd bdrs-3 p-20 mB-20">

                <div class="row table-responsive">
                    <input class="form-control col-md-3" id="myInput" type="text" placeholder="Procure...">
                    <p></p>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">Titulo</th>
                                <th scope="col">Arquivo</th>
                                <th scope="col">Data Criação</th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody id="myTable">
                            @foreach ($documento as $d)
                            <tr>
                                <td>{{ $d->titulo }}</td>
                                <td>
                                    <a href="" data-toggle="modal" data-target="#{{ $d->id }}" class="btn btn-primary">Visualizar</a>
                                    <div class="modal fade" id="{{ $d->id }}" role="dialog">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title">{{ $d->titulo }}</h4>
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <object type="application/pdf" data="{{ url('storage/'.$d->arquivo) }}" width="100%" height="100%" style="height: 75vh;">No Support</object>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </td>
                                <td>{{ $d->created_at->format('d/m/Y H:i') }}</td>
                                <td>
                                    <a class="btn btn-warning" href="{{ url('/painel/documento/editar/') }}/{{ $d->id }}">Editar</a>
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