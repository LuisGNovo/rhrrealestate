$(document).ready(function(){

    var formulario_consultas = $('#consultar-inmueble');

    $('button[name="enviar-consulta"]', formulario_consultas).click(function(){

        var nombre = $('input[name="nombre"]', formulario_consultas).val();
        var telefono = $('input[name="telefono"]', formulario_consultas).val();
        var email = $('input[name="email"]', formulario_consultas).val();
        var inmueble = $('input[name="inmueble"]', formulario_consultas).val();
        var is_submit = $('input[name="is-submit"]', formulario_consultas).val();
        var mensaje = $('textarea[name="mensaje"]', formulario_consultas).val();

        $.ajax({
            url: '/procesos/consulta-de-inmueble',
            type: 'POST',
            dataType: 'json',
            cache: false,
            data: { nombre:nombre,telefono:telefono,email:email,mensaje:mensaje,inmueble:inmueble,is_submit:is_submit},
            success: function(data){
                $('#consultar-message-wait').hide();
                switch( data.status ){
                    default:
                    case 200:
                        $('#consultar-message-ok').show();
                        break;
                    case 409:
                        $('#consultar-message-error').show();
                        break;
                    case 400:
                        $('#consultar-message-error').show();
                        break;
                }
                
            },
            beforeSend: function(){
                $('#consultar-inmueble-content').hide();
                $('#consultar-message-wait').show();
            },
            complete: function(jqXHR, status){
                //$('#div_contenedor_alerta_ofertas').colorbox.resize();
            },
            error: function(jqXHR, status, error){
                //$('.newsletter-texto').hide();
                //$('.newsletter-error').show().html('Error al intentar suscribirse');
                //$('#div_contenedor_alerta_ofertas').colorbox.resize();
            },
            timeout: 3000  // (1000=1 segundo)
        });
        return false;
    });

});