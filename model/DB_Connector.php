<?php

try {
    $db = new PDO("mysql:dbname=truckpool;host=localhost", "root", "password");
} catch (PDOException $e) {
    echo "FAIL";
}
?>