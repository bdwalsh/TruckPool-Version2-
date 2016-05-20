<?php
include("DB_Connector.php");

function add_image($path){
    global $db;
    echo $_POST['user_id'];
    echo $path;
    $query = "INSERT INTO `truckpool`.`images` (`id`, `title`, `description`,`Category`, `path`, `user_id`) VALUES (NULL, '".$_POST['title']."', '".$_POST['description']."','".$_POST['Category']."', '".$path."', '".$_POST['user_id']."')";
    echo $query;
    $result = $db->query($query);
}

function get_images(){
    global $db;
    
    $query = "SELECT title, description, path, user_id FROM images";
    $result = $db->query($query);
    echo json_encode($result->fetchAll());
}

function get_images_user_id(){
    global $db;
    
    $query = "SELECT title, description, path FROM images WHERE user_id = ".$_POST['user_id'];
    $result = $db->query($query);
    echo json_encode($result->fetchAll());
}

function display_images_user(){
    global $db;
    
    $query = "SELECT * FROM `images` WHERE user_id = ".$_POST['user_id']."";
    $result = $db->query($query);
    echo json_encode($result->fetchAll());
}

function display_all_images(){
    global $db;
    
    $query = "SELECT * FROM `images`";
    $result = $db->query($query);
    echo json_encode($result->fetchAll());
}

function update_title(){
    global $db;
    
    $query = "UPDATE `truckpool`.`images` SET `title` = '".$_POST['title']."' WHERE `images`.`id` = '".$_POST['imageId']."';";
    $result = count($db->query($query));
    echo json_encode($result);
}

function update_description(){
    global $db;
    
    $query = "UPDATE `truckpool`.`images` SET `description` = '".$_POST['description']."' WHERE `images`.`id` = '".$_POST['imageId']."';";
    $result = count($db->query($query));
    echo json_encode($result);
}

function delete_image(){ 
    global $db;
    
    $query = "DELETE FROM images WHERE id = ".$_POST['imageId']."";
    $result = count($db->query($query));
    echo json_encode($result);
}

function display_all_titles(){
    global $db;
    
    $query = "SELECT title FROM `images`";
    $result = $db->query($query);
    echo json_encode($result->fetchAll());
}

function display_single_ad(){
    global $db;
    $query = "SELECT * FROM images WHERE id = ".$_POST['id'].""; 
    $result = $db->query($query);
    echo json_encode($result->fetchAll());
    
}

function display_search(){
    global $db;
    $query = "SELECT * FROM images WHERE Category = '".$_POST['category']."'"; 
    $result = $db->query($query);
    echo json_encode($result->fetchAll());
}

function load_favourites(){
     global $db;
    $user_id = $_POST['userId'];
    //$query = "SELECT * FROM favourites WHERE user_id = '".$_POST['userId']."'"; 
    $query = "SELECT * FROM favourites INNER JOIN images ON favourites.image_id = images.id WHERE favourites.user_id = '$user_id'";
    $result = $db->query($query);
    echo json_encode($result->fetchAll());
}

?>