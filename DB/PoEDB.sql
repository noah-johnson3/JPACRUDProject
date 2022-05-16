-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema pathofexiledb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `pathofexiledb` ;

-- -----------------------------------------------------
-- Schema pathofexiledb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pathofexiledb` DEFAULT CHARACTER SET utf8 ;
USE `pathofexiledb` ;

-- -----------------------------------------------------
-- Table `path_of_exile_character`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `path_of_exile_character` ;

CREATE TABLE IF NOT EXISTS `path_of_exile_character` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `character_class` VARCHAR(100) NULL,
  `helmet` VARCHAR(45) NULL,
  `weapon` VARCHAR(45) NULL,
  `body_armor` VARCHAR(45) NULL,
  `boots` VARCHAR(45) NULL,
  `gloves` VARCHAR(45) NULL,
  `belt` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS poe@localhost;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'poe'@'localhost' IDENTIFIED BY 'poe';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'poe'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `path_of_exile_character`
-- -----------------------------------------------------
START TRANSACTION;
USE `pathofexiledb`;
INSERT INTO `path_of_exile_character` (`id`, `name`, `character_class`, `helmet`, `weapon`, `body_armor`, `boots`, `gloves`, `belt`) VALUES (1, 'NoahPlaysNecro', 'Necromancer', 'The Baron', 'Lifesprig', 'Kaom\'s Heart', 'Seven-league step', 'Meginord\'s Vise', 'Mageblood');
INSERT INTO `path_of_exile_character` (`id`, `name`, `character_class`, `helmet`, `weapon`, `body_armor`, `boots`, `gloves`, `belt`) VALUES (2, 'NoahPlaysPF', 'Pathfinder', 'Goldrim', 'Oni-Goroshi', 'Blunderbore', 'Atziri\'s Step', 'Doryani\'s Fist', 'Headhunter');
INSERT INTO `path_of_exile_character` (`id`, `name`, `character_class`, `helmet`, `weapon`, `body_armor`, `boots`, `gloves`, `belt`) VALUES (3, 'NoahPlaysZerker', 'Berserker', 'The Fledgling', 'Pledge of Hands', 'The Brass Dome', 'Kaom\'s Roots', 'Haemophilia', 'Replica Soul Tether');
INSERT INTO `path_of_exile_character` (`id`, `name`, `character_class`, `helmet`, `weapon`, `body_armor`, `boots`, `gloves`, `belt`) VALUES (4, 'NoahPlaysChamp', 'Champion', 'The Baron', 'Lifesprig', 'Kaom\'s Heart', 'Seven-league step', 'Meginord\'s Vise', 'Mageblood');
INSERT INTO `path_of_exile_character` (`id`, `name`, `character_class`, `helmet`, `weapon`, `body_armor`, `boots`, `gloves`, `belt`) VALUES (5, 'NoahPlaysTrickster', 'Trickster', 'The Fledgling', 'Oni-Goroshi', 'Blunderbore', 'Atziri\'s Step', 'Doryani\'s Fist', 'Headhunter');
INSERT INTO `path_of_exile_character` (`id`, `name`, `character_class`, `helmet`, `weapon`, `body_armor`, `boots`, `gloves`, `belt`) VALUES (6, 'NoahPlaysInquisitor', 'Inquisitor', 'Goldrim', 'Pledge of Hands', 'The Brass Dome', 'Kaom\'s Roots', 'Haemophilia', 'Replica Soul Tether');
INSERT INTO `path_of_exile_character` (`id`, `name`, `character_class`, `helmet`, `weapon`, `body_armor`, `boots`, `gloves`, `belt`) VALUES (7 , 'NoahPlaysAscendant', 'Ascendant', 'The Baron', 'Lifesprig', 'Kaom\'s Heart', 'Seven-league step', 'Meginord\'s Vise', 'Mageblood');
INSERT INTO `path_of_exile_character` (`id`, `name`, `character_class`, `helmet`, `weapon`, `body_armor`, `boots`, `gloves`, `belt`) VALUES (8, 'NoahPlaysMancer', 'Necromancer', 'Goldrim', 'Oni-Goroshi', 'Blunderbore', 'Atziri\'s Step', 'Doryani\'s Fist', 'Headhunter');

COMMIT;

