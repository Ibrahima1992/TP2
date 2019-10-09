-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  lun. 07 oct. 2019 à 11:48
-- Version du serveur :  10.4.6-MariaDB
-- Version de PHP :  7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `modeleFacebook`
--

-- --------------------------------------------------------

--
-- Structure de la table `Aimer`
--

CREATE TABLE `Aimer` (
  `pseudo` varchar(45) NOT NULL,
  `idPages` int(11) NOT NULL,
  `idPublications` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Appartenir`
--

CREATE TABLE `Appartenir` (
  `idGroupe` int(11) NOT NULL,
  `pseudo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `enCouple`
--

CREATE TABLE `enCouple` (
  `pseudo` varchar(45) NOT NULL,
  `pseudo1` varchar(45) NOT NULL,
  `dateUnion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `EtreAmis`
--

CREATE TABLE `EtreAmis` (
  `pseudo` varchar(45) NOT NULL,
  `pseudo1` varchar(45) NOT NULL,
  `dateDebutAmitie` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Groupes`
--

CREATE TABLE `Groupes` (
  `idGroupe` int(11) NOT NULL,
  `nomGroupe` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Messages`
--

CREATE TABLE `Messages` (
  `idMessages` int(11) NOT NULL,
  `titre` varchar(45) DEFAULT NULL,
  `texte` varchar(45) DEFAULT NULL,
  `dateEnvoi` varchar(45) DEFAULT NULL,
  `pseudoExpediteur` varchar(45) NOT NULL,
  `pseudoRecepteur` varchar(45) NOT NULL,
  `idGroupe` int(11) NOT NULL,
  `idMessagesParent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Pages`
--

CREATE TABLE `Pages` (
  `idPages` int(11) NOT NULL,
  `nomPage` varchar(45) DEFAULT NULL,
  `pseudo` varchar(45) NOT NULL,
  `prive` varchar(5) NOT NULL,
  `public` varchar(5) NOT NULL,
  `idGroupe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Pays`
--

CREATE TABLE `Pays` (
  `nomPays` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Publications`
--

CREATE TABLE `Publications` (
  `idPublications` int(11) NOT NULL,
  `titre` varchar(45) NOT NULL,
  `datePublication` varchar(45) NOT NULL,
  `texte` varchar(1500) NOT NULL,
  `nombreAime` varchar(45) DEFAULT NULL,
  `idPages` int(11) NOT NULL,
  `idPublications2` int(11) NOT NULL,
  `pseudo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Statuts`
--

CREATE TABLE `Statuts` (
  `prive` varchar(5) NOT NULL,
  `public` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateurs`
--

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
  `Villes_idVilles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 KEY_BLOCK_SIZE=1;

-- --------------------------------------------------------

--
-- Structure de la table `Villes`
--

CREATE TABLE `Villes` (
  `idVilles` int(11) NOT NULL,
  `nomVille` varchar(45) DEFAULT NULL,
  `nomPays` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Aimer`
--
ALTER TABLE `Aimer`
  ADD PRIMARY KEY (`pseudo`,`idPages`,`idPublications`),
  ADD KEY `fk_Utilisateurs_has_Pages_Pages1_idx` (`idPages`),
  ADD KEY `fk_Utilisateurs_has_Pages_Utilisateurs1_idx` (`pseudo`),
  ADD KEY `fk_Aimer_Publications1_idx` (`idPublications`);

--
-- Index pour la table `Appartenir`
--
ALTER TABLE `Appartenir`
  ADD PRIMARY KEY (`idGroupe`,`pseudo`),
  ADD KEY `fk_Groupes_has_Utilisateurs_Utilisateurs1_idx` (`pseudo`),
  ADD KEY `fk_Groupes_has_Utilisateurs_Groupes1_idx` (`idGroupe`);

--
-- Index pour la table `enCouple`
--
ALTER TABLE `enCouple`
  ADD PRIMARY KEY (`pseudo`,`pseudo1`),
  ADD KEY `fk_Utilisateurs_has_Utilisateurs_Utilisateurs4_idx` (`pseudo1`),
  ADD KEY `fk_Utilisateurs_has_Utilisateurs_Utilisateurs3_idx` (`pseudo`);

--
-- Index pour la table `EtreAmis`
--
ALTER TABLE `EtreAmis`
  ADD PRIMARY KEY (`pseudo`,`pseudo1`),
  ADD KEY `fk_Utilisateurs_has_Utilisateurs_Utilisateurs2_idx` (`pseudo1`),
  ADD KEY `fk_Utilisateurs_has_Utilisateurs_Utilisateurs1_idx` (`pseudo`);

--
-- Index pour la table `Groupes`
--
ALTER TABLE `Groupes`
  ADD PRIMARY KEY (`idGroupe`);

--
-- Index pour la table `Messages`
--
ALTER TABLE `Messages`
  ADD PRIMARY KEY (`idMessages`,`pseudoExpediteur`,`pseudoRecepteur`,`idGroupe`,`idMessagesParent`),
  ADD KEY `fk_Messages_Utilisateurs1_idx` (`pseudoExpediteur`),
  ADD KEY `fk_Messages_Messages1_idx` (`idMessagesParent`),
  ADD KEY `fk_Messages_Groupes1_idx` (`idGroupe`),
  ADD KEY `fk_Messages_Utilisateurs2_idx` (`pseudoRecepteur`);

--
-- Index pour la table `Pages`
--
ALTER TABLE `Pages`
  ADD PRIMARY KEY (`idPages`,`idGroupe`),
  ADD KEY `fk_Pages_Utilisateurs_idx` (`pseudo`),
  ADD KEY `fk_Pages_Statuts1_idx` (`prive`,`public`),
  ADD KEY `fk_Pages_Groupes1_idx` (`idGroupe`);

--
-- Index pour la table `Pays`
--
ALTER TABLE `Pays`
  ADD PRIMARY KEY (`nomPays`);

--
-- Index pour la table `Publications`
--
ALTER TABLE `Publications`
  ADD PRIMARY KEY (`idPublications`,`idPages`,`idPublications2`,`pseudo`),
  ADD KEY `fk_Publications_Pages1_idx` (`idPages`),
  ADD KEY `fk_Publications_Publications1_idx` (`idPublications2`),
  ADD KEY `fk_Publications_Utilisateurs1_idx` (`pseudo`);

--
-- Index pour la table `Statuts`
--
ALTER TABLE `Statuts`
  ADD PRIMARY KEY (`prive`,`public`);

--
-- Index pour la table `Utilisateurs`
--
ALTER TABLE `Utilisateurs`
  ADD PRIMARY KEY (`pseudo`),
  ADD KEY `fk_Utilisateurs_Villes1_idx` (`Villes_idVilles`);

--
-- Index pour la table `Villes`
--
ALTER TABLE `Villes`
  ADD PRIMARY KEY (`idVilles`),
  ADD KEY `fk_Villes_Pays1_idx` (`nomPays`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Aimer`
--
ALTER TABLE `Aimer`
  ADD CONSTRAINT `fk_Aimer_Publications1` FOREIGN KEY (`idPublications`) REFERENCES `Publications` (`idPublications`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Utilisateurs_has_Pages_Pages1` FOREIGN KEY (`idPages`) REFERENCES `Pages` (`idPages`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Utilisateurs_has_Pages_Utilisateurs1` FOREIGN KEY (`pseudo`) REFERENCES `Utilisateurs` (`pseudo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Appartenir`
--
ALTER TABLE `Appartenir`
  ADD CONSTRAINT `fk_Groupes_has_Utilisateurs_Groupes1` FOREIGN KEY (`idGroupe`) REFERENCES `Groupes` (`idGroupe`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Groupes_has_Utilisateurs_Utilisateurs1` FOREIGN KEY (`pseudo`) REFERENCES `Utilisateurs` (`pseudo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `enCouple`
--
ALTER TABLE `enCouple`
  ADD CONSTRAINT `fk_Utilisateurs_has_Utilisateurs_Utilisateurs3` FOREIGN KEY (`pseudo`) REFERENCES `Utilisateurs` (`pseudo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Utilisateurs_has_Utilisateurs_Utilisateurs4` FOREIGN KEY (`pseudo1`) REFERENCES `Utilisateurs` (`pseudo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `EtreAmis`
--
ALTER TABLE `EtreAmis`
  ADD CONSTRAINT `fk_Utilisateurs_has_Utilisateurs_Utilisateurs1` FOREIGN KEY (`pseudo`) REFERENCES `Utilisateurs` (`pseudo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Utilisateurs_has_Utilisateurs_Utilisateurs2` FOREIGN KEY (`pseudo1`) REFERENCES `Utilisateurs` (`pseudo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Messages`
--
ALTER TABLE `Messages`
  ADD CONSTRAINT `fk_Messages_Groupes1` FOREIGN KEY (`idGroupe`) REFERENCES `Groupes` (`idGroupe`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Messages_Messages1` FOREIGN KEY (`idMessagesParent`) REFERENCES `Messages` (`idMessages`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Messages_Utilisateurs1` FOREIGN KEY (`pseudoExpediteur`) REFERENCES `Utilisateurs` (`pseudo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Messages_Utilisateurs2` FOREIGN KEY (`pseudoRecepteur`) REFERENCES `Utilisateurs` (`pseudo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Pages`
--
ALTER TABLE `Pages`
  ADD CONSTRAINT `fk_Pages_Groupes1` FOREIGN KEY (`idGroupe`) REFERENCES `Groupes` (`idGroupe`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pages_Statuts1` FOREIGN KEY (`prive`,`public`) REFERENCES `Statuts` (`prive`, `public`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pages_Utilisateurs` FOREIGN KEY (`pseudo`) REFERENCES `Utilisateurs` (`pseudo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Publications`
--
ALTER TABLE `Publications`
  ADD CONSTRAINT `fk_Publications_Pages1` FOREIGN KEY (`idPages`) REFERENCES `Pages` (`idPages`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Publications_Publications1` FOREIGN KEY (`idPublications2`) REFERENCES `Publications` (`idPublications`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Publications_Utilisateurs1` FOREIGN KEY (`pseudo`) REFERENCES `Utilisateurs` (`pseudo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Utilisateurs`
--
ALTER TABLE `Utilisateurs`
  ADD CONSTRAINT `fk_Utilisateurs_Villes1` FOREIGN KEY (`Villes_idVilles`) REFERENCES `Villes` (`idVilles`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Villes`
--
ALTER TABLE `Villes`
  ADD CONSTRAINT `fk_Villes_Pays1` FOREIGN KEY (`nomPays`) REFERENCES `Pays` (`nomPays`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
