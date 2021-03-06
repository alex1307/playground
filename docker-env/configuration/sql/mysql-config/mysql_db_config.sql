SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE USER 'developer'@'%' IDENTIFIED BY 'pw4dev';
CREATE USER 'developer'@'localhost' IDENTIFIED BY 'pw4dev';

CREATE USER 'playground'@'%' IDENTIFIED BY 'pw4play';
CREATE USER 'playground'@'localhost' IDENTIFIED BY 'pw4play';


CREATE SCHEMA IF NOT EXISTS `PLAYGROUND` DEFAULT CHARACTER SET utf8;


GRANT ALL PRIVILEGES ON `PLAYGROUND`.* TO 'developer'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON `PLAYGROUND`.* TO 'developer'@'localhost' WITH GRANT OPTION;

GRANT ALL PRIVILEGES ON `PLAYGROUND`.* TO 'playground'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON `PLAYGROUND`.* TO 'playground'@'localhost' WITH GRANT OPTION;


GRANT SUPER ON *.* TO `clearvatdev`@'%';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
