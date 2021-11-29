-- Création d'un table "client" dans la base "salon" avec attributs
CREATE TABLE `salon`.`client` ( `ID` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT , `nom` VARCHAR(255) NOT NULL , `prenon` VARCHAR(255) NOT NULL , `mail` VARCHAR(255) NULL , `telephone` MEDIUMINT(10) UNSIGNED ZEROFILL NOT NULL , PRIMARY KEY (`ID`)) ENGINE = InnoDB;

-- Création d'un table "fournisseur" dans la base "salon" avec attributs

CREATE TABLE `salon`.`fournisseur` ( `ID` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT , `societe` VARCHAR(255) NOT NULL , `adresse` TEXT NOT NULL , `mail` VARCHAR(255) NULL , `telephone` MEDIUMINT(10) UNSIGNED ZEROFILL NOT NULL , PRIMARY KEY (`ID`)) ENGINE = InnoDB;
