<div class="col-lg-3 col-sm-6">
    <div class="card-box bg-green">
        <div class="inner">
            <h3>
                {{ $demolaysAtivos->count() }}
            </h3>
            <p> DeMolays Ativos</p>
        </div>
        <div class="icon">
            <i aria-hidden="true">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true"
                    role="img" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 20 20">
                    <path
                        d="M7.725 2.146c-1.016.756-1.289 1.953-1.239 2.59c.064.779.222 1.793.222 1.793s-.313.17-.313.854c.109 1.717.683.976.801 1.729c.284 1.814.933 1.491.933 2.481c0 1.649-.68 2.42-2.803 3.334C3.196 15.845 1 17 1 19v1h18v-1c0-2-2.197-3.155-4.328-4.072c-2.123-.914-2.801-1.684-2.801-3.334c0-.99.647-.667.932-2.481c.119-.753.692-.012.803-1.729c0-.684-.314-.854-.314-.854s.158-1.014.221-1.793c.065-.817-.398-2.561-2.3-3.096c-.333-.34-.558-.881.466-1.424c-2.24-.105-2.761 1.067-3.954 1.929z"
                        fill="currentColor" />
                </svg>
            </i>
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
            <i aria-hidden="true">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true"
                    role="img" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                    <path
                        d="M21 9v2h-2V3h-2v2h-2V3h-2v2h-2V3H9v2H7V3H5v8H3V9H1v12h9v-3c0-1.1.9-2 2-2s2 .9 2 2v3h9V9h-2zm0 10h-5v-1c0-2.21-1.79-4-4-4s-4 1.79-4 4v1H3v-6h4V7h10v6h4v6z"
                        fill="currentColor" />
                    <path d="M9 9h2v3H9zm4 0h2v3h-2z" fill="currentColor" />
                </svg>
            </i>
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
            <i aria-hidden="true">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true"
                    role="img" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                    <path
                        d="M17.457 3L21 3.003l.002 3.523l-5.467 5.466l2.828 2.829l1.415-1.414l1.414 1.414l-2.474 2.475l2.828 2.829l-1.414 1.414l-2.829-2.829l-2.475 2.475l-1.414-1.414l1.414-1.415l-2.829-2.828l-2.828 2.828l1.415 1.415l-1.414 1.414l-2.475-2.475l-2.829 2.829l-1.414-1.414l2.829-2.83l-2.475-2.474l1.414-1.414l1.414 1.413l2.827-2.828l-5.46-5.46L3 3l3.546.003l5.453 5.454L17.457 3zm-7.58 10.406L7.05 16.234l.708.707l2.827-2.828l-.707-.707zm9.124-8.405h-.717l-4.87 4.869l.706.707l4.881-4.879v-.697zm-14 0v.7l11.241 11.241l.707-.707L5.716 5.002l-.715-.001z"
                        fill="currentColor" />
                </svg>
            </i>
        </div>
        {{-- <button type="button" data-toggle="modal" data-target="#detailModal" wire:click="viewUser()"
            class="card-box-footer">Detalhar
            <i class="fa fa-arrow-circle-right"></i></button> --}}
    </div>
</div>

<div class="col-lg-3 col-sm-6">
    <div class="card-box bg-red">
        <div class="inner">
            <h3>
                {{ $regioes->count() }}
            </h3>
            <p> Regiões</p>
        </div>
        <div class="icon">
            <i aria-hidden="true">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true"
                    role="img" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                    <path
                        d="M21.447 6.105l-6-3a1 1 0 0 0-.895 0L9 5.882L3.447 3.105A1 1 0 0 0 2 4v13c0 .379.214.725.553.895l6 3a1 1 0 0 0 .895 0L15 18.118l5.553 2.776a.992.992 0 0 0 .972-.043c.295-.183.475-.504.475-.851V7c0-.379-.214-.725-.553-.895zM10 7.618l4-2v10.764l-4 2V7.618zm-6-2l4 2v10.764l-4-2V5.618zm16 12.764l-4-2V5.618l4 2v10.764z"
                        fill="currentColor" />
                </svg>
            </i>
        </div>
        {{-- <button type="button" data-toggle="modal" data-target="#detailModal" wire:click="viewUser()"
            class="card-box-footer">Detalhar
            <i class="fa fa-arrow-circle-right"></i></button> --}}
    </div>
</div>
