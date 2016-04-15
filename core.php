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
if( !isset($_SESSION['LANGUAGE_CODE']) OR !in_array($_SESSION['LANGUAGE_CODE'], array('EN')) ){
    $language_code = $_SESSION['LANGUAGE_CODE'] = '';
}else{
    $language_code = $SESSION['LANGUAGE_CODE'];
}


//*******************************************************
//*	INICIO DEL SITIO
require	dirname(__FILE__) . '/includes/loader.php';
//*******************************************************

//*******************************************************
//* IDIOMA
require dirname(__FILE__) . '/includes/lang.php';
//*******************************************************

//*******************************************************
//*	SETEO VARIABLES PARA LOS CSS's y JS's
$SITE_CSS           = array();
$SITE_JS            = array();
$SITE_FOOTER_JS     = array();
//*******************************************************

//*******************************************************
//*	CHEQUEO DE LAACCIÓN A REALIZAR DEPENDIENDO DE LA URI
$accion_del_sitio_a_incluir     = null;
$proceso_del_sitio_a_incluir    = null;
$template                       = '';
$request_uri                    = trim($_SERVER['REQUEST_URI'], '/');
$es_proceso                     = false;

if( !$request_uri ){
    $accion_del_sitio_a_incluir = 'home';
}else{

    $request_uri = array_shift(explode('.html', $request_uri));

    $request_uri = explode('/', $request_uri);

    if( $request_uri[0] == 'procesos' ){
        // Si entra por acá no habría que levantar plantillas con smarty
        $es_proceso = true;
        $proceso_del_sitio_a_incluir = ( !empty($request_uri[1]) ) ? $request_uri[1] : null;

    }else{
        // Salida estandar por smarty

        //****************************
        // Formularios
        if( strpos($request_uri[0], 'formulario-de') !== false ) {
            list($_request, $_accion) = explode('formulario-de', $request_uri[0]);
            $accion_del_sitio_a_incluir = trim($_accion, '-');
        }
        //****************************

        //****************************
        // Listado de inmuebles
        elseif( strpos($request_uri[0], 'listado-de-inmuebles') !== false ){
            $accion_del_sitio_a_incluir = trim($request_uri[0]);
        }
        //****************************

        //****************************
        // Ver inmueble
        elseif( strpos($request_uri[0], 'detalle-inmueble') !== false ){
            $accion_del_sitio_a_incluir = $request_uri[0];
        }
        //****************************

        //****************************
        // Ver inmueble
        elseif( strpos($request_uri[0], 'acerca-de-nosotros') !== false ){
            $accion_del_sitio_a_incluir = $request_uri[0];
        }
        //****************************

        //****************************
        // Página no encontrada
        else{
            $accion_del_sitio_a_incluir = 'error-404';
        }
        //****************************
    }

}

//*******************************************************
// Controlo si es o no proceso y requiero el archivo pertinente
if( $es_proceso === false && file_exists(PATH_ACCIONES . $accion_del_sitio_a_incluir . '.php') ){
    // Incluyo el archivo
    require PATH_ACCIONES . $accion_del_sitio_a_incluir . '.php';

// Si es proceso
}elseif( $es_proceso === true && file_exists(PATH_PROCESOS . $proceso_del_sitio_a_incluir . '.php') ){
    require PATH_PROCESOS . $proceso_del_sitio_a_incluir . '.php';

// Muestro error
}else{
    $es_proceso = false;
    $template = 'error-404.tpl';
}

// Muestro el template
if( $es_proceso === false && !empty($template) && $Smarty->templateExists($template) ){

    // Agrego los css's y js's
    $Smarty->assign(array(
        // ********
        'path_imagenes'     => PATH_IMAGENES,
        'path_uploads'      => PATH_UPLOADS,

        'assets_path_js'    => ASSETS_PATH_JS, 

        // ********
        'site_css'          => $SITE_CSS,
        'site_js'           => $SITE_JS,
        'site_footer_js'    => $SITE_FOOTER_JS,

        // *******
        'template'          => $template
    ));

    // Incluyo el template
    $Smarty->display('base.html');
}

//*******************************************************
// Cierro la BD
$DB->Close();
//*******************************************************
?>