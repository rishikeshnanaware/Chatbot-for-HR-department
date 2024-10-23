-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2019 at 05:53 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `emp_master`
--

CREATE TABLE `emp_master` (
  `emp_id` int(10) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `emp_email` varchar(255) NOT NULL,
  `emp_phone` int(11) NOT NULL,
  `dept_id` varchar(10) NOT NULL,
  `designation` varchar(10) NOT NULL,
  `project_id` varchar(10) DEFAULT NULL,
  `manager_id` varchar(10) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_master`
--

INSERT INTO `emp_master` (`emp_id`, `firstname`, `lastname`, `emp_email`, `emp_phone`, `dept_id`, `designation`, `project_id`, `manager_id`, `location`) VALUES
(1, 'Mahesh', 'Patil', 'mahesh12@gmail.com', 857636483, 'Mum_IT', 'Employee', NULL, '00003', 'Mumbai'),
(2, 'Himani', 'Mehta', 'himanis@gmail.com', 238384022, 'Mum_IT', 'Employee', '1A', '000003', 'Mumbai'),
(3, 'Amy', 'Jones', 'jonesa@gmail.com', 584783832, 'Mum_IT', 'manager', '1A', '', 'Mumbai'),
(4, 'Julie', 'Jonas', 'juliej@gmail.com', 784839204, 'Mum_HR', 'Employee', NULL, '00006', 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `year_attendance`
--

CREATE TABLE `year_attendance` (
  `month` varchar(10) NOT NULL,
  `emp_present` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `year_attendance`
--

INSERT INTO `year_attendance` (`month`, `emp_present`) VALUES
('Janusry', 1287),
('February', 1664),
('March', 1638),
('April', 1928),
('May', 1039),
('June', 1763),
('July', 1637),
('August', 1294),
('September', 1836),
('October', 1984),
('November', 1837),
('December', 1234);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE TABLE potato(
   emp_id    INTEGER  NOT NULL PRIMARY KEY 
  ,January   INTEGER  NOT NULL
  ,February  INTEGER  NOT NULL
  ,March     INTEGER  NOT NULL
  ,April     INTEGER  NOT NULL
  ,May       INTEGER  NOT NULL
  ,June      INTEGER  NOT NULL
  ,July      INTEGER  NOT NULL
  ,August    INTEGER  NOT NULL
  ,September INTEGER  NOT NULL
  ,October   INTEGER  NOT NULL
  ,November  INTEGER  NOT NULL
  ,December  INTEGER  NOT NULL
);
INSERT INTO mytable(emp_id,January,February,March,April,May,June,July,August,September,October,November,December) VALUES (1,8,22,16,23,0,21,2,9,27,21,11,0);
INSERT INTO mytable(emp_id,January,February,March,April,May,June,July,August,September,October,November,December) VALUES (2,15,27,19,26,21,16,30,13,25,14,16,1);
INSERT INTO mytable(emp_id,January,February,March,April,May,June,July,August,September,October,November,December) VALUES (3,26,0,17,5,27,30,27,9,11,5,14,12);
INSERT INTO mytable(emp_id,January,February,March,April,May,June,July,August,September,October,November,December) VALUES (4,4,11,24,21,28,27,18,0,21,4,0,16);
INSERT INTO mytable(emp_id,January,February,March,April,May,June,July,August,September,October,November,December) VALUES (5,20,21,3,16,19,8,26,24,8,27,23,3);
INSERT INTO mytable(emp_id,January,February,March,April,May,June,July,August,September,October,November,December) VALUES (6,24,17,13,21,27,21,18,3,20,17,25,13);
INSERT INTO mytable(emp_id,January,February,March,April,May,June,July,August,September,October,November,December) VALUES (7,0,10,16,29,2,11,5,14,25,25,18,18);
INSERT INTO mytable(emp_id,January,February,March,April,May,June,July,August,September,October,November,December) VALUES (8,19,2,27,0,17,24,19,12,29,3,8,6);
INSERT INTO mytable(emp_id,January,February,March,April,May,June,July,August,September,October,November,December) VALUES (9,0,14,2,30,3,5,5,30,16,26,23,28);
INSERT INTO mytable(emp_id,January,February,March,April,May,June,July,August,September,October,November,December) VALUES (10,24,5,1,28,8,4,7,13,17,6,25,8);
