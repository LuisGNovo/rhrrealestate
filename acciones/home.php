<?php
// Defino el template a usar
$template = 'home.tpl';

// Tomo las ofertas y muestro 4
$query = <<<query
SELECT
    id,
    operacion$language_code AS operacion,
    propiedad$language_code AS propiedad,
    descripcion$language_code AS descripcion,
    IF(localidad <> '', CONCAT(localidad, ', ', zona), zona) AS ubicacion,
    imagen1 AS imagen
FROM
    Inmuebles
WHERE
    estadoInmueble = 'Disponible'
ORDER BY
    RAND()
LIMIT 4
query;
$ofertas = $DB->getAll($query);


// Query para obtener las localidades para el buscador
$query = <<<query
SELECT
    IF(localidad <> '', CONCAT(localidad, ', ', zona), zona) AS ubicacion
FROM
    Inmuebles
GROUP BY ubicacion
ORDER BY
    ubicacion ASC;
query;
$localidades = $DB->getAll($query);


// Query para obtener los tipos de inmuebles
$query = <<<query
SELECT
    DISTINCT(propiedad) AS tipo
FROM
    Inmuebles
ORDER BY
    tipo ASC;
query;
$tipos_propiedad = $DB->getAll($query);


// Query para obtener las operaciones
$query = <<<query
SELECT
    DISTINCT(operacion) AS operacion
FROM
    Inmuebles
ORDER BY
    operacion ASC;
query;
$operaciones = $DB->getAll($query);

// Asigno las variables a Smarty
$Smarty->assign(array(
    'ofertas'           => $ofertas,
    'tipos_propiedad'   => $tipos_propiedad,
    'operaciones'       => $operaciones,
    'localidades'       => $localidades
));
?>