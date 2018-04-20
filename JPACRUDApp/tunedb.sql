-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema tunelibrary
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `tunelibrary` ;

-- -----------------------------------------------------
-- Schema tunelibrary
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tunelibrary` DEFAULT CHARACTER SET utf8 ;
USE `tunelibrary` ;

-- -----------------------------------------------------
-- Table `tune`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tune` ;

CREATE TABLE IF NOT EXISTS `tune` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(200) NOT NULL,
  `rhythm` VARCHAR(45) NOT NULL,
  `key` VARCHAR(20) NOT NULL,
  `provenance` VARCHAR(100) NULL,
  `sound_file_fast_url` VARCHAR(300) NULL,
  `sound_file_slow_url` VARCHAR(300) NULL,
  `aka` VARCHAR(200) NULL,
  `notes` VARCHAR(1000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
GRANT USAGE ON *.* TO tunelibrary@localhost;
 DROP USER tunelibrary@localhost;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'tunelibrary'@'localhost' IDENTIFIED BY 'tunelibrary';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'tunelibrary'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `tune`
-- -----------------------------------------------------
START TRANSACTION;
USE `tunelibrary`;
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (1, 'Pull the Knife and Stick it Again', 'Jig', 'Emin', 'Irish', '', '', 'Stick the Knife and Twist it', 'Often played with Buried My Wife');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (2, 'Buried My Wife and Danced on Her Grave', 'Jig', 'GMaj', 'Irish', 'https://www.youtube.com/watch?v=bE-WDVJrIYQ', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (3, 'Tamlin', 'Reel', 'Dmin', 'Irish', 'https://www.youtube.com/watch?v=kaoml9_Ue1g', '', 'The Glasgow Reel', 'Be careful playing in Ireland, according to legend this tune brings in the faeries.');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (4, 'The Torn Jacket', 'Reel', 'DMaj', 'Irish', 'https://www.youtube.com/watch?v=wAan9UHKcM4', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (5, 'Sunny Banks', 'Reel', 'DMaj', 'Irish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (6, 'The Morning Star', 'Reel', 'DMaj', 'Irish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (7, 'Rolling in the Ryegrass', 'Reel', 'DMaj', 'Irish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (8, 'Kitty Lie Over', 'Jig', 'DMaj', 'Irish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (9, 'Jim Ward\'s ', 'Jig', 'AMix', 'Irish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (10, 'Out On the Ocean', 'Jig', 'GMaj', 'Irish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (11, 'Fead An Iolar', 'Waltz', 'GMaj', 'Irish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (12, 'Jimmy\'s Return', 'Reel', 'Bmin', 'Irish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (13, 'Humours of Glenard', 'Jig', 'DMaj', 'Irish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (14, 'Have a Drink With Me', 'Jig', 'Emin', 'Irish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (15, 'Come West Along the Road', 'Reel', 'GMaj', 'Irish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (16, 'April Waltz', 'Waltz', 'Emin', 'Irish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (17, 'Tommy People\'s', 'Reel', 'GMaj', 'Irish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (18, 'Ookpik Waltz', 'Waltz', 'GMaj', 'Cape Breton', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (19, 'Grondeuse Wilfred', 'Reel', 'GMaj', 'Quebecois', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (20, 'La Belle Catherine', 'Reel', 'DMaj', 'Quebecois', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (21, 'Reel a Tido', 'Reel', 'DMaj', 'Quebecois', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (22, 'Le Step a Ti-phonse', 'Reel', 'DMaj', 'Quebecois', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (23, 'La Rachoudine', 'Reel', 'GMaj', 'Quebecois', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (24, 'Hommage du Edmond Pariseau', 'Reel', 'DMin', 'Quebecois', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (25, 'St Kilda Wedding', 'Reel', 'AMaj', 'Scottish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (26, 'Brose and Butter', 'Slip Jig', 'GMaj', 'Scottish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (27, 'Maggie\'s Pancakes', 'Reel', 'DMaj', 'Scottish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (28, 'Angeline the Baker', 'Polka', 'DMaj', 'American', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (29, 'Cold Frosty Morning', 'Reel', 'ADor', 'Scottish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (30, 'Yell in the Shoats', 'Reel', 'DMaj', 'American', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (31, 'Jerusalem Ridge', 'Reel', 'Dmin', 'American', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (32, 'Sal\'s Got Mud Between Her Toes', 'Reel', 'GMaj', 'American', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (33, 'Danse Androu', 'Reel', 'EMin', 'Galician', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (34, 'Shove The Pig\'s Foot A Little Further Into The Fire', 'Reel', 'GMaj', 'American', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (35, 'Midnight On The Water', 'Waltz', 'DMaj', 'American', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (36, 'Clapwaltzen', 'Waltz', 'Emin', 'Swedish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (37, 'Lad O\'Beirne\'s', 'Reel', 'GMaj', 'Scottish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (38, 'Foxhunters Reel', 'Reel', 'GMaj', 'Irish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (39, 'Flowers of Red Hill', 'Reel', 'ADor', 'Irish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (40, 'Man of the House', 'Reel', 'Emin', 'Irish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (41, 'Eleanor Plunkett', 'Waltz', 'GMaj', 'Irish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (42, 'Foxhunter\'s Jig', 'Jig', 'DMaj', 'Irish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (43, 'John Ryan\'s', 'Polka', 'DMaj', 'Irish', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (44, 'La Bruxa Muniera', 'Jig', 'Emin', 'Galician', '', '', '', '');
INSERT INTO `tune` (`id`, `title`, `rhythm`, `key`, `provenance`, `sound_file_fast_url`, `sound_file_slow_url`, `aka`, `notes`) VALUES (45, 'The Hare in the Corn', 'Jig', 'DMix', 'Irish', '', '', '', '');

COMMIT;
