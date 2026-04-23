<?php
// scripts/listener.php
$token = 'YOUR_API_TOKEN_HERE';
$input = file_get_contents('php://input');
$data = json_decode($input, true);

if (isset($data['message'])) {
    ignore_user_abort(true);
    set_time_limit(0);
    ob_start();
    echo "OK";
    header('Connection: close');
    header('Content-Length: '.ob_get_length());
    ob_end_flush();
    flush();
}
?>
