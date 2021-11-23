        @foreach ($fotos as $f)
            <img src="{{ url('storage/users/' . $f->imagem) }}" alt="logo" class="logo">
        @endforeach
