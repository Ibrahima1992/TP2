-- Generation time: Wed, 09 Oct 2019 11:25:09 +0000
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

DROP TABLE IF EXISTS `Utilisateurs`;
CREATE TABLE `Utilisateurs` (
  `pseudo` varchar(45) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `motDePass` varchar(45) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  `dateNaissance` date NOT NULL,
  `sexe` varchar(1) NOT NULL,
  `dateInscription` date NOT NULL,
  `dateFermeture` date DEFAULT NULL,
  `Villes_idVilles` int(11) NOT NULL,
  PRIMARY KEY (`pseudo`),
  KEY `fk_Utilisateurs_Villes1_idx` (`Villes_idVilles`),
  CONSTRAINT `fk_Utilisateurs_Villes1` FOREIGN KEY (`Villes_idVilles`) REFERENCES `Villes` (`idVilles`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 KEY_BLOCK_SIZE=1;

INSERT INTO `Utilisateurs` VALUES ('Aaliyah','Cronin','clyde62@example.com','Yvonne','id','(885)328-0463','2017-04-01','M','2007-12-25','1971-04-03','7'),
('Abdiel','Wiza','hagenes.jasper@example.org','Kieran','corrupti','011-969-1992x8279','2007-09-03','M','1974-11-19','2008-01-30','5'),
('Adrien','Becker','astrid.volkman@example.org','Kenny','ut','944-586-6482x3078','1978-02-27','M','2004-03-07','2005-06-17','4'),
('Alec','Ward','karl92@example.net','Lisette','aut','1-489-791-2472','1995-01-22','P','2009-10-15','1985-04-10','7'),
('Alejandra','Hartmann','kailey.mccullough@example.org','Dejon','dolorem','1-463-870-6525x53430','1973-02-26','M','1985-05-21','2007-11-18','7'),
('Allen','Lang','llegros@example.com','Moriah','inventore','645-658-7713','2001-12-06','P','2012-10-06','2012-10-06','8'),
('Amelia','O\'Reilly','fhuel@example.com','Elton','qui','1-449-702-0907','1991-08-25','D','1996-08-11','2014-01-17','4'),
('Andy','Bins','braun.merlin@example.net','Dakota','doloribus','318-833-5155','1987-09-27','P','2008-04-02','2014-12-05','6'),
('Angela','Lehner','alene06@example.com','Vincent','nemo','121.837.3456','2014-05-16','M','1974-02-07','1999-09-02','2'),
('Angus','Leannon','lafayette.auer@example.com','Wilmer','est','439.574.0842x9023','2018-03-25','D','1972-11-19','1998-05-22','8'),
('Bethany','Altenwerth','ignacio94@example.org','Tabitha','quaerat','277.942.5453x056','1971-04-25','P','1988-06-22','1989-11-01','1'),
('Beverly','Mosciski','vwest@example.net','Madelyn','eos','07612529748','2004-04-27','D','1995-06-27','2017-06-01','6'),
('Billie','Barrows','becker.darren@example.net','Kieran','voluptatum','+16(0)1334808965','1988-09-16','M','1993-09-27','2018-10-01','4'),
('Buddy','Hickle','judge02@example.com','Jeanie','aliquid','(001)699-6230x88215','1972-10-15','M','2014-12-08','2001-02-23','3'),
('Burley','Murphy','jklein@example.com','Leonor','eos','728-802-6015x6892','1994-01-18','M','1970-03-10','2016-12-26','5'),
('Cara','Weimann','xgraham@example.com','Royal','unde','(570)195-8406','2017-12-22','D','1985-06-22','1970-12-20','8'),
('Cathrine','Murray','sboehm@example.net','Eliseo','quisquam','1-177-147-2411','2002-02-23','D','2014-03-04','1985-05-21','1'),
('Craig','O\'Hara','breanna03@example.com','Trever','qui','375.589.8768','1981-03-25','P','2009-09-02','2018-09-16','9'),
('Cydney','Greenfelder','abbott.owen@example.com','Marcel','recusandae','1-870-200-6990x88500','1982-02-08','M','2006-07-28','1974-11-14','6'),
('Deontae','Krajcik','timmothy18@example.net','Ferne','optio','(008)738-9856x170','1990-09-20','M','1983-11-06','2005-06-02','3'),
('Deonte','Ortiz','isobel.stokes@example.com','Kraig','adipisci','1-773-972-8389','2008-01-08','M','1984-12-02','1973-07-07','9'),
('Dereck','Collier','ryann13@example.com','Freeda','sit','803-365-6705','2015-04-05','M','1976-04-05','1975-07-31','8'),
('Destany','Kiehn','rogahn.eliezer@example.org','Madilyn','placeat','1-225-738-6420','1975-09-24','P','1979-12-21','1995-10-12','8'),
('Domenica','Reichel','garry.ryan@example.org','Avery','dolorum','(865)665-7437x50372','1971-02-22','D','1991-03-31','2013-09-11','8'),
('Donnell','Herman','jordan.schuppe@example.com','Leon','dolores','200.113.3201','2016-05-18','D','2000-04-04','1970-10-19','7'),
('Duane','Murray','lila36@example.org','Irving','nihil','959.354.8307x96540','2012-07-31','M','1977-08-26','1985-09-06','3'),
('Ebony','Wuckert','mosciski.lucas@example.org','Kitty','maxime','(645)697-0755','2000-02-08','P','1978-11-03','2016-03-17','8'),
('Eli','Muller','allison17@example.com','Alexandra','explicabo','1-083-356-2046x359','1979-11-17','P','2008-10-13','2015-09-18','3'),
('Elvis','Runolfsson','alayna50@example.com','Willow','velit','05340637608','1993-07-04','M','1985-01-13','2004-08-10','5'),
('Emil','Abbott','fhomenick@example.net','Jordane','dolores','1-997-415-1062','2017-12-28','M','2000-11-23','1988-03-11','1'),
('Emmett','Keebler','cwaelchi@example.net','Hazle','voluptas','(584)362-9703','2012-07-24','D','2000-07-23','1997-05-28','1'),
('Evert','Ferry','estelle69@example.com','Verlie','sit','1-962-015-5973x722','1999-06-03','M','1974-07-04','1999-10-27','6'),
('Frederic','Koss','lesly.ebert@example.org','Maymie','et','340.499.1020x774','1990-01-30','M','1993-10-26','2013-10-06','9'),
('Gene','Jast','opagac@example.org','Amalia','laborum','1-763-316-5647','2007-12-22','D','2018-09-16','1978-08-21','3'),
('Geovanny','Koepp','murray.delmer@example.com','Lela','blanditiis','494-147-5069','1986-02-02','P','2001-10-18','1983-10-18','6'),
('Gretchen','Kihn','myra15@example.net','Coby','molestias','1-246-434-1726','1997-07-27','P','1982-11-07','1983-09-13','9'),
('Harmon','Donnelly','katlynn.connelly@example.org','Irwin','qui','394-862-6673','2016-09-09','M','1980-08-04','2006-01-30','2'),
('Heath','Hilpert','clarissa90@example.net','Kayla','aut','09269683813','1975-01-12','M','1975-07-03','2018-11-22','7'),
('Ines','Denesik','monahan.marquis@example.org','Alison','quaerat','08258921246','2001-06-16','M','1988-08-09','1975-02-03','1'),
('Isabella','Schmitt','asia.morissette@example.net','Jessyca','est','1-080-652-0662x95268','1992-09-18','D','1998-09-28','1974-06-05','2'),
('Issac','Lockman','rossie12@example.org','Everardo','delectus','03856820906','2002-01-11','P','1981-10-05','2002-11-18','3'),
('Jamey','O\'Hara','yabshire@example.com','Jaylon','enim','542-227-6762','1984-12-11','D','1973-08-18','1972-08-04','1'),
('Jaqueline','Ryan','labadie.brycen@example.net','Marlin','eaque','349.734.1241x577','1997-05-27','M','2011-02-27','1993-10-11','5'),
('Javonte','VonRueden','abagail.leffler@example.net','Libby','earum','173.003.0430x3161','1985-04-21','D','1996-08-22','1996-10-11','9'),
('Jayda','Bergnaum','vcarter@example.org','Grover','quo','633-778-3868x108','2017-12-28','D','2013-12-04','1984-03-25','6'),
('Jaylon','Kris','tania.dach@example.org','Joey','aut','413-851-8611','1978-02-13','M','2008-11-24','2013-04-09','5'),
('Jeanie','Mraz','ralph.gorczany@example.org','William','consequatur','415.458.2327x3578','2007-01-07','M','1989-05-04','2015-05-10','5'),
('Jettie','Turcotte','wparisian@example.org','Eleazar','non','1-555-158-1117x965','2001-10-06','M','2006-08-25','1985-04-12','9'),
('Jordy','Dibbert','demario98@example.com','Osbaldo','qui','330.579.0146x311','1999-05-24','P','2004-11-02','1974-05-13','6'),
('Judd','Steuber','russel.lesch@example.net','Holly','debitis','925.393.4446x507','2005-07-16','M','2013-08-08','1983-07-14','8'),
('Justina','Abshire','boyer.germaine@example.com','Loyce','corrupti','077-117-0596','1976-12-10','P','1974-06-03','2010-11-19','4'),
('Kacey','Corkery','hazle87@example.net','Ceasar','non','130.494.1367x8581','2005-01-08','M','1984-07-26','1999-01-12','1'),
('Katrina','Kuhn','pollich.shyanne@example.org','Katlyn','omnis','1-494-185-7365x290','1970-04-15','M','1997-02-12','2000-07-29','4'),
('Kiana','Runte','crystel07@example.com','Hillard','quia','1-205-865-6570','1994-04-24','M','1972-10-23','2006-12-21','7'),
('Ladarius','Gaylord','carroll.noble@example.net','Haskell','fugiat','547-834-3821','1976-11-25','P','1987-03-22','2004-06-17','1'),
('Lane','Stehr','rafael31@example.com','Deion','enim','842-738-1538x531','2015-12-02','P','1996-02-23','1985-04-15','3'),
('Larry','Boyle','amoore@example.org','Moses','perspiciatis','267-662-2221x37387','2006-04-18','P','2008-06-04','2018-06-17','8'),
('Laury','Gerhold','omer.o\'reilly@example.com','Lucas','eum','114-813-1850x69818','1996-05-02','M','1996-03-30','2019-03-18','3'),
('Leora','Stokes','arlie89@example.org','Jovany','alias','05910882713','1984-03-28','M','1980-12-24','1989-08-10','2'),
('Liza','Howe','garett67@example.com','Baron','qui','523-798-0788x54204','2013-10-09','M','1995-10-31','2008-09-18','4'),
('Lolita','Ortiz','plegros@example.com','Leila','sapiente','(554)066-1341x54132','1987-03-16','P','1987-04-24','1997-04-08','4'),
('Lorine','Romaguera','ckoss@example.org','Jaunita','non','07031575182','1993-11-22','D','1980-11-06','1973-04-05','3'),
('Madge','Orn','gottlieb.wendy@example.net','Brice','repellendus','1-305-573-0621x33135','1974-03-26','M','1990-01-02','1998-03-30','2'),
('Magdalena','Fay','reichert.earnest@example.net','Kaylin','possimus','286-440-0802','2010-05-16','M','1973-01-20','1988-04-12','7'),
('Marlon','Larson','nicholaus.wiegand@example.org','Elliott','consequatur','260.831.9285','1972-01-16','D','1972-05-16','1985-09-17','8'),
('Marshall','Cassin','aliya.mckenzie@example.net','Annie','iste','410-983-9087x882','2006-04-06','M','1985-09-30','1990-05-24','4'),
('Matilda','Keeling','gusikowski.zack@example.org','Jazmin','dignissimos','739.211.2136','1979-01-12','D','1982-04-29','1970-01-06','2'),
('Misael','Halvorson','kianna.gottlieb@example.net','Erik','ad','816.194.0452x634','2015-09-05','M','1992-03-13','1980-03-30','1'),
('Mitchell','Mohr','nicolette10@example.net','Nannie','molestiae','(048)811-3993','1988-10-31','D','1976-10-17','1980-03-25','6'),
('Naomie','Parker','odicki@example.com','Judge','sapiente','(532)567-5619x76271','2018-12-22','M','2015-10-04','1977-02-20','7'),
('Neal','Sauer','nader.jace@example.org','Danielle','placeat','684-023-2032x047','1990-03-19','D','1989-09-23','2012-03-15','5'),
('Nora','Aufderhar','rosalind.veum@example.org','Margarete','et','02457275753','1999-09-17','D','1989-08-14','1984-05-10','9'),
('Norris','Armstrong','curt.luettgen@example.org','Danika','aut','1-497-284-0249','1990-12-31','D','1978-02-01','2003-03-07','9'),
('Obie','Nitzsche','vandervort.alverta@example.net','Danyka','quis','1-142-479-6325x2285','1971-01-08','D','1994-11-21','2006-07-15','2'),
('Osborne','Moen','rodriguez.george@example.net','Nils','quam','+91(7)2990584983','2010-07-08','P','1996-06-04','1977-01-06','7'),
('Paris','Romaguera','price.javonte@example.net','Jasper','ratione','+52(5)1196258475','1970-01-07','M','1988-03-08','1994-05-09','1'),
('Raphael','Altenwerth','do\'connell@example.com','Tabitha','velit','180.797.0177x6924','2018-06-29','P','1992-02-08','2013-09-01','5'),
('Reid','Watsica','hyatt.orie@example.net','Rodrigo','debitis','(366)574-4251','1977-09-28','M','1993-09-10','2009-09-09','1'),
('Rico','Waters','nader.dashawn@example.org','Helga','omnis','1-035-639-2308x5793','1994-04-16','P','1994-03-03','2014-09-10','6'),
('Rosendo','Bergnaum','dillon89@example.org','Delbert','exercitationem','08963098545','1975-09-17','M','1995-05-25','2003-08-23','4'),
('Rudolph','Wunsch','vhahn@example.com','Demarco','dolorem','07409405633','2005-11-11','P','2015-12-26','2017-05-22','9'),
('Ryann','Bahringer','amccullough@example.com','Maxine','optio','(099)033-7677x881','1997-09-17','M','2001-08-15','2009-06-24','5'),
('Samantha','Hermiston','wintheiser.mariam@example.com','Aiyana','nemo','678.862.9648x25807','2005-09-10','M','1999-01-21','2008-11-15','3'),
('Sandrine','Walker','icollins@example.com','Yoshiko','in','04715481028','1971-03-08','D','2010-04-18','2019-04-14','6'),
('Selena','Kautzer','toby29@example.org','Ron','aut','+57(6)5794543541','2016-10-25','D','1997-03-10','1983-01-04','8'),
('Shad','Kuhn','dedrick.schaefer@example.org','Kailyn','mollitia','(904)289-5859x88923','1986-02-25','P','2019-03-22','1970-10-29','7'),
('Shawn','Parisian','schamberger.buddy@example.net','Henri','et','04893781262','1997-05-22','M','1985-07-04','1982-06-18','9'),
('Shayna','Gaylord','kris.emmitt@example.com','Hector','ea','1-558-124-8654','2001-09-05','M','1994-12-16','1979-07-01','6'),
('Shyanne','Shields','anderson.francisca@example.org','Raphael','quam','(249)708-4303x248','1974-02-14','M','1976-12-10','1983-03-15','2'),
('Skyla','Thiel','bailey.pauline@example.net','Michale','labore','1-618-587-0691x11263','2003-09-15','M','1979-08-15','1981-08-13','5'),
('Stanton','McGlynn','lila07@example.org','Dorris','libero','926.042.3211x64822','2004-02-10','M','1970-12-22','1994-08-16','2'),
('Syble','Stiedemann','jazmin.schumm@example.com','Lawrence','a','1-833-035-2779x62824','1972-08-06','M','1971-11-15','2017-11-05','4'),
('Tiana','Reynolds','luettgen.alfonzo@example.com','Maddison','sed','197.200.0189x3421','1980-11-23','M','1979-04-10','2007-07-11','4'),
('Tillman','Kulas','bailey.cordie@example.net','Ashleigh','quo','599-126-8723x50243','1992-11-26','M','1979-01-18','1988-11-09','1'),
('Tito','Rempel','aubree.koss@example.org','Joesph','tempora','753.521.7401','1986-11-14','P','1996-07-18','1978-01-31','2'),
('Toney','Kulas','jaunita68@example.net','Santos','velit','1-298-845-5180','1986-08-19','M','1988-07-24','2007-10-11','7'),
('Travon','Hagenes','eleanora15@example.net','Patrick','velit','04717377661','2017-12-08','D','1976-08-18','1971-01-26','9'),
('Urban','Pfeffer','koss.chase@example.org','Dion','dolor','936.076.4769x091','1982-02-21','M','2015-05-12','1975-04-17','5'),
('Winona','Halvorson','pbaumbach@example.com','Serena','deleniti','512-308-7306','1978-12-07','M','1990-03-16','1990-02-21','3'),
('Wyatt','Thompson','francis75@example.com','Antwon','qui','275.505.5097x51186','1999-04-30','P','1970-06-27','2014-06-19','2'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
