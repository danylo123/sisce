@extends('app')

@section('titulo')
    Capitulos
@stop

@section('conteudo')
    <h3>Capitulos</h3>

    <div class="container-fluid">
        <div class="col-md-12">
            <div class="bgc-white bd bdrs-3 p-20 mB-20">
                <input class="form-control col-md-3" id="myInput" type="search"
                    placeholder="Busque pelo nome, cidade, número ou região">
                <br>
                <div class="form-row" id="myTable">
                    @foreach ($capitulos as $c)
                        <div id="tr" class="form-group col-md-4">
                            <div class="card" style="width: 18rem;">
                                <img class="card-img-top" src="{{ url('storage/' . $c->imagem) }}" width="100"
                                    height="180" alt="{{ $c->nome }}">
                                <div class="card-body">
                                    <h5 class="card-title">{{ $c->nome }} N° {{ $c->numero }} <a
                                            class="btn btn-sm btn-primary"
                                            href="{{ url('/capitulo/') }}/{{ $c->numero }}/membros">Listar membros</a>
                                    </h5>
                                    <p class="card-text"> {{ $c->cidade->nome }}/{{ $c->cidade->estado }}
                                        <br>{{ $c->regiao->nome }}
                                    </p>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
    </div>
    <script>
        $(document).ready(function() {
            $("#myInput").on("keyup", function() {
                var value = $(this).val().toLowerCase();
                $("#myTable #tr").filter(function() {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
    </script>
@stop
