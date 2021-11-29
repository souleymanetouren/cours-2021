-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 24 nov. 2021 à 11:32
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
-- Base de données : `plagesDeFrance`
--

-- --------------------------------------------------------

--
-- Structure de la table `plage`
--

-- CREATE TABLE `plage` (
--   `id` int(11) NOT NULL,
--   `nom` varchar(255) NOT NULL,
--   `longueur` int(255) DEFAULT NULL,
--   `naturePlage` varchar(255) DEFAULT NULL
--  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `plage`
--

INSERT INTO `plage` (`id`, `nom`, `longueur`, `naturePlage`) VALUES
(1, 'PLAGE DU CHÂTEAU À MANDELIEU', 1000, 'sable fin'),
(2, 'PLAGE DU MIDI À CANNES', 5000, 'sables '),
(3, 'PLAGE DE LA GAROUPE À ANTIBES', 2222, 'galets');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `plage`
--
ALTER TABLE `plage`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `plage`
--
ALTER TABLE `plage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
