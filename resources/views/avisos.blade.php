<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">

    <ol class="carousel-indicators">
        @foreach( $aviso as $av )
        <li data-target="#carouselExampleIndicators" data-slide-to="{{ $loop->index }}" class="{{ $loop->first ? 'active' : '' }}"></li>
        @endforeach
    </ol>

    <div class="carousel-inner" role="listbox">
        @foreach( $aviso as $av )
        <div class="carousel-item {{ $loop->first ? 'active' : '' }}">
            <img class="img-responsive" style="max-width:100%;
    max-height:400px;
    width: 100%;
    height: auto" src=" {{ url('storage/avisos/'.$av->imagem) }}" alt="{{ $av->titulo }}">
            <div class="carousel-caption d-none d-md-block">
                <h3 class="text-muted bg-transparent">{{ $av->titulo }}</h3>
            </div>
        </div>
        @endforeach
    </div>
    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Anterior</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Próximo</span>
    </a>
</div>