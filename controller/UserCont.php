<?php
include("../model/UsersDB.php");

if($_POST['method'] == "insert"){
    add_user();
}

if($_POST['method'] == "login"){
    get_user();
}

if($_POST['method'] == "update"){
    update_user();
}
?>