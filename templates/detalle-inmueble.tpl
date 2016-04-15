

<div class="container">


    <br>
    <div class="row">
        <div class="span9"><div class="well">

                <div class="container">

                    <div class="row">
                        <div class="span8">


                            <div class="page-header">
                                <h1>
                                    {$inmueble.propiedad} en {$inmueble.operacion}
                                    <small>- {$inmueble.ambientes} </small>
                                    <span style="font-size:23px; padding:10px; float:right;" class="label label-success">{$inmueble.moneda|upper} ${$inmueble.precio}</span>
                                </h1>
                                <br/>
                                <h4>{$inmueble.zona} | {$inmueble.localidad} | {$inmueble.direccion}</h4>
                            </div>

                            <div id="image"><img src="{$inmueble.imagenes[0]}" border="0" height="475px" width="717px" /></div>
                            
                            {foreach from=$inmueble.imagenes item=imagen}
                                <a href="#" rel="{$imagen}" class="image"><img src="{$imagen}" class="thumb" border="0" height="50px" width="50px" /></a>
                            {/foreach}

                        </div>

                    </div>
                    <br>

                    <div class="page-header">
                        <h3>
                            Descripción
                        </h3>
                    </div>

                    <div class="container">
                        <div class="row">
                            <div class="span8"><div class="well">
                                    <p>{$inmueble.descripcion|lower|capitalize}</p>
                                </div></div>
                        </div>
                    </div>

                </div>

            </div></div>


        <div class="span3">

            <ul class="nav nav-tabs nav-stacked" style="background:white; font-size:11px; " id="consultar-inmueble">
                <li class="active" style="font-size:12px; font-weight:bold;">
                    <a href="#">Consultar este inmueble</a>
                </li>
                <li>
                    <div id="consultar-message-wait" class="alert alert-warn" style="padding:10px; display: none;">
                        Enviando su consulta...
                    </div>
                    <div id="consultar-message-ok" class="alert alert-success" style="padding:10px; display: none;">
                        <strong>Gracias!</strong> Su consulta ha sido enviada con exito.
                    </div>
                    <div id="consultar-message-error" class="alert alert-danger" style="padding:10px; display: none;">
                        <strong>Error!</strong> Su consulta no pudo ser enviada.
                    </div>
                    <div style="padding:10px;" id="consultar-inmueble-content">
                        <input class="span2" type="text" name="nombre" placeholder="Apellido y Nombre">
                        <input class="span2" type="text" name="telefono" placeholder="Teléfono">
                        <input class="span2" type="text" name="email" placeholder="Email">
                        <textarea class="input-large" id="textarea" name="mensaje" rows="3"></textarea>
                        <div class="form-actions">
                            <input type="hidden" name="inmueble" value="{$inmueble|json_encode|base64_encode}" />
                            <input type="hidden" name="is-submit" value="1" />
                            <button type="submit" name="enviar-consulta" class="btn btn-primary btn-medium">Consultar</button>
                        </div>
                    </div>
                </li>
            </ul>
{*
            <ul class="nav nav-tabs nav-stacked" style="background:white; font-size:11px; ">
                <li class="active" style="font-size:12px; font-weight:bold;">
                    <a href="#">Note</a>
                </li>
                <li>
                    <div style="padding:10px;">

                        Lorem Ipsum is simply dummy text of the printing .Lorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text Lorem Ipsum is simply dummy text of the printing .Lorem Ipsum is simply dummy text of the printing .Lorem Ipsum is simply dummy text of the printing .


                    </div>
                </li>
            </ul>
*}
        </div>
    </div>

    <!-- End Slider/Search Block -->









</div> <!-- /container -->
