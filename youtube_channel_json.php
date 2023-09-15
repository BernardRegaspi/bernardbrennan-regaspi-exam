<?php
$api_key = "AIzaSyBGS7N1qHnpugbNtUdPmP75ZM8iZPG517Y";
$channel_id = "UCW5YeuERMmlnqo4oq8vwUpg";
$max_results = 100; // Number of results to fetch

// Construct the API URL to fetch video data with the specified maxResults
$video_url = "https://www.googleapis.com/youtube/v3/search?channelId=$channel_id&order=date&part=snippet&type=video&maxResults=$max_results&key=$api_key";

// Make an HTTP request to fetch video data
$video_response = file_get_contents($video_url);

// Initialize an array to store channel and video data
$channel_data = array();

// Check if the video request was successful
if ($video_response) {
    // Decode the JSON response for video data
    $video_data = json_decode($video_response, true);

    // Fetch channel information
    $channel_info_url = "https://www.googleapis.com/youtube/v3/channels?part=snippet&id=$channel_id&key=$api_key";
    $channel_info_response = file_get_contents($channel_info_url);

    if ($channel_info_response) {
        $channel_info = json_decode($channel_info_response, true);

        // Extract channel details
        $channel_data['channelName'] = $channel_info['items'][0]['snippet']['title'];
        $channel_data['channelDescription'] = $channel_info['items'][0]['snippet']['description'];
        $channel_data['channelProfilePicture'] = $channel_info['items'][0]['snippet']['thumbnails']['medium']['url'];
    } else {
        $channel_data['channelError'] = "Failed to fetch channel information.";
    }

    // Initialize an array to store video details
    $videos = array();

    // Loop through the videos and add them to the array
    foreach ($video_data['items'] as $item) {
        $videoTitle = $item['snippet']['title'];
        $videoDescription = $item['snippet']['description'];
        $videoId = $item['id']['videoId'];

        // Generate the YouTube video URL link
        $videoUrl = "https://www.youtube.com/watch?v=$videoId&ab_channel=" . $channel_id;

        // Add video details to the array
        $videos[] = array(
            'videoTitle' => $videoTitle,
            'videoDescription' => $videoDescription,
            'videoUrl' => $videoUrl,
            'videoId' => $videoId,
        );
    }

    // Add the videos array to the channel data
    $channel_data['videos'] = $videos;
} else {
    $channel_data['channelError'] = "Failed to fetch video data from the YouTube API.";
}

// Set the response header to indicate JSON content
header('youtube_channel_json.php');
header('Content-Type: application/javascript');

$callback = isset($_GET['callback']) ? $_GET['callback'] : 'defaultCallback';

// Your JSON data

// Wrap the JSON data in the callback function
$response = $callback . '(' . json_encode($channel_data) . ');';



echo $response;

// Output the JSON data
// echo json_encode($channel_data);

?>
