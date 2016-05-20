<?php

try {
$db = new PDO("mysql:dbname=truckpool;host=localhost", "root", "root");

} catch (PDOException $e) {
    echo "FAIL";
}
?>