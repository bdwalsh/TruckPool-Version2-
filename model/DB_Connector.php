<?php

try {
    $db = new PDO("mysql:dbname=truckpool-new;host=localhost", "root", "password");
} catch (PDOException $e) {
    echo "FAIL";
}
?>