-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2021 at 04:51 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finals`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `modified_at` datetime DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0 COMMENT '0 = not deleted; 1 = deleted',
  `deleted_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `modified_at`, `deleted`, `deleted_date`) VALUES
(1, 'test', '$2y$10$2RQrObXpNEY.C66S8mjJIeWFcQaD8stRpj063.lGdWjJwN31L9M7u', '2021-02-20 17:20:42', NULL, 0, NULL),
(2, 'blance', '$2y$10$J0NWZRbUXlgLzcByAoWAjuJ142UOT01vu5aXgrGz8Wo5Siq6HJMHm', '2021-02-27 13:07:20', NULL, 0, NULL),
(3, 'paypal', '$2y$10$.VREt2tpPzzm5J0ehQKaWu8X.dFu1i8bv3EH4NzmPJpedO.o6T.ru', '2021-02-27 14:19:06', NULL, 0, NULL),
(4, 'Mimi', '$2y$10$u0cX8Vy7ebwJHdSf2W71H.sa2zTtVWTdKTUJwMNSZrpdd1QVKseIS', '2021-03-05 19:38:53', NULL, 0, NULL),
(5, 'jamie', '$2y$10$fGS9fwtwqvGeiCH0AAbdcuqWxfC/deFwfF/73LwB6vJV/10aJjzPi', '2021-03-05 19:48:48', NULL, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
