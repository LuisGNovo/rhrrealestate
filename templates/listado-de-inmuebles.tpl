
       <div class="container">


          <br>





          <div class="row">
  <div class="span3">

<div class="wellside">
    <h4 class="side_heading">Busqueda</h4>
    <hr style="margin:0px;">
    <div style="padding-top:10px;">
        <form class="form-search" action="{$uri_prefix}" method="get">
            <h6>Propiedad tipo</h6>
            <select name="tipo" class="span2" style="text-align: center;">
                <option value="">::Todos::</option>
                {foreach from=$tipos_propiedad item=tipo}
                    <option value="{$tipo.tipo}"{if $smarty.get.tipo == $tipo.tipo} selected="selected"{/if}>{$tipo.tipo}</option>
                {/foreach}
            </select>
            <br /><br />
            <h6>Tipo de operación</h6>
            <select name="operacion" class="span2" style="text-align: center;">
                <option value="">::Todas::</option>
                {foreach from=$operaciones item=operacion}
                    <option value="{$operacion.operacion}"{if $smarty.get.operacion == $operacion.operacion} selected="selected"{/if}>{$operacion.operacion|lower|capitalize}</option>
                {/foreach}
            </select>
            <br /><br />
            <input type="hidden" name="uri" value="listado-de-inmuebles.html" />
            <button type="submit" class="btn btn-warning">Buscar</button>
        </form>
    </div>
</div>
{*
<div class="wellside">
    <h4 class="side_heading">Refine Search</h4>
    <hr style="margin:0px;">
    <div style="padding-top:10px;">
        <form class="form-search">
        <input type="text" class="input-medium search-query">
        <button type="submit" class="btn btn-warning">Search</button>
        </form>
    </div>
</div>
*}

{*
<div class="wellside">
    <h4 class="side_heading">Browse by Category</h4>
    <hr style="margin:0px;">
    <div style="padding-top:10px;">
        <ul class="nav nav-tabs nav-stacked">
          <li>
            <a href="#">Residential</a>
          </li>
          <li>
            <a href="#">Industrial</a>
          </li>
          <li>
            <a href="#">Land</a>
          </li>
           <li>
            <a href="#">Commercial</a>
          </li>
          <li>
            <a href="#">Foreclosures</a>
            </li>
            <li>
            <a href="#"> Muiplex / Income Property</a>
        </li>
        </ul>
    </div>
</div>
*}

{*
<div class="wellside">
    <h4 class="side_heading">Filter</h4>
    <hr style="margin:0px;">
    <div style="padding-top:10px;">
        <div class="controls">
              <label class="checkbox">
                <input type="checkbox"  value="option1">
               Rental
              </label>
               <label class="checkbox">
                <input type="checkbox"  value="option2">
                For Sale
              </label>
              <label class="checkbox">
                <input type="checkbox" value="option3">
Condo       </label>
             <label class="checkbox">
                <input type="checkbox"  value="option4">
                Apartment
              </label> <label class="checkbox">
                <input type="checkbox"  value="option5">
                Duplex
              </label> <label class="checkbox">
                <input type="checkbox"  value="option1">
               Triplex
              </label>

              <div style="padding:20px;"><label>Bedrooms</label><input class="span1" type="text" placeholder="from"> to <input class="span1" type="text" placeholder="to"></div>

        </div>
        <div class="caption">
  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
            <div class="form-actions">
                <a href="#" class="btn btn-danger">Reset</a>
                <a href="#" class="btn">Search</a>
            </div>
        </div>
    </div>
</div>
*}

</div>
  <div class="span9">



  <div class="wellside">


        <div class="alert">
  <div class="page-schres">
  <h4>
<small> {$inmuebles_cantidad}</small> Inmueble{if $inmuebles_cantidad>1}s{/if} encontrado{if $inmuebles_cantidad>1}s{/if}

  </h4>
</div>
</div>



  <ul class="thumbnails">
  
  {foreach from=$inmuebles item=inmueble}
  <li class="span8">
    <div class="thumbnail thumbnail-list">
      <img src="{$path_uploads}{$inmueble.imagen}" class="thumby" height="120px" width="120px" style="float: left; margin: 8px;" />
      <div class="caption">
        <h5><a href="{$uri_prefix}?uri=detalle-inmueble.html&amp;id={$inmueble.id}">{$inmueble.propiedad} en {$inmueble.operacion} | {$inmueble.ambientes} | {$inmueble.zona} | {$inmueble.localidad} | {$inmueble.direccion}</a></h5>
        <p>{$inmueble.descripcion|lower|capitalize|truncate:300:"...":true}</p>

        <h4 class="pull-left">{$inmueble.moneda|upper} ${$inmueble.precio}</h4>

          <p class="pull-right">
            {if $inmueble.estado == 'Disponible'}
              <a href="{$uri_prefix}?uri=detalle-inmueble.html&amp;id={$inmueble.id}" class="btn btn-primary">VER INMUEBLE</a>
            {else}
              <a href="{$uri_prefix}?uri=detalle-inmueble.html&amp;id={$inmueble.id}" class="btn btn-danger">NO DISPONIBLE</a>
            {/if}
          </p>

      </div>
    </div>
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
