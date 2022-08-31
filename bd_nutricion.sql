-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 31, 2022 at 09:16 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_nutricion`
--

-- --------------------------------------------------------

--
-- Table structure for table `nutritionvalues`
--

CREATE TABLE `nutritionvalues` (
  `id` int(11) NOT NULL,
  `calorias` int(11) NOT NULL,
  `proteinas` int(11) NOT NULL,
  `carbohidratos` int(11) NOT NULL,
  `sugar` int(11) NOT NULL,
  `fat` int(11) NOT NULL,
  `fibra` int(11) NOT NULL,
  `calcio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nutritionvalues`
--

INSERT INTO `nutritionvalues` (`id`, `calorias`, `proteinas`, `carbohidratos`, `sugar`, `fat`, `fibra`, `calcio`) VALUES
(1, 2100, 46, 135, 25, 25, 25, 1000),
(2, 2100, 45, 135, 25, 25, 25, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `machine_id` text NOT NULL,
  `selected_food_ids` text,
  `masa` float NOT NULL,
  `periodo` float NOT NULL,
  `calorias` float NOT NULL,
  `proteinas` float NOT NULL,
  `carbohidratos` float NOT NULL,
  `sugar` float NOT NULL,
  `fat` float NOT NULL,
  `fibra` float NOT NULL,
  `calcio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nombre`, `machine_id`, `selected_food_ids`, `masa`, `periodo`, `calorias`, `proteinas`, `carbohidratos`, `sugar`, `fat`, `fibra`, `calcio`) VALUES
(1, 'Thomas', '03C00218-044D-058C-8706-590700080009', 'rice noodles bread lettuce avocado tomato potato onion apple peach beef chicken ham cow%20milk white%20yogurt buttery%20cheese egg honey butter lentils tea coffee', 58, 1, 4520, 340, 760, 40, 0, 250, 740),
(2, 'Ian', '03C00218-044D-058C-8706-590700080009', 'rice noodles bread lettuce avocado tomato ham cow%20milk white%20yogurt butter lentils tea coffee', 56, 7, 0, 0, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nutritionvalues`
--
ALTER TABLE `nutritionvalues`
  ADD KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nutritionvalues`
--
ALTER TABLE `nutritionvalues`
  ADD CONSTRAINT `nutritionvalues_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
