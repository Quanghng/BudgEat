-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 30 nov. 2021 à 19:22
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `code`
--

DROP TABLE IF EXISTS `code`;
CREATE TABLE IF NOT EXISTS `code` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(10) DEFAULT NULL,
  `Discription` varchar(255) DEFAULT NULL,
  `Id_recette` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id_recette` (`Id_recette`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `etape`
--

DROP TABLE IF EXISTS `etape`;
CREATE TABLE IF NOT EXISTS `etape` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Id_recette` int(11) DEFAULT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Discription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id_recette` (`Id_recette`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
CREATE TABLE IF NOT EXISTS `evaluation` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Id_recette` int(11) DEFAULT NULL,
  `Id_user` int(11) DEFAULT NULL,
  `Evaluation` int(11) DEFAULT NULL,
  `Avis` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id_recette` (`Id_recette`),
  KEY `Id_user` (`Id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `recette`
--

DROP TABLE IF EXISTS `recette`;
CREATE TABLE IF NOT EXISTS `recette` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) DEFAULT NULL,
  `Durée` float NOT NULL,
  `Prix` float NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `recette`
--

INSERT INTO `recette` (`Id`, `Nom`, `Durée`, `Prix`, `Description`, `image`) VALUES
(1, 'Croque-Monsieur Mowarella, Avocat, Tomate', 15, 5, 'C\'est bon', 'photo1.jpg'),
(2, 'Tortilla pomme de terre courgette', 50, 15, 'A faire', 'photo2.jpg'),
(3, 'Pizza micro-onde', 6, 1, 'a faire', 'photo3.jpg'),
(4, 'Salades de Pates', 15, 5, 'Sales rafraichissante surtout en été.', 'photo4.jpg'),
(5, 'Crèpes sans lait', 8, 3, 'Crèpes à manger en famille. Plait à tous même si l\'on est allergique au lait car du lait, il n\'y en a point.', 'photo5.jpg'),
(6, 'Smoothie aux fruits rouges', 3, 3, 'Rien de mieux pour se rafraichir.', 'photo6.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `usr`
--

DROP TABLE IF EXISTS `usr`;
CREATE TABLE IF NOT EXISTS `usr` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(30) DEFAULT NULL,
  `Prénom` varchar(30) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Mdp` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `code`
--
ALTER TABLE `code`
  ADD CONSTRAINT `Code_ibfk_1` FOREIGN KEY (`Id_recette`) REFERENCES `recette` (`Id`);

--
-- Contraintes pour la table `etape`
--
ALTER TABLE `etape`
  ADD CONSTRAINT `etape_ibfk_1` FOREIGN KEY (`Id_recette`) REFERENCES `recette` (`Id`);

--
-- Contraintes pour la table `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `Evaluation_ibfk_1` FOREIGN KEY (`Id_recette`) REFERENCES `recette` (`Id`),
  ADD CONSTRAINT `Evaluation_ibfk_2` FOREIGN KEY (`Id_user`) REFERENCES `usr` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
