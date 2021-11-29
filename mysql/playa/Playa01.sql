CREATE TABLE `plage` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nom` varchar(255) NOT NULL,
	`longueur` INT(255),
	`naturePlage` varchar(255),
	PRIMARY KEY (`id`)
);

CREATE TABLE `ville` (
	`codePostal` INT(6) NOT NULL,
	`nomVille` varchar(255) NOT NULL,
	`nombreAnTouristes` INT,
	`idPlage` INT(255) NOT NULL,
	PRIMARY KEY (`codePostal`)
);

CREATE TABLE `responsableRegion` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nom` varchar(255) NOT NULL,
	`prenom` varchar(255) NOT NULL,
	`fonction` varchar(255),
	`mail` varchar(255),
	`telephone` INT,
	PRIMARY KEY (`id`)
);

CREATE TABLE `region` (
	`numero` INT(3) NOT NULL,
	`nomRegion` varchar(255) NOT NULL,
	`idResponsable` INT(255) NOT NULL,
	`numDepartement` INT(255) NOT NULL,
	`codePostal` INT(255) NOT NULL,
	PRIMARY KEY (`numero`)
);

CREATE TABLE `departement` (
	`numDepartement` INT NOT NULL,
	`nomResponsable` varchar(255) NOT NULL,
	`prenomResponsable` varchar(255) NOT NULL,
	`fonction` varchar(255),
	`telephoneResponsable` varchar(255),
	`mailResponsable` varchar(255),
	PRIMARY KEY (`numDepartement`)
);

ALTER TABLE `ville` ADD CONSTRAINT `ville_fk0` FOREIGN KEY (`idPlage`) REFERENCES `plage`(`id`);

ALTER TABLE `region` ADD CONSTRAINT `region_fk0` FOREIGN KEY (`idResponsable`) REFERENCES `responsableRegion`(`id`);

ALTER TABLE `region` ADD CONSTRAINT `region_fk1` FOREIGN KEY (`numDepartement`) REFERENCES `departement`(`numDepartement`);

ALTER TABLE `region` ADD CONSTRAINT `region_fk2` FOREIGN KEY (`codePostal`) REFERENCES `ville`(`codePostal`);
