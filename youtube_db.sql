-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2023 at 02:38 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtube_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channels`
--

CREATE TABLE `youtube_channels` (
  `id_channel` int(11) NOT NULL,
  `channel_name` varchar(255) NOT NULL,
  `channel_profile` varchar(255) NOT NULL,
  `channel_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `youtube_channels`
--

INSERT INTO `youtube_channels` (`id_channel`, `channel_name`, `channel_profile`, `channel_description`) VALUES
(57, 'Net Ninja', 'https://yt3.ggpht.com/ytc/AOPolaRZ_YQDWsp_xli4C-dj0ArYih76vbn_Ck-wg8Dz8w=s240-c-k-c0x00ffffff-no-rj', 'Black-belt your web development skills. Over 2000 free programming tutorial videos about:\n\n- Modern JavaScript (beginner to advanced)\n- Node.js\n- React\n- Vue.js\n- Firebase\n- MongoDB\n- HTML & CSS\n- PHP & MySQL\n- Laravel\n- React Native\n- Flutter\n- Open AI\n- SolidJS\n\n...And many more topics as well :)\n');

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channel_videos`
--

CREATE TABLE `youtube_channel_videos` (
  `id_video` int(11) NOT NULL,
  `id_channel` int(11) NOT NULL,
  `video_id` varchar(255) NOT NULL,
  `video_title` varchar(255) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `video_description` text NOT NULL,
  `video_thumbnail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `youtube_channel_videos`
--

INSERT INTO `youtube_channel_videos` (`id_video`, `id_channel`, `video_id`, `video_title`, `video_url`, `video_description`, `video_thumbnail`) VALUES
(498, 57, 'NCaKbDVogDI', 'Build a Microservice with Go #5 - Finishing the API', 'https://www.youtube.com/watch?v=NCaKbDVogDI&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this Go tutorial series, you\'ll learn how to make a microservice using Go, Chi (a lightweight router) & Redis. Get early ...', 'https://i.ytimg.com/vi/NCaKbDVogDI/mqdefault.jpg'),
(499, 57, 'qCv-q37qjZU', 'Build a Microservice with Go #4 - Data Model', 'https://www.youtube.com/watch?v=qCv-q37qjZU&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this Go tutorial series, you\'ll learn how to make a microservice using Go, Chi (a lightweight router) & Redis. Get early ...', 'https://i.ytimg.com/vi/qCv-q37qjZU/mqdefault.jpg'),
(500, 57, 'PWukxD1DC0I', 'Build a Microservice with Go #3 - Using Redis', 'https://www.youtube.com/watch?v=PWukxD1DC0I&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this Go tutorial series, you\'ll learn how to make a microservice using Go, Chi (a lightweight router) & Redis. Get early ...', 'https://i.ytimg.com/vi/PWukxD1DC0I/mqdefault.jpg'),
(501, 57, 'N9LhKjPibuU', 'Build a Microservice with Go #2 - Routes &amp; Handlers', 'https://www.youtube.com/watch?v=N9LhKjPibuU&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this Go tutorial series, you\'ll learn how to make a microservice using Go, Chi (a lightweight router) & Redis. Get early ...', 'https://i.ytimg.com/vi/N9LhKjPibuU/mqdefault.jpg'),
(502, 57, 'PVpMYHggalQ', 'Individual Transform Properties #shorts', 'https://www.youtube.com/watch?v=PVpMYHggalQ&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Subscribe to @NetNinja Visit https://www.tiktok.com/@thenetninjauk for more tips & tricks!', 'https://i.ytimg.com/vi/PVpMYHggalQ/mqdefault.jpg'),
(503, 57, 'wpnN3RIRSxs', 'Build a Microservice with Go #1 - Getting Started', 'https://www.youtube.com/watch?v=wpnN3RIRSxs&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this Go tutorial series, you\'ll learn how to make a microservice using Go, Chi (a lightweight router) & Redis. Get early ...', 'https://i.ytimg.com/vi/wpnN3RIRSxs/mqdefault.jpg'),
(504, 57, 'uPXn9S31o7Q', 'Solid JS Tutorial #1 - What is Solid?', 'https://www.youtube.com/watch?v=uPXn9S31o7Q&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this Solid JS tutorial series you\'ll learn what Solid is, and how we can use it to make a fast & interactive web app. Get ...', 'https://i.ytimg.com/vi/uPXn9S31o7Q/mqdefault.jpg'),
(505, 57, 'PVo2dXmx9Ug', 'Qwik Crash Course (first look) #9 - Props', 'https://www.youtube.com/watch?v=PVo2dXmx9Ug&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Get early access to this entire course now on Net Ninja Pro: https://netninja.dev/p/qwik-crash-course-first-look Access the ...', 'https://i.ytimg.com/vi/PVo2dXmx9Ug/mqdefault.jpg'),
(506, 57, 'vxhXd1mz1gs', 'Qwik Crash Course (first look) #4 - Adding Styles', 'https://www.youtube.com/watch?v=vxhXd1mz1gs&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Get early access to this entire course now on Net Ninja Pro: https://netninja.dev/p/qwik-crash-course-first-look Access the ...', 'https://i.ytimg.com/vi/vxhXd1mz1gs/mqdefault.jpg'),
(507, 57, '9ug3DaR1sHY', 'Pinia Crash Course #4 - Accessing Store State', 'https://www.youtube.com/watch?v=9ug3DaR1sHY&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this Pinia tutorial, you\'ll learn how to access the store state from any component in the application. Watch the whole course ...', 'https://i.ytimg.com/vi/9ug3DaR1sHY/mqdefault.jpg'),
(508, 57, 'l31_fyp-AwQ', 'Weather App Build (Vue 3 &amp; Tailwind) #12 - Removing Cities', 'https://www.youtube.com/watch?v=l31_fyp-AwQ&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Subscribe to John\'s channel for more great web dev tutorials - https://www.youtube.com/c/johnkomarnicki ‍   Access the course ...', 'https://i.ytimg.com/vi/l31_fyp-AwQ/mqdefault.jpg'),
(509, 57, 'NilffTjcDVA', 'Weather App Build (Vue 3 &amp; Tailwind) #4 - Reusable Modal', 'https://www.youtube.com/watch?v=NilffTjcDVA&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this lesson, we\'ll build a reusable modal component for the project. ‍   Subscribe to John\'s channel for more great web dev ...', 'https://i.ytimg.com/vi/NilffTjcDVA/mqdefault.jpg'),
(510, 57, 'AoIn_xiol78', 'Weather App Build (Vue 3 &amp; Tailwind) #3 - Navigation', 'https://www.youtube.com/watch?v=AoIn_xiol78&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this lesson, we\'ll put together the site navigation. ‍   Subscribe to John\'s channel for more great web dev tutorials ...', 'https://i.ytimg.com/vi/AoIn_xiol78/mqdefault.jpg'),
(511, 57, 'n9XX_zz3bi8', 'MERN Authentication Tutorial #17 - Assigning Workouts to Users', 'https://www.youtube.com/watch?v=n9XX_zz3bi8&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Get the full course now (without ads) on the Net Ninja Pro site: https://netninja.dev/p/mern-auth-tutorial/ Get access to all free ...', 'https://i.ytimg.com/vi/n9XX_zz3bi8/mqdefault.jpg'),
(512, 57, 'to-V-LcsXUU', 'MERN Authentication Tutorial #16 - Protecting React Routes', 'https://www.youtube.com/watch?v=to-V-LcsXUU&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this MERN auth tutorial we\'ll protect some of the React routes from users that are not authenticated. Get the full course now ...', 'https://i.ytimg.com/vi/to-V-LcsXUU/mqdefault.jpg'),
(513, 57, 'juaWO24a9aQ', 'MERN Authentication Tutorial #11 - Making a useLogout Hook', 'https://www.youtube.com/watch?v=juaWO24a9aQ&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this MERN auth tutorial, we\'ll make a custom useLogout hook to log users out of the application. Get the full course now ...', 'https://i.ytimg.com/vi/juaWO24a9aQ/mqdefault.jpg'),
(514, 57, 'WsRBmwNkv3Q', 'MERN Authentication Tutorial #1 - Intro &amp; Starter Project', 'https://www.youtube.com/watch?v=WsRBmwNkv3Q&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Learn how to implement authentication (using JSON web tokens), within the MERN stack, in this tutorial series. Get the full ...', 'https://i.ytimg.com/vi/WsRBmwNkv3Q/mqdefault.jpg'),
(515, 57, 'AWFwioQdjrg', 'MERN Stack Tutorial #13 - Handling Error Responses', 'https://www.youtube.com/watch?v=AWFwioQdjrg&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Get the full course now (without ads) on the Net Ninja Pro site: https://netninja.dev/p/mern-stack-tutorial Get access to all free ...', 'https://i.ytimg.com/vi/AWFwioQdjrg/mqdefault.jpg'),
(516, 57, 'TcWmmJUG5K4', 'MERN Stack Tutorial #12 - Deleting Data', 'https://www.youtube.com/watch?v=TcWmmJUG5K4&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Get the full course now (without ads) on the Net Ninja Pro site: https://netninja.dev/p/mern-stack-tutorial Get access to all free ...', 'https://i.ytimg.com/vi/TcWmmJUG5K4/mqdefault.jpg'),
(517, 57, 'tRmeik-IpUQ', 'MERN Stack Tutorial #10 - New Workout Form', 'https://www.youtube.com/watch?v=tRmeik-IpUQ&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this lesson we\'ll make a form to add new workouts. Get the full course now (without ads) on the Net Ninja Pro site: ...', 'https://i.ytimg.com/vi/tRmeik-IpUQ/mqdefault.jpg'),
(518, 57, 'MEab_a19ZGk', 'MERN Stack Tutorial #9 - Fetching Data', 'https://www.youtube.com/watch?v=MEab_a19ZGk&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this MERN stack tutorial we\'ll make a request to the backend api to fetch workouts data and output it in the React template.', 'https://i.ytimg.com/vi/MEab_a19ZGk/mqdefault.jpg'),
(519, 57, 'bx4nk7kBS10', 'MERN Stack Tutorial #8 - Making a React App', 'https://www.youtube.com/watch?v=bx4nk7kBS10&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this MERN tutorial, we\'ll start our React application and set up a homepage route. Get the full course now (without ads) on ...', 'https://i.ytimg.com/vi/bx4nk7kBS10/mqdefault.jpg'),
(520, 57, 'oEHHjs1UVXQ', 'MERN Stack Tutorial #6 - Controllers (part 1)', 'https://www.youtube.com/watch?v=oEHHjs1UVXQ&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this MERN tutorial we\'ll make some controller functions for the workout routes. Get the full course now (without ads) on the ...', 'https://i.ytimg.com/vi/oEHHjs1UVXQ/mqdefault.jpg'),
(521, 57, 'O8IipcpTmYU', 'MERN Stack Tutorial #5 - Models &amp; Schemas', 'https://www.youtube.com/watch?v=O8IipcpTmYU&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this MERN tutorial you\'ll create a new model & schema for the dtabase collection we\'ll be using (workouts). Get ...', 'https://i.ytimg.com/vi/O8IipcpTmYU/mqdefault.jpg'),
(522, 57, 'Ll6knx7sFis', 'MERN Stack Tutorial #3 - Express Router &amp; API Routes', 'https://www.youtube.com/watch?v=Ll6knx7sFis&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this MERN tutorial we\'ll create all of the workout routes we need for the api and test them out using POSTMAN.', 'https://i.ytimg.com/vi/Ll6knx7sFis/mqdefault.jpg'),
(523, 57, '8DploTqLstE', 'MERN Stack Tutorial #2 - Express App Setup', 'https://www.youtube.com/watch?v=8DploTqLstE&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this MERN tutorial we\'ll set up our initial Express app to power the backend api. Get the full course now (without ...', 'https://i.ytimg.com/vi/8DploTqLstE/mqdefault.jpg'),
(524, 57, '98BzS5Oz5E4', 'MERN Stack Tutorial #1 - What is the MERN Stack?', 'https://www.youtube.com/watch?v=98BzS5Oz5E4&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Learn how to create a web app using the MERN stack (MongoDB, Express, React & Node.js). Get the full course now ...', 'https://i.ytimg.com/vi/98BzS5Oz5E4/mqdefault.jpg'),
(525, 57, '5cIMvD2ZDo0', 'Build Layouts with CSS Grid #2 - Multi-Column Layout', 'https://www.youtube.com/watch?v=5cIMvD2ZDo0&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this Css Grid tutorial we\'ll create a multi-column layout Get the full course now (without ads) on the Net Ninja ...', 'https://i.ytimg.com/vi/5cIMvD2ZDo0/mqdefault.jpg'),
(526, 57, 'xPuYbmmPdEM', 'Build Layouts with CSS Grid #1 - CSS Grid Basics', 'https://www.youtube.com/watch?v=xPuYbmmPdEM&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this CSS grid tutorial series you\'ll learn how to create 4 different responsive layouts with CSS Grid as well as a ...', 'https://i.ytimg.com/vi/xPuYbmmPdEM/mqdefault.jpg'),
(527, 57, 'PhW1bodVl3M', 'Make a Wordle Clone with React #10 - Showing the Current Guess', 'https://www.youtube.com/watch?v=PhW1bodVl3M&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Get the full course now (without ads) on the Net Ninja Pro site: https://netninja.dev/p/make-a-wordle-clone-with-react Get ...', 'https://i.ytimg.com/vi/PhW1bodVl3M/mqdefault.jpg'),
(528, 57, 'ZSWl5UwhHcs', 'Make a Wordle Clone with React #1 - Introduction &amp; Setup', 'https://www.youtube.com/watch?v=ZSWl5UwhHcs&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this series you\'ll learn how to make a Wordle clone using React. Get the full course now (without ads) on the ...', 'https://i.ytimg.com/vi/ZSWl5UwhHcs/mqdefault.jpg'),
(529, 57, '084rmLU1UgA', 'Complete MongoDB Tutorial #25 - MongoDB Atlas', 'https://www.youtube.com/watch?v=084rmLU1UgA&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this mongodb tutorial you\'ll learn how to use MongoDB Atlas, a Cloud Database service which allows you to easily ...', 'https://i.ytimg.com/vi/084rmLU1UgA/mqdefault.jpg'),
(530, 57, 'D14wWW9EEx8', 'Complete MongoDB Tutorial #24 - Indexes', 'https://www.youtube.com/watch?v=D14wWW9EEx8&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this mongodb tutorial we\'ll talk about indexes and see how to create them. ‍   View this course & other premium ...', 'https://i.ytimg.com/vi/D14wWW9EEx8/mqdefault.jpg'),
(531, 57, '32y_UY1omwM', 'Complete MongoDB Tutorial #19 - Using POSTMAN', 'https://www.youtube.com/watch?v=32y_UY1omwM&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'View this course & other premium courses without ads on the Net Ninja Pro site: ...', 'https://i.ytimg.com/vi/32y_UY1omwM/mqdefault.jpg'),
(532, 57, '5a6h41PVsD0', 'Complete MongoDB Tutorial #17 - Cursors &amp; Fetching Data', 'https://www.youtube.com/watch?v=5a6h41PVsD0&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this MongoDB tutorial I\'ll explain what cursors are and how we use them when fetching data from the database.', 'https://i.ytimg.com/vi/5a6h41PVsD0/mqdefault.jpg'),
(533, 57, 'gGNquGHqpNI', 'Complete MongoDB Tutorial #16 - Connecting to MongoDB', 'https://www.youtube.com/watch?v=gGNquGHqpNI&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'View this course & other premium courses without ads on the Net Ninja Pro site: ...', 'https://i.ytimg.com/vi/gGNquGHqpNI/mqdefault.jpg'),
(534, 57, 'zFzR2mCHhTk', 'Complete MongoDB Tutorial #12 - Querying Arrays', 'https://www.youtube.com/watch?v=zFzR2mCHhTk&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'View this course & other premium courses without ads on the Net Ninja Pro site: ...', 'https://i.ytimg.com/vi/zFzR2mCHhTk/mqdefault.jpg'),
(535, 57, 'NRKGZdJTf48', 'Complete MongoDB Tutorial #10 - Operators &amp; Complex Queries', 'https://www.youtube.com/watch?v=NRKGZdJTf48&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'View this course & other premium courses without ads on the Net Ninja Pro site: ...', 'https://i.ytimg.com/vi/NRKGZdJTf48/mqdefault.jpg'),
(536, 57, 'hjsCd3sy0Ns', 'Complete MongoDB Tutorial #9 - Nested Documents', 'https://www.youtube.com/watch?v=hjsCd3sy0Ns&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'View this course & other premium courses without ads on the Net Ninja Pro site: ...', 'https://i.ytimg.com/vi/hjsCd3sy0Ns/mqdefault.jpg'),
(537, 57, 'FLl9m4XwbqQ', 'Complete MongoDB Tutorial #7 - Finding Documents', 'https://www.youtube.com/watch?v=FLl9m4XwbqQ&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'View this course & other premium courses without ads on the Net Ninja Pro site: ...', 'https://i.ytimg.com/vi/FLl9m4XwbqQ/mqdefault.jpg'),
(538, 57, 'g3Z0Av9yRSs', 'Complete MongoDB Tutorial #6 - Adding New Documents', 'https://www.youtube.com/watch?v=g3Z0Av9yRSs&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'View this course & other premium courses without ads on the Net Ninja Pro site: ...', 'https://i.ytimg.com/vi/g3Z0Av9yRSs/mqdefault.jpg'),
(539, 57, 'jR49YGYXdxc', 'Complete MongoDB Tutorial #5 - Using the MongoDB Shell', 'https://www.youtube.com/watch?v=jR49YGYXdxc&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'View this course & other premium courses without ads on the Net Ninja Pro site: ...', 'https://i.ytimg.com/vi/jR49YGYXdxc/mqdefault.jpg'),
(540, 57, 'bJSj1a84I20', 'Complete MongoDB Tutorial #4 - Using MongoDB Compass', 'https://www.youtube.com/watch?v=bJSj1a84I20&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'View this course & other premium courses without ads on the Net Ninja Pro site: ...', 'https://i.ytimg.com/vi/bJSj1a84I20/mqdefault.jpg'),
(541, 57, 'ojKJqNQYaOI', 'Complete MongoDB Tutorial #3 - Collections &amp; Documents', 'https://www.youtube.com/watch?v=ojKJqNQYaOI&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'View this course & other premium courses without ads on the Net Ninja Pro site: ...', 'https://i.ytimg.com/vi/ojKJqNQYaOI/mqdefault.jpg'),
(542, 57, 'gDOKSgqM-bQ', 'Complete MongoDB Tutorial #2 - Installing MongoDB', 'https://www.youtube.com/watch?v=gDOKSgqM-bQ&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Learn how to install MongoDB locally onto your computer. ‍   View this course & other premium courses without ads on the Net ...', 'https://i.ytimg.com/vi/gDOKSgqM-bQ/mqdefault.jpg'),
(543, 57, 'ExcRbA7fy_A', 'Complete MongoDB Tutorial #1 - What is MongoDB?', 'https://www.youtube.com/watch?v=ExcRbA7fy_A&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this series you\'ll learn how to use MongoDB (a NoSQL database) from scratch. You\'ll also learn how to integrate it ...', 'https://i.ytimg.com/vi/ExcRbA7fy_A/mqdefault.jpg'),
(544, 57, 'QePBbG5MoKk', 'Docker Crash Course #12 - Dockerizing a React App', 'https://www.youtube.com/watch?v=QePBbG5MoKk&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this Docker tutorial we\'ll use Docker Compose to \"Dockerize\" a React application. ‍   Access the course files on ...', 'https://i.ytimg.com/vi/QePBbG5MoKk/mqdefault.jpg'),
(545, 57, 'G07FcRhYB2c', 'Docker Crash Course #5 - The Dockerfile', 'https://www.youtube.com/watch?v=G07FcRhYB2c&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this Docker tutorial we\'ll talk about the Dockerfile and how we use it to create docker images. ‍   Access the ...', 'https://i.ytimg.com/vi/G07FcRhYB2c/mqdefault.jpg'),
(546, 57, 'hhfrFvuHRPU', 'Docker Crash Course #3 - Images &amp; Containers', 'https://www.youtube.com/watch?v=hhfrFvuHRPU&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this docker tutorial, you\'ll learn the basics of what containers and images are all about! ‍   Access the course files on GitHub: ...', 'https://i.ytimg.com/vi/hhfrFvuHRPU/mqdefault.jpg'),
(547, 57, '8Ev1aXl7TGY', 'Docker Crash Course #2 - Installing Docker', 'https://www.youtube.com/watch?v=8Ev1aXl7TGY&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this docker tutorial you\'ll learn how to install docker onto your computer. I\'ll be using Windows & WLS2 to install docker.', 'https://i.ytimg.com/vi/8Ev1aXl7TGY/mqdefault.jpg'),
(548, 57, 'zCgruoRUxlk', 'React Router 6 Tutorial #3 - Redirects &amp; useNavigate', 'https://www.youtube.com/watch?v=zCgruoRUxlk&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Get access to premium courses on Net Ninja Pro: https://netninja.dev/courses My Udemy Courses: ...', 'https://i.ytimg.com/vi/zCgruoRUxlk/mqdefault.jpg'),
(549, 57, 'gUs-Sissb48', 'SvelteKit Crash Course Tutorial #14 - Deploying to Vercel', 'https://www.youtube.com/watch?v=gUs-Sissb48&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this SvelteKit tutorial you\'ll learn how to deploy your SvelteKit apps to Vercel. Get access to this course on Net Ninja Pro: ...', 'https://i.ytimg.com/vi/gUs-Sissb48/mqdefault.jpg'),
(550, 57, 'shTnwJa4SRA', 'SvelteKit Crash Course Tutorial #6 - Layout Components', 'https://www.youtube.com/watch?v=shTnwJa4SRA&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Get access to this course on Net Ninja Pro: https://netninja.dev/p/sveltekit-tutorial Get access to more premium courses on Net ...', 'https://i.ytimg.com/vi/shTnwJa4SRA/mqdefault.jpg'),
(551, 57, '9OlLxkaeVvw', 'SvelteKit Crash Course Tutorial #1 - What is SvelteKit?', 'https://www.youtube.com/watch?v=9OlLxkaeVvw&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this tutorial series you\'ll learn all about how to make & deploy fast & responsive websites with SvelteKit, using Svelte.', 'https://i.ytimg.com/vi/9OlLxkaeVvw/mqdefault.jpg'),
(552, 57, 'JXFgF4iyPF8', 'Vuex 4 &amp; Firebase Auth Tutorial #7 - Sign Up Action', 'https://www.youtube.com/watch?v=JXFgF4iyPF8&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this Vuex tutorial we\'ll create a signup action to sign the user in & then update our user state. Get the full course ...', 'https://i.ytimg.com/vi/JXFgF4iyPF8/mqdefault.jpg'),
(553, 57, 'M955GrNXPG0', 'Vuex 4 &amp; Firebase Auth Tutorial #1 - Intro &amp; Installation', 'https://www.youtube.com/watch?v=M955GrNXPG0&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this Vuex 4 tutorial series I\'ll show you how to use Vuex to manage global authentication state with Firebase auth.', 'https://i.ytimg.com/vi/M955GrNXPG0/mqdefault.jpg'),
(554, 57, 'gEaY2GZMino', 'Getting Started with Firebase 9 #7 - Firestore Queries', 'https://www.youtube.com/watch?v=gEaY2GZMino&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this firebase tutorial you\'ll learn how to perform more complex queries to fetch only documents which match a certain criteria.', 'https://i.ytimg.com/vi/gEaY2GZMino/mqdefault.jpg'),
(555, 57, 'rfQ2F8kQEUg', 'Getting Started with Firebase 9 #6 - Real Time Collection Data', 'https://www.youtube.com/watch?v=rfQ2F8kQEUg&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this firebase 9 tutorial I\'ll show you how to setup a real-time subscription to a collection get real-time data, using the ...', 'https://i.ytimg.com/vi/rfQ2F8kQEUg/mqdefault.jpg'),
(556, 57, 's1frrNxq4js', 'Getting Started with Firebase 9 #5 - Adding &amp; Deleting Documents', 'https://www.youtube.com/watch?v=s1frrNxq4js&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey all, in this Firebase 9 tutorial I\'ll show you how to add new documents (save them) and also how to delete documents to and ...', 'https://i.ytimg.com/vi/s1frrNxq4js/mqdefault.jpg'),
(557, 57, '2yNyiW_41H8', 'Getting Started with Firebase 9 #4 - Firestore Setup &amp; Fetching Data', 'https://www.youtube.com/watch?v=2yNyiW_41H8&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this firebase 9 tutorial I\'ll show you how to setup & connect to a firestore database and fetch data once from a ...', 'https://i.ytimg.com/vi/2yNyiW_41H8/mqdefault.jpg'),
(558, 57, '13eja_RYimU', 'Getting Started with Firebase 9 #3 - Setting up Firebase', 'https://www.youtube.com/watch?v=13eja_RYimU&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Course files: https://github.com/iamshaunjp/Getting-Started-with-Firebase-9 ‍   My Premium Udemy courses: ...', 'https://i.ytimg.com/vi/13eja_RYimU/mqdefault.jpg'),
(559, 57, 'vK2NoOoqyRo', 'Getting Started with Firebase 9 #2 - Setting up Webpack', 'https://www.youtube.com/watch?v=vK2NoOoqyRo&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this Firebase 9 tutorial we\'ll set up a module bundler (Wepack) in order to use the new Firebase SDK. ‍   Course ...', 'https://i.ytimg.com/vi/vK2NoOoqyRo/mqdefault.jpg'),
(560, 57, '9zdvmgGsww0', 'Getting Started with Firebase 9 #1 - Intro &amp; What&#39;s New?', 'https://www.youtube.com/watch?v=9zdvmgGsww0&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this Firebase 9 tutorial series you\'ll learn how to use the new version of Firebase, which adopts a more functional ...', 'https://i.ytimg.com/vi/9zdvmgGsww0/mqdefault.jpg'),
(561, 57, 'wd3ofJGU0Wk', 'Build a Memory Game with React #11 - Final Touches', 'https://www.youtube.com/watch?v=wd3ofJGU0Wk&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Get the full React Course here (discount auto-applied): https://thenetninja.co.uk/udemy/react-and-firebase ‍   My other Udemy ...', 'https://i.ytimg.com/vi/wd3ofJGU0Wk/mqdefault.jpg'),
(562, 57, 'L7sg52SLafo', 'Build a Memory Game with React #5 - Making Card Choices', 'https://www.youtube.com/watch?v=L7sg52SLafo&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Get the full React Course here (discount auto-applied): https://thenetninja.co.uk/udemy/react-and-firebase ‍   My other Udemy ...', 'https://i.ytimg.com/vi/L7sg52SLafo/mqdefault.jpg'),
(563, 57, 'ZCKohZwGZMw', 'Build a Memory Game with React #1 - Intro &amp; Setup', 'https://www.youtube.com/watch?v=ZCKohZwGZMw&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Get the full React Course here (discount auto-applied): https://thenetninja.co.uk/udemy/react-and-firebase Starter project on ...', 'https://i.ytimg.com/vi/ZCKohZwGZMw/mqdefault.jpg'),
(564, 57, '6lH-6Y805L4', 'New Big React Course (with Firebase)', 'https://www.youtube.com/watch?v=6lH-6Y805L4&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Get the full React & Firebase course here (discount auto-applied): https://thenetninja.co.uk/udemy/react-and-firebase ‍   My ...', 'https://i.ytimg.com/vi/6lH-6Y805L4/mqdefault.jpg'),
(565, 57, '3R4fpnIAozs', 'SASS Tutorial (build your own CSS library) #15 - Media Queries', 'https://www.youtube.com/watch?v=3R4fpnIAozs&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this SASS tutorial you\'ll learn about breakpoints & responsive styles using media queries & mixins. ‍   Get the full ...', 'https://i.ytimg.com/vi/3R4fpnIAozs/mqdefault.jpg'),
(566, 57, 'QPZOvED3N_8', 'SASS Tutorial (build your own CSS library) #10 - Conditionals (@if)', 'https://www.youtube.com/watch?v=QPZOvED3N_8&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, you\'ll learn about conditionals (if checks) & how to use them in this SASS tutorial. ‍   Get the full SASS course now ...', 'https://i.ytimg.com/vi/QPZOvED3N_8/mqdefault.jpg'),
(567, 57, 'vajsECys5Tc', 'SASS Tutorial (build your own CSS library) #6 - Nested Rules', 'https://www.youtube.com/watch?v=vajsECys5Tc&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this SASS tutorial we\'ll take a look at nested rules. ‍   Get the full SASS course now on Net Ninja Pro: ...', 'https://i.ytimg.com/vi/vajsECys5Tc/mqdefault.jpg'),
(568, 57, 'OxT05SPg1js', 'SASS Tutorial (build your own CSS library) #5 - Project Structure', 'https://www.youtube.com/watch?v=OxT05SPg1js&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this SASS tutorial we\'ll start work on the CSS library by mapping out our project structure. ‍   Get the full SASS course now on ...', 'https://i.ytimg.com/vi/OxT05SPg1js/mqdefault.jpg'),
(569, 57, 'LXx_oE6IBWs', 'SASS Tutorial (build your own CSS library) #3 - Variables', 'https://www.youtube.com/watch?v=LXx_oE6IBWs&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this SASS tutorial we\'ll learn about SASS variables. ‍   Get the full SASS course now on Net Ninja Pro: ...', 'https://i.ytimg.com/vi/LXx_oE6IBWs/mqdefault.jpg'),
(570, 57, 'Sk5jMurFHCo', 'SASS Tutorial (build your own CSS library) #2 - Compiling SASS', 'https://www.youtube.com/watch?v=Sk5jMurFHCo&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Get the full SASS course now on Net Ninja Pro: https://netninja.dev/p/complete-sass-tutorial ‍   Get access to all other premium ...', 'https://i.ytimg.com/vi/Sk5jMurFHCo/mqdefault.jpg'),
(571, 57, '_kqN4hl9bGc', 'SASS Tutorial (build your own CSS library) #1 - Introduction', 'https://www.youtube.com/watch?v=_kqN4hl9bGc&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this SASS tutorial series you\'ll learn how to make your own CSS library with SASS. ‍   Get the full SASS course ...', 'https://i.ytimg.com/vi/_kqN4hl9bGc/mqdefault.jpg'),
(572, 57, 'iR7QMjZvwx8', 'Adobe Xd Basics Tutorial #4 The Adobe Xd Interface', 'https://www.youtube.com/watch?v=iR7QMjZvwx8&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Subscribe to the Alex On Design YouTube channel: https://bit.ly/3hB6rsz ‍   Alex On Design Website: https://bit.ly/3xE14yi ...', 'https://i.ytimg.com/vi/iR7QMjZvwx8/mqdefault.jpg'),
(573, 57, 'j-XDG3AYTYE', 'Adobe Xd Basics Tutorial #3 - The Welcome Screen in Xd', 'https://www.youtube.com/watch?v=j-XDG3AYTYE&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Subscribe to the Alex On Design YouTube channel: https://bit.ly/3hB6rsz ‍   Alex On Design Website: https://bit.ly/3xE14yi ...', 'https://i.ytimg.com/vi/j-XDG3AYTYE/mqdefault.jpg'),
(574, 57, '0Q2s_zjSNR8', 'Adobe Xd Basics Tutorial #1 - Introduction', 'https://www.youtube.com/watch?v=0Q2s_zjSNR8&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this tutorial series you\'ll learn how to use Adobe Xd (a UX & design tool) from scratch. ‍   Subscribe to the Alex On ...', 'https://i.ytimg.com/vi/0Q2s_zjSNR8/mqdefault.jpg'),
(575, 57, 'N4JpylgjRK0', 'Strapi Crash Course (with React &amp; GraphQL) #4 - Permissions &amp; Auth Requests', 'https://www.youtube.com/watch?v=N4JpylgjRK0&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this Strapi tutorial you\'ll learn how to authenticte users using Strapi & how to limit content to authenticated users.', 'https://i.ytimg.com/vi/N4JpylgjRK0/mqdefault.jpg'),
(576, 57, '4Ntd414raYc', 'Strapi Crash Course (with React &amp; GraphQL) #1 - Intro &amp; Setup', 'https://www.youtube.com/watch?v=4Ntd414raYc&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Learn how to use Strapi (a headless CMS) from the ground up, and use it in a React application with GraphQL. ‍   Access the ...', 'https://i.ytimg.com/vi/4Ntd414raYc/mqdefault.jpg'),
(577, 57, 'TBZy-Rc-xX0', 'React Testing Library Tutorial #13 - Mocking Requests', 'https://www.youtube.com/watch?v=TBZy-Rc-xX0&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Check out Laith\'s YouTube channel for more tutorials: https://www.youtube.com/channel/UCyLNhHSiEVkVwPSFKxJAfSA ...', 'https://i.ytimg.com/vi/TBZy-Rc-xX0/mqdefault.jpg'),
(578, 57, '6wbnwsKrnYU', 'React Testing Library Tutorial #11 - Integration Tests', 'https://www.youtube.com/watch?v=6wbnwsKrnYU&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Check out Laith\'s YouTube channel for more tutorials: https://www.youtube.com/channel/UCyLNhHSiEVkVwPSFKxJAfSA ...', 'https://i.ytimg.com/vi/6wbnwsKrnYU/mqdefault.jpg'),
(579, 57, 'kVzw_f7TfCE', 'React Testing Library Tutorial #9 - Describe Block', 'https://www.youtube.com/watch?v=kVzw_f7TfCE&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Check out Laith\'s YouTube channel for more tutorials: https://www.youtube.com/channel/UCyLNhHSiEVkVwPSFKxJAfSA ...', 'https://i.ytimg.com/vi/kVzw_f7TfCE/mqdefault.jpg'),
(580, 57, '3ugQRXRToFA', 'React Testing Library Tutorial #8 - Assertions', 'https://www.youtube.com/watch?v=3ugQRXRToFA&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Check out Laith\'s YouTube channel for more tutorials: https://www.youtube.com/channel/UCyLNhHSiEVkVwPSFKxJAfSA ...', 'https://i.ytimg.com/vi/3ugQRXRToFA/mqdefault.jpg'),
(581, 57, 'l9qr3EuLE_8', 'React Testing Library Tutorial #7 - Using Query Methods', 'https://www.youtube.com/watch?v=l9qr3EuLE_8&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Check out Laith\'s YouTube channel for more tutorials: https://www.youtube.com/channel/UCyLNhHSiEVkVwPSFKxJAfSA ...', 'https://i.ytimg.com/vi/l9qr3EuLE_8/mqdefault.jpg'),
(582, 57, 'PLL5Pvuk-tw', 'React Testing Library Tutorial #6 - Priority', 'https://www.youtube.com/watch?v=PLL5Pvuk-tw&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Check out Laith\'s YouTube channel for more tutorials: https://www.youtube.com/channel/UCyLNhHSiEVkVwPSFKxJAfSA ...', 'https://i.ytimg.com/vi/PLL5Pvuk-tw/mqdefault.jpg'),
(583, 57, 'SppbtlpPZu4', 'React Testing Library Tutorial #4 - Structure of Tests', 'https://www.youtube.com/watch?v=SppbtlpPZu4&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Check out Laith\'s YouTube channel for more tutorials: https://www.youtube.com/channel/UCyLNhHSiEVkVwPSFKxJAfSA ...', 'https://i.ytimg.com/vi/SppbtlpPZu4/mqdefault.jpg'),
(584, 57, 'n_sS-GAgZ98', 'React Testing Library Tutorial #3 - Types of Test', 'https://www.youtube.com/watch?v=n_sS-GAgZ98&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Check out Laith\'s YouTube channel for more tutorials: https://www.youtube.com/channel/UCyLNhHSiEVkVwPSFKxJAfSA ...', 'https://i.ytimg.com/vi/n_sS-GAgZ98/mqdefault.jpg'),
(585, 57, 'tit8PecSH70', 'React Testing Library Tutorial #2 - The Importance of Testing', 'https://www.youtube.com/watch?v=tit8PecSH70&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Check out Laith\'s YouTube channel for more tutorials: https://www.youtube.com/channel/UCyLNhHSiEVkVwPSFKxJAfSA ...', 'https://i.ytimg.com/vi/tit8PecSH70/mqdefault.jpg'),
(586, 57, '7dTTFW7yACQ', 'React Testing Library Tutorial #1 - Introduction', 'https://www.youtube.com/watch?v=7dTTFW7yACQ&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Check out Laith\'s YouTube channel for more tutorials: https://www.youtube.com/channel/UCyLNhHSiEVkVwPSFKxJAfSA ...', 'https://i.ytimg.com/vi/7dTTFW7yACQ/mqdefault.jpg'),
(587, 57, 'IMM93WydBSw', 'Bootstrap 5 Crash Course Tutorial #20 - Tabs', 'https://www.youtube.com/watch?v=IMM93WydBSw&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this final Bootstrap 5 tutorial I\'ll show you how to use the tabs component. ‍   Premium Net Ninja Courses with Net ...', 'https://i.ytimg.com/vi/IMM93WydBSw/mqdefault.jpg'),
(588, 57, 'nCX3QVl_PiI', 'Bootstrap 5 Crash Course Tutorial #19 - Customizing Bootstrap', 'https://www.youtube.com/watch?v=nCX3QVl_PiI&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this Bootstrap tutorial I\'ll show you how we can install Bootstrap locally and customize theme variables (like colors) ...', 'https://i.ytimg.com/vi/nCX3QVl_PiI/mqdefault.jpg'),
(589, 57, 'tt5uUMQgzl0', 'Bootstrap 5 Crash Course Tutorial #16 - Modals', 'https://www.youtube.com/watch?v=tt5uUMQgzl0&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'View this course in full now - without ads - on Net Ninja Pro: https://netninja.dev/p/bootstrap-5-crash-course ‍   Access the ...', 'https://i.ytimg.com/vi/tt5uUMQgzl0/mqdefault.jpg'),
(590, 57, 'dKVX22GR7zQ', 'Bootstrap 5 Crash Course Tutorial #14 - Working with Forms', 'https://www.youtube.com/watch?v=dKVX22GR7zQ&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'View this course in full now - without ads - on Net Ninja Pro: https://netninja.dev/p/bootstrap-5-crash-course ‍   Access the ...', 'https://i.ytimg.com/vi/dKVX22GR7zQ/mqdefault.jpg'),
(591, 57, 'rhvMRsE_6sY', 'Bootstrap 5 Crash Course Tutorial #13 - Bootstrap Icons', 'https://www.youtube.com/watch?v=rhvMRsE_6sY&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this bootstrap tutorial we\'ll take a look at the icon library and how to use icons in our web page. ‍   View this ...', 'https://i.ytimg.com/vi/rhvMRsE_6sY/mqdefault.jpg'),
(592, 57, 'cVThXv6hYW0', 'Bootstrap 5 Crash Course Tutorial #11 - Accordions', 'https://www.youtube.com/watch?v=cVThXv6hYW0&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this Bootstrap tutorial we\'ll look at one of the new components of Bootstrap 5 - the accordion component. ‍   View this course ...', 'https://i.ytimg.com/vi/cVThXv6hYW0/mqdefault.jpg'),
(593, 57, 'NRoET8-8cbw', 'Bootstrap 5 Crash Course Tutorial #10 - Cards', 'https://www.youtube.com/watch?v=NRoET8-8cbw&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Hey gang, in this Bootstrap tutorial you\'ll learn how to use the Card component - in our site we\'ll use it for te pricing options.', 'https://i.ytimg.com/vi/NRoET8-8cbw/mqdefault.jpg'),
(594, 57, '7AT1X9Z41sA', 'Bootstrap 5 Crash Course Tutorial #9 - Navbars', 'https://www.youtube.com/watch?v=7AT1X9Z41sA&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this Bootstrap 5 tutorial you\'ll learn how to use the navbar component and we\'ll add it to our page design. ‍   View this course ...', 'https://i.ytimg.com/vi/7AT1X9Z41sA/mqdefault.jpg'),
(595, 57, 'yCCIztB-S_k', 'Bootstrap 5 Crash Course Tutorial #8 - Grid Layout (part 2)', 'https://www.youtube.com/watch?v=yCCIztB-S_k&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'In this lesson we\'ll take what we learnt about the grid system in Bootstrap 5 and use it to start our page design. ‍   View this ...', 'https://i.ytimg.com/vi/yCCIztB-S_k/mqdefault.jpg'),
(596, 57, 'irfbn103AzE', 'Bootstrap 5 Crash Course Tutorial #7 - Grid Layout (part 1)', 'https://www.youtube.com/watch?v=irfbn103AzE&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Learn how to use the grid system in Bootstrap 5 - using containers, rows, columns and responsive classes too. ‍   View this ...', 'https://i.ytimg.com/vi/irfbn103AzE/mqdefault.jpg'),
(597, 57, 'Y6q8R-9y6a0', 'Bootstrap 5 Crash Course Tutorial #6 - Containers', 'https://www.youtube.com/watch?v=Y6q8R-9y6a0&ab_channel=UCW5YeuERMmlnqo4oq8vwUpg', 'Learn how to use containers in this Bootstrap 5 tutorial. ‍   View this course in full now - without ads - on Net Ninja Pro: ...', 'https://i.ytimg.com/vi/Y6q8R-9y6a0/mqdefault.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  ADD PRIMARY KEY (`id_channel`);

--
-- Indexes for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  ADD PRIMARY KEY (`id_video`),
  ADD KEY `id_channel` (`id_channel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  MODIFY `id_channel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=598;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  ADD CONSTRAINT `youtube_channel_videos_ibfk_1` FOREIGN KEY (`id_channel`) REFERENCES `youtube_channels` (`id_channel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
