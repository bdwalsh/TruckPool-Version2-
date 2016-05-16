<?php
include("../model/ImagesDB.php");

if($_POST['method'] == "insert"){
    add_image();
}

if($_POST['method'] == "get_images_userID"){
    get_images_user_id();
}

if($_POST['method'] == "display"){
    display_images_user();
}

if($_POST['method'] == "display_all"){
    display_all_images();
}

if($_POST['method'] == "delete"){
    delete_image();
}

if($_POST['method'] == "update_image_title"){
    update_title();
}

if($_POST['method'] == "update_image_description"){
    update_description();
}

if($_POST['method'] == "display_titles"){
    display_all_titles();
}

if($_POST['method'] == "single_ad"){
    display_single_ad();
}

?>