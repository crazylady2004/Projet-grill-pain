-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 09 Février 2023 à 10:23
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `grillepain`
--

-- --------------------------------------------------------

--
-- Structure de la table `avoir_image`
--

CREATE TABLE `avoir_image` (
  `id_avo_tok` int(11) NOT NULL,
  `fk_id_cli` int(11) NOT NULL,
  `fk_id_tok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `avoir_tok`
--

CREATE TABLE `avoir_tok` (
  `id_avo_tok` int(11) NOT NULL,
  `fk_id_cli` int(11) NOT NULL,
  `fk_id_tok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contenir`
--

CREATE TABLE `contenir` (
  `fk_id_pro` int(11) NOT NULL,
  `fk_id_com` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `evaluer`
--

CREATE TABLE `evaluer` (
  `fk_id_avi` int(11) NOT NULL,
  `fk_id_prod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_adresse`
--

CREATE TABLE `t_adresse` (
  `id_adr` int(11) NOT NULL,
  `nom_adresse` varchar(100) NOT NULL,
  `rue_adresse` varchar(100) NOT NULL,
  `code_postale_adresse` int(11) NOT NULL,
  `ville_adresse` varchar(62) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_avis`
--

CREATE TABLE `t_avis` (
  `id_avi` int(11) NOT NULL,
  `note_avis` int(11) NOT NULL,
  `commentaire_avis` varchar(400) NOT NULL,
  `time_avis` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_categorie`
--

CREATE TABLE `t_categorie` (
  `id_cat` int(11) NOT NULL,
  `nom_categorie` varchar(50) NOT NULL,
  `description_categorie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_client`
--

CREATE TABLE `t_client` (
  `id_cli` int(11) NOT NULL,
  `nom_client` varchar(50) NOT NULL,
  `prenom_client` varchar(50) NOT NULL,
  `date_naissance_client` date NOT NULL,
  `email_client` varchar(255) NOT NULL,
  `mdp_client` varchar(255) NOT NULL,
  `fk_id_tel` int(11) NOT NULL,
  `fk_id_rol` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_commande`
--

CREATE TABLE `t_commande` (
  `id_com` int(11) NOT NULL,
  `date_commande` date NOT NULL,
  `etat_commande` varchar(15) NOT NULL,
  `fk_id_cli` int(11) NOT NULL,
  `fk:id_liv` int(11) NOT NULL,
  `fk_id_fac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_facture`
--

CREATE TABLE `t_facture` (
  `id_fac` int(11) NOT NULL,
  `date_facture` date NOT NULL,
  `fk_id_com` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_habiter`
--

CREATE TABLE `t_habiter` (
  `id_hab` int(11) NOT NULL,
  `fk_id_cli` int(11) NOT NULL,
  `fk_id_adr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_image`
--

CREATE TABLE `t_image` (
  `id_img` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_livraison`
--

CREATE TABLE `t_livraison` (
  `id_liv` int(11) NOT NULL,
  `nom_livraison` varchar(255) NOT NULL,
  `choix_livraison` varchar(255) NOT NULL,
  `fk_id_com` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_produit`
--

CREATE TABLE `t_produit` (
  `id_pro` int(11) NOT NULL,
  `nom_produit` varchar(70) NOT NULL,
  `prix_produit` float NOT NULL,
  `stock_produit` int(11) NOT NULL,
  `description_produit` varchar(255) NOT NULL,
  `date_creation_produit` date NOT NULL COMMENT 'date de mise en ligne du produit dans le magasin selon les nouveautés',
  `fk_id_cat` int(11) NOT NULL,
  `fk_id_tva` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_role`
--

CREATE TABLE `t_role` (
  `id_rol` int(11) NOT NULL,
  `nom_role` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `t_telephone`
--

CREATE TABLE `t_telephone` (
  `id_tel` int(11) NOT NULL,
  `num_telephone` int(11) NOT NULL,
  `fk_id_cli` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `t_token`
--

CREATE TABLE `t_token` (
  `id_tok` int(11) NOT NULL,
  `product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_tva`
--

CREATE TABLE `t_tva` (
  `id_tva` int(11) NOT NULL,
  `taux_tva` float NOT NULL,
  `attribute_tva` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `avoir_image`
--
ALTER TABLE `avoir_image`
  ADD PRIMARY KEY (`id_avo_tok`),
  ADD KEY `fk_id_cli` (`fk_id_cli`),
  ADD KEY `fk_id_tok` (`fk_id_tok`);

--
-- Index pour la table `avoir_tok`
--
ALTER TABLE `avoir_tok`
  ADD PRIMARY KEY (`id_avo_tok`),
  ADD KEY `fk_id_cli` (`fk_id_cli`),
  ADD KEY `fk_id_tok` (`fk_id_tok`);

--
-- Index pour la table `contenir`
--
ALTER TABLE `contenir`
  ADD KEY `fk_id_pro` (`fk_id_pro`),
  ADD KEY `fk_id_com` (`fk_id_com`);

--
-- Index pour la table `evaluer`
--
ALTER TABLE `evaluer`
  ADD PRIMARY KEY (`fk_id_avi`),
  ADD KEY `fk_id_prod` (`fk_id_prod`),
  ADD KEY `id_avi` (`fk_id_avi`);

--
-- Index pour la table `t_adresse`
--
ALTER TABLE `t_adresse`
  ADD PRIMARY KEY (`id_adr`);

--
-- Index pour la table `t_avis`
--
ALTER TABLE `t_avis`
  ADD PRIMARY KEY (`id_avi`);

--
-- Index pour la table `t_categorie`
--
ALTER TABLE `t_categorie`
  ADD PRIMARY KEY (`id_cat`);

--
-- Index pour la table `t_client`
--
ALTER TABLE `t_client`
  ADD PRIMARY KEY (`id_cli`),
  ADD KEY `fk_id_tel` (`fk_id_tel`),
  ADD KEY `fk_id_rol` (`fk_id_rol`),
  ADD KEY `fk_id_tel_2` (`fk_id_tel`),
  ADD KEY `fk_id_rol_2` (`fk_id_rol`);

--
-- Index pour la table `t_commande`
--
ALTER TABLE `t_commande`
  ADD PRIMARY KEY (`id_com`),
  ADD KEY `id_fac` (`fk_id_fac`),
  ADD KEY `id_liv` (`fk:id_liv`),
  ADD KEY `id_cli` (`fk_id_cli`);

--
-- Index pour la table `t_facture`
--
ALTER TABLE `t_facture`
  ADD PRIMARY KEY (`id_fac`),
  ADD KEY `id_com` (`fk_id_com`);

--
-- Index pour la table `t_habiter`
--
ALTER TABLE `t_habiter`
  ADD PRIMARY KEY (`id_hab`),
  ADD KEY `fk_id_cli` (`fk_id_cli`),
  ADD KEY `fk_id_adr` (`fk_id_adr`);

--
-- Index pour la table `t_image`
--
ALTER TABLE `t_image`
  ADD PRIMARY KEY (`id_img`);

--
-- Index pour la table `t_livraison`
--
ALTER TABLE `t_livraison`
  ADD PRIMARY KEY (`id_liv`),
  ADD KEY `fk_id_com` (`fk_id_com`);

--
-- Index pour la table `t_produit`
--
ALTER TABLE `t_produit`
  ADD PRIMARY KEY (`id_pro`),
  ADD KEY `id_tva` (`fk_id_tva`),
  ADD KEY `id_cat` (`fk_id_cat`);

--
-- Index pour la table `t_role`
--
ALTER TABLE `t_role`
  ADD PRIMARY KEY (`id_rol`);

--
-- Index pour la table `t_telephone`
--
ALTER TABLE `t_telephone`
  ADD PRIMARY KEY (`id_tel`),
  ADD KEY `fk_id_cli` (`fk_id_cli`);

--
-- Index pour la table `t_token`
--
ALTER TABLE `t_token`
  ADD PRIMARY KEY (`id_tok`);

--
-- Index pour la table `t_tva`
--
ALTER TABLE `t_tva`
  ADD PRIMARY KEY (`id_tva`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `avoir_image`
--
ALTER TABLE `avoir_image`
  MODIFY `id_avo_tok` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `avoir_tok`
--
ALTER TABLE `avoir_tok`
  MODIFY `id_avo_tok` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_adresse`
--
ALTER TABLE `t_adresse`
  MODIFY `id_adr` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_avis`
--
ALTER TABLE `t_avis`
  MODIFY `id_avi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_categorie`
--
ALTER TABLE `t_categorie`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_client`
--
ALTER TABLE `t_client`
  MODIFY `id_cli` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_commande`
--
ALTER TABLE `t_commande`
  MODIFY `id_com` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_facture`
--
ALTER TABLE `t_facture`
  MODIFY `id_fac` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_habiter`
--
ALTER TABLE `t_habiter`
  MODIFY `id_hab` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_image`
--
ALTER TABLE `t_image`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_livraison`
--
ALTER TABLE `t_livraison`
  MODIFY `id_liv` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_produit`
--
ALTER TABLE `t_produit`
  MODIFY `id_pro` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_role`
--
ALTER TABLE `t_role`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_telephone`
--
ALTER TABLE `t_telephone`
  MODIFY `id_tel` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_token`
--
ALTER TABLE `t_token`
  MODIFY `id_tok` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_tva`
--
ALTER TABLE `t_tva`
  MODIFY `id_tva` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `avoir_image`
--
ALTER TABLE `avoir_image`
  ADD CONSTRAINT `avoir_image_ibfk_1` FOREIGN KEY (`fk_id_cli`) REFERENCES `t_image` (`id_img`),
  ADD CONSTRAINT `avoir_image_ibfk_2` FOREIGN KEY (`fk_id_tok`) REFERENCES `t_produit` (`id_pro`);

--
-- Contraintes pour la table `avoir_tok`
--
ALTER TABLE `avoir_tok`
  ADD CONSTRAINT `avoir_tok_ibfk_1` FOREIGN KEY (`fk_id_tok`) REFERENCES `t_token` (`id_tok`);

--
-- Contraintes pour la table `contenir`
--
ALTER TABLE `contenir`
  ADD CONSTRAINT `contenir_ibfk_1` FOREIGN KEY (`fk_id_pro`) REFERENCES `t_produit` (`id_pro`),
  ADD CONSTRAINT `contenir_ibfk_2` FOREIGN KEY (`fk_id_com`) REFERENCES `t_commande` (`id_com`);

--
-- Contraintes pour la table `evaluer`
--
ALTER TABLE `evaluer`
  ADD CONSTRAINT `evaluer_ibfk_2` FOREIGN KEY (`fk_id_avi`) REFERENCES `t_avis` (`id_avi`),
  ADD CONSTRAINT `evaluer_ibfk_3` FOREIGN KEY (`fk_id_prod`) REFERENCES `t_produit` (`id_pro`);

--
-- Contraintes pour la table `t_commande`
--
ALTER TABLE `t_commande`
  ADD CONSTRAINT `t_commande_ibfk_1` FOREIGN KEY (`fk_id_fac`) REFERENCES `t_facture` (`id_fac`),
  ADD CONSTRAINT `t_commande_ibfk_2` FOREIGN KEY (`fk:id_liv`) REFERENCES `t_livraison` (`id_liv`);

--
-- Contraintes pour la table `t_facture`
--
ALTER TABLE `t_facture`
  ADD CONSTRAINT `t_facture_ibfk_1` FOREIGN KEY (`fk_id_com`) REFERENCES `t_commande` (`id_com`);

--
-- Contraintes pour la table `t_livraison`
--
ALTER TABLE `t_livraison`
  ADD CONSTRAINT `t_livraison_ibfk_1` FOREIGN KEY (`fk_id_com`) REFERENCES `t_commande` (`id_com`);

--
-- Contraintes pour la table `t_produit`
--
ALTER TABLE `t_produit`
  ADD CONSTRAINT `t_produit_ibfk_1` FOREIGN KEY (`fk_id_tva`) REFERENCES `t_tva` (`id_tva`),
  ADD CONSTRAINT `t_produit_ibfk_2` FOREIGN KEY (`fk_id_cat`) REFERENCES `t_categorie` (`id_cat`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
