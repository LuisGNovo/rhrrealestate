<?php
$langs = array('ES', 'EN');
$lang = $_GET['lang'];

if( in_array($lang, $langs) ){
    $_SESSION['LANGUAGE_CODE'] = mb_strtolower($lang);
}
exit();
?>