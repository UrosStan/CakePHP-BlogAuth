-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2021 at 08:47 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cakephpapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created`, `modified`, `user_id`) VALUES
(1, 'The title', 'This is the post body.', '2021-02-26 19:24:23', NULL, NULL),
(2, 'A title once again', 'And the post body follows.', '2021-02-26 19:24:23', NULL, NULL),
(3, 'Title strikes back', 'This is really exciting! Not.', '2021-02-26 19:24:23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created`, `modified`) VALUES
(2, 'admin', '$2a$10$7HWs3N2GRRUOdtfw6sHIU.PkMjZ7BdPh8XiVXNPd16S0z9LEvy/Dq', 'admin', '2021-02-27 19:04:12', '2021-02-27 19:04:12'),
(3, 'uros', '$2a$10$2Zjy5cp0T.nCtznm0tRvteErWanPV85wt6DjtnOupWuYCfgIqt1TO', 'author', '2021-02-27 19:13:05', '2021-02-27 19:13:05'),
(4, 'pavle', '$2a$10$N44yh8acBV3x.YNrx5qtnON145rD5QZUE9LtAOODNeONkV4Qaqf3K', 'admin', '2021-02-27 20:13:14', '2021-02-27 20:13:14'),
(5, 'cile', '$2a$10$r3WM80EIHHOK1zocw.ducu.46RgtBPKJ8/9wFqp90cloa9p/JR3Bu', 'author', '2021-02-27 20:16:02', '2021-02-27 20:16:02'),
(6, 'bura', '$2a$10$4Fc4sVB6nd3U6PVUCV7K4OlcFx0dnDyuiIbVTWfPHD1/R26b394ce', 'author', '2021-02-27 20:16:49', '2021-02-27 20:16:49'),
(7, 'urp', '$2a$10$2RBX12WmQ1B2HhM.S/.iOum37CO5.Sp2UpWynkUyYf1zZ4zuoEN6O', 'author', '2021-02-27 20:20:54', '2021-02-27 20:20:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
