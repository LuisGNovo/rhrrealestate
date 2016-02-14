<?php

// Todos los archivos pasan a estar en UTF-8
mb_internal_encoding('UTF-8');

//*******************************************************
//* Seteo la configuración del sitio
//*******************************************************
require dirname(__FILE__) . '/config.ini.php';
//*******************************************************

// Seteo los errores
ini_set('display_errors', 1);
ini_set('error_reporting', E_ALL);

//*******************************************************
//* Seteo la configuración horaria del sitio
//*******************************************************
date_default_timezone_set($config['sitio']['zona_horaria']);
setlocale(LC_ALL, $config['sitio']['region']);
//*******************************************************

//*******************************************************
//* Seteo la configuración de la base de datos
//*******************************************************
require PATH_LIB_CLASSES.'adodb5/adodb.inc.php';
require PATH_LIB_CLASSES.'adodb5/tohtml.inc.php';
$DB  = NewADOConnection('mysqli');
$DB->SetFetchMode(ADODB_FETCH_ASSOC);
$DB->Connect($config['mysql']['host'], $config['mysql']['user'], $config['mysql']['pass'], $config['mysql']['db_name']);
$DB->Execute("SET NAMES 'utf8'");
$DB->debug = false;
//*******************************************************

//*******************************************************
//* Seteo la configuración de los templates
//*******************************************************
require PATH_LIB_CLASSES.'smarty/libs/Smarty.class.php';
$Smarty							= new Smarty();
$Smarty->error_reporting		= E_ALL & ~ E_NOTICE;
$Smarty->caching				= false;
$Smarty->cache_lifetime 		= 1;
$Smarty->setTemplateDir('./templates/');
//*******************************************************

//*******************************************************
//* Funciones utiles
//*******************************************************
function pre($msg){ echo '<pre>'; print_r($msg); echo '</pre>'; }
//*******************************************************
?>