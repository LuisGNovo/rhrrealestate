
<div class="container">
    <br>
    <div class="row">
        <div class="span8">
            <div class="wellside">
                <div id="slider">
                    <ul>
                        {foreach from=$ofertas item=oferta}
                            <li><a href="/{$uri_prefix}?uri=detalle-inmueble.html&amp;id={$oferta.id}"><img class="img-style row1"  src="{$path_uploads}{$oferta.imagen}"  alt="" width="696px" height="241px" /></a></li>
                        {/foreach}
                    </ul>

                </div>
            </div>
        </div>
        <div class="span4">
            <div class="wellside">

                <h4><i style="padding-right:10px; margin-top:3px" class="icon-search"></i>{$lang.FORMULARIO_BUSQUEDA_TITULO}</h4>
                <hr>

                <form action="/{$uri_prefix}" method="get">
                    <fieldset>
                        <h6>{$lang.FORMULARIO_BUSQUEDA_PROPIEDAD_TIPO}</h6>
                        <select name="tipo" class="span3" style="text-align: center;">
                            <option value="">::Todos::</option>
                            {foreach from=$tipos_propiedad item=tipo}
                                <option value="{$tipo.tipo}">{$tipo.tipo}</option>
                            {/foreach}
                        </select>

                        <br />

                        <h6>{$lang.FORMULARIO_BUSQUEDA_TIPO_OPERACION}</h6>
                        <select name="operacion" class="span3" style="text-align: center;">
                            <option value="">::Todas::</option>
                            {foreach from=$operaciones item=operacion}
                                <option value="{$operacion.operacion}">{$operacion.operacion|lower|capitalize}</option>
                            {/foreach}
                        </select>

                        <br />

                        <input type="hidden" name="uri" value="listado-de-inmuebles.html" />
                        <button type="submit" class="btn btn-info">{$lang.FORMULARIO_BUSQUEDA_BUSCAR}</button>

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
                        <a href="/{$uri_prefix}?uri=detalle-inmueble.html&amp;id={$oferta.id}" class="btn btn-info">Más info</a>
                    </p>
                </div>
            </div>
        </li>
        {/foreach}

    </ul>

    <!-- End Featured Listings -->

</div> <!-- /container -->
