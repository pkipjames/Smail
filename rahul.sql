-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2018 at 08:18 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rahul`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatmessage`
--

CREATE TABLE `chatmessage` (
  `MessageNo` int(11) NOT NULL,
  `MessageDate` date DEFAULT NULL,
  `MessageTime` time DEFAULT NULL,
  `ChatSessionofUserID` varchar(60) DEFAULT NULL,
  `FromUserId` varchar(60) DEFAULT NULL,
  `ToUserId` varchar(60) DEFAULT NULL,
  `Message` varchar(100) DEFAULT NULL,
  `ReadStatus` varchar(50) DEFAULT NULL,
  `chatwithuser` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatmessage`
--

INSERT INTO `chatmessage` (`MessageNo`, `MessageDate`, `MessageTime`, `ChatSessionofUserID`, `FromUserId`, `ToUserId`, `Message`, `ReadStatus`, `chatwithuser`) VALUES
(253, '2018-08-01', '14:29:04', 'rahul@smail.com', 'rahul@smail.com', 'rekha@smail.com', 'heyy', 'Unread', 'rekha@smail.com'),
(254, '2018-08-01', '14:29:04', 'rekha@smail.com', 'rahul@smail.com', 'rekha@smail.com', 'heyy', NULL, 'rahul@smail.com'),
(255, '2018-08-01', '14:30:29', 'rekha@smail.com', 'rekha@smail.com', 'sham@smail.com', 'hello', 'Unread', 'sham@smail.com'),
(256, '2018-08-01', '14:30:29', 'sham@smail.com', 'rekha@smail.com', 'sham@smail.com', 'hello', NULL, 'rekha@smail.com'),
(257, '2018-08-01', '14:30:35', 'rekha@smail.com', 'rekha@smail.com', 'sham@smail.com', 'heyy', 'Unread', 'sham@smail.com'),
(258, '2018-08-01', '14:30:35', 'sham@smail.com', 'rekha@smail.com', 'sham@smail.com', 'heyy', NULL, 'rekha@smail.com'),
(259, '2018-08-01', '14:30:45', 'rekha@smail.com', 'rekha@smail.com', 'sham@smail.com', 'how are you', 'Unread', 'sham@smail.com'),
(260, '2018-08-01', '14:30:45', 'sham@smail.com', 'rekha@smail.com', 'sham@smail.com', 'how are you', NULL, 'rekha@smail.com'),
(261, '2018-08-01', '14:33:37', 'Sham@smail.com', 'Sham@smail.com', 'rahul@smail.com', 'hello', 'Read', 'rahul@smail.com'),
(262, '2018-08-01', '14:33:37', 'rahul@smail.com', 'Sham@smail.com', 'rahul@smail.com', 'hello', NULL, 'Sham@smail.com'),
(263, '2018-08-01', '14:33:46', 'Sham@smail.com', 'Sham@smail.com', 'rahul@smail.com', 'hiii', 'Read', 'rahul@smail.com'),
(264, '2018-08-01', '14:33:46', 'rahul@smail.com', 'Sham@smail.com', 'rahul@smail.com', 'hiii', NULL, 'Sham@smail.com'),
(265, '2018-08-01', '14:33:56', 'Sham@smail.com', 'Sham@smail.com', 'mukul@smail.com', 'hiii', 'Read', 'mukul@smail.com'),
(267, '2018-08-01', '14:33:57', 'Sham@smail.com', 'Sham@smail.com', 'mukul@smail.com', 'hiii', 'Read', 'mukul@smail.com'),
(269, '2018-08-01', '14:33:57', 'Sham@smail.com', 'Sham@smail.com', 'mukul@smail.com', 'hiii', 'Read', 'mukul@smail.com'),
(272, '2018-08-27', '14:43:38', 'sham@smail.com', 'sham@smail.com', 'krishan@smail.com', 'hello', 'Unread', 'krishan@smail.com'),
(273, '2018-08-27', '14:43:38', 'krishan@smail.com', 'sham@smail.com', 'krishan@smail.com', 'hello', NULL, 'sham@smail.com'),
(274, '2018-09-26', '12:02:46', 'pranay@smail.com', 'pranay@smail.com', 'krishan@smail.com', 'hii', 'Unread', 'krishan@smail.com'),
(275, '2018-09-26', '12:02:46', 'krishan@smail.com', 'pranay@smail.com', 'krishan@smail.com', 'hii', NULL, 'pranay@smail.com'),
(276, '2018-09-26', '12:18:21', 'rahul@smail.com', 'rahul@smail.com', 'Sham@smail.com', 'hello', 'Unread', NULL),
(277, '2018-09-26', '12:18:21', 'Sham@smail.com', 'rahul@smail.com', 'Sham@smail.com', 'hello', NULL, NULL),
(278, '2018-09-26', '12:51:56', 'rahul@smail.com', 'rahul@smail.com', 'krishan@smail.com', 'hello', 'Unread', 'krishan@smail.com'),
(279, '2018-09-26', '12:51:56', 'krishan@smail.com', 'rahul@smail.com', 'krishan@smail.com', 'hello', NULL, 'rahul@smail.com'),
(280, '2018-09-27', '19:50:54', 'sham@smail.com', 'sham@smail.com', 'mukul@smail.com', 'hello', 'Read', NULL),
(281, '2018-09-27', '19:50:54', 'mukul@smail.com', 'sham@smail.com', 'mukul@smail.com', 'hello', 'Read', NULL),
(282, '2018-09-27', '19:51:19', 'sham@smail.com', 'sham@smail.com', 'mukul@smail.com', 'hello', 'Read', NULL),
(283, '2018-09-27', '19:51:19', 'mukul@smail.com', 'sham@smail.com', 'mukul@smail.com', 'hello', 'Read', NULL),
(284, '2018-09-27', '19:53:26', 'sham@smail.com', 'sham@smail.com', 'mukul@smail.com', 'hello', 'Read', NULL),
(285, '2018-09-27', '19:53:26', 'mukul@smail.com', 'sham@smail.com', 'mukul@smail.com', 'hello', 'Read', NULL),
(286, '2018-09-27', '19:59:46', 'sham@smail.com', 'sham@smail.com', 'mukul@smail.com', 'hello', 'Read', NULL),
(287, '2018-09-27', '19:59:46', 'mukul@smail.com', 'sham@smail.com', 'mukul@smail.com', 'hello', 'Read', NULL),
(288, '2018-09-27', '19:59:57', 'sham@smail.com', 'sham@smail.com', 'mukul@smail.com', 'i am goo what about you', 'Read', NULL),
(289, '2018-09-27', '19:59:57', 'mukul@smail.com', 'sham@smail.com', 'mukul@smail.com', 'i am goo what about you', 'Read', NULL),
(290, '2018-09-27', '20:00:06', 'sham@smail.com', 'sham@smail.com', 'mukul@smail.com', 'i am goo what about you', 'Read', NULL),
(291, '2018-09-27', '20:00:06', 'mukul@smail.com', 'sham@smail.com', 'mukul@smail.com', 'i am goo what about you', 'Read', NULL),
(292, '2018-09-27', '20:04:44', 'sham@smail.com', 'sham@smail.com', 'mukul@smail.com', 'hey', 'Read', NULL),
(293, '2018-09-27', '20:04:44', 'mukul@smail.com', 'sham@smail.com', 'mukul@smail.com', 'hey', 'Read', NULL),
(294, '2018-09-27', '20:04:48', 'sham@smail.com', 'sham@smail.com', 'mukul@smail.com', 'hey', 'Read', NULL),
(295, '2018-09-27', '20:04:48', 'mukul@smail.com', 'sham@smail.com', 'mukul@smail.com', 'hey', 'Read', NULL),
(296, '2018-09-27', '20:08:01', 'sham@smail.com', 'sham@smail.com', 'mukul@smail.com', 'hey', 'Read', NULL),
(297, '2018-09-27', '20:08:01', 'mukul@smail.com', 'sham@smail.com', 'mukul@smail.com', 'hey', 'Read', NULL),
(298, '2018-09-27', '20:08:22', 'sham@smail.com', 'sham@smail.com', 'mukul@smail.com', 'no', 'Read', NULL),
(299, '2018-09-27', '20:08:22', 'mukul@smail.com', 'sham@smail.com', 'mukul@smail.com', 'no', 'Read', NULL),
(300, '2018-09-27', '20:08:23', 'sham@smail.com', 'sham@smail.com', 'mukul@smail.com', 'no', 'Read', NULL),
(301, '2018-09-27', '20:08:23', 'mukul@smail.com', 'sham@smail.com', 'mukul@smail.com', 'no', 'Read', NULL),
(302, '2018-09-27', '20:08:23', 'sham@smail.com', 'sham@smail.com', 'mukul@smail.com', 'no', 'Read', NULL),
(303, '2018-09-27', '20:08:23', 'mukul@smail.com', 'sham@smail.com', 'mukul@smail.com', 'no', 'Read', NULL),
(304, '2018-09-27', '20:08:32', 'sham@smail.com', 'sham@smail.com', 'mukul@smail.com', 'no', 'Read', NULL),
(305, '2018-09-27', '20:08:32', 'mukul@smail.com', 'sham@smail.com', 'mukul@smail.com', 'no', 'Read', NULL),
(306, '2018-09-27', '20:08:41', 'sham@smail.com', 'sham@smail.com', 'mukul@smail.com', 'yes', 'Read', NULL),
(307, '2018-09-27', '20:08:41', 'mukul@smail.com', 'sham@smail.com', 'mukul@smail.com', 'yes', 'Read', NULL),
(308, '2018-09-27', '20:09:06', 'sham@smail.com', 'sham@smail.com', 'mukul@smail.com', 'kk', 'Read', NULL),
(309, '2018-09-27', '20:09:06', 'mukul@smail.com', 'sham@smail.com', 'mukul@smail.com', 'kk', 'Read', NULL),
(310, '2018-09-27', '20:10:30', 'sham@smail.com', 'sham@smail.com', 'mukul@smail.com', 'kkl;lk', 'Read', NULL),
(311, '2018-09-27', '20:10:30', 'mukul@smail.com', 'sham@smail.com', 'mukul@smail.com', 'kkl;lk', 'Read', NULL),
(312, '2018-09-27', '20:12:23', 'sham@smail.com', 'sham@smail.com', 'mukul@smail.com', 'dk', 'Read', NULL),
(313, '2018-09-27', '20:12:23', 'mukul@smail.com', 'sham@smail.com', 'mukul@smail.com', 'dk', 'Read', NULL),
(314, '2018-09-27', '20:20:34', 'sham@smail.com', 'sham@smail.com', 'mukul@smail.com', 'chacha', 'Read', NULL),
(315, '2018-09-27', '20:20:34', 'mukul@smail.com', 'sham@smail.com', 'mukul@smail.com', 'chacha', 'Read', NULL),
(316, '2018-09-27', '20:22:52', 'sham@smail.com', 'sham@smail.com', 'mukul@smail.com', 'chacha', 'Read', NULL),
(317, '2018-09-27', '20:22:52', 'mukul@smail.com', 'sham@smail.com', 'mukul@smail.com', 'chacha', 'Read', NULL),
(318, '2018-09-27', '20:23:00', 'sham@smail.com', 'sham@smail.com', 'mukul@smail.com', 'hello', 'Read', NULL),
(319, '2018-09-27', '20:23:00', 'mukul@smail.com', 'sham@smail.com', 'mukul@smail.com', 'hello', 'Read', NULL),
(320, '2018-09-28', '17:20:38', 'mukul@smail.com', 'mukul@smail.com', 'sham@smail.com', 'hello', 'Unread', 'sham@smail.com'),
(321, '2018-09-28', '17:20:38', 'sham@smail.com', 'mukul@smail.com', 'sham@smail.com', 'hello', NULL, 'mukul@smail.com'),
(322, '2018-09-29', '15:22:27', 'mukul@smail.com', 'mukul@smail.com', 'mukul@smail.com', 'hello', 'Read', NULL),
(323, '2018-09-29', '15:22:27', 'mukul@smail.com', 'mukul@smail.com', 'mukul@smail.com', 'hello', 'Read', NULL),
(324, '2018-09-29', '15:22:41', 'mukul@smail.com', 'mukul@smail.com', 'mukul@smail.com', 'hey', 'Read', NULL),
(325, '2018-09-29', '15:22:41', 'mukul@smail.com', 'mukul@smail.com', 'mukul@smail.com', 'hey', 'Read', NULL),
(343, '2018-09-30', '21:53:46', 'mukul@smail.com', 'rahul@smail.com', 'mukul@smail.com', 'haan chutiya', NULL, 'rahul@smail.com'),
(344, '2018-09-30', '21:54:00', 'rahul@smail.com', 'rahul@smail.com', 'mukul@smail.com', 'haan chutiya', 'Read', 'mukul@smail.com'),
(345, '2018-09-30', '21:54:00', 'mukul@smail.com', 'rahul@smail.com', 'mukul@smail.com', 'haan chutiya', NULL, 'rahul@smail.com');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `Status_no` int(11) DEFAULT NULL,
  `cid` varchar(100) DEFAULT NULL,
  `Comment` varchar(500) DEFAULT NULL,
  `comment_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`Status_no`, `cid`, `Comment`, `comment_no`) VALUES
(15, 'mukul@smail.com', 'nice one', 1),
(22, 'pranay@smail.com', 'bam bam bhole', 2),
(23, 'mukul@smail.com', 'nice one', 3),
(28, 'rahul@smail.com', 'jai shiv ji', 4),
(28, 'rahul@smail.com', 'jai shiv ji', 5),
(15, 'rahul@smail.com', 'Jai bhole nath', 7);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `email` varchar(30) NOT NULL,
  `C1` varchar(30) DEFAULT NULL,
  `C2` varchar(30) DEFAULT NULL,
  `C3` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`email`, `C1`, `C2`, `C3`) VALUES
('null', 'sham@smail.com', 'ram@smail.com', 'mukul@smail.com'),
('rahul@smail.com', 'sham@smail.com', 'ram@smail.com', 'rahul@smail.com'),
('sham@smail.com', 'rahul@smail.com', 'Ram@smail.com', 'Ram@smail.com'),
('suraj@smail.com', 'rahul@smail.com', 'sham@smail.com', 'Ram@smail.com');

-- --------------------------------------------------------

--
-- Table structure for table `currentuser`
--

CREATE TABLE `currentuser` (
  `id` varchar(20) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `pic` varchar(130) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currentuser`
--

INSERT INTO `currentuser` (`id`, `username`, `pic`) VALUES
('krishan@smail.com', 'krishan', 'B612_20161121_162420.jpg'),
('mukul@smail.com', 'mukul', '2016-11-30 12.17.24.jpg'),
('rahul@smail.com', 'Rahul', 'IMG_20180120_153749_Bokeh.jpg'),
('Ram@smail.com', 'Ram', '2016-11-30 12.17.43.jpg'),
('sham@smail.com', 'sham', 'B612_20161024_115453.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `EmailNo` int(11) NOT NULL,
  `EmailDate` date DEFAULT NULL,
  `FromEmailId` varchar(50) DEFAULT NULL,
  `ToEmailId` varchar(50) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Message` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`EmailNo`, `EmailDate`, `FromEmailId`, `ToEmailId`, `Subject`, `Message`) VALUES
(2, '2018-07-11', 'Sham@smail.com', 'Ram@smail.com', 'intro', 'hey how are you'),
(3, '2018-07-11', 'Sham@smail.com', 'Ram@smail.com', 'intro', 'hey how are you'),
(11, '2018-07-12', 'rahul@smail.com', 'ram@smail.com', 'hii', 'hello'),
(20, '2018-07-12', 'rahul@smail.com', 'Aman@smail.com', 'Emergency', 'I need help'),
(23, '2018-07-12', 'rahul@smail.com', 'Aman@smail.com', 'Emergency', 'I need help'),
(27, '2018-07-12', 'sham@smail.com', 'Ram@smail.com', 'Emergency', 'I need help'),
(28, '2018-07-12', 'sham@smail.com', 'Ram@smail.com', 'Emergency', 'I need help'),
(30, '2018-07-12', 'sham@smail.com', 'Ram@smail.com', 'Emergency', 'I need help'),
(31, '2018-07-12', 'sham@smail.com', 'Ram@smail.com', 'Emergency', 'I need help'),
(32, '2018-07-12', 'Sham@smail.com', 'rahul@smail.com', 'Emergency', 'I need help'),
(33, '2018-07-12', 'Sham@smail.com', 'Ram@smail.com', 'Emergency', 'I need help'),
(34, '2018-07-12', 'Sham@smail.com', 'Ram@smail.com', 'Emergency', 'I need help'),
(35, '2018-07-14', 'Sham@smail.com', 'rahul@smail.com', 'Emergency', 'I need help'),
(36, '2018-07-14', 'Sham@smail.com', 'Ram@smail.com', 'Emergency', 'I need help'),
(37, '2018-07-14', 'Sham@smail.com', 'Ram@smail.com', 'Emergency', 'I need help'),
(39, '2018-07-15', 'rahul@smail.com', 'ram@smail.com', 'Emergency', 'I need help'),
(40, '2018-07-15', 'rahul@smail.com', 'rahul@smail.com', 'Emergency', 'I need help'),
(41, '2018-07-15', 'rahul@smail.com', 'ram@smail.com', 'hello', 'how are you'),
(42, '2018-07-15', 'Sham@smail.com', 'rahul@smail.com', 'Emergency', 'I need help'),
(43, '2018-07-15', 'Sham@smail.com', 'Ram@smail.com', 'Emergency', 'I need help'),
(44, '2018-07-15', 'Sham@smail.com', 'Ram@smail.com', 'Emergency', 'I need help'),
(45, '2018-07-16', 'sham@smail.com', 'rahul@smail.com', 'Emergency', 'I am in problem .I need help'),
(46, '2018-07-16', 'sham@smail.com', 'Ram@smail.com', 'Emergency', 'I am in problem .I need help'),
(47, '2018-07-16', 'sham@smail.com', 'Ram@smail.com', 'Emergency', 'I am in problem .I need help'),
(48, '2018-07-16', 'Sham@smail.com', 'rahul@smail.com', 'Emergency', 'I am in problem .I need help'),
(49, '2018-07-16', 'Sham@smail.com', 'Ram@smail.com', 'Emergency', 'I am in problem .I need help'),
(50, '2018-07-16', 'Sham@smail.com', 'Ram@smail.com', 'Emergency', 'I am in problem .I need help'),
(51, '2018-07-20', 'mukul@smail.com', 'rahul@smail.com', 'intro', 'how are you'),
(52, '2018-07-20', 'rahul@smail.com', 'sham@smail.com', 'Emergency', 'I am in problem .I need help'),
(53, '2018-07-20', 'rahul@smail.com', 'ram@smail.com', 'Emergency', 'I am in problem .I need help'),
(54, '2018-07-20', 'rahul@smail.com', 'rahul@smail.com', 'Emergency', 'I am in problem .I need help'),
(55, '2018-07-24', 'suraj@smail.com', 'rahul@smail.com', 'hello', 'hey how are you'),
(56, '2018-07-24', 'suraj@smail.com', 'rahul@smail.com', 'Emergency', 'I am in problem .I need help'),
(57, '2018-07-24', 'suraj@smail.com', 'sham@smail.com', 'Emergency', 'I am in problem .I need help'),
(58, '2018-07-24', 'suraj@smail.com', 'Ram@smail.com', 'Emergency', 'I am in problem .I need help'),
(59, '2018-07-30', 'null', 'rahul@smail.com', 'intro', 'Hello'),
(60, '2018-09-26', 'null', 'Sham@smail.com', 'intro', 'hey this is prsnay'),
(61, '2018-09-26', 'null', 'sham@smail.com', 'Emergency', 'I am in problem .I need help'),
(62, '2018-09-26', 'null', 'ram@smail.com', 'Emergency', 'I am in problem .I need help'),
(63, '2018-09-26', 'null', 'mukul@smail.com', 'Emergency', 'I am in problem .I need help'),
(64, '2018-09-26', 'null', 'Sham@smail.com', 'introduction', 'hey'),
(65, '2018-09-26', 'null', 'pranay@smail.com', 'dbms file', 'dbms'),
(66, '2018-09-26', 'null', 'Sham@smail.com', 'hello', 'hey'),
(67, '2018-09-26', 'rahul@smail.com', 'pranay@smail.com', 'dbms file', 'dbms'),
(68, '2018-09-29', 'mukul@smail.com', 'rahul@smail.com', 'introduction', 'This is my first project'),
(69, '2018-09-30', 'rahul@smail.com', 'mukul@smail.com', 'chutia', 'thu chutiya hai'),
(70, '2018-09-30', 'null', 'sham@smail.com', 'Emergency', 'I am in problem .I need help'),
(71, '2018-09-30', 'null', 'ram@smail.com', 'Emergency', 'I am in problem .I need help'),
(72, '2018-09-30', 'null', 'mukul@smail.com', 'Emergency', 'I am in problem .I need help'),
(73, '2018-09-30', 'null', 'sham@smail.com', 'Emergency', 'I am in problem .I need help'),
(74, '2018-09-30', 'null', 'ram@smail.com', 'Emergency', 'I am in problem .I need help'),
(75, '2018-09-30', 'null', 'mukul@smail.com', 'Emergency', 'I am in problem .I need help');

-- --------------------------------------------------------

--
-- Table structure for table `emails2`
--

CREATE TABLE `emails2` (
  `EmailNo` int(11) NOT NULL,
  `EmailDate` date DEFAULT NULL,
  `FromEmailId` varchar(50) DEFAULT NULL,
  `ToEmailId` varchar(50) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Message` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emails2`
--

INSERT INTO `emails2` (`EmailNo`, `EmailDate`, `FromEmailId`, `ToEmailId`, `Subject`, `Message`) VALUES
(9, '2018-07-12', 'rahul@smail.com', 'Sham@smail.com', 'Emergency', 'I need help'),
(10, '2018-07-12', 'rahul@smail.com', 'Aman@smail.com', 'Emergency', 'I need help'),
(12, '2018-07-12', 'rahul@smail.com', 'Sham@smail.com', 'Emergency', 'I need help'),
(25, '2018-07-15', 'rahul@smail.com', 'sham@smail.com', 'Emergency', 'I need help'),
(26, '2018-07-15', 'rahul@smail.com', 'ram@smail.com', 'Emergency', 'I need help'),
(27, '2018-07-15', 'rahul@smail.com', 'rahul@smail.com', 'Emergency', 'I need help'),
(28, '2018-07-15', 'rahul@smail.com', 'ram@smail.com', 'hello', 'how are you'),
(29, '2018-07-16', 'sham@smail.com', 'rahul@smail.com', 'Emergency', 'I am in problem .I need help'),
(30, '2018-07-16', 'sham@smail.com', 'Ram@smail.com', 'Emergency', 'I am in problem .I need help'),
(31, '2018-07-16', 'sham@smail.com', 'Ram@smail.com', 'Emergency', 'I am in problem .I need help'),
(32, '2018-07-16', 'Sham@smail.com', 'rahul@smail.com', 'Emergency', 'I am in problem .I need help'),
(33, '2018-07-16', 'Sham@smail.com', 'Ram@smail.com', 'Emergency', 'I am in problem .I need help'),
(34, '2018-07-16', 'Sham@smail.com', 'Ram@smail.com', 'Emergency', 'I am in problem .I need help'),
(35, '2018-07-20', 'mukul@smail.com', 'rahul@smail.com', 'intro', 'how are you'),
(36, '2018-07-20', 'rahul@smail.com', 'sham@smail.com', 'Emergency', 'I am in problem .I need help'),
(37, '2018-07-20', 'rahul@smail.com', 'ram@smail.com', 'Emergency', 'I am in problem .I need help'),
(38, '2018-07-20', 'rahul@smail.com', 'rahul@smail.com', 'Emergency', 'I am in problem .I need help'),
(39, '2018-07-24', 'suraj@smail.com', 'rahul@smail.com', 'hello', 'hey how are you'),
(40, '2018-07-24', 'suraj@smail.com', 'rahul@smail.com', 'Emergency', 'I am in problem .I need help'),
(41, '2018-07-24', 'suraj@smail.com', 'sham@smail.com', 'Emergency', 'I am in problem .I need help'),
(42, '2018-07-24', 'suraj@smail.com', 'Ram@smail.com', 'Emergency', 'I am in problem .I need help'),
(43, '2018-07-30', 'null', 'rahul@smail.com', 'intro', 'Hello'),
(44, '2018-09-26', 'null', 'Sham@smail.com', 'intro', 'hey this is prsnay'),
(45, '2018-09-26', 'null', 'sham@smail.com', 'Emergency', 'I am in problem .I need help'),
(46, '2018-09-26', 'null', 'ram@smail.com', 'Emergency', 'I am in problem .I need help'),
(47, '2018-09-26', 'null', 'mukul@smail.com', 'Emergency', 'I am in problem .I need help'),
(48, '2018-09-26', 'null', 'Sham@smail.com', 'introduction', 'hey'),
(49, '2018-09-26', 'null', 'pranay@smail.com', 'dbms file', 'dbms'),
(50, '2018-09-26', 'null', 'Sham@smail.com', 'hello', 'hey'),
(51, '2018-09-26', 'rahul@smail.com', 'pranay@smail.com', 'dbms file', 'dbms'),
(52, '2018-09-29', 'mukul@smail.com', 'rahul@smail.com', 'introduction', 'This is my first project'),
(53, '2018-09-30', 'rahul@smail.com', 'mukul@smail.com', 'chutia', 'thu chutiya hai'),
(54, '2018-09-30', 'null', 'sham@smail.com', 'Emergency', 'I am in problem .I need help'),
(55, '2018-09-30', 'null', 'ram@smail.com', 'Emergency', 'I am in problem .I need help'),
(56, '2018-09-30', 'null', 'mukul@smail.com', 'Emergency', 'I am in problem .I need help'),
(57, '2018-09-30', 'null', 'sham@smail.com', 'Emergency', 'I am in problem .I need help'),
(58, '2018-09-30', 'null', 'ram@smail.com', 'Emergency', 'I am in problem .I need help'),
(59, '2018-09-30', 'null', 'mukul@smail.com', 'Emergency', 'I am in problem .I need help');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `status_no` int(11) NOT NULL,
  `liker_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`status_no`, `liker_id`) VALUES
(6, 'aman@smail.com'),
(6, 'mukul@smail.com'),
(6, 'Sham@smail.com'),
(7, 'aman@smail.com'),
(7, 'mukul@smail.com'),
(7, 'Sham@smail.com'),
(7, 'suraj@smail.com'),
(8, 'aman@smail.com'),
(8, 'mukul@smail.com'),
(8, 'Sham@smail.com'),
(12, 'aman@smail.com'),
(13, 'mukul@smail.com'),
(15, 'krishan@smail.com'),
(15, 'rahul@smail.com'),
(16, 'krishan@smail.com'),
(16, 'rahul@smail.com'),
(17, 'krishan@smail.com'),
(17, 'rahul@smail.com'),
(18, 'krishan@smail.com'),
(19, 'krishan@smail.com'),
(19, 'mukul@smail.com'),
(20, 'mukul@smail.com'),
(20, 'null'),
(21, 'krishan@smail.com'),
(21, 'mukul@smail.com'),
(21, 'rahul@smail.com'),
(21, 'Sham@smail.com'),
(22, 'mukul@smail.com'),
(22, 'pranay@smail.com'),
(23, 'mukul@smail.com'),
(23, 'null'),
(23, 'rahul@smail.com'),
(24, 'mukul@smail.com'),
(25, 'mukul@smail.com'),
(26, 'mukul@smail.com'),
(27, 'mukul@smail.com'),
(28, 'mukul@smail.com'),
(28, 'rahul@smail.com'),
(29, 'mukul@smail.com'),
(29, 'rahul@smail.com');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `name` varchar(30) DEFAULT NULL,
  `Photo` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`name`, `Photo`) VALUES
('rahul', 'I:\\pics\\Screenshot (2).png');

-- --------------------------------------------------------

--
-- Table structure for table `registeration`
--

CREATE TABLE `registeration` (
  `username` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Gender` char(7) DEFAULT NULL,
  `mobile_no` varchar(12) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `Registeration_no` int(11) NOT NULL,
  `photo` varchar(120) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registeration`
--

INSERT INTO `registeration` (`username`, `Password`, `Gender`, `mobile_no`, `email`, `Registeration_no`, `photo`, `country`) VALUES
('Aman', 'Aman@123', 'Male', '8950410552', 'Aman@smail.com', 27, NULL, NULL),
('krishan', 'Krishan@123', 'Male', '7808798123', 'krishan@smail.com', 33, 'B612_20161121_162420.jpg', 'INDIA'),
('mukul', 'chutiya123', 'Male', '8950410235', 'mukul@smail.com', 31, '2016-11-30 12.17.24.jpg', 'INDIA'),
('Parveen', 'Rahul@123', 'Male', '8950416785', 'p@smail.com', 29, NULL, NULL),
('pranay', 'Pranay@123', 'Male', '8956237415', 'pranay@smail.com', 34, '2016-11-30 12.17.43.jpg', 'INDIA'),
('Rahul', 'Rahul123', 'Male', '8979898095', 'Rahul@smail.com', 28, 'IMG_20180120_153749_Bokeh.jpg', NULL),
('Ram', 'Ram@1234', 'Male', '8950310672', 'Ram@smail.com', 26, '2016-11-30 12.17.43.jpg', NULL),
('Rekha', 'Rekha@123', 'Female', '9255140547', 'Rekha@smail.com', 30, 'DU.jpg', 'INDIA'),
('sham', 'Sham@123', 'Male', '8950410672', 'Sham@smail.com', 25, 'B612_20161024_115453.jpg', NULL),
('suraj', 'Rahul696', 'Male', '8754219638', 'suraj@smail.com', 32, '2016-11-30 12.17.43.jpg', 'INDIA');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` varchar(60) DEFAULT NULL,
  `status` varchar(500) DEFAULT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `status_no` int(11) NOT NULL,
  `likes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `status`, `photo`, `status_no`, `likes`) VALUES
('mukul@smail.com', 'jai bhole nath', '636dac4ff8b1898bc8edd8d0a338a69c.jpg', 15, 2),
('mukul@smail.com', 'This is my Site', '2016-11-30 12.17.43.jpg', 16, 2),
('mukul@smail.com', 'This is my Site', '2016-11-30 12.17.43.jpg', 17, 2),
('mukul@smail.com', 'jai bhole nath', '636dac4ff8b1898bc8edd8d0a338a69c.jpg', 18, 1),
('mukul@smail.com', 'jai bhole nath', '636dac4ff8b1898bc8edd8d0a338a69c.jpg', 19, 2),
('mukul@smail.com', 'jai bhole nath', '636dac4ff8b1898bc8edd8d0a338a69c.jpg', 20, 2),
('mukul@smail.com', 'This is my Site', '2016-11-30 12.17.43.jpg', 21, 4),
('pranay@smail.com', 'Jai bhole', '636dac4ff8b1898bc8edd8d0a338a69c.jpg', 22, 2),
('pranay@smail.com', 'Jai bhole', '636dac4ff8b1898bc8edd8d0a338a69c.jpg', 23, 3),
('pranay@smail.com', 'This is my Site', '2016-11-30 12.17.43.jpg', 24, 1),
('mukul@smail.com', 'jai bhole nath', '636dac4ff8b1898bc8edd8d0a338a69c.jpg', 25, 1),
('mukul@smail.com', 'Jai bhole', '636dac4ff8b1898bc8edd8d0a338a69c.jpg', 26, 1),
('mukul@smail.com', 'This is my Site', '2016-11-30 12.17.43.jpg', 27, 1),
('mukul@smail.com', 'Jai bhole', '636dac4ff8b1898bc8edd8d0a338a69c.jpg', 28, 2),
('mukul@smail.com', 'hftyhvdjyrtufhfcjhb,jhehfkurwhyipewljfhouwehuo', 'IMG_20180902_205452909_LL.jpg', 29, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatmessage`
--
ALTER TABLE `chatmessage`
  ADD PRIMARY KEY (`MessageNo`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_no`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `currentuser`
--
ALTER TABLE `currentuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`EmailNo`),
  ADD KEY `ToEmailId` (`ToEmailId`);

--
-- Indexes for table `emails2`
--
ALTER TABLE `emails2`
  ADD PRIMARY KEY (`EmailNo`),
  ADD KEY `ToEmailId` (`ToEmailId`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`status_no`,`liker_id`);

--
-- Indexes for table `registeration`
--
ALTER TABLE `registeration`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `Registeration_no` (`Registeration_no`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatmessage`
--
ALTER TABLE `chatmessage`
  MODIFY `MessageNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `EmailNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `emails2`
--
ALTER TABLE `emails2`
  MODIFY `EmailNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `registeration`
--
ALTER TABLE `registeration`
  MODIFY `Registeration_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emails`
--
ALTER TABLE `emails`
  ADD CONSTRAINT `emails_ibfk_1` FOREIGN KEY (`ToEmailId`) REFERENCES `registeration` (`email`);

--
-- Constraints for table `emails2`
--
ALTER TABLE `emails2`
  ADD CONSTRAINT `emails2_ibfk_1` FOREIGN KEY (`ToEmailId`) REFERENCES `registeration` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
