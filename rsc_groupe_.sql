-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Sam 30 Avril 2016 à 21:55
-- Version du serveur :  5.6.20-log
-- Version de PHP :  5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `rsc(groupe)`
--
CREATE DATABASE IF NOT EXISTS `rsc(groupe)` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `rsc(groupe)`;

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE IF NOT EXISTS `commentaire` (
`idCom` int(10) NOT NULL,
  `dateCom` date NOT NULL,
  `commentaire` text COLLATE utf8_bin NOT NULL,
  `idProduit` int(11) NOT NULL,
  `idPosteur` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `enchere`
--

CREATE TABLE IF NOT EXISTS `enchere` (
`idEnchere` int(10) NOT NULL,
  `idProduit` int(10) NOT NULL,
  `idAcheteur` int(10) NOT NULL,
  `idVendeur` int(10) NOT NULL,
  `etat` varchar(15) COLLATE utf8_bin NOT NULL,
  `prix` double NOT NULL,
  `dateEnchere` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `formulaire`
--

CREATE TABLE IF NOT EXISTS `formulaire` (
`idFormulaire` int(10) NOT NULL,
  `idUser` int(10) NOT NULL,
  `idProduit` int(10) NOT NULL,
  `datePublication` date NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `tel` varchar(10) COLLATE utf8_bin NOT NULL,
  `nomProduit` varchar(255) COLLATE utf8_bin NOT NULL,
  `prix` double NOT NULL,
  `etatProduit` varchar(10) COLLATE utf8_bin NOT NULL,
  `categorie` varchar(25) COLLATE utf8_bin NOT NULL,
  `optionPdt` varchar(50) COLLATE utf8_bin NOT NULL,
  `descriptif` text COLLATE utf8_bin NOT NULL,
  `titre` text COLLATE utf8_bin NOT NULL,
  `nomImage` varchar(50) COLLATE utf8_bin NOT NULL,
  `lienImage` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
`idMessage` int(10) NOT NULL,
  `objet` text COLLATE utf8_bin NOT NULL,
  `message` text COLLATE utf8_bin NOT NULL,
  `date` date NOT NULL,
  `idAuteur` int(10) NOT NULL,
  `idReceveur` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
`IdProduit` int(10) NOT NULL,
  `nomProduit` varchar(30) COLLATE utf8_bin NOT NULL,
  `prix` double NOT NULL,
  `categorie` varchar(25) COLLATE utf8_bin NOT NULL,
  `etat` varchar(10) COLLATE utf8_bin NOT NULL,
  `moyenVente` varchar(15) COLLATE utf8_bin NOT NULL,
  `idVendeur` int(10) NOT NULL,
  `suivi` varchar(15) COLLATE utf8_bin NOT NULL,
  `descriptif` text COLLATE utf8_bin NOT NULL,
  `prixMini` double NOT NULL,
  `lien` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`idUser` int(10) NOT NULL,
  `nom` varchar(30) COLLATE utf8_bin NOT NULL,
  `prenom` varchar(24) COLLATE utf8_bin NOT NULL,
  `adresse` varchar(50) COLLATE utf8_bin NOT NULL,
  `Email` varchar(50) COLLATE utf8_bin NOT NULL,
  `tel` varchar(10) COLLATE utf8_bin NOT NULL,
  `passwd` varchar(255) COLLATE utf8_bin NOT NULL,
  `npasswd` varchar(255) COLLATE utf8_bin NOT NULL,
  `ville` varchar(50) COLLATE utf8_bin NOT NULL,
  `codePostal` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
 ADD PRIMARY KEY (`idCom`), ADD UNIQUE KEY `idCom` (`idCom`);

--
-- Index pour la table `enchere`
--
ALTER TABLE `enchere`
 ADD PRIMARY KEY (`idEnchere`), ADD UNIQUE KEY `idEnchere` (`idEnchere`);

--
-- Index pour la table `formulaire`
--
ALTER TABLE `formulaire`
 ADD PRIMARY KEY (`idFormulaire`), ADD UNIQUE KEY `idFormulaire` (`idFormulaire`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
 ADD PRIMARY KEY (`idMessage`), ADD UNIQUE KEY `idMessage` (`idMessage`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
 ADD PRIMARY KEY (`IdProduit`), ADD UNIQUE KEY `IdProduit` (`IdProduit`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`idUser`), ADD UNIQUE KEY `idUser` (`idUser`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
MODIFY `idCom` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `enchere`
--
ALTER TABLE `enchere`
MODIFY `idEnchere` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `formulaire`
--
ALTER TABLE `formulaire`
MODIFY `idFormulaire` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
MODIFY `idMessage` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
MODIFY `IdProduit` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
MODIFY `idUser` int(10) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
