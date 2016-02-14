
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
