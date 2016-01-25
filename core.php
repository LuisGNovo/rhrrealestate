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

//*******************************************************
//*	INICIO DEL SITIO
require	dirname(__FILE__) . '/includes/loader.php';
//*******************************************************

//*******************************************************
// Muestro el template
$Smarty->display('index.html');
$DB->Close();
//*******************************************************
?>