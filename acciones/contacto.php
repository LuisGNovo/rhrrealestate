<?php

if (!class_exists('PHPMailer')){
    require PATH_LIB_CLASSES.'phpmailer/class.phpmailer.php';
}

// Si se envio el formulario
if( isset($_POST['is_submit']) && (int) $_POST['is_submit'] == 1 ){
    $nombre     = ucfirst(mb_strtolower(trim($_POST['nombre'])));
    $apellido   = ucfirst(mb_strtolower(trim($_POST['apellido'])));
    $email      = mb_strtolower(trim($_POST['email']));
    $telefono   = ( !empty($_POST['telefono']) ) ? $_POST['telefono'] : '';
    $mensaje    = ucfirst(mb_strtolower(trim($_POST['mensaje'])));
    $Smarty->assign(array(
        'nombre'        => $nombre, 
        'apellido'      => $apellido, 
        'email'         => $email, 
        'telefono'      => $telefono, 
        'mensaje'       => $mensaje 
        ));

    $PHPmailer = new PHPMailer(true);
    $PHPmailer->SetLanguage('es');
    $PHPmailer->IsHTML(true);
    $PHPmailer->WordWrap = 50;
    $PHPmailer->CharSet = 'UTF-8';

    $PHPmailer->From     = $email;
    $PHPmailer->FromName = $nombre . ' ' . $apellido;

    $PHPmailer->AddAddress('info@rhrrealestate.com.ar');
    $PHPmailer->Subject = 'RHRRealState - Contacto';
    $PHPmailer->Body = $Smarty->fetch(PATH_TEMPLATES . 'emails/contacto.tpl');

    if( ENVIROMENT == 'local' ){
        $PHPmailer->Timeout = 30;
        $PHPmailer->IsSMTP();
        $PHPmailer->SMTPDebug = 1;
        $PHPmailer->Host = 'correo.almundo.com';
        $PHPmailer->Port = 465;
        $PHPmailer->SMTPSecure = "ssl";
        $PHPmailer->SMTPAuth = true;
        $PHPmailer->Username = "noreply@asatej.com.ar";
        $PHPmailer->Password = "Y*UP16YXA_zZDUj$-d7";
    }

    //send the message, check for errors
    $Smarty->assign(array(
        'mensaje_promesa' => true, 
        'mensaje_enviado' => $PHPmailer->Send()
        ));
}

$template = 'contacto.tpl';
?>