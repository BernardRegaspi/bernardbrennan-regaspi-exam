<?php

include "youtube_channel_json.php";

// Accessing data
echo $channel_data["channelName"]; // "Net Ninja"
echo $channel_data["channelDescription"]; // Description text
echo $channel_data["channelProfilePicture"]; // Profile picture URL

// Accessing video data
$video = $channel_data["videos"][0];
echo $video["videoTitle"]; // "Build a Microservice with Go #4 - Data Model"
echo $video["videoDescription"]; // Video description
echo $video["videoUrl"]; // Video URL
echo $video["videoId"]; // Video ID

// print_r($channel_data);

$servername = "localhost";
$username = "root";
$password = "";
$database = "youtube_db";

// Create a connection
$conn = new mysqli($servername, $username, $password, $database);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$channelName = $channel_data["channelName"];
$channelProfilePicture = $channel_data["channelProfilePicture"];
$channelDescription = $channel_data["channelDescription"];

// Prepare the SQL statement
$sql = "INSERT INTO youtube_channels (channel_name, channel_profile, channel_description)
        VALUES (?, ?, ?)";

// Create a prepared statement
$stmt = $conn->prepare($sql);

// Bind parameters
$stmt->bind_param("sss", $channelName, $channelProfilePicture, $channelDescription);

// Execute the statement
if ($stmt->execute()) {
    echo "Channel data inserted successfully.";
} else {
    echo "Error: " . $stmt->error;
}

// Close the statement
$stmt->close();


$videos = $channel_data["videos"];

foreach ($videos as $video) {
    $videoTitle = $video['videoTitle'];
    $videoUrl = $video['videoUrl'];
    $videoDescription = $video['videoDescription'];
    $videoId = $video['videoId'];

    // Prepare the SQL statement
    $sql = "INSERT INTO youtube_channel_videos (id_channel, video_id, video_title, video_url, video_description)
            VALUES ((SELECT id_channel FROM youtube_channels WHERE channel_name = ?), ?, ?, ?, ?)";

    // Create a prepared statement
    $stmt = $conn->prepare($sql);

    // Bind parameters
    $stmt->bind_param("sssss", $channelName, $videoId, $videoTitle, $videoUrl, $videoDescription);

    // Execute the statement
    if ($stmt->execute()) {
        echo "Video data inserted successfully.";
    } else {
        echo "Error: " . $stmt->error;
    }

    // Close the statement
    $stmt->close();
}

$conn->close();

?>