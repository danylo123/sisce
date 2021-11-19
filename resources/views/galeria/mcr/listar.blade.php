@extends('app')

@section('titulo')
Galeria de MCR
@stop

@section('conteudo')
<h3>Galeria de MCR's</h3>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="bgc-white bd bdrs-3 p-20 mB-20">                
                    <ul id="lightgallery" class="list-unstyled row">
                        @foreach ($galeria as $g)
                        
                            <li class="col-xs-6 col-sm-3 col-md-3 col-lg-3" data-src="{{ url('storage/'.$g->imagem) }}" data-responsive="{{ url('storage/'.$g->imagem) }}" data-sub-html="<h4>{{$g->nome }}</h4><p>Cargo: {{ $g->cargo }} <br>Período: {{ $g->periodo }} </p>">
                                <a href="">
                                    <img class="rounded mx-auto d-block img-responsive" style="width: 100%; height:200px" src="{{ url('storage/'.$g->imagem) }}">
                                </a>
                                <div class="caption">
                                    <p>{{ $g->nome }}</p>
                                </div>
                            </li>
                        
                        @endforeach
                    </ul>                
            </div>
        </div>
    </div>
</div>

@stop