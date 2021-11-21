@extends('app')

@section('titulo')
    Priorados
@stop

@section('conteudo')
    <h3>Priorados</h3>

    <div class="container-fluid">
        <div class="col-md-12">
            <div class="bgc-white bd bdrs-3 p-20 mB-20">
                <input class="form-control col-md-3" id="myInput" type="search"
                    placeholder="Busque pelo nome, número ou região">
                <br>
                <div class="form-row" id="myTable">
                    @foreach ($priorados as $p)
                        <div id="tr" class="form-group col-md-4">
                            <div class="card" style="width: 18rem;">
                                <img class="card-img-top" src="{{ url('storage/' . $p->imagem) }}" width="100"
                                    height="180" alt="{{ $p->nome }}">
                                <div class="card-body">
                                    <h5 class="card-title">{{ $p->nome }} N° {{ $p->numero }}
                                    </h5>
                                    <p class="card-text"> {{ $p->regiao->nome }}
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
