<?php

include "youtube_channel_json.php";

echo $channel_data["channelName"];
echo $channel_data["channelDescription"]; 
echo $channel_data["channelProfilePicture"];


$video = $channel_data["videos"][0];
echo $video["videoTitle"];
echo $video["videoDescription"]; 
echo $video["videoUrl"];
echo $video["videoId"]; 
echo $video["videoThumbnail"]; 

// print_r($channel_data);

$servername = "localhost";
$username = "root";
$password = "";
$database = "youtube_db";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$channelName = $channel_data["channelName"];
$channelProfilePicture = $channel_data["channelProfilePicture"];
$channelDescription = $channel_data["channelDescription"];

$sql = "INSERT INTO youtube_channels (channel_name, channel_profile, channel_description)
        VALUES (?, ?, ?)";

$stmt = $conn->prepare($sql);

$stmt->bind_param("sss", $channelName, $channelProfilePicture, $channelDescription);

if ($stmt->execute()) {
    echo "Channel data inserted successfully.";
} else {
    echo "Error: " . $stmt->error;
}

$stmt->close();

$videos = $channel_data["videos"];

foreach ($videos as $video) {
    $videoTitle = $video['videoTitle'];
    $videoUrl = $video['videoUrl'];
    $videoDescription = $video['videoDescription'];
    $videoId = $video['videoId'];
    $videoThumbnail = $video['videoThumbnail'];

    $sql = "INSERT INTO youtube_channel_videos (id_channel, video_id, video_title, video_url, video_description, video_thumbnail)
            VALUES ((SELECT id_channel FROM youtube_channels WHERE channel_name = ?), ?, ?, ?, ?, ?)";

    $stmt = $conn->prepare($sql);

    $stmt->bind_param("ssssss", $channelName, $videoId, $videoTitle, $videoUrl, $videoDescription, $videoThumbnail);

    if ($stmt->execute()) {
        echo "Video data inserted successfully.";
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
}

$conn->close();

?>
