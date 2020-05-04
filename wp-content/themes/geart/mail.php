<?php

require 'phpmailer/PHPMailer.php';
require 'phpmailer/SMTP.php';
require 'phpmailer/Exception.php';

$name = $_POST['name'];
$email = $_POST['email'];
$title = $_POST['title'];
$message = $_POST['message'];

$mail = new PHPMailer\PHPMailer\PHPMailer();
try {
    $msg = "ok";
    $mail->isSMTP();   
    $mail->CharSet = "UTF-8";                                          
    $mail->SMTPAuth   = true;

    $mail->Host       = 'smtp.yandex.ru'; 
    $mail->Username   = 'order@2geart.com';
    $mail->Password   = '3dmax7070';
    $mail->SMTPSecure = 'ssl';
    $mail->Port       = 465;
    $mail->setFrom('order@2geart.com', '2Geart');
    $mail->AddReplyTo($email, $name);

    $mail->addAddress('order@2geart.com'); 
    $mail->addAddress('2geart@mail.ru'); 
    /*$mail->addAddress($email);*/


    // Прикрипление файлов к письму
if (!empty($_FILES['file']['name'][0])) {
    for ($ct = 0; $ct < count($_FILES['file']['tmp_name']); $ct++) {
        $uploadfile = tempnam(sys_get_temp_dir(), sha1($_FILES['file']['name'][$ct]));
        $filename = $_FILES['file']['name'][$ct];
        if (move_uploaded_file($_FILES['file']['tmp_name'][$ct], $uploadfile)) {
            $mail->addAttachment($uploadfile, $filename);
        } else {
            $msg .= 'Could not attach file ' . $uploadfile;
        }
    }   
}
    
        $mail->isHTML(true);
    
        $mail->Subject = 'Title mail';
        $mail->Body    = "<b>Name:</b> $name <br>
        <b>Email:</b> $email<br><br>
        <b>Title message:</b><br>$title<br>
        <b>Message:</b><br>$message<br>";


if ($mail->send()) {
    echo "$msg";
} else {
echo "Message was not sent. Your email settings are incorrect";
}
} catch (Exception $e) {
    echo "Message was not sent. Cause of error: {$mail->ErrorInfo}";
}