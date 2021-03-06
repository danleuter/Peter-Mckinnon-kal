-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2019 at 10:50 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pmdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` varchar(3000) NOT NULL,
  `image` varchar(2000) NOT NULL,
  `category` varchar(2000) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `author`, `date`, `content`, `image`, `category`, `status`) VALUES
(1, '', '', '0000-00-00 00:00:00', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `articledraft`
--

CREATE TABLE `articledraft` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` varchar(3000) NOT NULL,
  `image` varchar(2000) NOT NULL,
  `category` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articledraft`
--

INSERT INTO `articledraft` (`id`, `title`, `author`, `date`, `content`, `image`, `category`) VALUES
(4, 'photography', 'peter', '2019-05-20 08:53:33', 'tutorial', 'night.jpg', ''),
(6, 'street', 'mckinnon', '2019-05-18 08:38:51', 'loremipsum', '', ''),
(8, '', 'dfgdfgdf', '2019-05-18 09:00:24', '<p>startfdgfdgdfgdf</p>', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `admin_id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `profileimage` varchar(2000) NOT NULL,
  `aboutme` varchar(2000) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`admin_id`, `firstname`, `lastname`, `username`, `email`, `profileimage`, `aboutme`, `password`) VALUES
(1, 'dan', 'carandang', '', 'dan@gmail.com', '', '', 'dandan'),
(2, 'Daniel', 'Carandang', 'daniel', 'daniel@gmail.com', '', '', '$2y$10$POSXWroZ4Ovg7n3DfODlNOPsffqdAjtm4upaJnYcZAiuiQMgJuxAi');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `m_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `art_id` int(11) NOT NULL,
  `art_title` varchar(255) NOT NULL,
  `art_author` varchar(255) NOT NULL,
  `art_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `art_desc` varchar(100) NOT NULL,
  `art_content` varchar(5000) NOT NULL,
  `art_status` int(2) NOT NULL,
  `art_category` varchar(255) NOT NULL,
  `art_image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`art_id`, `art_title`, `art_author`, `art_date`, `art_desc`, `art_content`, `art_status`, `art_category`, `art_image`) VALUES
(4, 'The Work Behind His Fame | Peter McKinnon', 'Sarah Rexford', '2019-05-20 01:52:57', '\"The whole process is art. But art is work.\"', '<div class=\"sqs-block html-block sqs-block-html\" data-block-type=\"2\" id=\"block-e6949a43ab9a95db03eb\" style=\"position: relative; height: auto; padding: 0px 17px 17px; outline: none; box-shadow: rgba(128, 128, 128, 0) 0px 0px 0px 1px inset; transition: box-shadow 0.2s ease-in-out 0s; clear: none; color: rgb(68, 68, 68); font-family: minion-pro; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(248, 248, 248); text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"sqs-block-content\" id=\"yui_3_17_2_1_1558316927857_953\" style=\"outline: none;\"><p style=\"margin-bottom: 1.5em; overflow-wrap: break-word;\">Honestly, not long ago I had no idea who this funny, tattooed, brilliant guy was.</p><p style=\"margin-bottom: 1.5em; overflow-wrap: break-word;\">He\'s talented, makes amazing videos, and is a great photographer. He\'s not afraid of doing things no one else has done.</p><h3 style=\"font-family: europa; font-weight: 700; font-style: normal; font-size: 17px; letter-spacing: 0em; line-height: 1.5em; text-decoration: none; text-transform: none; color: rgb(51, 51, 51);\">Last I checked, this guy had 2.3 million subscribers on YouTube.&nbsp;</h3><p id=\"yui_3_17_2_1_1558316927857_952\" style=\"margin-bottom: 1.5em; overflow-wrap: break-word;\">In case you don\'t know who he is, like I didn\'t until more recently,&nbsp;his name is<span>&nbsp;</span><a target=\"_blank\" href=\"http://www.petermckinnon.com/\" id=\"yui_3_17_2_1_1558316927857_951\" style=\"background: transparent; color: rgb(203, 92, 77); text-decoration: none; transition: color 100ms ease-in-out 0s, border-color 100ms ease-in-out 0s; border-bottom: 1px solid rgb(203, 92, 77); overflow-wrap: break-word;\">Peter McKinnon</a>.</p><p style=\"margin-bottom: 1.5em; overflow-wrap: break-word;\">You might be sitting back right now thinking, \"Well the YouTube algorithm must\'ve really worked for Peter. That\'s great...for him! I\'ve been hustling for years and look at my whopping 13 subscribers.\"&nbsp;</p><h3 style=\"font-family: europa; font-weight: 700; font-style: normal; font-size: 17px; letter-spacing: 0em; line-height: 1.5em; text-decoration: none; text-transform: none; color: rgb(51, 51, 51);\">Just like you and me, Peter started out with zero subscribers and a passion for art.&nbsp;</h3><p style=\"margin-bottom: 1.5em; overflow-wrap: break-word;\">It\'s only<span>&nbsp;</span><em style=\"overflow-wrap: break-word;\">after</em>&nbsp;he put hours and hours and years of work into his craft that he started seeing people appreciate his work, just like he did.&nbsp;</p><p style=\"margin-bottom: 1.5em; overflow-wrap: break-word;\">From watching different creatives work and listening to their stories I\'ve learned a few things. Hopefully they help you as much as they helped me!&nbsp;</p><h2 style=\"font-family: europa; font-weight: 700; font-style: normal; font-size: 21px; letter-spacing: 0em; line-height: 1.5em; text-decoration: none; text-transform: none; color: rgb(51, 51, 51);\"><strong style=\"font-weight: bold; overflow-wrap: break-word;\">Treat The One Like He/She\'s One In A Million</strong></h2><p style=\"margin-bottom: 1.5em; overflow-wrap: break-word;\">No matter how many subscribers I do or don\'t have, how many readers I get, how many comments or likes, or who gives me feedback... I\'ve learned to treat the one person like they\'re one in a million.&nbsp;</p><p style=\"margin-bottom: 1.5em; overflow-wrap: break-word;\">If I had a million people reading my blog or buying my book, I\'d make sure I created quality work.&nbsp;</p><p style=\"margin-bottom: 1.5em; overflow-wrap: break-word;\">&nbsp;I\'ve learned if I\'m not intentional right now with X number of subscribers, I won\'t be intentional when ____ number of people flock to my work.</p><h2 style=\"font-family: europa; font-weight: 700; font-style: normal; font-size: 21px; letter-spacing: 0em; line-height: 1.5em; text-decoration: none; text-transform: none; color: rgb(51, 51, 51);\"><strong style=\"font-weight: bold; overflow-wrap: break-word;\">Value The Work You Want Everyone Else To Value</strong></h2><p style=\"margin-bottom: 1.5em; overflow-wrap: break-word;\">I talk about this more in-depth<span>&nbsp;</span><a target=\"_blank\" href=\"http://www.itssarahrexford.com/blog//often-ambitious\" style=\"background: transparent; color: rgb(203, 92, 77); text-decoration: none; transition: color 100ms ease-in-out 0s, border-color 100ms ease-in-out 0s; border-bottom: 1px solid rgb(203, 92, 77); overflow-wrap: break-word;\">here</a>, but if you don\'t value your own work, how is anyone else going to? Show people you value what you do by showing up, creating great content, and giving your best.&nbsp;</p><p style=\"margin-bottom: 1.5em; overflow-wrap: break-word;\">No one can argue your best i', 2, '', 'peter1.jpg'),
(5, '3 camera tricks NO ONE will suspect!', 'Peter Mckinnon', '2019-05-20 01:57:50', 'Camera Tricks', '<p><br style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><a href=\"https://www.iso1200.com/2017/12/how-peter-mckinnon-makes-video.html\" target=\"_blank\" style=\"margin: 0px; padding: 0px; text-decoration: none; border: none; outline: none; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">Peter McKinnon</a><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span>&nbsp;</span>is here talk to you about some awesome<span>&nbsp;</span></span><a href=\"https://www.iso1200.com/2017/12/make-your-own-camera-transitions.html\" target=\"_blank\" style=\"margin: 0px; padding: 0px; text-decoration: none; border: none; outline: none; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">camera tricks</a><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span>&nbsp;</span>he has&nbsp;done before in this vlog. He always read the comments on YouTube and people said&nbsp; \"Please Peter, explain how you do that in camera\" so he will show you his \" three magic camera tricks\".</span></p><p><br></p><p><iframe width=\"695\" height=\"391\" src=\"https://www.youtube.com/embed/nxA7_IXr9k4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe><br></p><p><br></p><p>About Peter McKinnon:</p><p><br></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(242, 210, 0); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Simply put, I love what I do. I strive to be the best at it. I want my photos to mean something, to transcend just \'another shot\' and become undeniable moments of clear storytelling and emotion. I\'ve spent half of my life doing this, and I don\'t plan on stopping anytime soon. Thank you for spending this time with me.</span><br style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\"><b style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decorat', 1, '', 'peter7.jpg'),
(6, 'STREET PHOTOGRAPHY', 'Peter Mckinnon', '2019-05-20 02:02:11', 'Tutorial about Street Photography', '<p><span style=\"color: rgb(102, 102, 102); font-family: \"Open Sans\", sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Welcome back to another tutorial with Peter McKinnon. Today Peter is jamming on<span>Â </span></span><a href=\"http://www.iso1200.com/2018/05/10-tips-to-up-your-street-photography.html\" target=\"_blank\" style=\"margin: 0px; padding: 0px; text-decoration: none; border: none; outline: none; color: rgb(0, 0, 0); font-family: \"Open Sans\", sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">street photography</a><span style=\"color: rgb(102, 102, 102); font-family: \"Open Sans\", sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">. He got some tips and tricks for you along with photographer Alen Palander.</span></p><p><iframe width=\"695\" height=\"391\" src=\"https://www.youtube.com/embed/E7Lm5KA4hOA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe></p><p><br></p><p><i style=\"color: rgb(102, 102, 102); font-family: \"Open Sans\", sans-serif; font-size: 16px; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">It\'s a ton of fun, it\'s one of my favorite things to do, it is just to grab a camera and a group of friends, head downtown or head into a new city and literally just walk around in photographs<span>Â </span></i><span style=\"color: rgb(102, 102, 102); font-family: \"Open Sans\", sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">- said Peter-</span></p><p><br></p>', 1, '', 'peter10.jpg'),
(8, 'How to Create a Stunning Bokeh Explosion at Night', 'Mathieu Stern', '2019-05-20 02:11:19', 'Tutorial about Night Photography', '<p><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">How to create nocturnal portraits with a massive explosion of Bokeh.</span></p><p><iframe width=\"695\" height=\"391\" src=\"https://www.youtube.com/embed/WKkk0Pooxds\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(242, 210, 0); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Free-lancer, I am shooting viral videos about photography, travel and many other subjects. Help me to do more cool videos reviews by visiting<span>&nbsp;</span></span><b style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">my Patreon page<span>&nbsp;</span><a href=\"https://www.patreon.com/user?u=2560582&amp;u=2560582&amp;ty=h\" target=\"_blank\" style=\"margin: 0px; padding: 0px; text-decoration: none; border: none; outline: none; color: rgb(0, 0, 0);\">HERE</a></b><br></p>', 2, '', 'peter6.jpg'),
(10, 'Insta Stories In Photoshop Ala Peter McKinnon Class New Tutorial', 'Sean McCormack', '2019-05-20 02:56:14', 'A Photoshop tutorial like Peter McKinnon', '<p><iframe width=\"480\" height=\"270\" src=\"https://www.youtube.com/embed/EGUm2mLqZ1M\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe></p><p><span style=\"color: rgb(61, 61, 61); font-family: &quot;Source Sans Pro&quot;, arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">My favourite YouTuber Peter McKinnon just put out a class new video showing how to make cool animation videos for Instagram Stories..</span></p><p><br></p><p><iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/DS8Hp4UBX1U\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe></p><p><div class=\"entry-content\" style=\"box-sizing: border-box; border: 0px; font-family: &quot;Source Sans Pro&quot;, arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; margin: 15px 0px 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(61, 61, 61); font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><p style=\"box-sizing: border-box; border: 0px; font-family: inherit; font-size: 14px; font-style: inherit; font-weight: inherit; margin: 0px 0px 20px; outline: 0px; padding: 0px; vertical-align: baseline;\">If youâ€™ve been living under a rock, go check him out. Seriously the coolest video/photo guy on YouTube.<br style=\"box-sizing: border-box;\">Anyway as part of his tutorial, he goes out to Premiere Pro from Photoshop. Hereâ€™s how to STAY in Photoshop and get it done.<br style=\"box-sizing: border-box;\">Not dissing his way-itâ€™s perfect-mucho respecto, this is just another way using the Photoshop video timeline!</p><p style=\"box-sizing: border-box; border: 0px; font-family: inherit; font-size: 14px; font-style: inherit; font-weight: inherit; margin: 0px 0px 20px; outline: 0px; padding: 0px; vertical-align: baseline;\">Follow Peters video to get the full blown details on getting them out to Insta in his tutorial.</p><p style=\"box-sizing: border-box; border: 0px; font-family: inherit; font-size: 14px; font-style: inherit; font-weight: inherit; margin: 0px 0px 20px; outline: 0px; padding: 0px; vertical-align: baseline;\">Instagram: http://ift.tt/2pIVNFP<br style=\"box-sizing: border-box;\">Twitter: http://twitter.com/lightroomblog<br style=\"box-sizing: border-box;\">Facebook: http://ift.tt/2o7IkGV</p><p style=\"box-sizing: border-box; border: 0px; font-family: inherit; font-size: 14px; font-style: inherit; font-weight: inherit; margin: 0px 0px 20px; outline: 0px; padding: 0px; vertical-align: baseline;\">Gear used for recording:<br style=\"box-sizing: border-box;\">Video Capture via El Gato Camlink â€“ Amazon UK http://amzn.to/2DCZEIg US: http://amzn.to/2rKwJAF<br style=\"box-sizing: border-box;\">(Turns the X-T2 into a super high quality webcam)<br style=\"box-sizing: border-box;\">Camera â€“ Fujifilm X-T2 Amazon UK http://amzn.to/2CS5o0B US: http://amzn.to/2DD4pS8<br style=\"box-sizing: border-box;\">Lens â€“ Fujinon 23mm f2 Amazon UK: http://amzn.to/2ng8a9c US: http://amzn.to/2FjxlPt<br style=\"box-sizing: border-box;\">Lights- Viltrox L116T run off mains for ease Amazon UK: http://amzn.to/2nf9zwA US: http://amzn.to/2GlBLGK<br style=\"box-sizing: border-box;\">Audio â€“ Superlux E205U Amazon UK http://amzn.to/2DC25uC<br style=\"box-sizing: border-box;\">Software â€“ Screenflow 7 http://amzn.to/2Ed7jyg<br style=\"box-sizing: border-box;\">Lightroom/Photoshop â€“ http://bit.ly/2ngYs6j</p><p style=\"box-sizing: border-box; border: 0px; font-family: inherit; font-size: 14px; font-style: inherit; font-weight: inherit; margin: 0px 0px 20px; outline: 0px; padding: 0px; vertical-align: baseline;\">Fuji-X Page: http://bit.ly/smccfujiX<br style=\"box-sizing: border-box;\">Shop: http://bit.ly/LRBshop</p><p style=\"box-sizing: border-box; border: 0px; font-family: inherit; font-size: 14px; font-style: inherit; font-weight: inherit; margin: 0px 0px 20px; outline: 0px; padding: 0px; vertical-align: baseline;\">DISCLAIMER:<br style=\"box-sizing: border-box;\">Sometimes I use links with an affiliate code. Using these links means I get a small commission at no extra cost to you. It helps allow me to keep making these videos. While some superstar YouTubers make a living off this, Iâ€™m only a small channel.</p><div class=\"social4i\" style=\"box', 2, '', 'peter2.png'),
(12, 'From Start to Finish â€“ Peter McKinnonâ€™s Video Production Workflow', 'Woodrow Walden', '2019-05-20 03:05:54', 'Video production workflow, vlogging', '<p style=\"margin: 0px 0px 1.74em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 15px; font-family: Roboto, Arial, sans-serif; color: rgb(59, 59, 59); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Peter McKinnon has arguably one of<span>&nbsp;</span><a href=\"https://www.youtube.com/channel/UC3DkFux8Iv-aYnTRWzwaiBA\" target=\"_blank\" rel=\"noopener\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 15px; font-family: inherit; color: rgb(30, 115, 190); text-decoration: none; transition: all 0.4s ease-in-out 0s;\">the hottest photo / video related YouTube channels</a><span>&nbsp;</span>running right now, offering a ton great of tutorials, equipment reviews and tips and tricks videos.</p><p style=\"margin: 0px 0px 1.74em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 15px; font-family: Roboto, Arial, sans-serif; color: rgb(59, 59, 59); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">In fact, Peterâ€™s YouTube channel audience has rocketed to over a million people in less than 9 months due in-part to his unique style and delivery when it comes to providing his incredibly engaging content within the photo / video world.</p><p style=\"margin: 0px 0px 1.74em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 15px; font-family: Roboto, Arial, sans-serif; color: rgb(59, 59, 59); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">In this particular video, Peter walks us step-by-step through his video production workflow, including the equipment he uses, how he lights his studio and post production including his choice of colour-grading software.</p><p style=\"margin: 0px 0px 1.74em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 15px; font-family: Roboto, Arial, sans-serif; color: rgb(59, 59, 59); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">So sit back, and watch as Peter guides you through his video production process from start to finish.</p><p style=\"margin: 0px 0px 1.74em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 15px; font-family: Roboto, Arial, sans-serif; color: rgb(59, 59, 59); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><iframe width=\"647\" height=\"364\" src=\"https://www.youtube.com/embed/blzp1mJffEU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe></p><p style=\"margin: 0px 0px 1.74em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 15px; font-family: Roboto, Arial, sans-serif; color: rgb(59, 59, 59); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><br></p>', 2, '', 'peter9.jpg'),
(15, 'How Peter McKinnon Edits His Photos', 'Peter Mckinnon', '2019-05-20 08:44:34', 'Photo editing', '<img src=\"https://4.bp.blogspot.com/-S_IjEl9tWTg/XDhV0-mxHeI/AAAAAAAAXwI/FrDd7UjVKKE_e79QUzTmtGob85zgukJfwCLcBGAs/s1600/How%2BPeter%2BMcKinnon%2Bedits%2Bhis%2Bphotos.jpg\" style=\"width: 517px; height: 291px;\"><p><br></p><p><span style=\"color: rgb(102, 102, 102); font-family: \"Open Sans\", sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">One of the things<span>Â </span></span><a href=\"https://www.iso1200.com/2017/03/my-top-5-travel-tips-for-shooting-on.html\" target=\"_blank\" style=\"margin: 0px; padding: 0px; text-decoration: none; border: none; outline: none; color: rgb(0, 0, 0); font-family: \"Open Sans\", sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">Peter McKinnon</a><span style=\"color: rgb(102, 102, 102); font-family: \"Open Sans\", sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span>Â </span>is always asked is \"How did you do that photo?\" or \"</span><a href=\"https://www.iso1200.com/2017/05/how-to-edit-incredible-landscape-photos.html\" target=\"_blank\" style=\"margin: 0px; padding: 0px; text-decoration: none; border: none; outline: 0px; color: rgb(0, 0, 0); transition: all 0.2s ease 0s; outline-offset: -2px; font-family: \"Open Sans\", sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">What\'s your editing process<span>Â </span></a><span style=\"color: rgb(102, 102, 102); font-family: \"Open Sans\", sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">?\" So, to answer your questions Peter figured he would take you through one of his photosÂ that he already posted.</span></p><p><iframe width=\"695\" height=\"391\" src=\"https://www.youtube.com/embed/Fo_7-g_Hdvc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe></p><p><i style=\"color: rgb(102, 102, 102); font-family: \"Open Sans\", sans-serif; font-size: 16px; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">It\'s also important to say, this video is kind of split between that and a lesson that is \"<b>never delete photos in camera</b>\"</i><span style=\"color: rgb(102, 102, 102); font-family: \"Open Sans\", sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><span>Â </span>- said PeterÂ -</span></p><p><br></p><p><h3 style=\"margin: 9px 0px !important; padding: 0px; text-decoration: none; border-top: 0px !important; border-right: none; border-bottom: 2px solid rgb(102, 102, 102) !important; border-left: none; border-image: initial; outline: none; font-family: \"Open Sans\", sa', 1, '', 'peter3.jpg'),
(16, 'How to Create a Stunning Bokeh Explosion at Night', 'Mathieu Stern', '2019-05-20 02:11:19', 'Tutorial about Night Photography', '<p><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">How to create nocturnal portraits with a massive explosion of Bokeh.</span></p><p><iframe width=\"695\" height=\"391\" src=\"https://www.youtube.com/embed/WKkk0Pooxds\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(242, 210, 0); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Free-lancer, I am shooting viral videos about photography, travel and many other subjects. Help me to do more cool videos reviews by visiting<span>&nbsp;</span></span><b style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: 0.16px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">my Patreon page<span>&nbsp;</span><a href=\"https://www.patreon.com/user?u=2560582&amp;u=2560582&amp;ty=h\" target=\"_blank\" style=\"margin: 0px; padding: 0px; text-decoration: none; border: none; outline: none; color: rgb(0, 0, 0);\">HERE</a></b><br></p>', 2, '', 'peter5.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articledraft`
--
ALTER TABLE `articledraft`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`art_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articledraft`
--
ALTER TABLE `articledraft`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `m_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `art_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
