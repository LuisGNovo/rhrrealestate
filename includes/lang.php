<?php

if( $language_code == '' ){
    $idioma = 'es';
}else{
    $idioma = mb_strtolower($language_code);
}

$texto  = array();
$texto['es']    = array(
    // Idioma
    'NOMBRE_IDIOMA_CURRENT'     => 'Español', 
    'NOMBRE_IDIOMA_ESPANIOL'    => 'Español', 
    'NOMBRE_IDIOMA_INGLES'      => 'Inglés', 
    'NOMBRE_IDIOMA_LENGUAJE'    => 'Idioma', 

    // NAV BAR
    'NAV_BAR_INICIO'            => 'Inicio', 
    'NAV_BAR_VENTAS'            => 'Ventas', 
    'NAV_BAR_ALQUILERES'        => 'Alquileres', 
    'NAV_BAR_ALQUILERES_TEMPORARIOS'    => 'Alquileres temporarios', 
    'NAV_BAR_CONTACTO'          => 'Contacto', 
    'NAV_BAR_NOSOTROS'          => 'Nosotros', 
    'NAV_BAR_MAS'               => 'Más', 

    // Formulario de busqueda
    'FORMULARIO_BUSQUEDA_TITULO'    => 'Buscar propiedades', 
    'FORMULARIO_BUSQUEDA_PROPIEDAD_TIPO'    => 'PROPIEDAD TIPO', 
    'FORMULARIO_BUSQUEDA_TIPO_OPERACION'    => 'TIPO DE OPERACIÓN', 
    'FORMULARIO_BUSQUEDA_BUSCAR'    => 'Buscar', 

    // Footer
    'CONTACTENOS'               => 'Contactenos', 
    'ACERCA_DE_NOSOTROS'        => 'About us', 
    'CONTINUAR_LEYENDO'         => 'Continuar leyendo', 

    // Contacto
    'CONTACTO_SUBTITULO'        => 'Dejenos su Consulta. Le responderemos a la brevedad.', 
    'CONTACTO_NOMBRE'           => 'Nombre', 
    'CONTACTO_APELLIDO'         => 'Apellido', 
    'CONTACTO_EMAIL'            => 'Email', 
    'CONTACTO_TELEFONO'         => 'Teléfono', 
    'CONTACTO_MENSAJE'          => 'Mensaje', 
    'CONTACTO_ENVIAR'           => 'Enviar', 
    'CONTACTO_ENVIO_OK'         => '<strong>Gracias por escribirnos!</strong> Nos pondremos en contacto con usted a la mayor brevedad posible.', 
    'CONTACTO_ENVIO_ERROR'      => '<strong>Error!</strong> El email no pudo ser enviado.', 

    'MAS_INFORMACION'           => 'Más información', 
    );
$texto['en']    = array(
    // Idioma
    'NOMBRE_IDIOMA_CURRENT'     => 'English', 
    'NOMBRE_IDIOMA_ESPANIOL'    => 'Spanish', 
    'NOMBRE_IDIOMA_INGLES'      => 'English', 
    'NOMBRE_IDIOMA_LENGUAJE'    => 'Language', 

    // NAV BAR
    'NAV_BAR_INICIO'            => 'Home', 
    'NAV_BAR_VENTAS'            => 'Sales', 
    'NAV_BAR_ALQUILERES'        => 'Rent', 
    'NAV_BAR_ALQUILERES_TEMPORARIOS'    => 'Temporary rent', 
    'NAV_BAR_CONTACTO'          => 'Contact', 
    'NAV_BAR_NOSOTROS'          => 'About us', 
    'NAV_BAR_MAS'               => 'More', 

    // Formulario de busqueda
    'FORMULARIO_BUSQUEDA_TITULO'    => 'Search properties', 
    'FORMULARIO_BUSQUEDA_PROPIEDAD_TIPO'    => 'PROPERTY TYPE', 
    'FORMULARIO_BUSQUEDA_TIPO_OPERACION'    => 'OPERATION TYPE', 
    'FORMULARIO_BUSQUEDA_BUSCAR'    => 'Search', 

    // Footer
    'CONTACTENOS'               => 'Contact us', 
    'ACERCA_DE_NOSOTROS'        => 'About us', 
    'CONTINUAR_LEYENDO'         => 'Continue reading', 

    // Contacto
    'CONTACTO_SUBTITULO'        => 'Leave us your message below.', 
    'CONTACTO_NOMBRE'           => 'Name', 
    'CONTACTO_APELLIDO'         => 'Sudname', 
    'CONTACTO_EMAIL'            => 'Email', 
    'CONTACTO_TELEFONO'         => 'Phone', 
    'CONTACTO_MENSAJE'          => 'Message', 
    'CONTACTO_ENVIAR'           => 'Send', 
    'CONTACTO_ENVIO_OK'         => '<strong>Thank you for wrote us!</strong>', 
    'CONTACTO_ENVIO_ERROR'      => '<strong>Error!</strong> The email could\'t be send.', 

    'MAS_INFORMACION'           => 'More information', 
    );

$Smarty->assign('lang', $texto[$idioma]);
?>