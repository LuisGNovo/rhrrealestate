<?php
/**
 * Created by PhpStorm.
 * User: gonzalo
 * Date: 04/02/16
 * Time: 11:22
 */
$template = 'detalle-inmueble.tpl';

// Tomo el id del inmueble
$id     = ( (int) $_GET['id'] > 0 ) ?   (int) $_GET['id']   : null;

// Tomo los datos del inmueble
$query = <<<query
SELECT
    id,
    operacion$language_code AS operacion,
    propiedad$language_code AS propiedad,
    descripcion$language_code AS descripcion,
    zona, 
    localidad, 
    moneda, 
    precio, 
    ambientes$language_code AS ambientes, 
    direccion, 
    imagen1, 
    imagen2, 
    imagen3, 
    imagen4, 
    imagen5, 
    imagen6, 
    imagen7, 
    imagen8, 
    imagen9, 
    imagen10, 
    imagen11, 
    imagen12 
FROM
    Inmuebles
WHERE 
    id = $id
query;
$inmueble = $DB->getRow($query);

$inmueble['imagenes']   = array();

for($i=1; $i<=12; $i++){
    if( !empty($inmueble['imagen'.$i]) ){
        $inmueble['imagenes'][]   = PATH_UPLOADS . $inmueble['imagen'.$i];
    }
}

// JS para ser llamados en el footer del sitio
$SITE_FOOTER_JS[]   = 'jquery.validate.min.js';
$SITE_FOOTER_JS[]   = 'formulario-de-consultas.js';

$Smarty->assign(array(
    'inmueble'                      => $inmueble, 
    'es_detalle_del_inmueble'       => true  
    ));
?>