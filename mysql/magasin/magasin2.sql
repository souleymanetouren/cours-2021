SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `Article` (
  `ArticleID` int(11) NOT NULL,
  `CategorieID` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Prix` int(11) NOT NULL,
  `Stock` int(11)
);


CREATE TABLE `Categorie` (
  `CategorieID` int(11) NOT NULL,
  `Libellé` int(11) NOT NULL
);


CREATE TABLE `Commande` (
  `CommandeID` int(11) NOT NULL,
  `ClientID` int(11) NOT NULL,
  `Qte_commandée` int(11) NOT NULL,
  `ArticleID` int(11) NOT NULL,
  `Date_paiement` date NOT NULL
);


CREATE TABLE `Client` (
  `ClientID` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Adresse` varchar(255) NOT NULL
);
