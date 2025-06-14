<?php
$host = $_ENV['DB_HOSTNAME'] ?? 'localhost';
$username = $_ENV['DB_USERNAME'] ?? 'root';
$password = $_ENV['DB_PASSWORD'] ?? '';
$dbname = $_ENV['DB_NAME'] ?? 'E-ticket';

$conn = new mysqli($host, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
