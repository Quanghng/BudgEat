-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 11 déc. 2021 à 17:31
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
-- Base de données : `projet1`
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
  `Description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id_recette` (`Id_recette`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `etape`
--

INSERT INTO `etape` (`Id`, `Id_recette`, `Nom`, `Description`) VALUES
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
(28, 6, 'Etape 1', 'Simplement tout passer au mixeur et boire bien frais !'),
(34, 8, 'Etape 1', 'Mélanger la farine, la levure et les herbes/épices.'),
(35, 8, 'Etape 2', 'Ajouter ensuite le yaourt et l’eau puis pétrir à la main jusqu’à obtenir une boule non collante.'),
(36, 8, 'Etape 3', 'Si la pâte est dure ou forme des crevasses,  il faut ajouter de l’eau. Pour éviter d’en mettre trop, ne versez pas de liquide directement dans la pâte : mouillez vos mains, puis recommencez à pétrir avec les mains humides.'),
(37, 8, 'Etape 4', 'Etaler ensuite la pâte sur un plan de travail fariné.'),
(38, 8, 'Etape 5', 'Ajouter le fourrage au centre puis refermer.'),
(39, 8, 'Etape 6', 'Cuire dans une poêle à feu moyen quelques minutes en retournant et surveillant que ça ne brûle pas.'),
(45, 7, 'Etape 1', 'Ciseler l’oignon, couper la carotte en petits cubes (ou en lamelles avec un économe).'),
(46, 7, 'Etape 2', 'Chauffer l’huile dans une poêle puis verser l’oignon et la carotte, faire revenir quelques minutes.'),
(47, 7, 'Etape 3', 'Ajouter la purée de tomates, sel, poivre, basilic et origan, laisser mijoter 5 min. Au même moment mettre de l’eau à bouillir pour les pâtes.'),
(48, 7, 'Etape 4', 'Après les 5 min, ajouter les lentilles et laisser cuire 10 min. Au même moment, mettre les pâtes à cuire.'),
(49, 7, 'Etape 5', 'Servir les pâtes avec la bolo et du parmesan ou levure maltée !'),
(56, 9, 'Etape 1', 'Si vous faites la version sans oeuf, verser les graines de Chia dans un verre avec 3 càs d’eau et laisser gonfler 15 min.'),
(57, 9, 'Etape 2', 'Dans un bol fouetter l’oeuf (ou les graines de Chia gonflées), la farine et le yaourt. '),
(58, 9, 'Etape 3', 'Ajouter le sel, poivre et herbes/épices. Verser ensuite les légumes et bien mélanger à la cuillère.'),
(59, 9, 'Etape 4', 'Verser le mélange dans un bol ou un gros verre et cuire au micro-ondes 10 à 13 min.'),
(60, 9, 'Etape 5', 'Laisser refroidir puis placer au frais plusieurs heures avant de démouler.'),
(61, 10, 'Etape 1', 'Verser la pincée de sel sur le blanc d’oeuf et le battre en neige ferme.'),
(62, 10, 'Etape 2', 'Ajouter le sucre et le cacao, mélanger délicatement.'),
(63, 10, 'Etape 3', 'Placer quelques heures au frais.'),
(64, 11, 'Etape 1', 'Dans un saladier mélanger la farine et la levure puis ajouter le sel.'),
(65, 11, 'Etape 2', 'Dans un mixeur (oui, ENCORE LE MIXEUR) mixer les oeufs et le lait jusqu’à ce que le mélange mousse et double de volume .'),
(66, 11, 'Etape 3', 'Verser ce mélange sur la farine. Mélanger délicatement mais pas trop longtemps pour que ça ne retombe pas.'),
(67, 11, 'Etape 4', 'Huiler une poêle, la chauffer à feu moyen, déposer 2-3 càs de pâte puis le fourrage par-dessus'),
(68, 11, 'Etape 5', 'Attendre quelques secondes que le fourrage fonde puis recouvrir avec quelques cuillères de pâte.'),
(69, 11, 'Etape 6', 'Couvrir avec un couvercle et laisser cuire 3min, puis retourner et cuire 3min l’autre face.'),
(70, 11, 'Etape 7', 'Laisser refroidir sur une grille et déguster.'),
(71, 12, 'Etape 1', 'Verser le yaourt dans le bol, ajouter le sucre et mélanger énergiquement.'),
(72, 12, 'Etape 2', 'Ajouter ensuite les flocons d’avoine et le lait, mélanger de nouveau pour bien amalgamer les flocons d’avoine.'),
(73, 12, 'Etape 3', 'Couper le fruit en petits morceaux et les ajouter à la préparation, mélanger de nouveau.'),
(74, 12, 'Etape 4', 'Terminer en ajoutant vos toppings : noix, noisettes, amandes … ');

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
-- Structure de la table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
CREATE TABLE IF NOT EXISTS `ingredient` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  `Calories` float NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`Id`, `Nom`, `Calories`) VALUES
(1, 'Farine', 364),
(2, 'Levure chimique', 53.1),
(3, 'Sel', 0),
(4, 'Lait', 42.3),
(5, 'Sauce tomate', 28.7),
(6, 'Fromage', 402.5),
(7, 'Olive', 115),
(8, 'Jambon', 145.1),
(9, 'Chevre-miel', 1143),
(10, 'Pomme de terre', 80.5),
(11, 'Courgette', 16.7),
(12, 'Oeuf', 155.1),
(13, 'Poivre', 304),
(14, 'Huilde d\'olive', 884.1),
(15, 'Pates', 131),
(16, 'Feuille de salade', 1),
(17, 'Tomate', 20.1),
(18, 'Levure maltee', 345),
(19, 'Poids chiches', 364.5),
(20, 'Vinaigre', 18.2),
(21, 'Ail', 148.9),
(22, 'Basilic', 22.5),
(23, 'Origan', 265),
(24, 'Polenta', 85),
(25, 'Eau', 0),
(26, 'Skyr', 57),
(27, 'Epices', 251),
(28, 'Fruits rouges', 57.4),
(29, 'Sucre', 386.7),
(30, 'Lentilles', 116.4),
(31, 'Puree de tomates', 37.8),
(32, 'Carotte', 30),
(33, 'Oignon', 39.7),
(34, 'Bolognaise', 145),
(35, 'Yaourt animal', 46),
(36, 'Graines de Chia', 486.1),
(37, 'Blanc d’oeuf', 51.6),
(38, 'Flocons d’avoine sans gluten', 353),
(39, 'Légumes en conserve', 47.6),
(40, 'Cacao en poudre', 227.5),
(41, 'Pâte à tartiner', 234.9),
(42, 'Carré de chocolat', 26),
(43, 'Confiture', 278),
(44, 'Beurre de cacahuètes', 588.4),
(45, 'Muesli', 450),
(46, 'Flocons de soja', 403),
(47, 'Granola ', 471.3),
(48, 'Miel', 304),
(49, 'Sirop', 260),
(50, 'Fruit entier (Pomme)', 52.1),
(51, 'Petit Fruit (Fraise)', 32.5),
(52, 'Noix', 654.4),
(53, 'Amande', 600),
(54, 'Herbes', 314.8),
(55, 'Céréales', 379.1);

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `recette`
--

INSERT INTO `recette` (`Id`, `Nom`, `Durée`, `Prix`, `Description`, `image`) VALUES
(1, 'Nugget de Polenta', 20, 5, 'Nous avons fait du polenta un ingrédient exquis.', 'photo1.jpg'),
(2, 'Tortilla pomme de terre courgette', 50, 15, 'A faire', 'photo2.jpg'),
(3, 'Pizza micro-onde', 6, 1, 'a faire', 'photo3.jpg'),
(4, 'Salades de Pates', 15, 5, 'Salades rafraichissante surtout en été.', 'photo4.jpg'),
(5, 'Crèpes sans lait', 8, 3, 'Crèpes à manger en famille. Plait à tous même si l\'on est allergique au lait car du lait, il n\'y en a point.', 'photo5.jpg'),
(6, 'Smoothie aux fruits rouges', 3, 3, 'Rien de mieux pour se rafraichir.', 'photo6.jpg'),
(7, 'Bolognaise de lentilles', 11, 0, 'Une bolognaise économique, adaptée aux végétariens et végétaliens et simplissime !', 'photo7.jpg'),
(8, 'Brioche fourée à la poêle', 11, 0, 'Avec cette recette et quelques ingrédients que tout le monde possède dans ses placards (même toi), \r\ntes vieilles plaques pourraient bien regagner une place de choix dans ton coeur.', 'photo8.jpg'),
(9, 'Steak de légumes', 11, 0, 'Envie d’un hamburger ou d’un sandwich végétarien / vegan ? Remplacez facilement le steak par une galette de légumes végétale. En bonus, elle cuit sans four ! ', 'photo9.jpg'),
(10, 'Mousse au chocolat', 0, 0, 'Une mousse au chocolat simplissime et très économique : le cacao en poudre nécessite très peu de quantité comparé au chocolat, économies assurées', 'photo10.jpg'),
(11, 'Pancakes fourrés', 0, 0, 'C’est LE petit déjeuner digne d’une série par excellence !', 'photo11.jpg'),
(12, 'Oat bowl', 0, 0, 'un bol qui se prépare idéalement la veille et passe la nuit au frais, et que vous avez l’immense plaisir de trouver tout prêt le matin ! ', 'photo12.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `recette_ingredient`
--

DROP TABLE IF EXISTS `recette_ingredient`;
CREATE TABLE IF NOT EXISTS `recette_ingredient` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Id_recette` int(11) DEFAULT NULL,
  `Id_ing` int(11) DEFAULT NULL,
  `Quantite` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id_recette` (`Id_recette`),
  KEY `Id_ing` (`Id_ing`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `recette_ingredient`
--

INSERT INTO `recette_ingredient` (`Id`, `Id_recette`, `Id_ing`, `Quantite`) VALUES
(1, 1, 24, '70g'),
(2, 1, 6, '30g (Mozzarella)'),
(3, 1, 25, ''),
(4, 1, 3, ''),
(5, 1, 27, ''),
(6, 1, 54, ''),
(7, 2, 10, '270g'),
(8, 2, 11, '220g'),
(9, 2, 12, '3'),
(10, 2, 3, ''),
(11, 2, 13, ''),
(12, 2, 14, '1 càs'),
(13, 3, 1, '50g'),
(14, 3, 2, '1 càc'),
(15, 3, 3, '1 pincée'),
(16, 3, 4, '30g'),
(17, 3, 5, ''),
(18, 3, 6, ''),
(19, 3, 7, ''),
(20, 3, 8, ''),
(21, 3, 9, ''),
(22, 4, 15, '60-80g'),
(23, 4, 16, ''),
(24, 4, 17, '1'),
(25, 4, 7, '40g'),
(26, 4, 6, '30g'),
(27, 4, 18, '30g'),
(28, 4, 19, '100g'),
(29, 4, 14, '10g'),
(30, 4, 20, '1 càc'),
(31, 4, 3, ''),
(32, 4, 13, ''),
(33, 4, 21, ''),
(34, 4, 22, ''),
(35, 4, 23, ''),
(36, 5, 12, '1'),
(37, 5, 1, '60g'),
(38, 5, 25, '130g'),
(39, 5, 3, '1 pincée'),
(40, 6, 26, '125g'),
(41, 6, 28, '25g'),
(42, 6, 4, '150mL'),
(43, 6, 29, 'Selon gout'),
(44, 7, 30, '265g'),
(45, 7, 31, '200mL'),
(46, 7, 32, '1'),
(47, 7, 33, '1/2'),
(48, 7, 3, ''),
(49, 7, 13, ''),
(50, 7, 22, ''),
(51, 7, 23, ''),
(52, 7, 14, '1 càs'),
(53, 7, 15, '60-70g (cru)'),
(54, 7, 18, ''),
(55, 8, 1, '50g'),
(56, 8, 2, '1 grosse pincée'),
(57, 8, 3, ''),
(58, 8, 13, ''),
(59, 8, 54, ''),
(60, 8, 27, ''),
(61, 8, 9, 'Fourage'),
(62, 8, 34, 'Fourage'),
(63, 8, 6, 'Fourage'),
(64, 8, 35, '25g'),
(65, 8, 25, '12mL'),
(67, 9, 12, '1'),
(68, 9, 37, '1'),
(69, 9, 36, '1 càs'),
(70, 9, 1, '15g'),
(71, 9, 38, '15g'),
(72, 9, 35, '100g'),
(73, 9, 39, '200g'),
(74, 9, 3, ''),
(75, 9, 13, ''),
(76, 9, 54, ''),
(77, 9, 27, ''),
(78, 10, 37, '1'),
(79, 10, 3, '1 pincée'),
(80, 10, 29, '1 càc'),
(81, 10, 40, '2 càc'),
(82, 11, 1, '90g'),
(83, 11, 12, '1'),
(84, 11, 4, '100mL'),
(85, 11, 2, '1 càc'),
(86, 11, 3, '1 pincée'),
(87, 11, 41, 'Fourrage au choix'),
(88, 11, 42, 'Fourrage au choix'),
(89, 11, 43, 'Fourrage au choix'),
(90, 11, 44, 'Fourrage au choix'),
(91, 12, 55, '60-70g'),
(92, 12, 35, '1'),
(93, 12, 4, '100mL'),
(94, 12, 29, '1 cuillère'),
(95, 12, 48, '1 cuillère'),
(96, 12, 49, '1 cuillère'),
(97, 12, 50, '1'),
(98, 12, 51, '100g'),
(99, 12, 52, 'Topping au choix'),
(100, 12, 53, 'Topping au choix'),
(101, 12, 40, 'Topping au choix'),
(102, 12, 41, 'Topping au choix'),
(103, 12, 44, 'Topping au choix');

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

--
-- Contraintes pour la table `recette_ingredient`
--
ALTER TABLE `recette_ingredient`
  ADD CONSTRAINT `recette_ingredient_ibfk_1` FOREIGN KEY (`Id_recette`) REFERENCES `recette` (`Id`),
  ADD CONSTRAINT `recette_ingredient_ibfk_2` FOREIGN KEY (`Id_ing`) REFERENCES `ingredient` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
