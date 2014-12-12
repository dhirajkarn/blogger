-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 12, 2014 at 08:31 PM
-- Server version: 5.1.57-community
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blogger_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `blog_title` varchar(255) DEFAULT NULL,
  `blog_post` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blogs_on_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `blog_title`, `blog_post`, `created_at`, `updated_at`) VALUES
(12, 1, 'Third blog', '\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2013-12-27 02:29:28', '2014-01-03 13:59:37'),
(13, 2, 'Foobars Blog', '\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2013-12-27 02:30:32', '2014-01-03 14:23:05'),
(14, 1, 'worked fine', '\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2013-12-27 02:34:23', '2014-01-03 03:59:42'),
(20, 3, 'sdklfj', 'ldksfjlk', '2013-12-27 05:52:15', '2013-12-27 05:52:15'),
(21, 4, 'worked like charm', 'sdklfjslkf', '2013-10-14 05:53:44', '2013-12-27 05:53:44'),
(22, 1, 'Blogging', '\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2013-12-27 05:55:29', '2014-01-03 04:01:54'),
(23, 4, 'hi', 'there', '2013-12-27 17:33:47', '2013-12-27 17:33:47'),
(24, 4, 'good work again', 'ljklk', '2013-11-14 17:47:48', '2013-12-27 18:12:43'),
(25, 1, 'validating', '\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2013-12-28 03:48:31', '2014-01-03 04:01:26'),
(26, 1, 'hi there', '\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n', '2013-12-28 18:15:43', '2014-01-03 04:01:09'),
(27, 1, 'Checking flash', '\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2013-12-29 02:24:26', '2014-01-03 04:00:51'),
(28, 1, 'Checking flash again', '\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n', '2013-12-29 02:26:31', '2014-01-03 04:00:36'),
(29, 1, 'Routing optimization', '\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2013-12-29 02:40:23', '2014-01-03 04:00:17'),
(30, 1, 'Redirecting issues', '\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2013-12-29 02:43:14', '2014-01-03 04:00:01'),
(31, 2, 'Second Blog fm foobar', '\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2013-12-29 04:52:56', '2014-01-03 04:03:28'),
(32, 1, 'The Fear of Being Alone', 'A surprising number of people fear being alone. Maybe just about all of us do to some extent.\r\n\r\nWe fear being without a partner, or friends and family. We fear traveling alone in strange places, lost without anyone to ask for help. We fear taking on life without help, for fear of failure.\r\n\r\nThis is natural, this fear of being alone. We’ve all felt it, deep within us, though we try desperately to avoid this fear.\r\n\r\nAnd this is the cause of our misery: to avoid this fear of being alone, we will socialize endlessly, including on social networks and email. To avoid being alone, we’ll end up with someone who isn’t really good for us, just to have someone to cling to, someone to rely on. We’ll eat junk food or shop to comfort ourselves, because these things are replacements for love.\r\n\r\nBut here’s the secret: being alone is empowering. The quiet of being alone is joyful.\r\n\r\nWe tend to see aloneness as bleak, depressing, scary. But it can be seen as freeing, as an opportunity for growth, an opportunity to get to know yourself.\r\n\r\nThis is something I’ve been learning the hard way. I had the fear of aloneness for many years, but learning emotional self-sufficiency is one of the best things I’ve done.\r\n\r\nSit quietly for a minute, now, and turn inward. Who are you? What are you capable of? What do you think about?\r\n\r\nCan you accept yourself, when you look closely at yourself?\r\n\r\nCan you see the beauty in yourself, as you learn something new? As you contemplate life?\r\n\r\nThis is nothing to fear, but to celebrate. Aloneness is beauty.\r\n\r\nTraveling Through Life Alone\r\nBut isn’t it scary to travel the world alone? To go through life alone if you feel unprepared?\r\n\r\nYes, it can be scary. That’s the reason to learn to do it.\r\n\r\nDon’t know how to find your way in a strange city? Start with the place you live — get lost and find your way back. Learn to use Google Maps, then learn to find visual landmarks. Now branch out into nearby cities. Now take a trip armed with your new skills. Ask for directions. Learn to be OK with getting lost.\r\n\r\nDon’t know how to pay bills and manage your life? Start with one bill. Teach yourself life management skills one at a time. Become self-sufficient. It’s better to learn to stand on your own two feet than to have to rely on someone else. If you can be self-sufficient, then relying on someone else is an act of strength, not of weakness.\r\n\r\nDon’t know how to protect yourself? Learn to avoid bad situations. Learn to be aware of your surroundings. Learn how to get away. Learn how to defend yourself, at least enough to call for help. You’ll feel more confident in going places alone.', '2013-12-29 14:41:24', '2013-12-29 14:41:24'),
(33, 1, 'HAPPY NEW YEAR', 'Plans for the film began way back in 2005 but the project was shelved in lieu of Farah Khan''s Om Shanti Om (2007) which also featured Shah Rukh Khan. After her 2010 film Tees Maar Khan, Farah began to consider the possibilities of the film and screenwriting was completed by October 2012. The filmmaker stated that she wanted an established actress in the lead role opposite Khan. Names such as Sonakshi Sinha, Aishwarya Rai Bachchan, Parineeti Chopra and Katrina Kaif were rumoured to play the role, however Deepika Padukone was finalized, making it her third film with Shahrukh after Om Shanti Om and Chennai Express (2013). As for the lead role, Khan was the director''s first choice for the film.[2] The actor was reported to be playing the role of a con artist in the film which has Deepika in the role of a Marathi dancer. At a point, John Abraham was to play one of the supporting roles but Sonu Sood replaced him.[3] Boman Irani was confirmed by the director during an interview. In August 2013, Jackie Shroff was finalised to play the film''s antagonist.[4] The director''s brother Sajid Khan will be making a guest appearance while actress Malaika Arora Khan was also signed to appear in a cameo role.[5] Vivaan Shah will reportedly play the role of a computer hacker and also narrates the film in the first half.[6] Actor-director Prabhu Deva has performed a dance in a cameo appearance for the film.', '2014-01-01 02:48:11', '2014-01-01 02:48:11'),
(36, 1, 'RAILS 3 AJAX FILE UPLOADS WITH REMOTIPART', 'In my last article, we discussed the difficulties of file-uploads via AJAX, and how the iFrame method works around the issues to provide an AJAX-like interface for uploading files to the server.\r\n\r\nSo how does this relate to Rails?\r\n\r\nRails 3 uses Unobtrusive JavaScript for remote links and forms (and comes packaged with the jquery-ujs driver via the jquery-rails gem as of Rails 3.1!). However, because jquery-ujs relies on jQuery''s standard .ajax() function, it is incapable of doing AJAX file uploads.', '2014-01-03 13:42:44', '2014-01-03 13:42:44'),
(37, 1, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2014-01-03 13:44:48', '2014-01-03 13:44:48'),
(38, 1, 'just checkin', 'hi', '2014-01-06 05:41:07', '2014-01-06 05:41:07'),
(39, 5, 'Rails 4', 'Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. Catch up with Rails. ', '2014-12-12 14:39:38', '2014-12-12 14:39:38');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `comment_text` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_blog_id` (`blog_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `blog_id`, `name`, `comment_text`, `created_at`, `updated_at`, `email`) VALUES
(3, 32, 'Anyone', 'Anything', '2014-01-01 02:34:07', '2014-01-01 02:34:07', ''),
(5, 32, 'Anonymous', 'Same to you', '2014-01-01 02:41:38', '2014-01-01 02:41:38', ''),
(7, 21, 'Anonymous', 'Hi there', '2014-01-01 02:42:34', '2014-01-01 02:42:34', ''),
(10, 33, 'Anonymous', 'Same to evry1', '2014-01-01 02:52:07', '2014-01-01 02:52:07', ''),
(11, 33, 'Anyone', 'hi', '2014-01-01 17:09:10', '2014-01-01 17:09:10', ''),
(12, 33, 'Dhiraj', 'hey', '2014-01-01 17:18:47', '2014-01-01 17:18:47', ''),
(13, 33, 'Dhiraj', 'hey', '2014-01-01 17:19:04', '2014-01-01 17:19:04', ''),
(14, 12, 'Dhiraj', 'hi', '2014-01-01 17:19:50', '2014-01-01 17:19:50', ''),
(24, 22, 'Anonymous', 'hgjhg', '2014-01-01 17:35:33', '2014-01-01 17:35:33', ''),
(25, 22, 'gfd', 'gfd', '2014-01-01 17:35:44', '2014-01-01 17:35:44', ''),
(31, 21, 'Dhiraj', 'hi there', '2014-01-02 03:40:35', '2014-01-02 03:40:35', ''),
(40, 13, 'Anonymous', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2014-01-03 14:46:16', '2014-01-03 14:46:16', ''),
(69, 37, 'Dhiraj', 'hi', '2014-01-04 14:29:01', '2014-01-04 14:29:01', ''),
(70, 21, 'Dhiraj', 'hgkjgj', '2014-01-06 06:14:38', '2014-01-06 06:14:38', 'dhiraj.karn81@gmail.com'),
(71, 39, 'Anonymous', 'slfksjdf', '2014-12-12 14:39:51', '2014-12-12 14:39:51', 'slfkjds');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20131225141623'),
('20131225144448'),
('20131225144503'),
('20140104023059');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Dheeraj', 'Karn', 'dhiraj.karn81@gmail.com', 'dhirajkarn', '1234', '2013-12-25 15:06:42', '2013-12-28 03:46:11'),
(2, 'Foo', 'Bar', 'foo@bar.com', 'foobar', '1234', '2013-12-26 03:54:35', '2013-12-29 04:55:51'),
(3, 'Manish', 'Das', 'manish@das.com', 'manishdas', 'manish', '2013-12-27 05:26:12', '2013-12-27 05:26:12'),
(4, 'John', 'Carter', 'jon@jon.com', 'john', '1234', '2013-12-27 05:53:17', '2013-12-27 05:53:17'),
(5, 'Dhiraj', 'Karn', 'dhiraj.karn81@gmail.com', 'dhirajkarn81', 'manide', '2014-12-12 14:38:25', '2014-12-12 14:38:25');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
