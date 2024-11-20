-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2024 at 08:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `equiptrack`
--

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `equipment_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `conditions` varchar(255) DEFAULT NULL,
  `availability_status` varchar(255) DEFAULT NULL,
  `rental_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`equipment_id`, `name`, `category`, `purchase_date`, `conditions`, `availability_status`, `rental_price`) VALUES
(1, 'Excavator', 'Construction', '2022-01-10', 'Good', 'Available', 50000.00),
(2, 'Tents and canopies', 'Events', '2022-06-11', 'Good', 'Available', 2000.00),
(3, 'Tables and Chairs', 'Events', '2022-03-22', 'Good', 'Available', 2500.00),
(4, 'Projectors', 'Office', '2023-04-15', 'Good', 'Available', 5000.00),
(5, 'Wifi Hotspots', 'Office', '2024-01-01', 'Good', 'Available', 1000.00),
(6, 'Coffee Maker', 'Party', '2023-02-07', 'Good', 'Available', 700.00),
(7, 'Barbeque and Grills', 'Party', '2023-02-05', 'Good', 'Available', 1500.00),
(8, 'Dinnerware and Flatware', 'Party', '2023-12-10', 'Good', 'Available', 1550.00),
(9, 'Sound Systems', 'Audio and Visual', '2023-04-20', 'Good', 'Available', 3000.00),
(10, 'Industrial Vaccum', 'Cleaning', '2024-03-30', 'Good', 'Available', 7000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`equipment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `equipment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
