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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_distribution`
--
ALTER TABLE `blood_distribution`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_distribution`
--
ALTER TABLE `blood_distribution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
