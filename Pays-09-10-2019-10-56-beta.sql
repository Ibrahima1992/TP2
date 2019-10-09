-- Generation time: Wed, 09 Oct 2019 10:56:01 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_22
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `Pays`;
CREATE TABLE `Pays` (
  `nomPays` varchar(30) NOT NULL,
  PRIMARY KEY (`nomPays`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Pays` VALUES ('Alabama'),
('Alaska'),
('Arkansas'),
('California'),
('Colorado'),
('Connecticut'),
('Delaware'),
('District of Columbia'),
('Georgia'),
('Hawaii'),
('Idaho'),
('Illinois'),
('Indiana'),
('Iowa'),
('Kansas'),
('Kentucky'),
('Louisiana'),
('Maine'),
('Maryland'),
('Massachusetts'),
('Minnesota'),
('Mississippi'),
('Missouri'),
('Montana'),
('Nebraska'),
('Nevada'),
('NewHampshire'),
('NewJersey'),
('NewMexico'),
('NewYork'),
('NorthDakota'),
('Ohio'),
('Oklahoma'),
('Pennsylvania'),
('SouthCarolina'),
('SouthDakota'),
('Tennessee'),
('Texas'),
('Utah'),
('Vermont'),
('Virginia'),
('Washington'),
('WestVirginia'),
('Wisconsin'),
('Wyoming'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

