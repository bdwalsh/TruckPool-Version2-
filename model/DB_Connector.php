<?php

try {
<<<<<<< Updated upstream
    $db = new PDO("mysql:dbname=truckpool;host=localhost", "root", "password");
=======
    $db = new PDO("mysql:dbname=truckpool;host=localhost", "root", "root");
>>>>>>> Stashed changes
} catch (PDOException $e) {
    echo "FAIL";
}
?>