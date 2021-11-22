@extends('app')

@section('titulo')
    Calendários
@stop

@section('conteudo')
    <h3>Calendários</h3>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="bgc-white bd bdrs-3 p-20 mB-20">
                    <input class="form-control col-md-3" id="myInput" type="search"
                        placeholder="Busque pelo capítulo ou gestão">
                    <br>
                    <div class="table-responsive row">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Capítulo</th>
                                    <th scope="col">Gestão</th>
                                    <th scope="col">Anexo</th>
                                    <th scope="col">Período</th>
                                    <th scope="col">Publicação</th>
                                </tr>
                            </thead>
                            <tbody id="myTable">
                                @foreach ($calendarios as $c)
                                    <tr>
                                        <th scope="row">#{{ $c->id }}</th>
                                        <td>{{ $c->capitulo->nome }} N° {{ $c->capitulo->numero }}</td>
                                        <td>{{ $c->ano }}.{{ $c->semestre }}</td>
                                        <td> <a href="{{ url('storage/' . $c->arquivo) }}" target="_blank">Ver anexo</a>
                                        </td>
                                        <td>
                                            @if ($c->semestre == 1)
                                                JAN-JUN
                                            @elseif($c->semestre == 2)
                                                JUL-DEZ
                                            @endif
                                        </td>
                                        <td>{{ $c->updated_at->format('d/m/Y') }}</td>
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
