-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2018 at 09:17 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carpull`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(6) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_phone` varchar(100) NOT NULL,
  `register` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_password`, `admin_phone`, `register`) VALUES
(1, 'admin', '5683', '01707080401', '2018-10-10 14:34:58');

-- --------------------------------------------------------

--
-- Table structure for table `car_booking`
--

CREATE TABLE `car_booking` (
  `booking_id` int(20) NOT NULL,
  `car_id` varchar(100) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `car_name` varchar(100) NOT NULL,
  `car_number` varchar(100) NOT NULL,
  `car_img` varchar(255) NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `end_date` varchar(100) NOT NULL,
  `location` varchar(255) NOT NULL,
  `day_count` varchar(50) NOT NULL,
  `boking_status` varchar(20) NOT NULL,
  `booking_cost` varchar(100) NOT NULL,
  `driver_rating` varchar(50) NOT NULL,
  `driver_id` varchar(20) NOT NULL,
  `start_mileage` varchar(50) NOT NULL,
  `end_mileage` varchar(50) NOT NULL,
  `reg_date_booking` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_booking`
--

INSERT INTO `car_booking` (`booking_id`, `car_id`, `user_id`, `user_name`, `car_name`, `car_number`, `car_img`, `start_date`, `end_date`, `location`, `day_count`, `boking_status`, `booking_cost`, `driver_rating`, `driver_id`, `start_mileage`, `end_mileage`, `reg_date_booking`) VALUES
(4, '16', '1', 'saif', 'Suzuki', '005', 'ddd (2).jpg', '2018-10-13', '2018-10-15', 'Trisal', '', '1', '1050', '5', '', '4051', '4650', '2018-10-28 06:56:26.604921'),
(6, '16', '2', 'saif', 'Suzuki', '005', 'ddd (2).jpg', '2018-10-13', '2018-10-17', 'Valuka', '', '1', '1050', '', '', '', '', '2018-10-28 06:56:26.604921'),
(8, '16', '1', 'saif', 'Suzuki', '005', 'ddd (2).jpg', '2018-10-12', '2018-10-13', 'Savar', '', '1', '1050', '6', '', '5012', '6021', '2018-10-28 06:56:26.604921'),
(10, '14', '1', 'saif', 'Toyota', '003', 'ddd (1).jpg', '2018-10-15 09:00:00', '2018-10-16 9:30:00', 'Mymenshingh', '', '0', '750', '8', '', '1204', '1354', '2018-10-28 06:56:54.722956'),
(11, '14', '1', 'saif', 'Toyota', '003', 'ddd (1).jpg', '2018-10-16 12:00:00', '2018-10-18 15:00:00', 'Dhaka', '', '1', '1050', '9', '', '4325', '4452', '2018-10-28 06:56:26.604921'),
(18, '19', '1', 'saif', 'Toyota Probox', '002', 'ertyrey.jpg', '2018-10-02 00:00:00', '2018-10-05 00:00:00', 'valuka3', '', '', '1050', '8', '14', '7089', '7895', '2018-10-28 08:32:27.887450'),
(19, '19', '1', 'saif', 'Toyota Probox', '002', 'ertyrey.jpg', '2018-10-12 00:00:00', '2018-10-14 00:00:00', 'savar ', '', '1', '1050', '8', '14', '1265', '1356', '2018-10-29 11:28:31.344383'),
(20, '19', '1', 'saif', 'Toyota Probox', '002', 'ertyrey.jpg', '2018-10-17 06:00:00', '2018-10-17 12:00:00', 'Bogura', '', '1', '1050', '6', '14', '1234', '1345', '2018-10-29 11:28:54.092528'),
(21, '17', '1', 'saif', 'Nissan 2', '001', 'rewre.jpg', '2018-10-17 00:00:00', '2018-10-18 00:00:00', 'Dhaka', '2', '1', '1050', '6', '12', '12345', '23455', '2018-10-29 11:29:22.797270'),
(22, '19', '1', 'saif', 'Toyota Probox', '002', 'ertyrey.jpg', '2018-10-18 01:00:00', '2018-10-22 23:59:00', 'hhhhhhhh', '5', '1', '1050', '9', '14', '4582', '4652', '2018-10-29 11:29:40.956132'),
(23, '14', '1', 'saif', 'Toyota', '003', 'ddd (1).jpg', '2018-11-01 01:00:00', '2018-11-03 23:59:00', 'sssssss', '4', '1', '1050', '9', '11', '4056', '5356', '2018-10-29 10:54:34.884540'),
(27, '14', '1', 'saif', 'Toyota', '003', 'ddd (1).jpg', '2018-10-23 01:00:00', '2018-10-23 23:59:00', 'Mymenshingh', '3', '1', '1250', '9', '11', '1234', '2345', '2018-10-29 11:30:00.309020'),
(28, '14', '1', 'saif', 'Toyota', '003', 'ddd (1).jpg', '2018-11-14 01:00:00', '2018-11-15 23:59:00', 'Valuka', '2', '0', '1050', '9', '11', '2345', '3452', '2018-10-29 11:31:15.343706'),
(29, '14', '1', 'saif', 'Toyota', '003', 'ddd (1).jpg', '2018-10-01 00:00:00', '2018-10-04 00:00:00', 'gggg', '', '1', '1050', '9', '11', '3512', '3652', '2018-10-29 11:30:17.884409'),
(30, '14', '1', 'saif', 'Toyota', '003', 'ddd (1).jpg', '2018-10-04 00:00:00', '2018-10-05 00:00:00', 'ddddddddd', '', '1', '1050', '9', '11', '1234', '2341', '2018-10-29 11:30:48.157678'),
(31, '14', '1', 'saif', 'Toyota', '003', 'ddd (1).jpg', '2018-10-05 00:00:00', '2018-10-06 00:00:00', 'ssssss', '', '1', '870', '8', '11', '4578', '4689', '2018-10-29 12:15:07.689775'),
(32, '14', '1', 'saif', 'Toyota', '003', 'ddd (1).jpg', '2018-10-10 00:00:00', '2018-10-11 00:00:00', 'gggg', '', '0', '1050', '9', '11', '', '', '2018-10-29 12:40:38.654613'),
(33, '14', '1', 'saif', 'Toyota', '003', 'ddd (1).jpg', '2018-10-12 00:00:00', '2018-10-13 00:00:00', 'valuka', '', '1', '1050', '7', '11', '4567', '5683', '2018-10-29 12:41:36.851211'),
(34, '14', '1', 'saif', 'Toyota', '003', 'ddd (1).jpg', '2018-10-20 00:00:00', '2018-10-21 00:00:00', 'Dhaka', '', '1', '1050', '5', '', '', '', '2018-10-28 06:58:14.645241'),
(35, '14', '1', 'saif', 'Toyota', '003', 'ddd (1).jpg', '2018-11-04 00:00:00', '2018-11-06 00:00:00', 'ttttttttt', '', '1', '1050', '8', '11', '1245', '1356', '2018-10-29 10:37:48.663937'),
(36, '14', '1', 'saif', 'Toyota', '003', 'ddd (1).jpg', '2018-10-24 00:00:00', '2018-10-25 00:00:00', 'ffffff', '', '1', '1050', '10', '', '', '', '2018-10-28 06:56:26.604921'),
(37, '14', '1', 'saif', 'Toyota', '003', 'ddd (1).jpg', '2018-10-25 00:00:00', '2018-10-26 00:00:00', 'Mymenshingh', '', '0', '1050', '', '', '7820', '', '2018-10-28 06:57:55.308110'),
(38, '16', '1', 'saif', 'Suzuki', '005', 'ddd (2).jpg', '2018-10-24 06:00:00', '2018-10-24 12:30:00', 'savar', '0', '1', '1050', '', '', '', '', '2018-10-28 06:56:26.604921'),
(39, '16', '1', 'saif', 'Suzuki', '005', 'ddd (2).jpg', '2018-10-01 00:00:00', '2018-10-04 00:00:00', 'Valuka', '3', '1', '1050', '', '', '', '', '2018-10-29 11:16:01.991801'),
(41, '14', '1', 'saif', 'Toyota', '003', 'ddd (1).jpg', '2018-10-27 06:00:00', '2018-10-27 10:00:00', 'savar', '0', '1', '1050', '', '', '', '', '2018-10-28 06:56:26.604921'),
(45, '14', '4', 'rana', 'Toyota', '003', 'ddd (1).jpg', '2018-10-29 01:00:00', '2018-10-29 23:59:00', 'Mymensingh', '1', '1', '780', '8', '11', '4567', '5642', '2018-10-31 06:16:48.859903'),
(46, '16', '4', 'rana', 'Suzuki', '005', 'ddd (2).jpg', '2018-11-03 01:00:00', '2018-11-04 24:00:00', 'Mymensingh', '2', '1', '1478', '8', '1', '5682', '6932', '2018-10-31 06:17:32.102901'),
(47, '19', '4', 'rana', 'Toyota Probox', '002', 'ertyrey.jpg', '2018-11-01 01:00:00', '2018-11-02 23:59:00', 'Mymensingh', '2', '1', '2588', '6', '', '5682', '6935', '2018-10-31 06:17:55.530198'),
(48, '17', '4', 'rana', 'Nissan 2', '001', 'rewre.jpg', '2018-11-01 01:00:00', '2018-11-02 23:59:00', 'valuka', '2', '1', '', '', '', '', '', '2018-10-29 10:53:50.137837'),
(49, '16', '4', 'rana', 'Suzuki', '005', 'ddd (2).jpg', '2018-10-29 01:00:00', '2018-10-31 23:59:00', 'Select Location', '3', '1', '', '', '', '', '', '2018-10-29 10:55:44.851578'),
(50, '16', '4', 'rana', 'Suzuki', '005', 'ddd (2).jpg', '2018-11-06 01:00:00', '2018-11-07 23:59:00', 'Mymensingh', '2', '1', '', '', '', '', '', '2018-10-30 09:43:41.687666');

-- --------------------------------------------------------

--
-- Table structure for table `car_driver`
--

CREATE TABLE `car_driver` (
  `driver_id` int(20) NOT NULL,
  `car_id` int(6) NOT NULL,
  `driver_name` varchar(100) NOT NULL,
  `driver_phone` varchar(50) NOT NULL,
  `driver_img` varchar(255) NOT NULL,
  `driver_license` varchar(100) NOT NULL,
  `driver_nid` varchar(100) NOT NULL,
  `driver_status` varchar(20) NOT NULL,
  `driver_update` varchar(50) NOT NULL,
  `driver_reg` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_driver`
--

INSERT INTO `car_driver` (`driver_id`, `car_id`, `driver_name`, `driver_phone`, `driver_img`, `driver_license`, `driver_nid`, `driver_status`, `driver_update`, `driver_reg`) VALUES
(1, 16, 'Belal', '01707080401', 'driver2.png', '65448161', '25525826522', '1', '', '2018-10-28 03:22:15.785468'),
(11, 14, 'Rahim', '01707080401', 'Driver Default.jpg', '644444444', '2552582652258888', '1', '', '2018-10-17 05:37:55.848103'),
(12, 17, 'Hadi', '1707080401', 'driver2.png', '5689586521', '199235689548', '1', '', '2018-10-17 06:08:20.287857');

-- --------------------------------------------------------

--
-- Table structure for table `chart_info`
--

CREATE TABLE `chart_info` (
  `chart_id` int(6) NOT NULL,
  `year` varchar(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `carName_number` varchar(100) NOT NULL,
  `booking_days` varchar(50) NOT NULL,
  `chart_reg` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chart_info`
--

INSERT INTO `chart_info` (`chart_id`, `year`, `month`, `carName_number`, `booking_days`, `chart_reg`) VALUES
(1, '2018', 'january', 'Toyta-003', '5', '0000-00-00 00:00:00.000000'),
(2, '2018', 'february', 'sujuki-002', '3', '0000-00-00 00:00:00.000000'),
(3, '2018', 'march', 'Toyta2-0034', '5', '2018-10-22 05:28:31.152809'),
(4, '2018', 'february', 'sujuki2-0022', '4', '2018-10-22 05:28:50.754792'),
(5, '2016', 'march', 'Toyta2-0034', '5', '2018-10-22 05:28:31.152809'),
(6, '2017', 'march', 'Toyta2-0034', '5', '2018-10-22 05:28:31.152809');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(6) NOT NULL,
  `location` varchar(250) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `location`, `regDate`) VALUES
(1, 'valuka', '2018-10-28 09:00:19'),
(2, 'Savar', '2018-10-28 09:00:19'),
(3, 'Mymensingh', '2018-10-28 09:00:59'),
(5, 'Dhaka', '2018-10-28 09:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `loginlog`
--

CREATE TABLE `loginlog` (
  `login_id` int(6) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `user_ip` varchar(100) NOT NULL,
  `user_os` varchar(50) NOT NULL,
  `user_browser` varchar(50) NOT NULL,
  `user_device` varchar(100) NOT NULL,
  `user_status` varchar(6) NOT NULL,
  `logIn` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `logOut` varchar(100) NOT NULL,
  `regsistration` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginlog`
--

INSERT INTO `loginlog` (`login_id`, `user_name`, `user_id`, `user_ip`, `user_os`, `user_browser`, `user_device`, `user_status`, `logIn`, `logOut`, `regsistration`) VALUES
(1, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-10 04:27:17.392867', '', '2018-10-10 04:27:17.392867'),
(2, 'saif', '2', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '0', '2018-10-10 04:48:17.302172', '', '2018-10-10 04:48:17.302172'),
(3, 'sagor', '', '::1', 'Windows 10', 'Firefox', 'Computer', '', '2018-10-10 04:52:41.439459', '', '2018-10-10 04:52:41.439459'),
(4, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-10 04:53:45.914730', '', '2018-10-10 04:53:45.914730'),
(5, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-10 06:20:12.999196', '', '2018-10-10 06:20:12.999196'),
(6, 'dfhgfh', '', '::1', 'Windows 10', 'Firefox', 'Computer', '', '2018-10-10 06:36:16.369241', '', '2018-10-10 06:36:16.369241'),
(7, 'dfhgfh', '', '::1', 'Windows 10', 'Firefox', 'Computer', '', '2018-10-10 06:37:17.137601', '', '2018-10-10 06:37:17.137601'),
(8, 'dfhgfh', '', '::1', 'Windows 10', 'Firefox', 'Computer', '', '2018-10-10 06:39:21.336592', '', '2018-10-10 06:39:21.336592'),
(9, 'dfhgfh', '', '::1', 'Windows 10', 'Firefox', 'Computer', '', '2018-10-10 06:41:06.841970', '', '2018-10-10 06:41:06.841970'),
(10, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-10 06:43:15.752006', '', '2018-10-10 06:43:15.752006'),
(11, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-10 06:45:24.473772', '', '2018-10-10 06:45:24.473772'),
(12, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Computer', '', '2018-10-10 06:46:03.709164', '', '2018-10-10 06:46:03.709164'),
(13, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Computer', '', '2018-10-10 06:47:24.871499', '', '2018-10-10 06:47:24.871499'),
(14, 'saif', '2', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '0', '2018-10-10 06:49:30.850735', '', '2018-10-10 06:49:30.850735'),
(15, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-10 06:49:53.094087', '', '2018-10-10 06:49:53.094087'),
(16, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-10 08:31:06.314451', '', '2018-10-10 08:31:06.314451'),
(17, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-10 13:32:57.006730', '', '2018-10-10 13:32:57.006730'),
(18, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-10 13:41:11.544715', '', '2018-10-10 13:41:11.544715'),
(19, '', '', '::1', 'Windows 10', 'Firefox', 'Computer', '', '2018-10-10 15:37:22.379152', '', '2018-10-10 15:37:22.379152'),
(20, '', '', '::1', 'Windows 10', 'Firefox', 'Computer', '', '2018-10-10 15:39:10.186404', '', '2018-10-10 15:39:10.186404'),
(21, '', '', '::1', 'Windows 10', 'Firefox', 'Computer', '', '2018-10-10 15:39:37.982944', '', '2018-10-10 15:39:37.982944'),
(22, '', '', '::1', 'Windows 10', 'Firefox', 'Computer', '', '2018-10-10 15:43:43.348284', '', '2018-10-10 15:43:43.348284'),
(23, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Computer', '', '2018-10-10 15:51:09.807082', '', '2018-10-10 15:51:09.807082'),
(24, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Computer', '', '2018-10-10 16:10:09.274452', '', '2018-10-10 16:10:09.274452'),
(25, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Computer', '', '2018-10-10 16:10:14.111127', '', '2018-10-10 16:10:14.111127'),
(26, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Computer', '', '2018-10-10 16:11:11.258798', '', '2018-10-10 16:11:11.258798'),
(27, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-10 16:18:13.830130', '', '2018-10-10 16:18:13.830130'),
(28, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-10 16:27:21.001178', '', '2018-10-10 16:27:21.001178'),
(29, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-10 16:32:26.293379', '', '2018-10-10 16:32:26.293379'),
(30, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-10 16:34:51.541681', '', '2018-10-10 16:34:51.541681'),
(31, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-11 04:57:59.580965', '', '2018-10-11 04:57:59.580965'),
(32, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-11 06:42:26.590957', '', '2018-10-11 06:42:26.590957'),
(33, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-11 08:28:38.343218', '', '2018-10-11 08:28:38.343218'),
(34, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-11 09:09:21.515237', '', '2018-10-11 09:09:21.515237'),
(35, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-11 11:15:29.531521', '', '2018-10-11 11:15:29.531521'),
(36, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-11 11:17:36.600340', '', '2018-10-11 11:17:36.600340'),
(37, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-11 11:23:23.091045', '', '2018-10-11 11:23:23.091045'),
(38, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-11 11:33:32.021708', '', '2018-10-11 11:33:32.021708'),
(39, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-it', '', '2018-10-12 03:58:55.559197', '', '2018-10-12 03:58:55.559197'),
(40, 'user@gmail.com', '', '::1', 'Windows 10', 'Firefox', 'Computer', '', '2018-10-12 04:09:24.597295', '', '2018-10-12 04:09:24.597295'),
(41, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-it', '1', '2018-10-12 04:09:35.701301', '', '2018-10-12 04:09:35.701301'),
(42, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-it', '1', '2018-10-12 06:22:12.347657', '', '2018-10-12 06:22:12.347657'),
(43, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-it', '', '2018-10-12 13:57:56.307756', '', '2018-10-12 13:57:56.307756'),
(44, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-it', '', '2018-10-12 14:30:55.001748', '', '2018-10-12 14:30:55.001748'),
(45, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '0', '2018-10-13 02:56:39.473542', '', '2018-10-13 02:56:39.473542'),
(46, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-13 02:57:17.735876', '', '2018-10-13 02:57:17.735876'),
(47, 'user', '1', '::1', 'Windows 10', 'Chrome', 'Syful-IT', '1', '2018-10-13 02:58:00.627263', '', '2018-10-13 02:58:00.627263'),
(48, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-13 03:02:30.142774', '', '2018-10-13 03:02:30.142774'),
(49, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-13 04:55:47.886549', '', '2018-10-13 04:55:47.886549'),
(50, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-13 04:55:57.653829', '', '2018-10-13 04:55:57.653829'),
(51, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '0', '2018-10-13 05:27:33.799147', '', '2018-10-13 05:27:33.799147'),
(52, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-13 05:27:51.584181', '', '2018-10-13 05:27:51.584181'),
(53, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-13 05:28:26.458580', '', '2018-10-13 05:28:26.458580'),
(54, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-13 06:11:23.905824', '', '2018-10-13 06:11:23.905824'),
(55, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-13 06:21:29.436578', '', '2018-10-13 06:21:29.436578'),
(56, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-13 06:30:31.845797', '', '2018-10-13 06:30:31.845797'),
(57, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-14 06:17:40.144781', '', '2018-10-14 06:17:40.144781'),
(58, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-14 11:35:09.024776', '', '2018-10-14 11:35:09.024776'),
(59, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-14 14:20:20.379203', '', '2018-10-14 14:20:20.379203'),
(60, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-14 14:22:24.036845', '', '2018-10-14 14:22:24.036845'),
(61, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-14 14:25:39.967437', '', '2018-10-14 14:25:39.967437'),
(62, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-15 04:25:58.320802', '', '2018-10-15 04:25:58.320802'),
(63, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-15 05:36:15.168380', '', '2018-10-15 05:36:15.168380'),
(64, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-15 05:40:14.516620', '', '2018-10-15 05:40:14.516620'),
(65, 'saif', '', '::1', 'Windows 10', 'Firefox', 'Computer', '', '2018-10-15 06:30:41.418901', '', '2018-10-15 06:30:41.418901'),
(66, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-15 06:30:49.592259', '', '2018-10-15 06:30:49.592259'),
(67, 'user', '1', '::1', 'Windows 10', 'Chrome', 'Syful-IT', '1', '2018-10-15 08:31:50.181695', '', '2018-10-15 08:31:50.181695'),
(68, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-15 08:42:34.439478', '', '2018-10-15 08:42:34.439478'),
(69, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-15 10:23:25.835189', '', '2018-10-15 10:23:25.835189'),
(70, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-15 10:25:09.681125', '', '2018-10-15 10:25:09.681125'),
(71, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-16 03:06:37.067646', '', '2018-10-16 03:06:37.067646'),
(72, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-16 05:54:57.028358', '', '2018-10-16 05:54:57.028358'),
(73, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-16 07:00:50.460118', '', '2018-10-16 07:00:50.460118'),
(74, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-16 09:35:02.719763', '', '2018-10-16 09:35:02.719763'),
(75, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-17 01:13:16.164214', '', '2018-10-17 01:13:16.164214'),
(76, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-17 02:26:31.483226', '', '2018-10-17 02:26:31.483226'),
(77, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-17 03:37:50.038041', '', '2018-10-17 03:37:50.038041'),
(78, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-17 03:44:23.354250', '', '2018-10-17 03:44:23.354250'),
(79, 'admin', '', '::1', 'Windows 10', 'Chrome', 'Syful-IT', '', '2018-10-17 04:16:30.191549', '', '2018-10-17 04:16:30.191549'),
(80, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-18 09:20:22.021938', '', '2018-10-18 09:20:22.021938'),
(81, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-18 11:35:42.505944', '', '2018-10-18 11:35:42.505944'),
(82, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-21 06:43:44.491971', '', '2018-10-21 06:43:44.491971'),
(83, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-21 08:12:16.688595', '', '2018-10-21 08:12:16.688595'),
(84, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-21 10:56:31.514850', '', '2018-10-21 10:56:31.514850'),
(85, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-22 02:48:11.831781', '', '2018-10-22 02:48:11.831781'),
(86, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-22 11:15:42.696072', '', '2018-10-22 11:15:42.696072'),
(87, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-23 06:53:41.437644', '', '2018-10-23 06:53:41.437644'),
(88, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-23 09:01:52.502472', '', '2018-10-23 09:01:52.502472'),
(89, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-23 09:40:02.083198', '', '2018-10-23 09:40:02.083198'),
(90, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-23 09:45:08.050654', '', '2018-10-23 09:45:08.050654'),
(91, 'user', '1', '::1', 'Windows 10', 'Chrome', 'Syful-IT', '1', '2018-10-24 02:54:04.678289', '', '2018-10-24 02:54:04.678289'),
(92, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-24 02:58:43.436639', '', '2018-10-24 02:58:43.436639'),
(93, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-24 06:11:12.882179', '', '2018-10-24 06:11:12.882179'),
(94, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-24 08:59:13.772344', '', '2018-10-24 08:59:13.772344'),
(95, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-25 03:28:00.488290', '', '2018-10-25 03:28:00.488290'),
(96, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-25 04:40:48.638203', '', '2018-10-25 04:40:48.638203'),
(97, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-25 09:19:09.284018', '', '2018-10-25 09:19:09.284018'),
(98, 'user', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-25 14:32:54.103478', '', '2018-10-25 14:32:54.103478'),
(99, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-25 15:00:34.862705', '', '2018-10-25 15:00:34.862705'),
(100, 'saif', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-27 02:46:27.535072', '', '2018-10-27 02:46:27.535072'),
(101, 'admin', '', '::1', 'Windows 10', 'Chrome', 'Syful-IT', '', '2018-10-27 02:47:18.598287', '', '2018-10-27 02:47:18.598287'),
(102, 'user', '', '::1', 'Windows 10', 'Firefox', 'Computer', '', '2018-10-27 04:56:41.296821', '', '2018-10-27 04:56:41.296821'),
(103, 'saif', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-27 04:56:47.635309', '', '2018-10-27 04:56:47.635309'),
(104, 'saif', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-27 11:17:26.927970', '', '2018-10-27 11:17:26.927970'),
(105, 'admin', '', '::1', 'Windows 10', 'Chrome', 'Syful-IT', '', '2018-10-27 11:41:09.374251', '', '2018-10-27 11:41:09.374251'),
(106, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-27 12:26:35.277010', '', '2018-10-27 12:26:35.277010'),
(107, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-28 02:49:45.542546', '', '2018-10-28 02:49:45.542546'),
(108, 'saif', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-28 05:08:49.768644', '', '2018-10-28 05:08:49.768644'),
(109, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-28 08:40:13.506208', '', '2018-10-28 08:40:13.506208'),
(110, 'saif', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-28 08:52:31.864061', '', '2018-10-28 08:52:31.864061'),
(111, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-28 09:06:43.921582', '', '2018-10-28 09:06:43.921582'),
(112, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-29 03:15:14.361362', '', '2018-10-29 03:15:14.361362'),
(113, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-29 06:27:02.806667', '', '2018-10-29 06:27:02.806667'),
(114, 'saif', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-29 08:51:49.632235', '', '2018-10-29 08:51:49.632235'),
(115, 'rana', '4', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-29 09:11:43.748630', '', '2018-10-29 09:11:43.748630'),
(116, 'admin', '', '::1', 'Windows 10', 'Chrome', 'Syful-IT', '', '2018-10-29 09:12:49.630031', '', '2018-10-29 09:12:49.630031'),
(117, 'saif', '1', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-29 11:28:08.137112', '', '2018-10-29 11:28:08.137112'),
(118, 'rana', '4', '::1', 'Android', 'Handheld Browser', 'Syful-IT', '1', '2018-10-30 02:47:11.257025', '', '2018-10-30 02:47:11.257025'),
(119, 'rana', '4', '::1', 'Windows 10', 'Chrome', 'Syful-IT', '1', '2018-10-30 02:56:32.487752', '', '2018-10-30 02:56:32.487752'),
(120, 'rana', '4', '::1', 'Windows 10', 'Chrome', 'Syful-IT', '1', '2018-10-30 02:56:39.303267', '', '2018-10-30 02:56:39.303267'),
(121, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-30 06:17:19.227993', '', '2018-10-30 06:17:19.227993'),
(122, 'rana', '4', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-30 09:23:43.156009', '', '2018-10-30 09:23:43.156009'),
(123, 'admin', '', '::1', 'Windows 10', 'Chrome', 'Syful-IT', '', '2018-10-30 09:44:36.357023', '', '2018-10-30 09:44:36.357023'),
(124, 'rana', '4', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-31 03:18:44.628577', '', '2018-10-31 03:18:44.628577'),
(125, 'rana', '4', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-31 03:30:42.189409', '', '2018-10-31 03:30:42.189409'),
(126, 'rana', '4', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-31 03:32:30.559402', '', '2018-10-31 03:32:30.559402'),
(127, 'rana', '4', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-31 04:02:41.720321', '', '2018-10-31 04:02:41.720321'),
(128, 'admin', '', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '', '2018-10-31 04:52:34.825118', '', '2018-10-31 04:52:34.825118'),
(129, 'rana', '4', '::1', 'Android', 'Handheld Browser', 'Syful-IT', '1', '2018-10-31 04:56:46.545328', '', '2018-10-31 04:56:46.545328'),
(130, 'admin', '', '::1', 'Windows 10', 'Chrome', 'Syful-IT', '', '2018-10-31 05:09:58.199736', '', '2018-10-31 05:09:58.199736'),
(131, 'admin', '', '::1', 'Windows 10', 'Chrome', 'Syful-IT', '', '2018-10-31 08:12:47.374809', '', '2018-10-31 08:12:47.374809'),
(132, 'rana', '4', '::1', 'Windows 10', 'Firefox', 'Syful-IT', '1', '2018-10-31 08:13:25.210110', '', '2018-10-31 08:13:25.210110');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_car`
--

CREATE TABLE `tbl_car` (
  `car_id` int(20) NOT NULL,
  `car_name` varchar(100) NOT NULL,
  `car_namePlate` varchar(200) NOT NULL,
  `car_type` varchar(100) NOT NULL,
  `car_capacity` varchar(255) NOT NULL,
  `car_img1` varchar(255) NOT NULL,
  `car_img2` varchar(255) NOT NULL,
  `car_img3` varchar(100) NOT NULL,
  `car_door` varchar(50) NOT NULL,
  `car_gearbox` varchar(50) NOT NULL,
  `car_gps` varchar(50) NOT NULL,
  `car_aircobdition` varchar(100) NOT NULL,
  `car_power_doorLock` varchar(100) NOT NULL,
  `car_cdPlayer` varchar(100) NOT NULL,
  `car_remarks` varchar(255) NOT NULL,
  `show_status` varchar(6) NOT NULL,
  `update_time` varchar(100) NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_car`
--

INSERT INTO `tbl_car` (`car_id`, `car_name`, `car_namePlate`, `car_type`, `car_capacity`, `car_img1`, `car_img2`, `car_img3`, `car_door`, `car_gearbox`, `car_gps`, `car_aircobdition`, `car_power_doorLock`, `car_cdPlayer`, `car_remarks`, `show_status`, `update_time`, `reg_time`) VALUES
(14, 'Toyota', '003', 'Petrol', '5', 'ddd (1).jpg', 'dsssss.jpg', 'ddd (2).jpg', '5', 'Automatic', '1', '1', '1', '1', 'this is demo 2', '1', '', '2018-10-17 06:14:07'),
(16, 'Suzuki', '005', 'Petrol', '7', 'ddd (2).jpg', 'dsssss.jpg', 'ddd (1).jpg', '', '', '', '0', '1', '1', 'dfhfghg', '1', '', '2018-10-16 09:34:35'),
(17, 'Nissan 2', '001', 'Petrol', '4', 'rewre.jpg', 'dhtrhtr.jpg', 'ertyrey.jpg', '4', 'Automatic', '0', '1', '1', '1', '								This is Nissan car ............... Updated<br>							', '1', '', '2018-10-27 11:46:31'),
(19, 'Toyota Probox', '002', 'CNG', '4', 'ertyrey.jpg', '', '', '6', 'Automatic', '0', '0', '0', '0', 'This is update test<br>', '1', '', '2018-10-17 06:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(6) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_pass` varchar(100) NOT NULL,
  `user_contract` int(100) NOT NULL,
  `user_img` varchar(255) NOT NULL,
  `user_officeId` varchar(20) NOT NULL,
  `user_status` varchar(6) NOT NULL,
  `user_update` varchar(20) NOT NULL,
  `user_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_pass`, `user_contract`, `user_img`, `user_officeId`, `user_status`, `user_update`, `user_reg`) VALUES
(1, 'saif', '5683', 1707080401, 'download.jpg', '12548', '1', '', '2018-10-27 02:46:09'),
(3, 'Saif2', '5683', 1707080401, '020.jpg', 'BG-99870', '0', '', '2018-10-13 05:28:01'),
(4, 'rana', '5683', 21474999, 'hdfhgfd.png', 'BG-999999', '1', '13-10-2018 10:36:08 ', '2018-10-29 09:11:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `car_booking`
--
ALTER TABLE `car_booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `car_driver`
--
ALTER TABLE `car_driver`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `chart_info`
--
ALTER TABLE `chart_info`
  ADD PRIMARY KEY (`chart_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `loginlog`
--
ALTER TABLE `loginlog`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tbl_car`
--
ALTER TABLE `tbl_car`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `car_booking`
--
ALTER TABLE `car_booking`
  MODIFY `booking_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `car_driver`
--
ALTER TABLE `car_driver`
  MODIFY `driver_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `chart_info`
--
ALTER TABLE `chart_info`
  MODIFY `chart_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loginlog`
--
ALTER TABLE `loginlog`
  MODIFY `login_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `tbl_car`
--
ALTER TABLE `tbl_car`
  MODIFY `car_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
