-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2021 at 03:56 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projet`
--

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
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
  `Discription` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `etape`
--

INSERT INTO `etape` (`Id`, `Id_recette`, `Nom`, `Discription`) VALUES
(1, 1, 'Etape 1', 'Cuire la polenta selon les indications du paquet en remuant continuellement.'),
(2, 1, 'Etape 2', 'Une fois qu’elle est bien épaisse, retirer du feu et ajouter le fromage, saler, poivrer et ajouter des herbes. '),
(3, 1, 'Etape 3', 'Verser la polenta dans un moule rectangulaire et laisser refroidir plusieurs heures.'),
(4, 1, 'Etape 4', 'Une fois la polenta froide, découper des carrés et les poêler à feu moyen des deux côtés.'),
(5, 2, 'Etape 1', 'Eplucher et couper les pommes de terre en cubes. '),
(6, 2, 'Etape 2', 'Couper les courgettes en rondelles.'),
(7, 2, 'Etape 3', 'Chauffer une cuillère à soupe d’huile dans une poêle et y faire revenir les courgettes pendant 6 min.'),
(8, 2, 'Etape 4', 'Ajouter ensuite les pommes de terre et assaisonner. Couvrir et cuire 25 min en mélangeant régulièrement.'),
(9, 2, 'Etape 5', 'Battre les oeufs en omelette et les verser sur les pommes de terre. Couvrir et cuire 12 min.'),
(10, 3, 'Etape 1', 'Dans un bol mélanger la farine et la levure.'),
(11, 3, 'Etape 2', 'Ajouter le sel et mélanger de nouveau.'),
(12, 3, 'Etape 3', 'Incorporer le lait, mélanger puis pétrir jusqu’à obtenir une pâte homogène.'),
(13, 3, 'Etape 4', 'L’étaler sur une assiette et ajouter la sauce de votre choix. Cuire au micro-ondes (800W) pendant 40 sec.'),
(14, 3, 'Etape 5', 'Sortir l’assiette du micro-ondes, saupoudrer de fromage, d’olives, de jambon, etc.'),
(15, 3, 'Etape 6', 'Remettre à cuire 20 sec, vérifier si la pizza semble cuite sinon remettre à cuire encore 15 sec supplémentaires.'),
(16, 4, 'Etape 1', 'Si vous prenez du poulet en escalope, coupez-le en gros cubes et faites-le cuire en parallèle dans une poêle chaude légèrement huilée.'),
(17, 4, 'Etape 2', 'Pendant que les pâtes cuisent, laver et couper les tomates en cubes, puis les placer dans un saladier, saler et ajouter de l’ail, origan, basilic.'),
(18, 4, 'Etape 3', 'Laver et couper quelques feuilles de salade, égoutter des olives et les couper en rondelles, couper le fromage en cubes. '),
(19, 4, 'Etape 4', 'Si vous avez choisi une légumineuse, sortez-là de sa boîte et égouttez-là.'),
(20, 4, 'Etape 5', 'Ajouter le tout aux tomates.'),
(21, 4, 'Etape 6', 'Dans un verre mélanger l’huile, le vinaigre, sel et poivre. '),
(22, 4, 'Etape 7', 'Verser cette vinaigrette dans le saladier de tomates et bien mélanger.'),
(23, 4, 'Etape 8', 'Egoutter les pâtes et les ajouter au saladier (ajouter aussi le poulet si vous en aviez mis à cuire). '),
(24, 4, 'Etape 9', 'Mélanger et manger immédiatement ou placer au frais quelques heures.'),
(25, 5, 'Etape 1', 'Fouetter les 4 ingrédients ensemble jusqu’à obtenir une pâte lisse et homogène.'),
(26, 5, 'Etape 2', 'Graisser une poêle (huile ou beurre)'),
(27, 5, 'Etape 3', 'Cuire les crêpes 2min par face à feu moyen.'),
(28, 6, 'Etape 1', 'Simplement tout passer au mixeur et boire bien frais !');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE `evaluation` (
  `Id` int(11) NOT NULL,
  `Id_recette` int(11) DEFAULT NULL,
  `Id_user` int(11) DEFAULT NULL,
  `Evaluation` int(11) DEFAULT NULL,
  `Avis` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE `ingredient` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Calories` int(11) NOT NULL
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
  `Description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recette`
--

INSERT INTO `recette` (`Id`, `Nom`, `Durée`, `Prix`, `Description`, `image`) VALUES
(1, 'Nugget de Polenta', 20, 5, 'Nous avons fait du polenta un ingrédient exquis.', 'photo1.jpg'),
(2, 'Tortilla pomme de terre courgette', 50, 15, 'A faire', 'photo2.jpg'),
(3, 'Pizza micro-onde', 6, 1, 'a faire', 'photo3.jpg'),
(4, 'Salades de Pates', 15, 5, 'Salades rafraichissante surtout en été.', 'photo4.jpg'),
(5, 'Crèpes sans lait', 8, 3, 'Crèpes à manger en famille. Plait à tous même si l\'on est allergique au lait car du lait, il n\'y en a point.', 'photo5.jpg'),
(6, 'Smoothie aux fruits rouges', 3, 3, 'Rien de mieux pour se rafraichir.', 'photo6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `recette_ingredient`
--

CREATE TABLE `recette_ingredient` (
  `Id` int(11) NOT NULL,
  `Id_recette` int(11) DEFAULT NULL,
  `Id_ing` int(11) DEFAULT NULL,
  `Quantite` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_recette` (`Id_recette`);

--
-- Indexes for table `etape`
--
ALTER TABLE `etape`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_recette` (`Id_recette`);

--
-- Indexes for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_recette` (`Id_recette`),
  ADD KEY `Id_user` (`Id_user`);

--
-- Indexes for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `recette`
--
ALTER TABLE `recette`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `recette_ingredient`
--
ALTER TABLE `recette_ingredient`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_recette` (`Id_recette`),
  ADD KEY `Id_ing` (`Id_ing`);

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recette`
--
ALTER TABLE `recette`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `recette_ingredient`
--
ALTER TABLE `recette_ingredient`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usr`
--
ALTER TABLE `usr`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `code`
--
ALTER TABLE `code`
  ADD CONSTRAINT `Code_ibfk_1` FOREIGN KEY (`Id_recette`) REFERENCES `recette` (`Id`);

--
-- Constraints for table `etape`
--
ALTER TABLE `etape`
  ADD CONSTRAINT `etape_ibfk_1` FOREIGN KEY (`Id_recette`) REFERENCES `recette` (`Id`);

--
-- Constraints for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `Evaluation_ibfk_1` FOREIGN KEY (`Id_recette`) REFERENCES `recette` (`Id`),
  ADD CONSTRAINT `Evaluation_ibfk_2` FOREIGN KEY (`Id_user`) REFERENCES `usr` (`Id`);

--
-- Constraints for table `recette_ingredient`
--
ALTER TABLE `recette_ingredient`
  ADD CONSTRAINT `recette_ingredient_ibfk_1` FOREIGN KEY (`Id_recette`) REFERENCES `recette` (`Id`),
  ADD CONSTRAINT `recette_ingredient_ibfk_2` FOREIGN KEY (`Id_ing`) REFERENCES `ingredient` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
