-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2020 at 06:40 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `niamafinal`
--

-- --------------------------------------------------------

--
-- Table structure for table `alarmes`
--

CREATE TABLE `alarmes` (
  `id` int(11) NOT NULL,
  `Injectionreseau` varchar(255) NOT NULL,
  `onduleur` varchar(255) NOT NULL,
  `Pertecommunication` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alarmes`
--

INSERT INTO `alarmes` (`id`, `Injectionreseau`, `onduleur`, `Pertecommunication`) VALUES
(1, '631', '330', '201');

-- --------------------------------------------------------

--
-- Table structure for table `blanceenergrtique`
--

CREATE TABLE `blanceenergrtique` (
  `id` int(11) NOT NULL,
  `Reseau` int(11) NOT NULL,
  `energiesolaire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blanceenergrtique`
--

INSERT INTO `blanceenergrtique` (`id`, `Reseau`, `energiesolaire`) VALUES
(1, 631, 459);

-- --------------------------------------------------------

--
-- Table structure for table `capteur`
--

CREATE TABLE `capteur` (
  `id` int(11) NOT NULL,
  `capteurv` varchar(255) NOT NULL,
  `capteurnam` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `capteur`
--

INSERT INTO `capteur` (`id`, `capteurv`, `capteurnam`) VALUES
(1, '10kW', 'Réseau\r\n'),
(2, '631KWH/Février', 'Réseau\r\n'),
(3, '13.6 KWp(DC)', 'energie solaire'),
(4, '12.7 KW5AC', 'energie solaire'),
(5, '459 KWh/ Février', 'energie solaire'),
(6, '2.104 KWh /Février', 'energie solaire/Objective :'),
(7, '459 KWh', 'FEVRIER'),
(8, '4411 \'DH\'', 'FEVRIER'),
(9, '-257 Kg', 'FEVRIER'),
(10, '610.6 K/m2', 'Température solaire'),
(11, '19 c', 'Température amblante'),
(12, '44 c', 'Température des modules'),
(13, '24 m/s', 'Vitesse du vent'),
(14, '23.23 kW', 'Utilisation'),
(15, '5.773 kWh/Février', 'Utilisation');

-- --------------------------------------------------------

--
-- Table structure for table `fractionsolaire`
--

CREATE TABLE `fractionsolaire` (
  `id` int(11) NOT NULL,
  `moi` varchar(255) NOT NULL,
  `valeurss` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fractionsolaire`
--

INSERT INTO `fractionsolaire` (`id`, `moi`, `valeurss`) VALUES
(4, 'fevrier', 242);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alarmes`
--
ALTER TABLE `alarmes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blanceenergrtique`
--
ALTER TABLE `blanceenergrtique`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `capteur`
--
ALTER TABLE `capteur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fractionsolaire`
--
ALTER TABLE `fractionsolaire`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alarmes`
--
ALTER TABLE `alarmes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blanceenergrtique`
--
ALTER TABLE `blanceenergrtique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `capteur`
--
ALTER TABLE `capteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `fractionsolaire`
--
ALTER TABLE `fractionsolaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
