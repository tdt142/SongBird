<?php
function get_reviews_by_song($song_id) {
    global $db;
    $query = "SELECT reviewDate, reviewContent FROM review
              WHERE review.songID = '$song_id'
              ORDER BY reviewDate DESC";
    $reviews = $db->query($query);
    return $reviews;
}
?>