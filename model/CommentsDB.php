<?php
include("DB_Connector.php");

function add_comment(){
    global $db;
    echo $_POST["userId"];
    
  //  $query = "INSERT INTO comments (id, text, user_id, image_id) VALUES (NULL, '".$_POST['comment']."', '".$_POST['userId']."'), '".$_POST['imageId']."')";
    
    $query = "INSERT INTO `truckpool`.`comments` (`id`, `text`, `user_id`, `image_id`) VALUES (NULL, '".$_POST['comment']."', '".$_POST['userId']."', '".$_POST['imageId']."')";
    $result = $db->query($query);
}

function display_comments(){
    global $db;
    
    $query = "SELECT text FROM `comments` WHERE image_id = ".$_POST['imageId']."";
    $result = $db->query($query);
    echo json_encode($result->fetchAll());
}

function display_user_comments(){
    global $db;
    
    $query = "SELECT * FROM `comments` WHERE user_id = ".$_POST['userId']."";
    $result = $db->query($query);
    echo json_encode($result->fetchAll());
}

function delete_comment(){ 
    global $db;
    echo $_POST["commentId"];
    
    $query = "DELETE FROM comments WHERE id = ".$_POST['commentId']."";
    $result = count($db->query($query));
    echo json_encode($result);
}

function update_comment(){
    global $db;
    echo "word";
    $query = "UPDATE `finalproject`.`comments` SET `text` = '".$_POST['text']."' WHERE `comments`.`id` = '".$_POST['commentId']."';";
    $result = count($db->query($query));
    echo $query;
    echo json_encode($result);
}

function favourite(){
    global $db;
    $query = "INSERT INTO `truckpool`.`favourites` (`user_id`, `image_id`) VALUES ( '".$_POST['userId']."', '".$_POST['imageId']."')";
    $result = $db->query($query);
}


?>