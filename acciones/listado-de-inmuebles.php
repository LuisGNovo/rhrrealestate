<?php
// Defino el template
$template = 'listado-de-inmuebles.tpl';

// Evaluo los parametros que vienen por GET
$tipo       = !empty( $_GET['tipo'] )       ?   $DB->qstr($_GET['tipo'])       : null;
//$zona       = !empty( $_GET['zona'] )       ?   $DB->qstr($_GET['zona'])       : null;
$operacion  = !empty( $_GET['operacion'] )  ?   $DB->qstr($_GET['operacion'])  : null;

// Query para obtener los inmuebles
$query = <<<query
SELECT 
    id, 
    propiedad$language_code AS propiedad, 
    operacion$language_code AS operacion, 
    ambientes$language_code AS ambientes, 
    zona, 
    localidad, 
    direccion, 
    moneda, 
    precio, 
    estadoInmueble AS estado, 
    descripcion$language_code AS descripcion, 
    imagen1 AS imagen 
FROM 
    Inmuebles 
query;

$where = array();
if( !empty($tipo) ){
    $where[]    = "propiedad$language_code = ".$tipo;
}
/*
if( !empty($zona) ){
    $where[]    = "IF(localidad <> '', CONCAT(localidad, ', ', zona), zona) = ".$zona;
}
*/
if( !empty($operacion) ){
    $where[]    = "operacion$language_code = ".$operacion;
}

if( !empty($where) ){
    $query .= " WHERE " . implode(' AND ', $where);
}

$inmuebles = $DB->getAll($query);

// Asigno las variables a Smarty
$Smarty->assign(array(
    'inmuebles'       => $inmuebles 
));
?>