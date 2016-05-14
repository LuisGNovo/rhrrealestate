<div class="container">
    <br>
        <div class="row">
            <div class="span12">
                <div class="wellside">
                    <div class="well">
                        <div class="page-header">
                            <h1>
                                {$lang.CONTACTENOS}
                                <small>{$lang.CONTACTO_SUBTITULO}</small>
                            </h1>
                        </div>

                        <br />
{if $mensaje_promesa && $mensaje_enviado}
                        <div class="alert alert-success">
                          {$lang.CONTACTO_ENVIO_OK}
                        </div>
{else}

    {if $mensaje_promesa && !$mensaje_enviado}
                        <div class="alert alert-danger">
                          {$lang.CONTACTO_ENVIO_ERROR}
                        </div>
    {/if}

                        <form method="post" enctype="multipart/form-data" action="">

                            <div class="control-group">
                                <label class="control-label">{$lang.CONTACTO_NOMBRE}<span class="required">*</span></label>
                                <div class="controls">
                                    <input type="text" class="input-xlarge" name="nombre" />
                                </div>
                                <label class="control-label">{$lang.CONTACTO_APELLIDO}<span class="required">*</span></label>
                                <div class="controls">
                                    <input type="text" class="input-xlarge" name="apellido" />
                                </div>
                                <label class="control-label">{$lang.CONTACTO_EMAIL}<span class="required">*</span></label>
                                <div class="controls">
                                    <input type="text" class="input-xlarge" name="email" />
                                </div>
                                <label class="control-label">{$lang.CONTACTO_TELEFONO}</label>
                                <div class="controls">
                                    <input type="text" class="input-xlarge" name="telefono">
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="textarea">{$lang.CONTACTO_MENSAJE}<span class="required">*</span></label>
                                    <div class="controls">
                                        <textarea class="input-xlarge span5" id="textarea" rows="5" name="mensaje"></textarea>
                                    </div>
                                    <div class="form-actions">
                                        <input type="hidden" name="is_submit" value="1" />
                                        <button type="submit" class="btn btn-primary">{$lang.CONTACTO_ENVIAR}</button>
                                    </div>
                                    <br>
                                    <hr>
                                </div>
                            </div>

                        </form>
{/if}
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- End Slider/Search Block -->

</div> <!-- /container -->
