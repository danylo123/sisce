<div class="col-lg-3 col-sm-6">
    <div class="card-box bg-green">
        <div class="inner">            
            <h3>
                {{ $demolaysAtivos->count() }}
            </h3>
            <p> DeMolays Ativos</p>
        </div>
        <div class="icon">
            <i class="fa fa-user" aria-hidden="true"></i>
        </div>
        {{-- <button type="button" data-toggle="modal" data-target="#detailModal" wire:click="viewUser()"
            class="card-box-footer">Detalhar
            <i class="fa fa-arrow-circle-right"></i></button> --}}
    </div>
</div>

<div class="col-lg-3 col-sm-6">
    <div class="card-box bg-blue">
        <div class="inner">
            <h3>
                {{ $capitulos->count() }}
            </h3>
            <p> Capitulos</p>
        </div>
        <div class="icon">
            <i class="fa fa-users" aria-hidden="true"></i>
        </div>
        {{-- <button type="button" data-toggle="modal" data-target="#detailModal" wire:click="viewUser()"
            class="card-box-footer">Detalhar
            <i class="fa fa-arrow-circle-right"></i></button> --}}
    </div>
</div>

<div class="col-lg-3 col-sm-6">
    <div class="card-box bg-orange">
        <div class="inner">
            <h3>
                {{ $priorados->count() }}
            </h3>
            <p> Priorados</p>
        </div>
        <div class="icon">
            <i class="fa fa-users" aria-hidden="true"></i>
        </div>
        {{-- <button type="button" data-toggle="modal" data-target="#detailModal" wire:click="viewUser()"
            class="card-box-footer">Detalhar
            <i class="fa fa-arrow-circle-right"></i></button> --}}
    </div>
</div>
