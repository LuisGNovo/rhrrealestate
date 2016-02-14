<!DOCTYPE html>
<html lang="es">
<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <title>RHR Real Estate</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Novo Hnos. Studio">

    <!-- JQUERY ASSETS -->
    <script src="assets/js/jquery.js"></script>
    <script type="text/javascript" src="assets/js/slimbox2.js"></script>
    <script type="text/javascript" src="assets/js/easySlider1.7.js"></script>

    <!-- CSS ASSETS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/slimbox2.css" type="text/css" media="screen" />
    <link href="assets/css/screen.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="assets/css/custom.css" rel="stylesheet" type="text/css" media="screen" />

    <!-- GOOGLE WEBFONTS -->
    <link href='http://fonts.googleapis.com/css?family=Doppio+One' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Gudea' rel='stylesheet' type='text/css'>

    {if $es_detalle_del_inmueble}
    <script type="text/javascript">
        $(function() {
            $(".image").click(function() {
                var image = $(this).attr("rel");
                $('#image').hide();
                $('#image').fadeIn('slow');
                $('#image').html('<img src="' + image + '" height="475px" width="717px" />');
                return false;
            });
        });
    </script>
    {/if}

    <script type="text/javascript">
        $(document).ready(function(){
            $("#slider").easySlider({
                auto: true,
                continuous: true,
                controlsShow:    false,
            });
        });
    </script>


    <style type="text/css">
        body {
            background: url("assets/img/bg.jpg") repeat  #F3F1F8;
            padding-top: 0px;
        }

        {if $es_detalle_del_inmueble}
        .thumb{
            float:left;
            margin-right:10px;
            margin-top:10px;}
        {/if}
    </style>


    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->


    <!-- Le fav and touch icons -->

    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">


</head>

<body>

<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="/">Real Estate </a>
            <div class="nav-collapse">
                <ul class="nav">
                    <li><a href="/">Inicio</a></li>
                    <li><a href="/listado-de-inmuebles.html?operacion=Venta">Ventas</a></li>
                    <li><a href="/listado-de-inmuebles.html?operacion=Alquiler">Alquileres</a></li>
                    <li><a href="/listado-de-inmuebles.html?operacion=Alquiler+Temporario">Alquileres temporarios</a></li>
                    <li><a href="/formulario-de-busqueda.html">Busqueda</a></li>
                    <li><a href="/formulario-de-contacto.html">Contacto</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            Más
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="/">Inicio</a></li>
                            <li><a href="/listado-de-inmuebles.html?operacion=Venta">Ventas</a></li>
                            <li><a href="/listado-de-inmuebles.html?operacion=Alquiler">Alquileres</a></li>
                            <li><a href="/listado-de-inmuebles.html?operacion=Alquiler+Temporario">Alquileres temporarios</a></li>
                            <li><a href="/formulario-de-busqueda.html">Busqueda</a></li>
                            <li class="divider"></li>
                            <li><a href="/formulario-de-contacto.html">Contacto</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav pull-right">
                    <li><a href="#">Idioma nombre</a></li>
                    <li class="divider-vertical"></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Idioma <b class="caret"></b></a>


                        <ul class="dropdown-menu">
                            <li><a href="#">Español</a></li>
                            <li><a href="#">Inglés</a></li>
                        </ul>
                    <li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>
<!--/ End Slider/Search Block -->
