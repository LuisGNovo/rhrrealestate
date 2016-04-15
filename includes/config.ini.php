<?php
/*
 * Archivo de configuración del sitio según el entorno de trabajo
 *
 */

// Obtengo el path del archivo  de configuración
$local_path = dirname(__FILE__);
$env_file_path = $local_path . '/config/env.php';

// Verifico que exista
// Ver que hacer en este caso
if( !file_exists($env_file_path) ){
    echo "No existe el archivo de configuración del sitio";
    exit();
}

// Obtengo el enviroment de trabajo
// Ver que hacer si no existe contenido
if( !($env = include($env_file_path)) ){
    echo "No se especifico el ambiente de trabajo";
}

$config_path = $local_path . '/config/' . $env . '.ini';

$config = parse_ini_file($config_path, true);

// Constantes del sitio
define('ENVIROMENT', $env);

define('URI_PREFIX', $config['config']['folder_prefix']);

define('PATH_BASE', dirname(dirname(__FILE__)) . '/');

define('ASSETS_PATH_JS', URI_PREFIX . '/assets/js/');
define('ASSETS_PATH_CSS', URI_PREFIX . '/assets/css/');
define('ASSETS_PATH_IMG', URI_PREFIX . '/assets/img/');

define('PATH_TEMPLATES', PATH_BASE . 'templates/');

define('PATH_ACCIONES', PATH_BASE . 'acciones/');
define('PATH_PROCESOS', PATH_BASE . 'procesos/');

define('PATH_LIB', PATH_BASE . 'lib/');
define('PATH_LIB_CLASSES', PATH_LIB . 'classes/');

define('PATH_ESTILOS', '/css/');
define('PATH_JAVASCRIPTS', '/js/');
define('PATH_IMAGENES', '/images/');
define('PATH_UPLOADS', '/uploads/');
?>