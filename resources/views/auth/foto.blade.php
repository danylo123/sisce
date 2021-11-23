@if ($fotos->count() < 1)
    <img src="{{ url('storage/icone/user.png') }}" alt="Usuário não encontrado" class="logo">
@else
    @foreach ($fotos as $f)
        @if (empty($f->imagem))
            <img src="{{ url('storage/icone/user.png') }}" alt="Usuário sem foto" class="logo">
        @else
            <img src="{{ url('storage/users/' . $f->imagem) }}" alt="{{ $f->name }}" class="logo">
        @endif
    @endforeach
@endif
