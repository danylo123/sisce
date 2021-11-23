<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Sistema de apoio a Ordem DeMolay Cearense">
    <link rel="shortcut icon" href="{{ url('storage/icone/favicon.ico') }}">
    <title>SISCE 1.0 @yield('titulo')</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
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

        body {
            margin: 0;
            padding: 0;
            background-color: white;
            height: 100vh;
        }

        #login .container #login-row #login-column #login-box {
            margin-top: 120px;
            max-width: 600px;
            height: 320px;
            border: 1px solid #9C9C9C;
            background-color: white;
        }

        #login .container #login-row #login-column #login-box #login-form {
            padding: 20px;
        }

        #login .container #login-row #login-column #login-box #login-form #register-link {
            margin-top: -85px;
        }

    </style>

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
        @yield('content')
        <footer class="bdT ta-c p-30 lh-0 fsz-sm c-grey-600"><span>Copyright © GCE 2020 <a
                    href="http://demolayceara.org.br" target="_blank" title="Demolay Ceará"> Demolay Ceará</a>. Todos os
                direitos
                reservados.</span>
            <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"
                        type="c4c66d0321ac18206eb8bb66-text/javascript"></script>
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


    <script type="c4c66d0321ac18206eb8bb66-text/javascript" src="<?php echo asset('js/vendor.js'); ?>"></script>
    <script type="c4c66d0321ac18206eb8bb66-text/javascript" src="<?php echo asset('js/bundle.js'); ?>"></script>
    <script src="https://ajax.cloudflare.com/cdn-cgi/scripts/7089c43e/cloudflare-static/rocket-loader.min.js"
        data-cf-settings="c4c66d0321ac18206eb8bb66-|49" defer=""></script>
    
</body>

</html>
