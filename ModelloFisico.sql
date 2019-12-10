-- MySQL Script generated by MySQL Workbench
-- Tue Dec 10 19:06:46 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema SofwareHouse
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema SofwareHouse
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SofwareHouse` DEFAULT CHARACTER SET utf8 ;
USE `SofwareHouse` ;

-- -----------------------------------------------------
-- Table `SofwareHouse`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SofwareHouse`.`Cliente` (
  `CodiceC` INT(5) UNSIGNED NOT NULL,
  `Indirizzo` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`CodiceC`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SofwareHouse`.`Personale`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SofwareHouse`.`Personale` (
  `CodiceP` INT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(15) NOT NULL,
  `Cognome` VARCHAR(15) NOT NULL,
  `Data_nascita` DATE NOT NULL,
  `CF` CHAR(16) NOT NULL,
  `Ruolo` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`CodiceP`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SofwareHouse`.`Software`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SofwareHouse`.`Software` (
  `CodiceS` INT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Tipo` VARCHAR(15) NOT NULL,
  `Prezzo` FLOAT NOT NULL,
  `Settore` VARCHAR(15) NOT NULL,
  `Caratteristica` TINYTEXT NOT NULL,
  `Licenza` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`CodiceS`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SofwareHouse`.`Lavora_su`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SofwareHouse`.`Lavora_su` (
  `Personale_CodiceP` INT(5) UNSIGNED NOT NULL,
  `Software_CodiceS` INT(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`Personale_CodiceP`, `Software_CodiceS`),
  INDEX `fk_Lavora_su_Software1_idx` (`Software_CodiceS` ASC) VISIBLE,
  CONSTRAINT `fk_Lavora_su_Personale`
    FOREIGN KEY (`Personale_CodiceP`)
    REFERENCES `SofwareHouse`.`Personale` (`CodiceP`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Lavora_su_Software1`
    FOREIGN KEY (`Software_CodiceS`)
    REFERENCES `SofwareHouse`.`Software` (`CodiceS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SofwareHouse`.`Sistema Operativo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SofwareHouse`.`Sistema Operativo` (
  `Sistema` VARCHAR(20) NOT NULL,
  `Software_CodiceS` INT(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`Sistema`, `Software_CodiceS`),
  INDEX `fk_Sistema Operativo_Software1_idx` (`Software_CodiceS` ASC) VISIBLE,
  CONSTRAINT `fk_Sistema Operativo_Software1`
    FOREIGN KEY (`Software_CodiceS`)
    REFERENCES `SofwareHouse`.`Software` (`CodiceS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SofwareHouse`.`Problema`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SofwareHouse`.`Problema` (
  `Descrizione` TINYTEXT NOT NULL,
  `Numero` INT(5) NOT NULL AUTO_INCREMENT,
  `Software_CodiceS` INT(5) UNSIGNED NOT NULL,
  `Cliente_CodiceC` INT(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`Numero`, `Software_CodiceS`),
  INDEX `fk_Problema_Software1_idx` (`Software_CodiceS` ASC) VISIBLE,
  INDEX `fk_Problema_Cliente1_idx` (`Cliente_CodiceC` ASC) VISIBLE,
  CONSTRAINT `fk_Problema_Software1`
    FOREIGN KEY (`Software_CodiceS`)
    REFERENCES `SofwareHouse`.`Software` (`CodiceS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Problema_Cliente1`
    FOREIGN KEY (`Cliente_CodiceC`)
    REFERENCES `SofwareHouse`.`Cliente` (`CodiceC`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SofwareHouse`.`Corso Formativo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SofwareHouse`.`Corso Formativo` (
  `CodiceCF` INT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Descrizione` TINYTEXT NOT NULL,
  `Durata_in_ore` TINYINT NOT NULL,
  `Data_inizio` DATE NOT NULL,
  `Numero_esami` TINYINT NOT NULL,
  PRIMARY KEY (`CodiceCF`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SofwareHouse`.`Acquista`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SofwareHouse`.`Acquista` (
  `Software_CodiceS` INT(5) UNSIGNED NOT NULL,
  `Cliente_CodiceC` INT(5) UNSIGNED NOT NULL,
  INDEX `fk_Acquista_Software1_idx` (`Software_CodiceS` ASC) VISIBLE,
  PRIMARY KEY (`Cliente_CodiceC`, `Software_CodiceS`),
  CONSTRAINT `fk_Acquista_Software1`
    FOREIGN KEY (`Software_CodiceS`)
    REFERENCES `SofwareHouse`.`Software` (`CodiceS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Acquista_Cliente1`
    FOREIGN KEY (`Cliente_CodiceC`)
    REFERENCES `SofwareHouse`.`Cliente` (`CodiceC`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SofwareHouse`.`Telefono/Fax`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SofwareHouse`.`Telefono/Fax` (
  `Numero` CHAR(14) NOT NULL,
  `Tipo` CHAR(1) NOT NULL,
  `Cliente_CodiceC` INT(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`Numero`, `Cliente_CodiceC`),
  INDEX `fk_Telefono/Fax_Cliente1_idx` (`Cliente_CodiceC` ASC) VISIBLE,
  CONSTRAINT `fk_Telefono/Fax_Cliente1`
    FOREIGN KEY (`Cliente_CodiceC`)
    REFERENCES `SofwareHouse`.`Cliente` (`CodiceC`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SofwareHouse`.`Attestato`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SofwareHouse`.`Attestato` (
  `Data_rilascio` DATE NOT NULL,
  `Corso Formativo_CodiceCF` INT(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`Corso Formativo_CodiceCF`),
  CONSTRAINT `fk_Attestato_Corso Formativo1`
    FOREIGN KEY (`Corso Formativo_CodiceCF`)
    REFERENCES `SofwareHouse`.`Corso Formativo` (`CodiceCF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SofwareHouse`.`Azienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SofwareHouse`.`Azienda` (
  `Partita_iva` CHAR(13) NOT NULL,
  `Ragione_sociale` VARCHAR(30) NOT NULL,
  `Cliente_CodiceC` INT(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`Cliente_CodiceC`),
  CONSTRAINT `fk_Azienda_Cliente1`
    FOREIGN KEY (`Cliente_CodiceC`)
    REFERENCES `SofwareHouse`.`Cliente` (`CodiceC`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SofwareHouse`.`Privato`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SofwareHouse`.`Privato` (
  `CF` CHAR(16) NOT NULL,
  `Nome` VARCHAR(15) NOT NULL,
  `Cognome` VARCHAR(15) NOT NULL,
  `Data_nascita` DATE NOT NULL,
  `Cliente_CodiceC` INT(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`Cliente_CodiceC`),
  CONSTRAINT `fk_Privato_Cliente1`
    FOREIGN KEY (`Cliente_CodiceC`)
    REFERENCES `SofwareHouse`.`Cliente` (`CodiceC`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SofwareHouse`.`Consegue`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SofwareHouse`.`Consegue` (
  `Cliente_CodiceC` INT(5) UNSIGNED NOT NULL,
  `Attestato_Corso Formativo_CodiceCF` INT(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`Cliente_CodiceC`, `Attestato_Corso Formativo_CodiceCF`),
  INDEX `fk_Consegue_Attestato1_idx` (`Attestato_Corso Formativo_CodiceCF` ASC) VISIBLE,
  CONSTRAINT `fk_Consegue_Cliente1`
    FOREIGN KEY (`Cliente_CodiceC`)
    REFERENCES `SofwareHouse`.`Cliente` (`CodiceC`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Consegue_Attestato1`
    FOREIGN KEY (`Attestato_Corso Formativo_CodiceCF`)
    REFERENCES `SofwareHouse`.`Attestato` (`Corso Formativo_CodiceCF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SofwareHouse`.`Segue`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SofwareHouse`.`Segue` (
  `Numero_esami_dati` INT(5) NOT NULL,
  `Cliente_CodiceC` INT(5) UNSIGNED NOT NULL,
  `Corso Formativo_CodiceCF` INT(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`Cliente_CodiceC`, `Corso Formativo_CodiceCF`),
  INDEX `fk_Segue_Corso Formativo1_idx` (`Corso Formativo_CodiceCF` ASC) VISIBLE,
  CONSTRAINT `fk_Segue_Cliente1`
    FOREIGN KEY (`Cliente_CodiceC`)
    REFERENCES `SofwareHouse`.`Cliente` (`CodiceC`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Segue_Corso Formativo1`
    FOREIGN KEY (`Corso Formativo_CodiceCF`)
    REFERENCES `SofwareHouse`.`Corso Formativo` (`CodiceCF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
