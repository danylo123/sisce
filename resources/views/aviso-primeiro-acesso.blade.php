<div class="modal fade" id="primeiroAcesso" data-backdrop="static" role="dialog">
    <div class="modal-dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body">
                    <p>Olá {{ auth()->user()->updated_at }}, seja bem vindo ao SISCE.</p>
                    <p>Você ainda não alterou sua senha,
                        <a href="{{ url('perfil') }}">clique aqui</a> para alterá-la.
                    </p>                    
                </div>
            </div>
        </div>
    </div>
</div>
