@extends('app')

@section('titulo')
Cadastro transparencia
@stop

@section('conteudo')
<h3>Cadastro transparencia</h3>

<div class="masonry-item col-md-12">
    <div class="bgc-white p-20 bd">
        <div class="mT-30">
            <form method="POST" action="{{ url('transparencia/store') }}" enctype="multipart/form-data">
                <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                <div class="form-row">
                    <div class="form-group col-md-6"><label for="titulo">Titulo</label>
                        <input type="text" class="form-control" id="titulo" name="titulo" placeholder="Titulo" required>
                    </div>
                    <div class="form-group col-md-6"><label for="ano">Ano</label>
                        <select id="ano" name="ano" class="form-control" required>
                            <option value="">Selecione...</option>
                            <option value="2015">2015</option>
                            <option value="2016">2016</option>
                            <option value="2017">2017</option>
                            <option value="2018">2018</option>
                            <option value="2019">2019</option>
                            <option value="2020">2020</option>
                            <option value="2021">2021</option>
                            <option value="2022">2022</option>
                            <option value="2023">2023</option>
                            <option value="2024">2024</option>
                        </select>
                    </div>
                    <div class="form-group col-md-6"><label for="arquivo">Arquivo</label>
                        <input type="file" class="form-control" id="arquivo" name="arquivo" required>
                    </div>
                    <div class="form-group col-md-6"><label for="tipo">Tipo</label>
                        <select class="form-control" id="tipo" name="tipo" size="3" required>
                            <option selected>Selecione</option>
                            <option value="1">GCE</option>
                            <option value="2">ADACE</option>                            
                        </select>
                    </div>
                </div>
                <div class="form-group">
                </div><button type="submit" class="btn btn-primary">Salvar</button>
            </form>
        </div>
    </div>
</div>


@stop