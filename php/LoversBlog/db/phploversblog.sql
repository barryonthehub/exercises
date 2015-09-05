-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 24, 2015 at 12:32 PM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phploversblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'News'),
(2, 'Events'),
(3, 'Tutorials'),
(4, 'Misc');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
`id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category`, `title`, `body`, `author`, `tags`, `date`) VALUES
(1, 1, 'International PHP Conference 2015', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sodales, dui vitae pharetra hendrerit, dui erat dapibus arcu, at scelerisque justo tortor quis ipsum. Curabitur sollicitudin vestibulum risus, ac malesuada arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris semper lectus felis, dapibus vestibulum elit egestas at. Phasellus rutrum nec tellus vitae posuere. Mauris semper lacinia risus, id bibendum tellus accumsan efficitur. Phasellus magna ligula, egestas a consequat ac, sodales vel purus. Cras a lorem nec erat volutpat blandit. Praesent condimentum, lectus in ultricies feugiat, lectus ligula scelerisque nibh, sed laoreet quam urna non quam.\r\n\r\nPraesent nec luctus turpis. Integer placerat nisi at dui ullamcorper imperdiet. Duis ante leo, facilisis at porta sit amet, scelerisque viverra mauris. Nulla dui turpis, sodales et ultricies non, congue vitae metus. Suspendisse luctus odio ac tortor finibus tincidunt. Aliquam hendrerit risus vel enim dapibus, a tristique dolor pellentesque. Phasellus felis ante, finibus at tempus et, feugiat ac ligula. Suspendisse vel magna nibh. Vestibulum sed tempor nibh.\r\n\r\nDonec semper tellus at tincidunt sodales. Donec eget est justo. In id augue in sem malesuada luctus et non dui. Quisque ornare, mauris quis hendrerit sodales, eros ante malesuada ex, in euismod enim lorem tristique nulla. Pellentesque in ante lacus. In scelerisque hendrerit mi dictum blandit. In at ante mattis, scelerisque nisi nec, fermentum ipsum. Pellentesque tempor metus vitae felis cursus, eu dictum enim feugiat.', 'Barry', 'php news, php events', '2015-01-23 14:41:57'),
(2, 1, 'PHP 5.6.0beta4 Released', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sodales, dui vitae pharetra hendrerit, dui erat dapibus arcu, at scelerisque justo tortor quis ipsum. Curabitur sollicitudin vestibulum risus, ac malesuada arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris semper lectus felis, dapibus vestibulum elit egestas at. Phasellus rutrum nec tellus vitae posuere. Mauris semper lacinia risus, id bibendum tellus accumsan efficitur. Phasellus magna ligula, egestas a consequat ac, sodales vel purus. Cras a lorem nec erat volutpat blandit. Praesent condimentum, lectus in ultricies feugiat, lectus ligula scelerisque nibh, sed laoreet quam urna non quam.\r\n\r\nPraesent nec luctus turpis. Integer placerat nisi at dui ullamcorper imperdiet. Duis ante leo, facilisis at porta sit amet, scelerisque viverra mauris. Nulla dui turpis, sodales et ultricies non, congue vitae metus. Suspendisse luctus odio ac tortor finibus tincidunt. Aliquam hendrerit risus vel enim dapibus, a tristique dolor pellentesque. Phasellus felis ante, finibus at tempus et, feugiat ac ligula. Suspendisse vel magna nibh. Vestibulum sed tempor nibh.\r\n\r\nDonec semper tellus at tincidunt sodales. Donec eget est justo. In id augue in sem malesuada luctus et non dui. Quisque ornare, mauris quis hendrerit sodales, eros ante malesuada ex, in euismod enim lorem tristique nulla. Pellentesque in ante lacus. In scelerisque hendrerit mi dictum blandit. In at ante mattis, scelerisque nisi nec, fermentum ipsum. Pellentesque tempor metus vitae felis cursus, eu dictum enim feugiat.', 'Reetta', 'php, php release, php 5.6', '2015-01-23 14:41:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
