<?php
/**
 * core.php
 *
 * @author Gonzalo Novo
 * @uses Se encarga de administrar la acción a realizar según la URL
 */

// Inicio la session
session_start();

// Seteo el idioma
if( !isset($_SESSION['LANGUAGE_CODE']) OR !in_array($_SESSION['LANGUAGE_CODE'], array('EN', 'ES')) ){
    $language_code = $_SESSION['LANGUAGE_CODE'] = 'ES';
}else{
    $language_code = $SESSION['LANGUAGE_CODE'];
}
switch($language_code){
    case 'EN':
        //
        break;
    case 'ES':
    default:
        //
}

//*******************************************************
//*	INICIO DEL SITIO
require	dirname(__FILE__) . '/includes/loader.php';
//*******************************************************

//*******************************************************
//*	CHEQUEO DE LAACCIÓN A REALIZAR DEPENDIENDO DE LA URI
$accion_del_sitio   = null;
$request_uri        = trim($_SERVER['REQUEST_URI'], '/');

if( !$request_uri ){
    $accion_del_sitio = 'es_home';
}else{

    $request_uri = explode('/', $request_uri);

    if( $request_uri[0] == 'procesos' ){
        // Si entra por acá no habría que levantar plantillas con smarty
        //
    }else{
        // Salida estandar por smarty
        if( strpos($request_uri[0], 'formulario-de') !== false ){
            //
        }elseif( strpos($request_uri[0], 'formulario-de') !== false ){
            //
        }
    }

}

//*******************************************************


//*******************************************************
// Muestro el template
$Smarty->display('index.html');
$DB->Close();
//*******************************************************
?>