<?php
$api_key = "AIzaSyBgd0Hk3RJ1JnphC7zeraE3fLwwmWeYXZw";
$channel_id = "UCW5YeuERMmlnqo4oq8vwUpg";
$max_results_per_page = 50; // Number of results to fetch per page
$total_results = 100; // Total number of results to retrieve

// Initialize an array to store channel and video data
$channel_data = array();

// Calculate the number of pages needed to retrieve the desired results
$total_pages = ceil($total_results / $max_results_per_page);

// Initialize an array to store all video data
$all_videos = array();

// Loop through each page and make API requests
for ($page = 1; $page <= $total_pages; $page++) {
    // Calculate the starting index for the current page
    $start_index = ($page - 1) * $max_results_per_page + 1;

    // Create the API URL for the current page
    $video_url = "https://www.googleapis.com/youtube/v3/search?channelId=$channel_id&order=date&part=snippet&type=video&maxResults=$max_results_per_page&key=$api_key&pageToken=" . ($page > 1 ? $next_page_token : '');

    // Make an HTTP request to fetch video data
    $video_response = file_get_contents($video_url);

    // Check if the video request was successful
    if ($video_response) {
        // Decode the JSON response for video data
        $video_data = json_decode($video_response, true);

        // Store the next page token for the next request
        $next_page_token = isset($video_data['nextPageToken']) ? $video_data['nextPageToken'] : '';

        // Loop through the videos and add them to the all_videos array
        foreach ($video_data['items'] as $item) {
            $videoTitle = $item['snippet']['title'];
            $videoDescription = $item['snippet']['description'];
            $videoId = $item['id']['videoId'];
            $videoThumbnail = $item['snippet']['thumbnails']['medium']['url'];

            // Generate the YouTube video URL link
            $videoUrl = "https://www.youtube.com/watch?v=$videoId&ab_channel=" . $channel_id;

            // Add video details to the all_videos array
            $all_videos[] = array(
                'videoTitle' => $videoTitle,
                'videoDescription' => $videoDescription,
                'videoUrl' => $videoUrl,
                'videoId' => $videoId,
                'videoThumbnail' => $videoThumbnail,
            );
        }
    } else {
        $channel_data['channelError'] = "Failed to fetch video data from the YouTube API.";
    }

    // If we have retrieved enough results, break out of the loop
    if (count($all_videos) >= $total_results) {
        break;
    }
}

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

// Combine channel data and all video data
$channel_data['videos'] = $all_videos;

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
