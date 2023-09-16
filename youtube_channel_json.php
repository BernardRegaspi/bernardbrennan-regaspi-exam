<?php
$api_key = "AIzaSyBgd0Hk3RJ1JnphC7zeraE3fLwwmWeYXZw";
$channel_id = "UCW5YeuERMmlnqo4oq8vwUpg";
$max_results_per_page = 50;
$total_results = 100;

$channel_data = array();
$total_pages = ceil($total_results / $max_results_per_page);
$all_videos = array();

for ($page = 1; $page <= $total_pages; $page++) {
    $start_index = ($page - 1) * $max_results_per_page + 1;
    $video_url = "https://www.googleapis.com/youtube/v3/search?channelId=$channel_id&order=date&part=snippet&type=video&maxResults=$max_results_per_page&key=$api_key&pageToken=" . ($page > 1 ? $next_page_token : '');
    $video_response = file_get_contents($video_url);

    if ($video_response) {
        $video_data = json_decode($video_response, true);
        $next_page_token = isset($video_data['nextPageToken']) ? $video_data['nextPageToken'] : '';

        foreach ($video_data['items'] as $item) {
            $videoTitle = $item['snippet']['title'];
            $videoDescription = $item['snippet']['description'];
            $videoId = $item['id']['videoId'];
            $videoThumbnail = $item['snippet']['thumbnails']['medium']['url'];
            $videoUrl = "https://www.youtube.com/watch?v=$videoId&ab_channel=" . $channel_id;
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

    if (count($all_videos) >= $total_results) {
        break;
    }
}

$channel_info_url = "https://www.googleapis.com/youtube/v3/channels?part=snippet&id=$channel_id&key=$api_key";
$channel_info_response = file_get_contents($channel_info_url);

if ($channel_info_response) {
    $channel_info = json_decode($channel_info_response, true);

    $channel_data['channelName'] = $channel_info['items'][0]['snippet']['title'];
    $channel_data['channelDescription'] = $channel_info['items'][0]['snippet']['description'];
    $channel_data['channelProfilePicture'] = $channel_info['items'][0]['snippet']['thumbnails']['medium']['url'];
} else {
    $channel_data['channelError'] = "Failed to fetch channel information.";
}

$channel_data['videos'] = $all_videos;

header('youtube_channel_json.php');
header('Content-Type: application/javascript');

$callback = isset($_GET['callback']) ? $_GET['callback'] : 'defaultCallback';
$response = $callback . '(' . json_encode($channel_data) . ');';

echo $response;

?>
