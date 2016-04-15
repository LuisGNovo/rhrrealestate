<div class="container">
    <br>
        <div class="row">
            <div class="span12">
                <div class="wellside">
                    <div class="well">
                        <div class="page-header">
                            <h1>
                                Contactenos
                                <small>Dejenos su Consulta. Le responderemos a la brevedad.</small>
                            </h1>
                        </div>

                        <br />
{if $mensaje_promesa && $mensaje_enviado}
                        <div class="alert alert-success">
                          <strong>Gracias por escribirnos!</strong> Nos pondremos en contacto con usted a la mayor brevedad posible.
                        </div>
{else}

    {if $mensaje_promesa && !$mensaje_enviado}
                        <div class="alert alert-danger">
                          <strong>Error!</strong> El email no pudo ser enviado.
                        </div>
    {/if}

                        <form method="post" enctype="multipart/form-data" action="">

                            <div class="control-group">
                                <label class="control-label">Nombre<span class="required">*</span></label>
                                <div class="controls">
                                    <input type="text" class="input-xlarge" name="nombre" />
                                </div>
                                <label class="control-label">Apellido<span class="required">*</span></label>
                                <div class="controls">
                                    <input type="text" class="input-xlarge" name="apellido" />
                                </div>
                                <label class="control-label">Email<span class="required">*</span></label>
                                <div class="controls">
                                    <input type="text" class="input-xlarge" name="email" />
                                </div>
                                <label class="control-label">Teléfono</label>
                                <div class="controls">
                                    <input type="text" class="input-xlarge" name="telefono">
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="textarea">Mensaje<span class="required">*</span></label>
                                    <div class="controls">
                                        <textarea class="input-xlarge span5" id="textarea" rows="5" name="mensaje"></textarea>
                                    </div>
                                    <div class="form-actions">
                                        <input type="hidden" name="is_submit" value="1" />
                                        <button type="submit" class="btn btn-primary">Enviar</button>
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
