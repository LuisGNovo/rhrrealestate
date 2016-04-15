<?php

if( $language_code == '' ){
    $idioma = 'es';
}else{
    $idioma = mb_strtolower($language_code);
}

$texto  = array();
$texto['es']    = array(
    'NOMBRE_IDIOMA_CURRENT'     => 'Español', 
    'NOMBRE_IDIOMA_ESPANIOL'    => 'Español', 
    'NOMBRE_IDIOMA_INGLES'      => 'Inglés'
    );
$texto['en']    = array(
    'NOMBRE_IDIOMA_CURRENT'     => 'English', 
    'NOMBRE_IDIOMA_ESPANIOL'    => 'Spanish', 
    'NOMBRE_IDIOMA_INGLES'      => 'English'
    );

$Smarty->assign('lang', $texto[$idioma]);
?>