-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 23, 2017 at 10:41 AM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat_V1`
--

-- --------------------------------------------------------

--
-- Table structure for table `coversation`
--

CREATE TABLE `coversation` (
  `ID` int(11) NOT NULL,
  `ID_user` int(11) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coversation`
--

INSERT INTO `coversation` (`ID`, `ID_user`, `message`, `date`) VALUES
(1, 4, 'sdfqsdgqdfg', '2017-08-22 14:56:01'),
(2, 4, 'refrescando cada 5', '2017-08-22 21:03:41'),
(3, 5, 'hola', '2017-08-22 23:34:51'),
(4, 5, 'hola quetal', '2017-08-22 23:35:31'),
(5, 4, 'HOLA CARINE', '2017-08-22 23:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `memberID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `active` varchar(255) NOT NULL,
  `resetToken` varchar(255) DEFAULT NULL,
  `resetComplete` varchar(3) DEFAULT 'No',
  `image` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`memberID`, `username`, `password`, `email`, `active`, `resetToken`, `resetComplete`, `image`) VALUES
(1, 'santy', '$2y$10$YUhntpqPqP6o6osf4Qrd1u0btASGKRE2zF/MRc8.2ALcOY2Jqk1gm', 'sastetec@hotmail.com', '7c69b7b068aa388db3a57505646dbf80', NULL, 'No', ''),
(2, 'guest', 'hola', 'guest@hotmail.com', 'yes', NULL, 'No', ''),
(3, 'jordi', 'hallo', 'jordi@hotmail.com', 'yes', NULL, 'No', ''),
(4, 'demo', 'HALLO', 'demo@hotmail.COM', 'yes', NULL, 'No', 'vleeracute.png'),
(5, 'carine', 'hello', 'carine@hotmail.com', 'yes', NULL, 'No', 'widowmakercute.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `alias` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bloqued` tinyint(1) NOT NULL DEFAULT '1',
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `fullname`, `alias`, `email`, `bloqued`, `password`) VALUES
(1, 'santi astete', 'santy', 'sastetec@hotmail.com', 1, 'hello');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coversation`
--
ALTER TABLE `coversation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`memberID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coversation`
--
ALTER TABLE `coversation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `memberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
