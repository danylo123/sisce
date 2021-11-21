@extends('app')

@section('titulo')
Capitulos
@stop

@section('conteudo')
<h3>Membros capitulo
    @foreach ($capitulos as $capitulo)
    {{ $capitulo->nome }}
    @endforeach
</h3>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="bgc-white bd bdrs-3 p-20 mB-20">
                <div class="table-responsive row">
                    <input class="form-control col-md-3" id="myInput" type="text" placeholder="Procure...">

                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Nome</th>
                                <th scope="col">E-mail</th>
                                <th scope="col">Status</th>
                            </tr>
                        </thead>
                        <tbody id="myTable">
                            @foreach ($capitulos as $c)
                            @foreach ($c->membros as $m)
                            <tr>
                                <th scope="row">
                                    <img width="40" src="
                                @if($m->imagem == !null)
                                {{ url('storage/users/'.$m->imagem) }}
                                @else
                                {{ url('storage/users/sem-foto.jpg') }}
                                @endif
                                " alt="{{ $m->name }}" class="rounded-circle" />
                                    #{{ $m->id_sisdm }}
                                </th>
                                <td>{{ $m->name }}</td>
                                <td>{{ $m->email }}</td>
                                <td>
                                    @if($m->status == 'ativo')
                                    <span class="badge badge-success">Ativo</span>
                                    @else
                                    <span class="badge badge-danger">Inativo</span>
                                    @endif
                                </td>
                            </tr>
                            @endforeach
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