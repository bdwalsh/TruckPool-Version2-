-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 13, 2016 at 07:20 AM
-- Server version: 5.5.42
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `text`, `user_id`, `image_id`) VALUES
(1, 'test vconnebt', 4, 27),
(2, 'test sdfdfssdfdfsdfssdffsd', 4, 27),
(3, 'test sdfdfssdfdfsdfssdffsd', 4, 9),
(4, 'vcsdfvffff', 4, 9),
(5, '', 4, 9),
(6, 'Wow sick database bro', 2, 10),
(8, 'sdfsdfdsf', 2, 9),
(9, 'hiiii', 2, 9),
(11, 'hello', 2, 9),
(12, 'yayayyayayyyyyyy', 2, 10),
(13, 'sdfsdfggg', 2, 10),
(14, 'HELLO', 2, 10),
(15, 'LOL', 2, 29),
(16, 'Hahaha', 2, 29),
(17, 'So sweet', 2, 31),
(18, 'Love his music', 2, 25),
(19, 'LOl', 7, 9),
(20, 'hello', 7, 10),
(21, 'swaggy', 7, 29),
(22, 'So cool', 7, 9),
(24, '', 8, 9);

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(400) NOT NULL,
  `path` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `title`, `description`, `path`, `user_id`) VALUES
(9, 'dsfsd', 'dsfdfs', '../img/1/164b7aea572ef39ec8fb.jpg', 1),
(10, 'FHJKAH', 'djhkajkd', '../img/2/b06b749ea945dfafe0a6.jpg', 2),
(11, 'DDA', 'ADAD', '../img/2/c811a45a7944d6241663.jpg', 2),
(12, 'FAHkjjjjjjjjj', 'jjjjjjjjj', '../img/2/4f3f1c07dcb64f21000b.jpg', 2),
(25, 'Stevie Wonder', 'Stevie Wonderful', '../img/3/83d6a97fe7c64b7e4238.jpg', 3),
(27, 'Mr. Bean', 'Could it be?', '../img/4/e1f1c2e6b144b33e62bd.jpg', 4),
(29, 'Fire', 'Swag', '../img/4/f992d8e6f1f18b30150f.jpg', 4),
(31, 'LOLOLOL', 'Keeeee-yute', '../img/4/e77a45313a71abbe522f.jpg', 4),
(32, 'Willie Wonka', 'So true', '../img/4/0769c7447cbafc457c7e.jpg', 4),
(34, 'VERY NICE', 'Descriiiption', '../img/7/220eece9a07aa16c20bc.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `savedComments`
--

CREATE TABLE `savedComments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(400) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'A', 'bbbb'),
(2, 'AAA', 'AAA'),
(3, 'Roger', 'Roger'),
(4, 'Alexis', 'Alexis'),
(5, 'Alex', 'Alex'),
(6, 'Alexis', 'Alexis'),
(7, '123', '123'),
(8, 'abb', 'abb');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `image_id` (`image_id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_id` (`image_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `image_id_2` (`image_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `savedComments`
--
ALTER TABLE `savedComments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `comment_id` (`comment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `password` (`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `savedComments`
--
ALTER TABLE `savedComments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favourites`
--
ALTER TABLE `favourites`
  ADD CONSTRAINT `favourites_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favourites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
