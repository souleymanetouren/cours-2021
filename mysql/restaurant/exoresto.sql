-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : ven. 26 nov. 2021 à 09:49
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `restaurant`
--

-- --------------------------------------------------------

--
-- Structure de la table `Orders`
--

-- création base donnee
-- 

CREATE TABLE `Orders` (
  `OrderID` int(11) NOT NULL,
  `OrderNumber` int(11) NOT NULL,
  `PersonID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Orders`
--

INSERT INTO `Orders` (`OrderID`, `OrderNumber`, `PersonID`) VALUES
(1, 34525262, 2);

-- --------------------------------------------------------

--
-- Structure de la table `Persons`
--

CREATE TABLE `Persons` (
  `ID` int(11) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Persons`
--

INSERT INTO `Persons` (`ID`, `LastName`, `FirstName`, `Age`) VALUES
(1, 'ola', 'christine', 35),
(2, 'vincent', 'papin', 25);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `FK_PersonOrder` (`PersonID`);

--
-- Index pour la table `Persons`
--
ALTER TABLE `Persons`
  ADD PRIMARY KEY (`ID`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `FK_PersonOrder` FOREIGN KEY (`PersonID`) REFERENCES `Persons` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;