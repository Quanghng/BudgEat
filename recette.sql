-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 22, 2021 at 01:52 PM
-- Server version: 10.3.22-MariaDB-0+deb10u1
-- PHP Version: 7.0.33-0+deb9u7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recette`
--

-- --------------------------------------------------------

--
-- Table structure for table `Code`
--

CREATE TABLE `Code` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(10) DEFAULT NULL,
  `Discription` varchar(255) DEFAULT NULL,
  `Id_recette` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `etape`
--

CREATE TABLE `etape` (
  `Id` int(11) NOT NULL,
  `Id_recette` int(11) DEFAULT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Discription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Evaluation`
--

CREATE TABLE `Evaluation` (
  `Id` int(11) NOT NULL,
  `Id_recette` int(11) DEFAULT NULL,
  `Id_user` int(11) DEFAULT NULL,
  `Evaluation` int(11) DEFAULT NULL,
  `Avis` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `recette`
--

CREATE TABLE `recette` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Durée` float NOT NULL,
  `Prix` float NOT NULL,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recette`
--

INSERT INTO `recette` (`Id`, `Nom`, `Durée`, `Prix`, `Description`) VALUES
(1, 'Croque-Monsieur Mowarella, Avocat, Tomate', 15, 5, 'C\'est bon');

-- --------------------------------------------------------

--
-- Table structure for table `usr`
--

CREATE TABLE `usr` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(30) DEFAULT NULL,
  `Prénom` varchar(30) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Mdp` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Code`
--
ALTER TABLE `Code`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_recette` (`Id_recette`);

--
-- Indexes for table `etape`
--
ALTER TABLE `etape`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_recette` (`Id_recette`);

--
-- Indexes for table `Evaluation`
--
ALTER TABLE `Evaluation`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_recette` (`Id_recette`),
  ADD KEY `Id_user` (`Id_user`);

--
-- Indexes for table `recette`
--
ALTER TABLE `recette`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `usr`
--
ALTER TABLE `usr`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `etape`
--
ALTER TABLE `etape`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Evaluation`
--
ALTER TABLE `Evaluation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `recette`
--
ALTER TABLE `recette`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `usr`
--
ALTER TABLE `usr`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Code`
--
ALTER TABLE `Code`
  ADD CONSTRAINT `Code_ibfk_1` FOREIGN KEY (`Id_recette`) REFERENCES `recette` (`Id`);

--
-- Constraints for table `etape`
--
ALTER TABLE `etape`
  ADD CONSTRAINT `etape_ibfk_1` FOREIGN KEY (`Id_recette`) REFERENCES `recette` (`Id`);

--
-- Constraints for table `Evaluation`
--
ALTER TABLE `Evaluation`
  ADD CONSTRAINT `Evaluation_ibfk_1` FOREIGN KEY (`Id_recette`) REFERENCES `recette` (`Id`),
  ADD CONSTRAINT `Evaluation_ibfk_2` FOREIGN KEY (`Id_user`) REFERENCES `usr` (`Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
