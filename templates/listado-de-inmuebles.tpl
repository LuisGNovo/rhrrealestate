
       <div class="container">

          <br>

          <div class="row">
  <div class="span3">

<div class="wellside">
    <h4 class="side_heading">{$lang.FORMULARIO_BUSQUEDA_TITULO}</h4>
    <hr style="margin:0px;">
    <div style="padding-top:10px;">
        <form class="form-search" action="/{$uri_prefix}" method="get">
            <h6>{$lang.FORMULARIO_BUSQUEDA_PROPIEDAD_TIPO}</h6>
            <select name="tipo" class="span2" style="text-align: center;">
                <option value="">::Todos::</option>
                {foreach from=$tipos_propiedad item=tipo}
                    <option value="{$tipo.tipo}"{if $smarty.get.tipo == $tipo.tipo} selected="selected"{/if}>{$tipo.tipo}</option>
                {/foreach}
            </select>
            <br /><br />
            <h6>{$lang.FORMULARIO_BUSQUEDA_TIPO_OPERACION}</h6>
            <select name="operacion" class="span2" style="text-align: center;">
                <option value="">::Todas::</option>
                {foreach from=$operaciones item=operacion}
                    <option value="{$operacion.operacion}"{if $smarty.get.operacion == $operacion.operacion} selected="selected"{/if}>{$operacion.operacion|lower|capitalize}</option>
                {/foreach}
            </select>
            <br /><br />
            <input type="hidden" name="uri" value="listado-de-inmuebles.html" />
            <button type="submit" class="btn btn-warning">{$lang.FORMULARIO_BUSQUEDA_BUSCAR}</button>
        </form>
    </div>
</div>


</div>
  <div class="span9">



  <div class="wellside">


  <ul class="thumbnails">
  
  {foreach from=$inmuebles item=inmueble}
  <li class="span8">
    <div class="thumbnail thumbnail-list">
      <img src="{$path_uploads}{$inmueble.imagen}" class="thumby" height="120px" width="120px" style="float: left; margin: 8px;" />
      <div class="caption">
        <h5><a href="/{$uri_prefix}?uri=detalle-inmueble.html&amp;id={$inmueble.id}">{$inmueble.propiedad} en {$inmueble.operacion} | {$inmueble.ambientes} | {$inmueble.zona} | {$inmueble.localidad} | {$inmueble.direccion}</a></h5>
        <p>{if $inmueble.descripcion}{$inmueble.descripcion|lower|capitalize|truncate:300:"...":true}{else}&nbsp;{/if}</p>

        <h4 class="pull-left">{$inmueble.moneda|upper} ${$inmueble.precio}</h4>

          <p class="pull-right">
            {if $inmueble.estado == 'Disponible'}
              <a href="/{$uri_prefix}?uri=detalle-inmueble.html&amp;id={$inmueble.id}" class="btn btn-primary">VER INMUEBLE</a>
            {else}
              <a href="/{$uri_prefix}?uri=detalle-inmueble.html&amp;id={$inmueble.id}" class="btn btn-danger">NO DISPONIBLE</a>
            {/if}
          </p>

      </div>
    </div>
  </li>
  {foreachelse}
    <li class="span8">
      No se encontraron inmuebles.
    </li>
  {/foreach}


</ul>

{*
<div class="breadcrumb"><div class="pagination">
  <ul>
    <li class="disabled">
      <a href="#">&laquo;</a>
    </li>
    <li class="active">
      <a href="#">1</a>
    </li>
    <li>
      <a href="#">2</a>
    </li>
    <li>
      <a href="#">3</a>
    </li>
    <li>
      <a href="#">4</a>
    </li>
    <li>
      <a href="#">&raquo;</a>
    </li>
  </ul>
</div>
*}

</div>

</div></div>
</div>

 <!-- End Slider/Search Block -->

    </div> <!-- /container -->
