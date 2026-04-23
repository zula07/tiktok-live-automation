<?php
// scripts/worker.php
$chatId = 'YOUR_CHAT_ID_HERE';
$token = 'YOUR_API_TOKEN_HERE';
$message = $argv[2] ?? 'Test Mesajı';

$url = "https://api.telegram.org/bot{$token}/sendMessage?chat_id={$chatId}&text=" . urlencode($message);

$ch = curl_init($url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_TIMEOUT, 5);
curl_exec($ch);
curl_close($ch);
