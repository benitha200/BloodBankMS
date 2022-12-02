-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2022 at 02:02 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Admin'),
(4, 'Admins'),
(2, 'Collector'),
(3, 'Hospital');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(25, 1, 1),
(26, 1, 2),
(27, 1, 3),
(28, 1, 4),
(29, 1, 5),
(30, 1, 6),
(31, 1, 7),
(32, 1, 8),
(33, 1, 9),
(34, 1, 10),
(35, 1, 11),
(36, 1, 12),
(37, 1, 13),
(38, 1, 14),
(39, 1, 15),
(40, 1, 16),
(41, 1, 17),
(42, 1, 18),
(43, 1, 19),
(44, 1, 20),
(45, 1, 21),
(46, 1, 22),
(47, 1, 23),
(48, 1, 24),
(49, 1, 25),
(50, 1, 26),
(51, 1, 27),
(52, 1, 28),
(53, 1, 29),
(54, 1, 30),
(55, 1, 31),
(56, 1, 32),
(57, 1, 33),
(58, 1, 34),
(59, 1, 35),
(60, 1, 36),
(61, 1, 37),
(62, 1, 38),
(63, 1, 39),
(64, 1, 40),
(65, 1, 41),
(66, 1, 42),
(67, 1, 43),
(68, 1, 44),
(69, 1, 45),
(70, 1, 46),
(71, 1, 47),
(72, 1, 48),
(73, 1, 49),
(74, 1, 50),
(75, 1, 51),
(76, 1, 52),
(77, 1, 53),
(78, 1, 54),
(79, 1, 55),
(80, 1, 56),
(81, 1, 57),
(82, 1, 58),
(83, 1, 59),
(84, 1, 60),
(85, 1, 61),
(86, 1, 62),
(87, 1, 63),
(88, 1, 64),
(89, 1, 65),
(90, 1, 66),
(91, 1, 67),
(92, 1, 68),
(93, 1, 69),
(94, 1, 70),
(95, 1, 71),
(96, 1, 72),
(97, 1, 73),
(98, 1, 74),
(99, 1, 75),
(100, 1, 76),
(101, 2, 1),
(102, 2, 2),
(103, 2, 3),
(104, 2, 4),
(105, 2, 5),
(106, 2, 6),
(107, 2, 7),
(108, 2, 8),
(109, 2, 9),
(110, 2, 10),
(111, 2, 11),
(112, 2, 12),
(113, 2, 13),
(114, 2, 14),
(115, 2, 15),
(116, 2, 16),
(117, 2, 17),
(118, 2, 18),
(119, 2, 19),
(120, 2, 20),
(121, 2, 21),
(122, 2, 22),
(123, 2, 23),
(124, 2, 24),
(125, 2, 25),
(126, 2, 26),
(127, 2, 27),
(128, 2, 28),
(129, 2, 29),
(130, 2, 30),
(131, 2, 31),
(132, 2, 32),
(133, 2, 33),
(134, 2, 34),
(135, 2, 35),
(136, 2, 36),
(137, 2, 37),
(138, 2, 38),
(139, 2, 39),
(140, 2, 40),
(141, 2, 41),
(142, 2, 42),
(143, 2, 43),
(144, 2, 44),
(145, 2, 45),
(146, 2, 46),
(147, 2, 47),
(148, 2, 48),
(149, 2, 49),
(150, 2, 50),
(151, 2, 51),
(152, 2, 52),
(153, 2, 53),
(154, 2, 54),
(155, 2, 55),
(156, 2, 56),
(157, 2, 57),
(158, 2, 58),
(159, 2, 59),
(160, 2, 60),
(161, 2, 61),
(162, 2, 62),
(163, 2, 63),
(164, 2, 64),
(165, 2, 65),
(166, 2, 66),
(167, 2, 67),
(168, 2, 68),
(169, 2, 69),
(170, 2, 70),
(171, 2, 71),
(172, 2, 72),
(173, 2, 73),
(174, 2, 74),
(175, 2, 75),
(176, 2, 76),
(177, 3, 1),
(178, 3, 2),
(179, 3, 3),
(180, 3, 4),
(181, 3, 5),
(182, 3, 6),
(183, 3, 7),
(184, 3, 8),
(185, 3, 9),
(186, 3, 10),
(187, 3, 11),
(188, 3, 12),
(189, 3, 13),
(190, 3, 14),
(191, 3, 15),
(192, 3, 16),
(193, 3, 17),
(194, 3, 18),
(195, 3, 19),
(196, 3, 20),
(197, 3, 21),
(198, 3, 22),
(199, 3, 23),
(200, 3, 24),
(201, 3, 25),
(202, 3, 26),
(203, 3, 27),
(204, 3, 28),
(205, 3, 29),
(206, 3, 30),
(207, 3, 31),
(208, 3, 32),
(209, 3, 33),
(210, 3, 34),
(211, 3, 35),
(212, 3, 36),
(213, 3, 37),
(214, 3, 38),
(215, 3, 39),
(216, 3, 40),
(217, 3, 41),
(218, 3, 42),
(219, 3, 43),
(220, 3, 44),
(221, 3, 45),
(222, 3, 46),
(223, 3, 47),
(224, 3, 48),
(225, 3, 49),
(226, 3, 50),
(227, 3, 51),
(228, 3, 52),
(229, 3, 53),
(230, 3, 54),
(231, 3, 55),
(232, 3, 56),
(233, 3, 57),
(234, 3, 58),
(235, 3, 59),
(236, 3, 60),
(237, 3, 61),
(238, 3, 62),
(239, 3, 63),
(240, 3, 64),
(241, 3, 65),
(242, 3, 66),
(243, 3, 67),
(244, 3, 68),
(245, 3, 69),
(246, 3, 70),
(247, 3, 71),
(248, 3, 72),
(249, 3, 73),
(250, 3, 74),
(251, 3, 75),
(252, 3, 76),
(1, 4, 13),
(2, 4, 14),
(3, 4, 15),
(4, 4, 16),
(5, 4, 25),
(6, 4, 26),
(7, 4, 27),
(8, 4, 28),
(9, 4, 29),
(10, 4, 30),
(11, 4, 31),
(12, 4, 32),
(13, 4, 33),
(14, 4, 34),
(15, 4, 35),
(16, 4, 36),
(17, 4, 37),
(18, 4, 38),
(19, 4, 39),
(20, 4, 40),
(21, 4, 41),
(22, 4, 42),
(23, 4, 43),
(24, 4, 44);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add stock', 7, 'add_stock'),
(26, 'Can change stock', 7, 'change_stock'),
(27, 'Can delete stock', 7, 'delete_stock'),
(28, 'Can view stock', 7, 'view_stock'),
(29, 'Can add blood request', 8, 'add_bloodrequest'),
(30, 'Can change blood request', 8, 'change_bloodrequest'),
(31, 'Can delete blood request', 8, 'delete_bloodrequest'),
(32, 'Can view blood request', 8, 'view_bloodrequest'),
(33, 'Can add donor', 9, 'add_donor'),
(34, 'Can change donor', 9, 'change_donor'),
(35, 'Can delete donor', 9, 'delete_donor'),
(36, 'Can view donor', 9, 'view_donor'),
(37, 'Can add blood donate', 10, 'add_blooddonate'),
(38, 'Can change blood donate', 10, 'change_blooddonate'),
(39, 'Can delete blood donate', 10, 'delete_blooddonate'),
(40, 'Can view blood donate', 10, 'view_blooddonate'),
(41, 'Can add patient', 11, 'add_patient'),
(42, 'Can change patient', 11, 'change_patient'),
(43, 'Can delete patient', 11, 'delete_patient'),
(44, 'Can view patient', 11, 'view_patient'),
(45, 'Can add rbc_stock', 12, 'add_rbc_stock'),
(46, 'Can change rbc_stock', 12, 'change_rbc_stock'),
(47, 'Can delete rbc_stock', 12, 'delete_rbc_stock'),
(48, 'Can view rbc_stock', 12, 'view_rbc_stock'),
(49, 'Can add patients', 13, 'add_patients'),
(50, 'Can change patients', 13, 'change_patients'),
(51, 'Can delete patients', 13, 'delete_patients'),
(52, 'Can view patients', 13, 'view_patients'),
(53, 'Can add hospital_requests', 14, 'add_hospital_requests'),
(54, 'Can change hospital_requests', 14, 'change_hospital_requests'),
(55, 'Can delete hospital_requests', 14, 'delete_hospital_requests'),
(56, 'Can view hospital_requests', 14, 'view_hospital_requests'),
(57, 'Can add donors', 15, 'add_donors'),
(58, 'Can change donors', 15, 'change_donors'),
(59, 'Can delete donors', 15, 'delete_donors'),
(60, 'Can view donors', 15, 'view_donors'),
(61, 'Can add hospital stock', 16, 'add_hospitalstock'),
(62, 'Can change hospital stock', 16, 'change_hospitalstock'),
(63, 'Can delete hospital stock', 16, 'delete_hospitalstock'),
(64, 'Can view hospital stock', 16, 'view_hospitalstock'),
(65, 'Can add hospital requests', 14, 'add_hospitalrequests'),
(66, 'Can change hospital requests', 14, 'change_hospitalrequests'),
(67, 'Can delete hospital requests', 14, 'delete_hospitalrequests'),
(68, 'Can view hospital requests', 14, 'view_hospitalrequests'),
(69, 'Can add rbc stock', 12, 'add_rbcstock'),
(70, 'Can change rbc stock', 12, 'change_rbcstock'),
(71, 'Can delete rbc stock', 12, 'delete_rbcstock'),
(72, 'Can view rbc stock', 12, 'view_rbcstock'),
(73, 'Can add patients', 17, 'add_patients'),
(74, 'Can change patients', 17, 'change_patients'),
(75, 'Can delete patients', 17, 'delete_patients'),
(76, 'Can view patients', 17, 'view_patients');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$tTh0nUTG1yKXpMJTJZEtxc$uKGt33SmXlSxHUdWSS9FiFZUifqH1GbQAUjDRSMlcz4=', '2022-11-09 12:59:43.184306', 1, 'admin', '', '', '', 1, 1, '2022-11-03 19:10:35.000000'),
(2, 'pbkdf2_sha256$390000$U7sGIvXuqPe4CvwYnYtHE6$PI0VCd9w3B/YSi3sgnjk7q/WQI5Ixhe6h0aaCb20NfY=', '2022-12-02 00:12:00.487267', 1, 'user', '', '', '', 1, 1, '2022-11-06 22:04:18.000000'),
(3, 'pbkdf2_sha256$320000$U8IwMbti8JXKrTaIq7Zzm7$ZPeugbKCBVmUfXqBDOnN/h5ccv5oO4isdKgCV2y+1O4=', '2022-11-09 12:59:24.625934', 0, 'tresor', '', '', '', 0, 1, '2022-11-06 22:33:01.000000'),
(4, 'pbkdf2_sha256$320000$M7La8f35eXiPql60D5U8G3$kLrntkliwRNxsqQwJ7ULSxRCDUNRaY8A+kbv+aPxJto=', '2022-11-06 22:40:14.201754', 0, 'test', '', '', 'test@gmail.com', 0, 1, '2022-11-06 22:39:47.677311'),
(5, 'pbkdf2_sha256$320000$XS7qAbqMJBtAw1MOjEpsce$vn0w/kuARowT6fDyEbrH4Wpp5qGXGWeUpdaS232hj/I=', NULL, 0, 'confy', '', '', 'confiance@gmail.com', 0, 1, '2022-11-10 05:25:26.828167'),
(6, 'pbkdf2_sha256$320000$nksrDTACBZTOhOHWvRfvYo$mlnTrlf1G+TePWo8L7Gc/BYYNGiNxafijgNWTIblbbo=', '2022-11-17 14:02:57.385326', 1, 'benitha', '', '', 'benitha@gmail.com', 1, 1, '2022-11-17 11:26:19.000000'),
(7, 'pbkdf2_sha256$320000$eKj01eUlrpQKazr81sGoVu$1mqWh8WRzT+ZXd1Mt/1GQyDLEjy3iHWu1w1bXxtNI7Y=', '2022-11-17 16:17:13.346629', 0, 'Kabgayi Hospital', '', '', 'kabgayi@gmail.com', 0, 1, '2022-11-17 13:21:08.451009'),
(8, 'pbkdf2_sha256$320000$ZnMzemnatoCm3wakeuM5un$eS5UdlZB1TCwavGSJ8RIareZkl+eWaJA92SId0D3/do=', '2022-11-17 16:18:32.789253', 0, 'olivier', 'Olivier', 'Bigirimana', 'bigirimana@gmail.com', 0, 1, '2022-11-17 14:09:55.162081'),
(9, 'pbkdf2_sha256$390000$Fv25BjMLviI1KoDeTSaoM5$NN8pJG3VPyqWQ4n5XChuYZpAzIR6P1AjHxEkKYu9j4Q=', '2022-11-25 05:40:26.117720', 0, 'joselyne', 'Joselyne', 'Muteteri', 'test1@gmail.com', 0, 1, '2022-11-24 14:41:40.992698'),
(10, 'pbkdf2_sha256$390000$3WqZLMO31rYeVd8KZFxHu5$3C8vDbmtI06FXH2NEq3IFGXdh6souw2crJpT21TQHFI=', '2022-11-25 05:00:08.125421', 0, 'chuk', 'CHUK', 'KN 4 Ave, Kigali', 'chuk@gmail.com', 0, 1, '2022-11-24 16:16:36.787925'),
(11, 'pbkdf2_sha256$390000$0SBzJmGmO7PFqS2Xr27A2o$HlKm7bK557awM2Npy27nOgU9IZq5qc9nE5+Qe/0cWQk=', NULL, 0, 'chub', 'CHUB', '9PQP+J7F, Hospital Road, Butare', 'chub@gmail.com', 0, 1, '2022-12-01 09:58:30.386190'),
(12, 'pbkdf2_sha256$390000$YxTgBDCanMIWhLfpyMsm7l$AAxuDa2wdh1twFUEO2Y6w8OucL1uY4ayM2+yL7908do=', '2022-12-02 00:29:22.453447', 0, 'kingfaisal', 'King Faisal Hospital', ' KG 544 Street ', 'kingfaisalhospital@gmail.com', 0, 1, '2022-12-01 10:05:05.554127');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(5, 2, 1),
(2, 3, 2),
(3, 4, 3),
(4, 5, 2),
(6, 6, 1),
(7, 7, 3),
(8, 8, 2),
(9, 9, 2),
(10, 10, 3),
(11, 11, 3),
(12, 12, 3);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 1, 38),
(39, 1, 39),
(40, 1, 40),
(41, 1, 41),
(42, 1, 42),
(43, 1, 43),
(44, 1, 44);

-- --------------------------------------------------------

--
-- Table structure for table `blood_bloodrequest`
--

CREATE TABLE `blood_bloodrequest` (
  `id` int(11) NOT NULL,
  `patient_name` varchar(30) NOT NULL,
  `patient_age` int(10) UNSIGNED NOT NULL,
  `reason` varchar(500) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `unit` int(10) UNSIGNED NOT NULL CHECK (`unit` >= 0),
  `status` varchar(20) NOT NULL,
  `request_by_donor_id` int(11) DEFAULT NULL,
  `request_by_patient_id` int(11) DEFAULT NULL,
  `date` date NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `blood_distribution`
--

CREATE TABLE `blood_distribution` (
  `id` int(11) NOT NULL,
  `blood_units` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `drone_number` varchar(10) NOT NULL,
  `departure_date` date NOT NULL,
  `departure_time` varchar(10) NOT NULL,
  `expected_time` varchar(10) NOT NULL,
  `request_id` int(11) NOT NULL,
  `blood_type` varchar(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_distribution`
--

INSERT INTO `blood_distribution` (`id`, `blood_units`, `hospital_id`, `drone_number`, `departure_date`, `departure_time`, `expected_time`, `request_id`, `blood_type`, `status`) VALUES
(1, 4000, 12, 'T459', '2022-12-02', '02:28', '03:29', 7, 'A+', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blood_stock`
--

CREATE TABLE `blood_stock` (
  `id` int(11) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `unit` int(10) UNSIGNED NOT NULL CHECK (`unit` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-11-03 19:11:57.085302', '1', 'Admin', 1, '[{\"added\": {}}]', 3, 1),
(2, '2022-11-03 19:13:22.976597', '2', 'Collector', 1, '[{\"added\": {}}]', 3, 1),
(3, '2022-11-03 19:14:08.929830', '3', 'Hospital', 1, '[{\"added\": {}}]', 3, 1),
(4, '2022-11-06 22:09:32.623235', '4', 'Admins', 1, '[{\"added\": {}}]', 3, 2),
(5, '2022-11-06 22:29:58.176866', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 2),
(6, '2022-11-06 22:33:01.419165', '3', 'tresor', 1, '[{\"added\": {}}]', 4, 2),
(7, '2022-11-06 22:33:14.216879', '3', 'tresor', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 2),
(8, '2022-11-09 12:58:13.875886', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1),
(9, '2022-11-17 11:39:08.449741', '2', 'user', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 6),
(10, '2022-11-17 11:39:29.012579', '6', 'benitha', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 6),
(11, '2022-11-17 12:09:51.473158', '1', 'Admin', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 6),
(12, '2022-11-17 12:12:59.247373', '2', 'Collector', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 6),
(13, '2022-11-17 12:13:12.420062', '3', 'Hospital', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'blood', 'bloodrequest'),
(7, 'blood', 'stock'),
(5, 'contenttypes', 'contenttype'),
(10, 'donor', 'blooddonate'),
(9, 'donor', 'donor'),
(15, 'mysite', 'donors'),
(14, 'mysite', 'hospitalrequests'),
(16, 'mysite', 'hospitalstock'),
(13, 'mysite', 'patients'),
(12, 'mysite', 'rbcstock'),
(11, 'patient', 'patient'),
(17, 'patients', 'patients'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-03 18:22:48.649307'),
(2, 'auth', '0001_initial', '2022-11-03 18:23:06.518582'),
(3, 'admin', '0001_initial', '2022-11-03 18:23:11.220439'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-03 18:23:11.336234'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-03 18:23:11.502755'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-11-03 18:23:12.909764'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-11-03 18:23:15.430423'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-11-03 18:23:15.904121'),
(9, 'auth', '0004_alter_user_username_opts', '2022-11-03 18:23:16.013606'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-11-03 18:23:20.341973'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-11-03 18:23:20.477341'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-11-03 18:23:20.684434'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-11-03 18:23:22.290024'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-11-03 18:23:22.959218'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-11-03 18:23:23.572861'),
(16, 'auth', '0011_update_proxy_permissions', '2022-11-03 18:23:23.704283'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-11-03 18:23:23.898325'),
(18, 'patient', '0001_initial', '2022-11-03 18:23:27.819492'),
(19, 'donor', '0001_initial', '2022-11-03 18:23:30.092876'),
(20, 'blood', '0001_initial', '2022-11-03 18:23:30.613842'),
(21, 'blood', '0002_bloodrequest', '2022-11-03 18:23:31.213748'),
(22, 'blood', '0003_auto_20210213_1053', '2022-11-03 18:23:56.797509'),
(23, 'blood', '0004_bloodrequest_date', '2022-11-03 18:23:57.187960'),
(24, 'donor', '0002_auto_20210213_1602', '2022-11-03 18:23:59.880514'),
(25, 'sessions', '0001_initial', '2022-11-03 18:24:00.996834'),
(26, 'mysite', '0001_initial', '2022-11-10 16:25:59.083517'),
(27, 'mysite', '0002_alter_donors_created_by', '2022-11-10 18:48:13.810001'),
(28, 'mysite', '0003_rename_hospital_requests_hospitalrequests_and_more', '2022-11-11 04:16:24.311542'),
(29, 'mysite', '0004_donors_donor_id', '2022-11-13 00:44:21.484758'),
(30, 'mysite', '0005_patients_patient_id', '2022-11-13 12:14:39.746285'),
(31, 'mysite', '0006_delete_patients_alter_hospitalrequests_status', '2022-11-17 12:05:54.184661'),
(32, 'patients', '0001_initial', '2022-11-17 12:05:56.707696');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7re3yixq8389ijcj348c5p81vncqezn6', '.eJxVjEEOwiAQRe_C2pBppyODS_c9A4EBpWogKe3KeHdD0oVu_3vvv5Xz-5bd3tLqlqgualSn3y14eabSQXz4cq9aatnWJeiu6IM2PdeYXtfD_TvIvuVegxAyEbHBJAAQgp040JkF0BuyPMDECYXNABikq55iEhytRbipzxe3Qja5:1ou1HF:vVH7jVPlsKMw7iAnSxE5GDfky-ptLgL5iQT9Sn_zbbA', '2022-11-27 00:55:13.619050'),
('ivd4x1q5jxmv3d8ja3daf45txvmdo42l', '.eJxVjDsOwyAQRO9CHSE-hkDK9DkDWpYlOIlAMnYV5e6xJRd2NdK8N_NlAZa5hKXTFMbEbkwqdjmWEfBNdSPpBfXZOLY6T2Pkm8J32vmjJfrcd_d0UKCXdY0g8OqEN-Ai2DVdshktCvJksh6id0JKggTZDBq8d9ZoFQlJCWuUZL8_Efg4CA:1p0tve:1JcG55LEwIoHqmkzaYoypf8ux8srV3RFtcQzjfrA0O4', '2022-12-16 00:29:22.642163');

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `body_weight` int(11) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `blood_type` varchar(5) NOT NULL,
  `blood_quantity` int(11) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `donor_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `first_name`, `last_name`, `age`, `body_weight`, `phone_number`, `blood_type`, `blood_quantity`, `created_by_id`, `donor_id`) VALUES
(1, 'Benitha Louange ', 'IYUYISENGA ', 30, 70, '0786564564', 'A+', 1000, NULL, 'D00000'),
(2, 'Joselyne', 'Muteteri', 25, 60, '0786564564', 'A+', 1000, NULL, 'D00000'),
(3, 'Rosine', 'Mujawimana', 20, 65, '0786564564', 'A+', 1000, NULL, 'D00000'),
(4, 'Olivier', 'Bigirimana', 25, 79, '0786564564', 'AB+', 1000, NULL, 'D00000'),
(5, 'Anitha', 'Sandrine', 25, 80, '0786564564', 'O+', 1000, NULL, 'D00000'),
(6, 'Benitha Louange ', 'IYUYISENGA ', 25, 62, '0786564564', 'A+', 1000, NULL, 'D00000'),
(7, 'Rosine', 'Mujawimana', 22, 67, '0786564564', 'AB+', 1000, NULL, 'D-07');

-- --------------------------------------------------------

--
-- Table structure for table `donor_blooddonate`
--

CREATE TABLE `donor_blooddonate` (
  `id` int(11) NOT NULL,
  `disease` varchar(100) NOT NULL,
  `age` int(10) UNSIGNED NOT NULL CHECK (`age` >= 0),
  `bloodgroup` varchar(10) NOT NULL,
  `unit` int(10) UNSIGNED NOT NULL CHECK (`unit` >= 0),
  `status` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `donor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donor_donor`
--

CREATE TABLE `donor_donor` (
  `id` int(11) NOT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `address` varchar(40) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hospital_requests`
--

CREATE TABLE `hospital_requests` (
  `id` int(11) NOT NULL,
  `blood_type` varchar(5) NOT NULL,
  `blood_quantity` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital_requests`
--

INSERT INTO `hospital_requests` (`id`, `blood_type`, `blood_quantity`, `status`, `hospital_id`) VALUES
(1, 'O-', 1000, 3, 2),
(2, 'AB+', 1000, 3, 2),
(3, 'A+', 1000, 1, 2),
(4, 'O-', 2000, 1, 10),
(5, 'A+', 2000, 3, 12),
(6, 'A-', 2000, 3, 12),
(7, 'A+', 4000, 4, 12);

-- --------------------------------------------------------

--
-- Table structure for table `hospital_stock`
--

CREATE TABLE `hospital_stock` (
  `id` int(11) NOT NULL,
  `blood_type` varchar(5) NOT NULL,
  `blood_quantity` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital_stock`
--

INSERT INTO `hospital_stock` (`id`, `blood_type`, `blood_quantity`, `hospital_id`) VALUES
(1, 'A+', 1000, 2),
(2, 'O-', 2000, 10),
(3, 'A+', 20000, 12),
(4, 'A-', 2000, 12),
(5, 'B+', 0, 12),
(6, 'B-', 0, 12),
(7, 'AB+', 0, 12),
(8, 'AB-', 0, 12),
(9, 'O+', 0, 12),
(10, 'O-', 0, 12),
(11, 'O-', 4000, 2),
(12, 'AB+', 1000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) NOT NULL,
  `patient_id` varchar(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `body_weight` int(11) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `blood_type` varchar(5) NOT NULL,
  `blood_quantity` int(11) NOT NULL,
  `hospital` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `patient_id`, `first_name`, `last_name`, `age`, `body_weight`, `phone_number`, `blood_type`, `blood_quantity`, `hospital`) VALUES
(1, 'P-01', 'Anitha', 'Sandrine', 25, 89, '0786564564', 'B-', 1000, 'user'),
(2, 'P-02', 'Anitha', 'IYUYISENGA ', 18, 67, '0786564564', 'A+', 2000, 'kingfaisal'),
(3, 'P-03', 'Anitha', 'Sandrine', 18, 68, '0786564564', 'O+', 1000, 'kingfaisal');

-- --------------------------------------------------------

--
-- Table structure for table `patient_patient`
--

CREATE TABLE `patient_patient` (
  `id` int(11) NOT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `age` int(10) UNSIGNED NOT NULL CHECK (`age` >= 0),
  `bloodgroup` varchar(10) NOT NULL,
  `disease` varchar(100) NOT NULL,
  `doctorname` varchar(50) NOT NULL,
  `address` varchar(40) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rbc_stock`
--

CREATE TABLE `rbc_stock` (
  `id` int(11) NOT NULL,
  `blood_type` varchar(5) NOT NULL,
  `blood_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rbc_stock`
--

INSERT INTO `rbc_stock` (`id`, `blood_type`, `blood_quantity`) VALUES
(1, 'A+', 1000),
(2, 'A-', 0),
(3, 'B+', 0),
(4, 'B-', 0),
(5, 'AB+', 3000),
(6, 'AB-', 0),
(7, 'O+', 1000),
(8, 'O-', 5000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `blood_bloodrequest`
--
ALTER TABLE `blood_bloodrequest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blood_bloodrequest_request_by_donor_id_356e443f_fk_donor_don` (`request_by_donor_id`),
  ADD KEY `blood_bloodrequest_request_by_patient_i_f651be1d_fk_patient_p` (`request_by_patient_id`);

--
-- Indexes for table `blood_distribution`
--
ALTER TABLE `blood_distribution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_stock`
--
ALTER TABLE `blood_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donors_created_by_id_6853488a_fk_auth_user_id` (`created_by_id`);

--
-- Indexes for table `donor_blooddonate`
--
ALTER TABLE `donor_blooddonate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donor_blooddonate_donor_id_ac968d26_fk_donor_donor_id` (`donor_id`);

--
-- Indexes for table `donor_donor`
--
ALTER TABLE `donor_donor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `hospital_requests`
--
ALTER TABLE `hospital_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospital_requests_hospital_id_d443557b_fk_auth_user_id` (`hospital_id`);

--
-- Indexes for table `hospital_stock`
--
ALTER TABLE `hospital_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospital_stock_hospital_id_598e39fd_fk_auth_user_id` (`hospital_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_patient`
--
ALTER TABLE `patient_patient`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `rbc_stock`
--
ALTER TABLE `rbc_stock`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `blood_bloodrequest`
--
ALTER TABLE `blood_bloodrequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_distribution`
--
ALTER TABLE `blood_distribution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blood_stock`
--
ALTER TABLE `blood_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `donor_blooddonate`
--
ALTER TABLE `donor_blooddonate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donor_donor`
--
ALTER TABLE `donor_donor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospital_requests`
--
ALTER TABLE `hospital_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hospital_stock`
--
ALTER TABLE `hospital_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient_patient`
--
ALTER TABLE `patient_patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rbc_stock`
--
ALTER TABLE `rbc_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `blood_bloodrequest`
--
ALTER TABLE `blood_bloodrequest`
  ADD CONSTRAINT `blood_bloodrequest_request_by_donor_id_356e443f_fk_donor_don` FOREIGN KEY (`request_by_donor_id`) REFERENCES `donor_donor` (`id`),
  ADD CONSTRAINT `blood_bloodrequest_request_by_patient_i_f651be1d_fk_patient_p` FOREIGN KEY (`request_by_patient_id`) REFERENCES `patient_patient` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `donors`
--
ALTER TABLE `donors`
  ADD CONSTRAINT `donors_created_by_id_6853488a_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `donor_blooddonate`
--
ALTER TABLE `donor_blooddonate`
  ADD CONSTRAINT `donor_blooddonate_donor_id_ac968d26_fk_donor_donor_id` FOREIGN KEY (`donor_id`) REFERENCES `donor_donor` (`id`);

--
-- Constraints for table `donor_donor`
--
ALTER TABLE `donor_donor`
  ADD CONSTRAINT `donor_donor_user_id_f97e4cc8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `hospital_requests`
--
ALTER TABLE `hospital_requests`
  ADD CONSTRAINT `hospital_requests_hospital_id_d443557b_fk_auth_user_id` FOREIGN KEY (`hospital_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `hospital_stock`
--
ALTER TABLE `hospital_stock`
  ADD CONSTRAINT `hospital_stock_hospital_id_598e39fd_fk_auth_user_id` FOREIGN KEY (`hospital_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `patient_patient`
--
ALTER TABLE `patient_patient`
  ADD CONSTRAINT `patient_patient_user_id_40c1c82a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
