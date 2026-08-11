<?php
require_once 'config/app.php';
require_once 'config/db.php';

$email = 'admin@gmail.com';
$password = '123456';
$name = 'Admin';

$hashed_password = password_hash($password, PASSWORD_BCRYPT);

$stmt = db()->prepare('INSERT INTO users (name, email, password, role, points) VALUES (?, ?, ?, ?, ?)');
$stmt->execute([$name, $email, $hashed_password, 'admin', 20]);

echo "User created successfully: $email / $password";
?>
