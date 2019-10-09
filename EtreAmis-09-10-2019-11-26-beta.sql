-- Generation time: Wed, 09 Oct 2019 11:26:18 +0000
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

DROP TABLE IF EXISTS `EtreAmis`;
CREATE TABLE `EtreAmis` (
  `pseudo` varchar(45) NOT NULL,
  `pseudo1` varchar(45) NOT NULL,
  `dateDebutAmitie` date DEFAULT NULL,
  PRIMARY KEY (`pseudo`,`pseudo1`),
  KEY `fk_Utilisateurs_has_Utilisateurs_Utilisateurs2_idx` (`pseudo1`),
  KEY `fk_Utilisateurs_has_Utilisateurs_Utilisateurs1_idx` (`pseudo`),
  CONSTRAINT `fk_Utilisateurs_has_Utilisateurs_Utilisateurs1` FOREIGN KEY (`pseudo`) REFERENCES `Utilisateurs` (`pseudo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Utilisateurs_has_Utilisateurs_Utilisateurs2` FOREIGN KEY (`pseudo1`) REFERENCES `Utilisateurs` (`pseudo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `EtreAmis` VALUES ('Aaliyah','Aaliyah','1970-08-28'),
('Abdiel','Abdiel','1977-01-29'),
('Adrien','Adrien','1994-02-08'),
('Alec','Alec','1991-08-31'),
('Alejandra','Alejandra','1984-10-09'),
('Allen','Allen','1997-06-30'),
('Amelia','Amelia','2001-09-07'),
('Andy','Andy','2002-08-03'),
('Angela','Angela','2018-06-27'),
('Angus','Angus','1994-01-17'),
('Bethany','Bethany','1989-08-23'),
('Beverly','Beverly','2016-03-29'),
('Billie','Billie','1994-08-14'),
('Buddy','Buddy','2019-02-28'),
('Burley','Burley','2010-01-05'),
('Cara','Cara','1979-07-17'),
('Cathrine','Cathrine','2006-10-21'),
('Craig','Craig','2002-10-29'),
('Cydney','Cydney','2010-04-23'),
('Deontae','Deontae','2008-08-18'),
('Deonte','Deonte','1979-09-19'),
('Dereck','Dereck','1982-07-23'),
('Destany','Destany','2011-03-28'),
('Domenica','Domenica','2012-02-19'),
('Donnell','Donnell','1986-04-21'),
('Duane','Duane','1980-01-12'),
('Ebony','Ebony','2013-12-25'),
('Eli','Eli','1989-07-02'),
('Elvis','Elvis','2010-11-23'),
('Emil','Emil','2012-07-03'),
('Emmett','Emmett','1978-06-10'),
('Evert','Evert','2000-07-15'),
('Frederic','Frederic','2001-03-09'),
('Gene','Gene','1983-04-14'),
('Geovanny','Geovanny','2017-01-11'),
('Gretchen','Gretchen','1988-03-28'),
('Harmon','Harmon','1996-07-09'),
('Heath','Heath','2010-06-25'),
('Ines','Ines','1990-10-25'),
('Isabella','Isabella','2015-08-20'),
('Issac','Issac','1982-12-14'),
('Jamey','Jamey','1975-05-18'),
('Jaqueline','Jaqueline','2012-11-06'),
('Javonte','Javonte','1973-07-08'),
('Jayda','Jayda','2007-04-23'),
('Jaylon','Jaylon','1986-09-27'),
('Jeanie','Jeanie','1993-04-22'),
('Jettie','Jettie','1979-01-21'),
('Jordy','Jordy','2011-07-14'),
('Judd','Judd','1980-03-22'),
('Justina','Justina','1977-02-22'),
('Kacey','Kacey','2010-06-08'),
('Katrina','Katrina','1990-11-27'),
('Kiana','Kiana','2015-09-18'),
('Ladarius','Ladarius','2009-07-13'),
('Lane','Lane','1992-10-03'),
('Larry','Larry','1980-06-03'),
('Laury','Laury','1994-05-10'),
('Leora','Leora','1973-05-09'),
('Liza','Liza','1993-09-05'),
('Lolita','Lolita','1980-04-23'),
('Lorine','Lorine','2001-04-06'),
('Madge','Madge','2010-02-19'),
('Magdalena','Magdalena','1981-06-02'),
('Marlon','Marlon','1999-10-03'),
('Marshall','Marshall','1988-01-11'),
('Matilda','Matilda','2018-09-04'),
('Misael','Misael','2014-05-07'),
('Mitchell','Mitchell','2019-06-20'),
('Naomie','Naomie','1983-01-25'),
('Neal','Neal','1993-10-26'),
('Nora','Nora','1991-12-02'),
('Norris','Norris','1998-02-06'),
('Obie','Obie','2006-05-20'),
('Osborne','Osborne','1992-06-28'),
('Paris','Paris','1992-10-17'),
('Raphael','Raphael','1970-01-02'),
('Reid','Reid','1981-04-15'),
('Rico','Rico','1989-11-01'),
('Rosendo','Rosendo','1985-05-28'),
('Rudolph','Rudolph','1995-01-01'),
('Ryann','Ryann','1984-01-12'),
('Samantha','Samantha','2008-07-18'),
('Sandrine','Sandrine','2017-08-20'),
('Selena','Selena','1987-05-07'),
('Shad','Shad','2011-07-05'),
('Shawn','Shawn','1984-06-17'),
('Shayna','Shayna','1972-12-25'),
('Shyanne','Shyanne','1978-07-04'),
('Skyla','Skyla','1972-02-05'),
('Stanton','Stanton','2018-08-29'),
('Syble','Syble','2013-03-28'),
('Tiana','Tiana','1981-08-04'),
('Tillman','Tillman','2004-09-28'),
('Tito','Tito','1998-03-12'),
('Toney','Toney','2018-05-28'),
('Travon','Travon','1995-02-10'),
('Urban','Urban','2018-02-22'),
('Winona','Winona','1997-02-03'),
('Wyatt','Wyatt','1978-06-27'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

