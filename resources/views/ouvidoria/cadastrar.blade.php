@extends('app')

@section('titulo')
Ouvidoria
@stop

@section('conteudo')
<h1>Ouvidoria</h1>

<div class="masonry-item col-md-12">
    <div class="bgc-white p-20 bd">
        <div class="mT-30">
            <form method="POST" action="" enctype="multipart/form-data">
                <input type="hidden" name="_token" value="{{{ csrf_token() }}}">
                <div class="form-row">
                    <div class="form-group col-md-12"><label for="texto">Digite aqui sua dúvida ou sugestão</label>
                        <textarea name="texto" id="texto" class="form-control" cols="30" rows="10"></textarea>
                    </div>
                </div>
                <div class="form-group">
                </div><button type="submit" class="btn btn-primary" disabled>Enviar</button>
            </form>
        </div>
    </div>
</div>


@stop