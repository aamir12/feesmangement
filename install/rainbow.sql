-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2017 at 02:43 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rainbow`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `branch` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `detail` text NOT NULL,
  `delete_status` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `branch`, `address`, `detail`, `delete_status`) VALUES
(1, 'Ashoka Garden', 'Ashoka Garden', '', '0'),
(2, 'M.P. Nagar', 'M.P. Nagar', '', '1'),
(3, 'Indrapuri Bhopal', 'H-71 Indrapuri bhopal', 'N/A', '0');

-- --------------------------------------------------------

--
-- Table structure for table `fees_transaction`
--

CREATE TABLE IF NOT EXISTS `fees_transaction` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `stdid` varchar(255) NOT NULL,
  `paid` int(255) NOT NULL,
  `submitdate` datetime NOT NULL,
  `transcation_remark` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `fees_transaction`
--

INSERT INTO `fees_transaction` (`id`, `stdid`, `paid`, `submitdate`, `transcation_remark`) VALUES
(5, '2', 800, '2017-01-10 00:00:00', '200 remain'),
(6, '3', 500, '2017-01-03 00:00:00', '600 remain'),
(7, '4', 2500, '2017-01-04 00:00:00', 'N/A'),
(10, '2', 100, '2017-01-16 00:00:00', '100 rupees reamin'),
(11, '2', 100, '2017-01-16 00:00:00', ''),
(12, '5', 1000, '2017-01-15 00:00:00', '1500 rs remain '),
(13, '5', 1500, '2017-01-15 00:00:00', 'No dues clear');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `emailid` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `joindate` datetime NOT NULL,
  `about` text NOT NULL,
  `contact` varchar(255) NOT NULL,
  `fees` int(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `delete_status` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `emailid`, `sname`, `joindate`, `about`, `contact`, `fees`, `branch`, `balance`, `delete_status`) VALUES
(2, 'aamirkhan8878@gmail.com', 'aamir', '2017-01-10 00:00:00', 'web developer', '9993671019', 1000, '1', 0, '0'),
(3, 'aman1962@yahoo.com', 'aman qureshi', '2017-01-03 00:00:00', 'MCA student', '8574123695', 2100, '1', 1600, '0'),
(4, 'surajjaiswal85@gmail.com', 'suraj', '2017-01-04 00:00:00', 'B.com student', '8521475646', 2500, '2', 0, '0'),
(5, 'vinit@gmail.com', 'vinit pal', '2017-01-15 00:00:00', 'MCA Student of LNCT college', '1478523690', 2500, '3', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `lastlogin` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `emailid`, `lastlogin`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Deepak Chauhan', 'aamirkhan8878@gmail.com', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
