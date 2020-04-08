<?php
// Get data
date_default_timezone_set("America/New_York");
$review_date= date('Y-m-d-h:i:sa');
$review_content= $_POST['review'];
$song_id= $_POST['song_id'];
//Validate input
if (empty($review_content)) {
    $error= "Comment can not be empty.";
    include('error.php');
} else {
//If valid, input into database
require_once('database.php');
        $query = "INSERT INTO review
            (songID, reviewDate, reviewContent)
        VALUES
            ('$song_id', '$review_date', '$review_content')";
    $db->exec($query);
    
}
?>