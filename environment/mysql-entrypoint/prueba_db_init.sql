-- MySQL Script generated by MySQL Workbench
-- Wed Jan  1 23:28:32 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema prueba_db
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `prove_db` ;

-- -----------------------------------------------------
-- Schema prueba_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `prove_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `prove_db` ;

-- -----------------------------------------------------
-- Table `prueba_db`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `User` (
  `idUser` INT NOT NULL AUTO_INCREMENT,
  `nameUser` VARCHAR(45) NULL,
  `passwdUser` VARCHAR(20) NULL,
  `emailUser` VARCHAR(45) NULL,
  PRIMARY KEY (`idUser`),
  UNIQUE INDEX `emailUser_UNIQUE` (`emailUser` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
