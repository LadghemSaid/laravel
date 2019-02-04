

-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Mar 03 Septembre 2013 à 17:26
-- Version du serveur: 5.1.44
-- Version de PHP: 5.3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de données: `dut1`
--

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `annee` int(11) NOT NULL,
  `nbSpectateurs` int(11) NOT NULL,
  `idRealisateur` int(11) DEFAULT NULL,
  `idGenre` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Contenu de la table `film`
--

INSERT INTO `film` VALUES(1, 'Le discours d''un roi', 2010, 100000, 1, 2);
INSERT INTO `film` VALUES(2, 'Inception', 2010, 1000000, 4, 1);
INSERT INTO `film` VALUES(3, 'Virgin Suicides', 1999, 300000, 2, 3);
INSERT INTO `film` VALUES(4, 'Into The Wild', 2007, 5456433, 3, 3);
INSERT INTO `film` VALUES(5, 'Les petits mouchoirs', 2010, 5553342, 5, 3);
INSERT INTO `film` VALUES(6, 'Le Convoyeur', 2004, 532134, NULL, 4);
INSERT INTO `film` VALUES(7, 'Brice de Nice', 2005, 9804352, 8, 2);
INSERT INTO `film` VALUES(8, 'OSS117: Rio ne répond plus', 2009, 7453453, 8, 2);
INSERT INTO `film` VALUES(9, 'Ensemble c''est tout', 2004, 1323963, 5, 3);
INSERT INTO `film` VALUES(10, 'Mon Idole', 2001, 543278, 5, 3);
INSERT INTO `film` VALUES(11, 'La mome', 2007, 4356743, NULL, 3);
INSERT INTO `film` VALUES(12, 'On se calme et on boit frais à  Saint tropez', 1987, 34564, 12, 2);
INSERT INTO `film` VALUES(13, 'Deux enfoirés à  Saint Tropez', 1986, 3432, 12, 2);
INSERT INTO `film` VALUES(14, 'Mieux vaut être riche et bien portant que pauvre et fauché', 1980, 10023, 12, 2);
INSERT INTO `film` VALUES(15, 'Bienvenus chez les ch''tis', 2008, 16034567, 9, 2);
INSERT INTO `film` VALUES(16, 'La vie de Chantier', 2004, 435255, 9, 2);
INSERT INTO `film` VALUES(17, 'Mystic River', 2003, 45345, 13, 3);
INSERT INTO `film` VALUES(18, 'Gran Torino', 2008, 232123, 13, 3);
INSERT INTO `film` VALUES(19, 'Le parrain', 1972, 1232344, 2, 4);
INSERT INTO `film` VALUES(20, 'Memento', 2003, 32567, 4, 1);
INSERT INTO `film` VALUES(21, 'Shutter Island', 2010, 2143789, 16, 1);
INSERT INTO `film` VALUES(22, 'Aviator', 2004, 245893, 16, 3);
INSERT INTO `film` VALUES(23, 'Les infiltrés', 2006, 897345, 16, 4);
INSERT INTO `film` VALUES(24, 'Gilbert Grape', 1993, 653456, NULL, 3);
INSERT INTO `film` VALUES(25, 'La plage', 2000, 89999, 14, 3);
INSERT INTO `film` VALUES(27, 'Enfermés Dehors', 2006, 132890, 17, 2);
INSERT INTO `film` VALUES(28, 'Dikkenek', 2006, 49000, NULL, 2);
INSERT INTO `film` VALUES(29, 'Les affranchis', 1990, 123445, 16, 0);
INSERT INTO `film` VALUES(31, 'Rien à Declarer', 2011, 5200111, 9, 2);
INSERT INTO `film` VALUES(32, 'The dark knight rises', 2012, 1233331, 4, 5);
INSERT INTO `film` VALUES(33, 'Radiostars', 2012, 300111, NULL, 2);
INSERT INTO `film` VALUES(34, 'J. Edgar', 2011, 9000, 13, 1);
INSERT INTO `film` VALUES(35, 'The artist', 2011, 9000000, NULL, 2);
INSERT INTO `film` VALUES(36, 'Mon super film', 2012, 10, NULL, 1);
INSERT INTO `film` VALUES(38, 'Mon super film', 2012, 144000000, 26, 3);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `genre`
--

INSERT INTO `genre` VALUES(1, 'thriller');
INSERT INTO `genre` VALUES(2, 'comédie');
INSERT INTO `genre` VALUES(3, 'drame');
INSERT INTO `genre` VALUES(4, 'policier');
INSERT INTO `genre` VALUES(5, 'aventure');
INSERT INTO `genre` VALUES(6, 'tragedie');
INSERT INTO `genre` VALUES(7, 'nouveau');

-- --------------------------------------------------------

--
-- Structure de la table `joue`
--

CREATE TABLE `joue` (
  `idActeur` int(11) NOT NULL,
  `idFilm` int(11) NOT NULL,
  `salaire` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `joue`
--

INSERT INTO `joue` VALUES(7, 2, 778395);
INSERT INTO `joue` VALUES(6, 2, 315458);
INSERT INTO `joue` VALUES(3, 4, 550277);
INSERT INTO `joue` VALUES(8, 5, 582474);
INSERT INTO `joue` VALUES(6, 5, 275854);
INSERT INTO `joue` VALUES(8, 6, 199675);
INSERT INTO `joue` VALUES(17, 6, 498255);
INSERT INTO `joue` VALUES(8, 7, 809877);
INSERT INTO `joue` VALUES(11, 7, 484741);
INSERT INTO `joue` VALUES(8, 8, 244183);
INSERT INTO `joue` VALUES(24, 8, 708903);
INSERT INTO `joue` VALUES(5, 9, 681292);
INSERT INTO `joue` VALUES(10, 9, 313368);
INSERT INTO `joue` VALUES(5, 10, 947373);
INSERT INTO `joue` VALUES(6, 11, 646975);
INSERT INTO `joue` VALUES(9, 15, 508215);
INSERT INTO `joue` VALUES(9, 16, 202113);
INSERT INTO `joue` VALUES(3, 17, 203603);
INSERT INTO `joue` VALUES(13, 18, 280837);
INSERT INTO `joue` VALUES(7, 21, 432064);
INSERT INTO `joue` VALUES(7, 22, 983860);
INSERT INTO `joue` VALUES(7, 23, 450022);
INSERT INTO `joue` VALUES(7, 24, 404078);
INSERT INTO `joue` VALUES(15, 24, 69282);
INSERT INTO `joue` VALUES(7, 25, 676262);
INSERT INTO `joue` VALUES(5, 25, 256672);
INSERT INTO `joue` VALUES(17, 26, 367528);
INSERT INTO `joue` VALUES(17, 27, 158210);
INSERT INTO `joue` VALUES(24, 28, 561401);
INSERT INTO `joue` VALUES(6, 28, 339434);
INSERT INTO `joue` VALUES(9, 31, 1000000);
INSERT INTO `joue` VALUES(25, 31, 100000);
INSERT INTO `joue` VALUES(24, 31, 1000);
INSERT INTO `joue` VALUES(11, 33, 123456);
INSERT INTO `joue` VALUES(6, 32, 5123401);
INSERT INTO `joue` VALUES(7, 34, 12500000);
INSERT INTO `joue` VALUES(8, 35, 500000);

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `prenom` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pays` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `naissance` date NOT NULL,
  `mort` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Contenu de la table `personne`
--

INSERT INTO `personne` VALUES(1, 'Hooper', 'Tom', 'Angleterre', '1972-03-03', NULL);
INSERT INTO `personne` VALUES(2, 'Copolla', 'Sofia', 'Etats-Unis', '1971-05-14', NULL);
INSERT INTO `personne` VALUES(3, 'Penn', 'Sean', 'Etats-Unis', '1960-08-17', NULL);
INSERT INTO `personne` VALUES(4, 'Nolan', 'Christopher', 'Etats-Unis', '1970-07-30', NULL);
INSERT INTO `personne` VALUES(5, 'Canet', 'Guillaume', 'France', '1973-04-10', NULL);
INSERT INTO `personne` VALUES(6, 'Cotillard', 'Marion', 'France', '1975-09-30', NULL);
INSERT INTO `personne` VALUES(7, 'Di Caprio', 'Leonardo', 'Etats-Unis', '1974-11-11', NULL);
INSERT INTO `personne` VALUES(8, 'Dujardin', 'Jean', 'France', '1972-06-19', NULL);
INSERT INTO `personne` VALUES(9, 'Boon', 'Dany', 'France', '1966-06-26', NULL);
INSERT INTO `personne` VALUES(10, 'Tautou', 'Audrey', 'France', '1976-08-09', NULL);
INSERT INTO `personne` VALUES(11, 'Cornillac', 'Clovis', 'France', '1967-08-16', NULL);
INSERT INTO `personne` VALUES(12, 'Pecas', 'Max', 'France', '1925-04-25', '1981-01-01');
INSERT INTO `personne` VALUES(13, 'Eastwood', 'Clint', 'France', '1930-05-31', NULL);
INSERT INTO `personne` VALUES(14, 'Boyle', 'Danny', 'Etats-Unis', '1956-10-20', NULL);
INSERT INTO `personne` VALUES(15, 'Depp', 'Johnny', 'Etats-Unis', '1963-06-09', NULL);
INSERT INTO `personne` VALUES(16, 'Scorcesse', 'Martin', 'Etats-Unis', '1942-11-17', NULL);
INSERT INTO `personne` VALUES(17, 'Dupontel', 'Albert', 'France', '1964-01-11', NULL);
INSERT INTO `personne` VALUES(18, 'Cassel', 'Vincent', 'France', '1966-11-23', NULL);
INSERT INTO `personne` VALUES(19, 'Cassel', 'Jean-Pierre', 'France', '1932-10-27', NULL);
INSERT INTO `personne` VALUES(20, 'Copolla', 'Francis-Ford', 'Etats-Unis', '1939-04-07', NULL);
INSERT INTO `personne` VALUES(21, 'Seigner', 'Mathilde', 'France', '1968-01-17', NULL);
INSERT INTO `personne` VALUES(22, 'Seigner', 'Emmanuelle', 'France', '1966-06-22', NULL);
INSERT INTO `personne` VALUES(23, 'Berri', 'Claude', 'France', '1934-01-12', NULL);
INSERT INTO `personne` VALUES(24, 'Damiens', 'François', 'Belgique', '1973-01-17', NULL);
INSERT INTO `personne` VALUES(25, 'Poelvoorde', 'Benoit', 'Belgique', '1964-09-22', NULL);
INSERT INTO `personne` VALUES(26, 'Audemard', 'Gilles', 'France', '1980-12-12', NULL);

