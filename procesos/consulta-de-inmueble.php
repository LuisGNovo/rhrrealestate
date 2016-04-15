<?php
header('Content-Type: application/json');

if( !defined('PATH_LIB_CLASSES') ){
    require_once dirname(dirname(__FILE__)) . '/includes/loader.php';
}

if ( !class_exists('PHPMailer') ){
    require PATH_LIB_CLASSES . 'phpmailer/class.phpmailer.php';
}

$response   = array(
    'message'   => '', 
    'status'    => null
    );

if( $_SERVER['REQUEST_METHOD'] === 'POST' && (int) $_POST['is_submit'] === 1 ){
    $nombre     = ucwords(mb_strtolower(trim($_POST['nombre'])));
    $telefono   = trim($_POST['telefono']);
    $email      = mb_strtolower(trim($_POST['email']));
    $mensaje    = ucfirst(mb_strtolower(trim($_POST['mensaje'])));
    $inmueble   = json_decode(base64_decode($_POST['inmueble']), true);
    $Smarty->assign(array(
        'nombre'        => $nombre, 
        'email'         => $email, 
        'telefono'      => $telefono, 
        'mensaje'       => $mensaje, 
        'inmueble'      => $inmueble
        ));

    $PHPmailer = new PHPMailer(true);
    $PHPmailer->SetLanguage('es');
    $PHPmailer->IsHTML(true);
    $PHPmailer->WordWrap = 50;
    $PHPmailer->CharSet = 'UTF-8';

    $PHPmailer->From     = $email;
    $PHPmailer->FromName = $nombre;

    $PHPmailer->AddAddress('info@rhrrealestate.com.ar');
    $PHPmailer->Subject = 'RHRRealState - Consulta del inmueble: ' . $inmueble['propiedad'] . ' en ' . $inmueble['operacion'];
    $PHPmailer->Body = $Smarty->fetch(PATH_TEMPLATES . 'emails/consulta-de-inmueble.tpl');

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

    if($PHPmailer->Send()){
        $response   = array(
            'message'   => 'El email de consulta de inmueble fue enviado con éxito.', 
            'status'    => 200
        );
    }else{
        $response   = array(
            'message'   => 'Error! No se pudo enviar el email de consulta del inmueble.', 
            'status'    => 409
        );
    }

}else{
    $response   = array(
        'message'   => 'Datos insuficientes', 
        'status'    => 400
        );
}

echo json_encode($response);
?>