@extends('app')

@section('titulo')
Mídias
@stop

@section('conteudo')
<a href="" data-toggle="modal" data-target="#pasta" class="btn cur-p btn-primary float-right">Nova pasta</a>
<div class="modal fade" id="pasta" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Criar nova pasta</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <form method="POST" action="{{ url('painel/midia/pasta/store') }}" enctype="multipart/form-data">
                    <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                    <div class="form-row">
                        <div class="form-group col-md-12"><label for="titulo">Titulo</label>
                            <input type="text" class="form-control" id="titulo" name="titulo" placeholder="Digite um titulo para a pasta" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary">Salvar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<h3>Pastas de mídias</h3>

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
                                <th scope="col">Pasta</th>
                                <th scope="col">Arquivos</th>
                                <th scope="col">Data Criação</th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody id="myTable">
                            @foreach ($pasta as $p)
                            <tr>
                                <td title="Clique para mostrar os arquivos"><a href="{{ url('/painel/midia/pasta/') }}/{{ $p->id }}">{{ $p->titulo }}</a></td>
                                <td>
                                    @if($p->midia->count() < 1) Nenhum arquivo @else {{ $p->midia->count() }} @endif </td>
                                <td>{{ $p->created_at->format('d/m/Y H:i') }}</td>
                                <td>
                                  <!--  <a class="btn btn-warning" href="{{ url('/painel/midia/pasta/editar/') }}/{{ $p->id }}">Editar</a> -->
                                    <a href="" data-toggle="modal" data-target="#excluir{{ $p->id }}" class="btn cur-p btn-danger">Excluir</a>
                                    <div class="modal fade" id="excluir{{ $p->id }}" role="dialog">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-body">
                                                    <h5>Você deseja exluir a pasta <b>{{ $p->titulo }}</b>?</h5>
                                                    @if($p->midia->count() < 1) Nenhum arquivo @else <span class="text-info">Essa pasta contém {{ $p->midia->count() }} arquivos</span>
                                                        @endif
                                                </div>
                                                <form method="POST" action="{{ url('painel/midia/excluirPasta') }}" enctype="multipart/form-data">
                                                    <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                                                    <input type="hidden" name="id" value="{{ $p->id }}">
                                                    <div class="modal-footer">
                                                        <button type="submit" class="btn btn-danger" id="delete">Deletar</button>
                                                        <button type="button" data-dismiss="modal" class="btn">Cancelar</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>

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