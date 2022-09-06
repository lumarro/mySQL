-- MySQL Script generated by MySQL Workbench
-- Mon Sep  5 12:34:20 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema musica
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema musica
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `musica` DEFAULT CHARACTER SET utf8 ;
USE `musica` ;

-- -----------------------------------------------------
-- Table `musica`.`Genre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `musica`.`Genre` (
  `idGenre` INT NOT NULL,
  `Genre` VARCHAR(255) NULL,
  PRIMARY KEY (`idGenre`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `musica`.`Artist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `musica`.`Artist` (
  `idArtist` INT NOT NULL,
  `artistName` VARCHAR(255) NULL,
  PRIMARY KEY (`idArtist`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `musica`.`Album`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `musica`.`Album` (
  `idAlbum` INT NOT NULL,
  `albumName` VARCHAR(255) NULL,
  `dataReleased` DATETIME NULL,
  `Genre_idGenre` INT NOT NULL,
  `Artist_idArtist` INT NOT NULL,
  PRIMARY KEY (`idAlbum`, `Genre_idGenre`),
  INDEX `fk_Album_Genre_idx` (`Genre_idGenre` ASC) VISIBLE,
  INDEX `fk_Album_Artist1_idx` (`Artist_idArtist` ASC) VISIBLE,
  CONSTRAINT `fk_Album_Genre`
    FOREIGN KEY (`Genre_idGenre`)
    REFERENCES `musica`.`Genre` (`idGenre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Album_Artist1`
    FOREIGN KEY (`Artist_idArtist`)
    REFERENCES `musica`.`Artist` (`idArtist`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;