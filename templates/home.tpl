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
                    <li><a href="/listado-de-inmuebles.html?tipo=ventas">Ventas</a></li>
                    <li><a href="/listado-de-inmuebles.html?tipo=alquileres">Alquileres</a></li>
                    <li><a href="/listado-de-inmuebles.html?tipo=alquileres-temporarios">Alquileres temporarios</a></li>
                    <li><a href="/formulario-de-busqueda.html">Busqueda</a></li>
                    <li><a href="/formulario-de-contacto.html">Contacto</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            Más
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="/">Inicio</a></li>
                            <li><a href="/listado-de-inmuebles.html?tipo=ventas">Ventas</a></li>
                            <li><a href="/listado-de-inmuebles.html?tipo=alquileres">Alquileres</a></li>
                            <li><a href="/listado-de-inmuebles.html?tipo=alquileres-temporarios">Alquileres temporarios</a></li>
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

<div class="container">
    <br>
    <div class="row">
        <div class="span8">
            <div class="wellside">
                <div id="slider">
                    <ul>
                        <li><a href="#"><img src="assets/img/01.jpg" alt="" /></a></li>
                        <li><a href="#"><img src="assets/img/02.jpg" alt="" /></a></li>
                        <li><a href="#"><img src="assets/img/03.jpg" alt="" /></a></li>
                        <li><a href="#"><img src="assets/img/04.jpg" alt="" /></a></li>
                        <li><a href="#"><img src="assets/img/05.jpg" alt="" /></a></li>
                    </ul>

                </div>
            </div>
        </div>
        <div class="span4">
            <div class="wellside">

                <h4><i style="padding-right:10px; margin-top:3px" class="icon-search"></i>Buscar propiedades</h4>
                <hr>

                <form action="/listado-de-inmuebles.html" method="get">

                    <fieldset>
<!--
                        <input type="text" class="span3" placeholder="City and State, or Zip">
                        <input type="text" class="span3" placeholder="Property ID">
                        <div class="idealform">
                            <select class="span3">
                                <option>Price Range</option>
                                <option>$100K - $300K </option>
                                <option>$300K - $600K</option>
                                <option>$600K - $900K</option>
                                <option>$900K+</option>
                            </select>
                        </div>
                        <select  class="span3">
                            <option>Bedrooms</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4+</option>
                        </select>
    -->

                        <select name="tipo" id="select01" class="span3" style="text-align: center;">
                            <option value="">::Propiedad tipo::</option>
                            {foreach from=$tipos_propiedad item=tipo}
                                <option value="{$tipo.tipo}">{$tipo.tipo}</option>
                            {/foreach}
                        </select>

                        <br />

                        {*
                        <select name="zona" id="select01" class="span3" style="text-align: center;">
                            <option value="">::Zona::</option>
                            {foreach from=$localidades item=localidad}
                                <option value="{$localidad.ubicacion}">{$localidad.ubicacion|lower|capitalize}</option>
                            {/foreach}
                        </select>

                        <br />
                        *}

                        <select name="operacion" id="select01" class="span3" style="text-align: center;">
                            <option value="">::Operación::</option>
                            {foreach from=$operaciones item=operacion}
                                <option value="{$operacion.operacion}">{$operacion.operacion|lower|capitalize}</option>
                            {/foreach}
                        </select>

                        <br />

                        <button type="submit" class="btn btn-primary">Buscar</button>

                    </fieldset>

                </form>

            </div>

        </div>
    </div>
    <!-- End Slider/Search Block -->

    <!-- Start Featured Listings -->

    <div class="heading_featured"> <h4><i class="icon-star-empty icon-white"></i>Inmuebles destacados</h4>   </div>

    <ul class="thumbnails">

        {foreach from=$ofertas item=oferta}
        <li class="span3">
            <div class="thumbnail">
                <img class="img-style row1"  src="{$path_uploads}{$oferta.imagen}"  alt="" width="320px" height="213px" />
                <div class="caption">
                    <h3><a href="#" title="{$oferta.propiedad}">{$oferta.propiedad|upper|truncate:20:"...":true}</a></h3>
                    <h5><span title="{$oferta.ubicacion}">{$oferta.ubicacion|lower|capitalize|truncate:30:"...":true}</span></h5>
                    <p>{$oferta.descripcion|lower|truncate:320:"...":true}</p>
                    <br />
                    <p>
                        <a href="/detalle-inmueble.html?id={$oferta.id}" class="btn btn-warning">Más info</a>
                    </p>
                </div>
            </div>
        </li>
        {/foreach}
<!--
        <li class="span3">
            <div class="thumbnail">
                <img src="assets/img/thumb_2.jpg" alt="">
                <div class="caption">
                    <h3><a href="#">Aweber Property</a></h3>
                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta t.</p>
                    <br />
                    <p>
                        <a href="#" class="btn btn-warning">More info</a>
                    </p>
                </div>
            </div>
        </li>


        <li class="span3">
            <div class="thumbnail">
                <a href="assets/img/thumb_1.jpg"  title="Beautiful, isn't it?"> <img src="assets/img/thumb_3.jpg"   alt="" />   </a>         <div class="caption">
                    <h3><a href="#">Sunview Property</a></h3>





                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta t.</p>

                    <br>
                    <p>

                        <a href="#" class="btn btn-warning">More info</a>

                    </p>
                </div>
            </div>
        </li>

        <li class="span3">
            <div class="thumbnail">
                <img src="assets/img/thumb_4.jpg" alt="">            <div class="caption">
                    <h3><a href="#">Beachhouse Property</a></h3>





                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta t.</p>

                    <br>
                    <p>

                        <a href="#" class="btn btn-warning">More info</a>

                    </p>
                </div>
            </div>
        </li>
-->
    </ul>

    <!-- End Featured Listings -->

</div> <!-- /container -->

<!-- Start Footer -->

<div class="secfoot">

    <div class="container">
        <div class="row">
            <div class="span4">

                <h2 class="headingfoot">latest news</h2>

                <ul class="unstyled">

                    <li>

                        <h4 class="footlinks"><a href="#">Finding the Right Property</a><i style="padding-left:5px; margin-top:5px;" class="icon-chevron-right icon"></i></h4>

                        <p class="foottext"> Lorem Ipsum is simply dummy text of the printing.</p>
                    </li>

                    <li>

                        <h4 class="footlinks"><a href="#">Getting into Commercial Real Estate</a><i style="padding-left:5px; margin-top:5px;" class="icon-chevron-right icon"></i></h4>

                        <p class="foottext">Lorem Ipsum is simply dummy text of the printing.</p>
                    </li>

                    <li>

                        <h4 class="footlinks"><a href="#">Investing in Foreclosures</a><i style="padding-left:5px; margin-top:5px;" class="icon-chevron-right icon"></i></h4>


                        <p class="foottext"> Lorem Ipsum is simply dummy text of the printing.</p>
                    </li>
                </ul>

            </div>
            <div class="span4">
                <h2 class="headingfoot">about us</h2>

                <ul class="unstyled">

                    <li>
                        <p class="foottext"> Lorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printing. <a href="#">Contact us</a> for more information.</p>
                    </li>
                    <li>
                        <hr>
                        <ul class="thumbnails">
                            <li class="span2">
                                <a class="lightbox" href="assets/img/smallthumbs/thumb_1.jpg" title="Beautiful, isn't it?"> <img class="thumbnail"  src="assets/img/thumb_about.jpg" alt=""></a>
                            </li>
                            <li class="span2">
                                <a class="lightbox" href="assets/img/smallthumbs/thumb_2.jpg" >
                                    <img src="assets/img/thumb_about2.jpg" alt=""  class="thumbnail">
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="span4">

                <h2 class="headingfoot">get in touch</h2>

                <ul class="unstyled">

                    <li class="foot_list">
                        <span class="foot_contact"><i class="icon-envelope icon iconsin"></i><a href="#"> info@rhrrealestate.com.ar</a></span>
                    </li>

                    <li  class="foot_list">
                        <span class="foot_contact"><i class="icon-user icon iconsin"></i>P +54.011-4952.7623</span>
                    </li>

                    <li  class="foot_list">
                        <span class="foot_contact"><i class="icon-user icon iconsin"></i>P +54.011-5815.4406</span>
                    </li>

                    <li class="foot_list">

                        <span class="foot_contact"><i class="icon-map-marker icon iconsin"></i>Av Rivadavia 2151, Ciudad Autonoma de Buenos Aires, Buenos Aires, Argentina </span>
                    </li>

                    <li class="foot_list">

                        <span class="foot_contact"><i class="icon-time icon iconsin"></i>Office Hours: (Monday-Friday) 8AM - 6PM </span>
                    </li>
                    <li class="foot_logo">
                        <a class="btnlogo"></a>    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="footblock">
    <div class="container">
        <div class="row">
            <div class="span12">
                <p class="foot_copy">&copy; 2012 Realty Inc.<span style="font-size:11px;"> - All Rights Reserved.</span> </p>
            </div>
        </div>
    </div>
</div>

<!-- End Footer -->

<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<script src="assets/js/bootstrap.js"></script>
</body>
</html>