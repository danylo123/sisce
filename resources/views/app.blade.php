<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Sistema de apoio a Ordem DeMolay Cearense">
    <link rel="shortcut icon" href="{{ url('storage/icone/favicon.ico') }}">
    <title>SISCE 1.0 @yield('titulo')</title>
    <!-- Galeria -->
    <link href="https://cdn.jsdelivr.net/lightgallery/1.3.9/css/lightgallery.min.css" rel="stylesheet">
    <link href="<?php echo asset('css/galeria.css') ?>" rel="stylesheet">
    <!-- /Galeria -->

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    @toastr_css
    @include('sweetalert::alert')
    <style>
        #loader {
            transition: all .3s ease-in-out;
            opacity: 1;
            visibility: visible;
            position: fixed;
            height: 100vh;
            width: 100%;
            background: #fff;
            z-index: 90000
        }

        #loader.fadeOut {
            opacity: 0;
            visibility: hidden
        }

        .spinner {
            width: 40px;
            height: 40px;
            position: absolute;
            top: calc(50% - 20px);
            left: calc(50% - 20px);
            background-color: #333;
            border-radius: 100%;
            -webkit-animation: sk-scaleout 1s infinite ease-in-out;
            animation: sk-scaleout 1s infinite ease-in-out
        }

        @-webkit-keyframes sk-scaleout {
            0% {
                -webkit-transform: scale(0)
            }

            100% {
                -webkit-transform: scale(1);
                opacity: 0
            }
        }

        @keyframes sk-scaleout {
            0% {
                -webkit-transform: scale(0);
                transform: scale(0)
            }

            100% {
                -webkit-transform: scale(1);
                transform: scale(1);
                opacity: 0
            }
        }

        #calendar {
            color: black;
            max-width: 900px;
            margin: 40px auto;
            padding: 0 10px;
        }

        .switch {
            position: relative;
            display: inline-block;
            width: 60px;
            height: 34px;
        }

        .switch input {
            opacity: 0;
            width: 0;
            height: 0;
        }

        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #ccc;
            -webkit-transition: .4s;
            transition: .4s;
        }

        .slider:before {
            position: absolute;
            content: "";
            height: 26px;
            width: 26px;
            left: 4px;
            bottom: 4px;
            background-color: white;
            -webkit-transition: .4s;
            transition: .4s;
        }

        input:checked+.slider {
            background-color: #2196F3;
        }

        input:focus+.slider {
            box-shadow: 0 0 1px #2196F3;
        }

        input:checked+.slider:before {
            -webkit-transform: translateX(26px);
            -ms-transform: translateX(26px);
            transform: translateX(26px);
        }

        /* Rounded sliders */
        .slider.round {
            border-radius: 34px;
        }

        .slider.round:before {
            border-radius: 70%;
        }
    </style>
    <link href="<?php echo asset('css/style.css') ?>" rel="stylesheet">
</head>

<body class="app">
    <div id="loader">
        <div class="spinner"></div>
    </div>
    <script type="c4c66d0321ac18206eb8bb66-text/javascript">
        window.addEventListener('load', () => {
            const loader = document.getElementById('loader');
            setTimeout(() => {
                loader.classList.add('fadeOut');
            }, 300);
        });
    </script>
    <div>
        <div class="sidebar">
            <div class="sidebar-inner">
                <div class="sidebar-logo">
                    <div class="peers ai-c fxw-nw">
                        <div class="peer peer-greed"><a class="sidebar-link td-n" href="{{ url('index') }}" class="td-n">
                                <div class="peers ai-c fxw-nw">
                                    <div class="peer">
                                        <div class="logo"><img src="{{ url('storage/icone/icone.png') }}" width="55" alt=""></div>
                                    </div>
                                    <div class="peer peer-greed">
                                        <h5 class="lh-1 mB-0 logo-text">SISCE</h5>
                                    </div>
                                </div>
                            </a></div>
                        <div class="peer">
                            <div class="mobile-toggle sidebar-toggle"><a href="{{ url('index') }}" class="td-n"><i class="ti-arrow-circle-left"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <ul class="sidebar-menu scrollable pos-r">

                    <li class="nav-item mT-30"><a class="sidebar-link" href="{{ url('index') }}" default><span class="icon-holder"><i class="c-blue-500 ti-home"></i> </span><span class="title">Inicio</span></a></li>
                    @if(auth()->user()->nivel == 3)
                    <li class="nav-item dropdown"><a class="dropdown-toggle" href="javascript:void(0);"><span class="icon-holder"><i class="c-black-500 ti-desktop"></i> </span><span class="title">Painel ADM</span>
                            <span class="arrow"><i class="ti-angle-right"></i></span></a>
                        <ul class="dropdown-menu">
                            <li><a class="sidebar-link" href="{{ url('painel/avisos') }}">Avisos</a></li>
                            <li><a class="sidebar-link" href="{{ url('painel/usuarios') }}">Usuários</a></li>
                            <li><a class="sidebar-link" href="{{ url('painel/capitulos') }}">Capitulos</a></li>
                            <li><a class="sidebar-link" href="{{ url('painel/galerias') }}">Galerias</a></li>
                            <li><a class="sidebar-link" href="{{ url('painel/documentos') }}">Documentos</a></li>
                            <li><a class="sidebar-link" href="{{ url('painel/midias') }}">Midias</a></li>
                            <!--  <li><a class="sidebar-link" href="{{ url('painel/video_aulas') }}">Video Aula</a></li>
                            <li><a class="sidebar-link" href="{{ url('painel/ouvidoria') }}">Ouvidoria</a></li>  -->
                            <li><a class="sidebar-link" href="{{ url('painel/transparencia') }}">Portal transparência</a></li>
                        </ul>
                    </li>
                    @endif

                    <li class="nav-item"><a class="sidebar-link" href="{{ url('capitulos') }}"><span class="icon-holder"><i class="c-brown-500 ti-bag"></i> </span><span class="title">Capitulos</span></a></li>

                    <li class="nav-item dropdown"><a class="dropdown-toggle" href="javascript:void(0);"><span class="icon-holder"><i class="c-orange-500 ti-gallery"></i> </span><span class="title">Galerias</span>
                            <span class="arrow"><i class="ti-angle-right"></i></span></a>
                        <ul class="dropdown-menu">
                            <li><a class="sidebar-link" href="{{ url('galeria/gme') }}">Past's GME's</a></li>
                            <li><a class="sidebar-link" href="{{ url('galeria/mce') }}">Past's MCE's</a></li>
                            <li><a class="sidebar-link" href="{{ url('galeria/icce') }}">Past's ICCE's</a></li>
                            <li><a class="sidebar-link" href="{{ url('galeria/oficiais_executivos') }}">Past's Oficiais Executivos</a></li>
                            <li><a class="sidebar-link" href="{{ url('galeria/mcr') }}">Past's MCR's</a></li>
                            <li><a class="sidebar-link" href="{{ url('galeria/adace') }}">Past's ADACE</a></li>
                            <li><a class="sidebar-link" href="{{ url('galeria/gcc') }}">Past's GCC</a></li>
                        </ul>
                    </li>

                    <li class="nav-item dropdown"><a class="dropdown-toggle" href="javascript:void(0);"><span class="icon-holder"><i class="c-orange-500 ti-money"></i> </span><span class="title">Portal da
                                Transparência</span>
                            <span class="arrow"><i class="ti-angle-right"></i></span></a>
                        <ul class="dropdown-menu">
                            <li><a class="sidebar-link" href="{{ url('transparencia/gce') }}">GCE</a></li>
                            <li><a class="sidebar-link" href="{{ url('transparencia/adace') }}">ADACE</a></li>
                        </ul>
                    </li>

                    <li class="nav-item dropdown"><a class="dropdown-toggle" href="javascript:void(0);"><span class="icon-holder"><i class="c-orange-500 ti-envelope"></i> </span><span class="title">Documentos</span>
                            <span class="arrow"><i class="ti-angle-right"></i></span></a>
                        <ul class="dropdown-menu">
                            <li><a class="sidebar-link" href="{{ url('documento/gce') }}">GCE</a></li>
                            <li><a class="sidebar-link" href="{{ url('documento/ge') }}">GE</a></li>
                            <li><a class="sidebar-link" href="{{ url('documento/icce') }}">ICCE</a></li>
                            <li><a class="sidebar-link" href="{{ url('documento/adace') }}">ADACE</a></li>
                        </ul>
                    </li>

                    <li class="nav-item"><a class="sidebar-link" href="{{ url('midias') }}"><span class="icon-holder"><i class="c-deep-orange-500 ti-save"></i> </span><span class="title">Mídia</span></a></li>
                    <!--
                    <li class="nav-item"><a class="sidebar-link" href="{{ url('video_aulas') }}"><span class="icon-holder"><i class="c-deep-purple-500 ti-video-clapper"></i> </span><span class="title">Video Aulas</span></a></li>
    -->
                    <li class="nav-item"><a class="sidebar-link" href="{{ url('ouvidoria') }}"><span class="icon-holder"><i class="c-indigo-500 ti-headphone"></i> </span><span class="title">Ouvidoria</span></a></li>
                    <!--
                    <li class="nav-item"><a class="sidebar-link" href=""><span class="icon-holder"><i class="c-light-blue-500 ti-help-alt"></i> </span><span class="title">Dúvidas Frequentes</span></a>
    -->
                    </li>

                </ul>
            </div>
        </div>

        <div class="page-container">
            <div class="header navbar">
                <div class="header-container">
                    <ul class="nav-left">
                        <li><a id="sidebar-toggle" class="sidebar-toggle" href="javascript:void(0);"><i class="ti-menu"></i></a>
                        </li>
                    </ul>
                    <ul class="nav-right">
                        <!--  <li class="notifications dropdown"><span class="counter bgc-red">0</span> <a href="" class="dropdown-toggle no-after" data-toggle="dropdown"><i class="ti-bell"></i></a>
                            <ul class="dropdown-menu">
                                <li class="pX-20 pY-15 bdB"><i class="ti-bell pR-10"></i> <span class="fsz-sm fw-600 c-grey-900">Notificações</span></li>

                            </ul>
                        </li> -->

                        <li class="dropdown"><a href="" class="dropdown-toggle no-after peers fxw-nw ai-c lh-1" data-toggle="dropdown">
                                <div class="peer mR-10"><img class="w-2r bdrs-50p" src="
                                @if(auth()->user()->imagem == !null)
                                {{ url('storage/users/'.auth()->user()->imagem) }}
                                @else
                                {{ url('storage/users/user.png') }}
                                @endif
                                " alt="Foto perfil {{ auth()->user()->name }}"></div>
                                <div class="peer"><span class="fsz-sm c-grey-900">{{ substr(auth()->user()->name, 0, strrpos(substr(auth()->user()->name, 0, 10), ' '))  }}</span></div>
                            </a>

                            <ul class="dropdown-menu fsz-sm">
                                <li><a href="{{ url('/perfil') }}" class="d-b td-n pY-5 bgcH-grey-100 c-grey-700"><i class="ti-user mR-10"></i>
                                        <span>Perfil</span></a></li>
                                <!--    <li><a href="" class="d-b td-n pY-5 bgcH-grey-100 c-grey-700"><i class="ti-email mR-10"></i>
                                        <span>Messagens</span></a></li> -->
                                <li role="separator" class="divider"></li>
                                <li><a href="{{ route('logout') }}" class="d-b td-n pY-5 bgcH-grey-100 c-grey-700">
                                        <i class="ti-power-off mR-10"></i>
                                        <span>Sair</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <main class="main-content bgc-grey-100">
                <div id="mainContent">
                    @yield('conteudo')
                </div>
            </main>

            <footer class="bdT ta-c p-30 lh-0 fsz-sm c-grey-600"><span>Copyright © GCE 2020 <a href="http://demolayceara.org.br" target="_blank" title="Demolay Ceará"> Demolay Ceará</a>. Todos os direitos
                    reservados.</span>
                <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13" type="c4c66d0321ac18206eb8bb66-text/javascript"></script>
                <script type="c4c66d0321ac18206eb8bb66-text/javascript">
                    window.dataLayer = window.dataLayer || [];

                    function gtag() {
                        dataLayer.push(arguments);
                    }
                    gtag('js', new Date());

                    gtag('config', 'UA-23581568-13');
                </script>
            </footer>
        </div>
    </div>
    @toastr_js
    @toastr_render

    <!-- Galeria -->
    <script>
        $(document).ready(function() {
            $('#lightgallery').lightGallery();
        });
    </script>
    <script type="text/javascript" src="<?php echo asset('js/galeria.js') ?>"></script>
    <!-- /Galeria -->
    <script type="c4c66d0321ac18206eb8bb66-text/javascript" src="<?php echo asset('js/vendor.js') ?>"></script>
    <script type="c4c66d0321ac18206eb8bb66-text/javascript" src="<?php echo asset('js/bundle.js') ?>"></script>
    <script src="https://ajax.cloudflare.com/cdn-cgi/scripts/7089c43e/cloudflare-static/rocket-loader.min.js" data-cf-settings="c4c66d0321ac18206eb8bb66-|49" defer=""></script>
</body>

</html>