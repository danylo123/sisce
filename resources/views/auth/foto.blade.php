        @foreach ($fotos as $f)
            <img src="{{ url('storage/users/' . $f->imagem) }}" alt="{{ $f->name }}" class="logo">
        @endforeach
