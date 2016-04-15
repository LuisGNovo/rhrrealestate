<?php
session_start();

$langs = array('ES', 'EN');
$lang = $_GET['lang'];

if( in_array($lang, $langs) ){
    $_SESSION['LANGUAGE_CODE'] = $lang;
}
echo $lang;
?>