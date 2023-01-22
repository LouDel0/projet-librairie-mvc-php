-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 27 juil. 2022 à 06:08
-- Version du serveur : 8.0.29
-- Version de PHP : 8.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données : `gestionlibrairie`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id_commande` int NOT NULL AUTO_INCREMENT,
  `isbn` bigint DEFAULT NULL,
  `code_fournisseur` int DEFAULT NULL,
  `date_achat` date NOT NULL,
  `prix_achat` double NOT NULL,
  `nb_exemplaires` int NOT NULL,
  PRIMARY KEY (`id_commande`),
  KEY `isbn` (`isbn`),
  KEY `code_fournisseur` (`code_fournisseur`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id_commande`, `isbn`, `code_fournisseur`, `date_achat`, `prix_achat`, `nb_exemplaires`) VALUES
(1, 1188965478, 200, '2022-03-01', 10, 10),
(2, 2123456781, 700, '2022-03-01', 20, 20),
(3, 3002005000, 240, '2022-03-01', 10, 50),
(4, 3652897413, 700, '2022-03-01', 10, 10),
(5, 1020304050, 700, '2022-03-02', 50, 10),
(7, 1188965478, 501, '2022-03-01', 100, 10),
(8, 1188965478, 200, '2022-03-02', 100, 2),
(10, 1020304050, 10, '2022-02-03', 20, 1),
(11, 2030405060, 10, '2022-02-02', 10, 1);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
CREATE TABLE IF NOT EXISTS `fournisseur` (
  `code_fournisseur` int NOT NULL,
  `raison_social` varchar(20) NOT NULL,
  `rue_fournisseur` varchar(20) DEFAULT NULL,
  `code_postal` varchar(10) DEFAULT NULL,
  `localite` varchar(20) NOT NULL,
  `pays` varchar(20) DEFAULT NULL,
  `tel_fournisseur` varchar(15) NOT NULL,
  `url_fournisseur` varchar(20) DEFAULT NULL,
  `email_fournisseur` varchar(30) NOT NULL,
  `fax_fournisseur` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`code_fournisseur`),
  UNIQUE KEY `raison_social` (`raison_social`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`code_fournisseur`, `raison_social`, `rue_fournisseur`, `code_postal`, `localite`, `pays`, `tel_fournisseur`, `url_fournisseur`, `email_fournisseur`, `fax_fournisseur`) VALUES
(10, 'Pompom', '', '', 'Paris', 'France', '', '', 'pompom@mail.com', ''),
(11, 'Le nom', 'la rue', '83000', 'Toulon', 'France', '0404040404', 'url', 'nom@email.com', ''),
(98, 'La pomme', 'la rue', '83000', 'Toulon', 'France', '0606060505', 'url du fournisseur', 'pomme@mail.com', '0404040404'),
(99, 'Flower Page', NULL, NULL, 'Paris', 'France', '0603020506', NULL, 'flowerpage@mail.com', NULL),
(100, 'Charlemagne', NULL, NULL, 'Paris', 'France', '0102030405', NULL, 'charlemagne@mail.com', NULL),
(101, 'Livre en poche', NULL, NULL, 'Marseille', 'France', '0203040506', NULL, 'livreenpoche@mail.com', NULL),
(102, 'Impact livre', NULL, NULL, 'Nice', 'France', '0304050607', NULL, 'Impact@mail.com', NULL),
(103, 'Expodif', NULL, NULL, 'Toulon', 'France', '0405060708', NULL, 'expodif@mail.com', NULL),
(200, 'Amazon', NULL, NULL, 'Paris', 'France', '0800654654', NULL, 'amazon@gmail.com', NULL),
(240, 'Fnac', NULL, NULL, 'Paris', 'France', '0800321544', NULL, 'Fnac@Fnac.com', NULL),
(250, 'Bookshop', NULL, NULL, 'Marseille', 'France', '0812458654', NULL, 'bookshop@bookshop.com', NULL),
(260, 'Ghibli', NULL, NULL, 'Tokyo', 'japon', '3365498721', NULL, 'Ghibli@Ghibli.com', NULL),
(401, 'Impact Livres', NULL, NULL, 'Paris', 'France', '0142345454', NULL, 'contact@impactlivre.fr', NULL),
(404, 'NotFound', NULL, NULL, 'Paris', 'France', '0936304590', NULL, 'NotFound@gmail.fr', NULL),
(411, 'Cultura', NULL, NULL, 'La-Valette', 'France', '0607880970', NULL, 'culturaboitemail@mail.com', NULL),
(501, 'ABRAKADABRA', NULL, NULL, 'marseille', 'France', '2147483648', NULL, 'abrakadabra@gmail.com', NULL),
(502, 'bookinbar', NULL, NULL, 'Voiron', 'France', '2347483648', NULL, 'abokkinbar@gmail.com', NULL),
(503, 'enfantilingue', NULL, NULL, 'lyon', 'France', '2347482648', NULL, 'enfantilingue@hotmail.fr', NULL),
(700, 'Eyrolles', NULL, NULL, 'Paris', 'France', '1234567890', NULL, 'eyrolles@mail.com', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

DROP TABLE IF EXISTS `livre`;
CREATE TABLE IF NOT EXISTS `livre` (
  `isbn` bigint NOT NULL,
  `titre_livre` varchar(40) NOT NULL,
  `theme_livre` varchar(100) NOT NULL,
  `nbr_pages_livre` int NOT NULL,
  `format_livre` varchar(20) DEFAULT NULL,
  `nom_auteur` varchar(30) NOT NULL,
  `prenom_auteur` varchar(30) DEFAULT NULL,
  `editeur` varchar(40) NOT NULL,
  `annee_edition` int DEFAULT NULL,
  `prix_vente` double NOT NULL,
  `langue_livre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`isbn`),
  UNIQUE KEY `titre_livre` (`titre_livre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`isbn`, `titre_livre`, `theme_livre`, `nbr_pages_livre`, `format_livre`, `nom_auteur`, `prenom_auteur`, `editeur`, `annee_edition`, `prix_vente`, `langue_livre`) VALUES
(1020304050, 'Les rives blanches', 'roman', 100, NULL, 'Laborie', 'Christian', 'Pocket', NULL, 7.5525, NULL),
(1040708090, 'Titre', 'Thème', 2, 'Pocket', 'Auteur', 'Auteur', 'Editeur', 2022, 5, 'fr'),
(1188965478, 'Apprendre Java 2', 'Educatif', 501, NULL, 'Jhonson', 'Robert', 'OpenClassRoom', NULL, 71.25, NULL),
(1234567809, 'Si ça saigne', 'Thriller', 400, NULL, 'King', 'Stephen', 'Scribner', NULL, 38, NULL),
(1450000000, 'Disparu à jamais', 'Roman-policier', 500, NULL, 'Coben', 'Harlen', 'Belfond', NULL, 47.5, NULL),
(1501236421, 'Vous revoir', 'Comédie-romantique', 255, NULL, 'Levy', 'Marc', 'Pocket', NULL, 19, NULL),
(1562365874, 'Ou est tu', 'Roman', 126, NULL, 'Levy', 'Marc', 'Pocket', NULL, 23.75, NULL),
(1648735945, 'The night and day', 'fiction', 200, 'pocket', 'Brown', 'Aline', 'La fleur', 2022, 50, 'fr'),
(1750000000, 'La chasse', 'Roman-policier', 366, NULL, 'Levy', 'Marc', 'Pocket', NULL, 23.75, NULL),
(2030405060, 'Voyage autour du monde', 'roman', 110, NULL, 'Louis Antoine de Bougainville', NULL, 'Classiques Larousse', NULL, 9.5, NULL),
(2065465613, 'Photoshop cc', 'science fiction', 630, NULL, 'Isaac Asimov', NULL, 'eyrolle', NULL, 14.155, NULL),
(2065488788, 'j apprends la photo', 'Photographie', 230, NULL, 'Nicolas Croce', NULL, 'Folio', NULL, 13.205, NULL),
(2070463613, 'fondation', 'science fiction', 830, NULL, 'Isaac Asimov', NULL, 'Folio', NULL, 14.155, NULL),
(2076546544, '1984', 'science fiction', 413, NULL, 'George Orwell', NULL, 'Folio', NULL, 8.264999999999999, NULL),
(2123456781, 'Harry Potter', 'Fantasy', 450, NULL, 'J. K. Rowling', NULL, 'Bloomsbury Publishing', NULL, 47.5, NULL),
(2365987410, 'Germinal', 'Roman', 350, NULL, 'Zola', 'Emile', 'Gil Blas', NULL, 32.3, NULL),
(2569874563, 'Nana', 'Roman', 300, NULL, 'Zola', 'Emile', 'G. charpentier', NULL, 25.65, NULL),
(3002005000, 'HTML et JavaScript', 'langage de programmation', 700, NULL, 'Emily A', NULL, 'Fnac Paris ', NULL, 21.8025, NULL),
(3002005001, 'Mémento HTML 5', 'langage de programmation', 380, NULL, 'Rodolphe Rimelé', NULL, 'BROCHÉ ', NULL, 5.415, NULL),
(3002005002, 'SQL Pour les Nuls, 7e', 'SQL et MySQL', 300, NULL, 'Allen G.Taylor', NULL, 'BROCHÉ ', NULL, 23.702499999999997, NULL),
(3002005003, 'PHP 7 et SQ, 7e', 'SQL et MySQL', 607, NULL, 'Guillaume Poncon', NULL, 'BROCHÉ ', NULL, 23.702499999999997, NULL),
(3002005004, 'Tout JavaScript', 'JAVASCRIPT', 538, NULL, 'Olivier Hondermarck', NULL, 'Fnac', NULL, 28.404999999999998, NULL),
(3040506070, 'De la pierre à l âme', 'roman', 120, NULL, 'Jean Malaurie', NULL, 'Plon', NULL, 19.95, NULL),
(3652897412, 'Apprendre à programmer avec Scratch', 'Informatique', 450, NULL, 'Julien Jacket', NULL, 'Ellipses', NULL, 16.15, NULL),
(3652897413, 'Apprendre à programmer avec Python 3', 'Informatique', 473, NULL, 'Gerard Swinnen', NULL, 'Gerard Swinnen', NULL, 33.25, NULL),
(3692581470, 'Le titre', 'Le Thème', 2, 'Petit', 'Lauteur', 'LePrénom', 'Editeur', 2022, 5, 'fr'),
(4050607080, 'Venise', 'roman', 130, NULL, 'Asis Massu', NULL, 'Fata Morgana', NULL, 28.5, NULL),
(4123456780, 'Seigneur des Anneaux', 'Fantasy', 490, NULL, 'J. R. R. Tolkien', NULL, 'Christian Bourgois', NULL, 142.5, NULL),
(4123456782, 'La peste', 'Récit', 430, NULL, 'Camus', 'Albert', 'Gallimard', NULL, 14.25, NULL),
(4123456783, 'Avatar', 'Fantasy', 440, NULL, 'James Cameron', NULL, 'Bloomsbury Publishing', NULL, 19, NULL),
(4123456784, 'Le Hobbit', 'Fantasy', 404, NULL, 'J. R. R. Tolkien', NULL, 'Christian Bourgois', NULL, 85.5, NULL),
(5060708090, 'L exposition', 'roman', 140, NULL, 'Zola', 'Emile', 'Louison Edition', NULL, 18.05, NULL),
(6546598456, 'Noir&Blanc', 'Photo', 630, NULL, 'Zola', 'Emile', 'eyrolle', NULL, 36.1, NULL),
(8877665544, 'Mon titre', 'le thème', 200, 'format pocket', 'anonyme', '', 'anonyme', 2002, 10, 'fr'),
(9876543210, 'Le bouquin', 'roman', 100, NULL, 'anonyme', NULL, 'anonyme', NULL, 20, NULL),
(9988776655, 'Greta formation', 'information', 100, 'livre de poche', 'Zola', 'Pierre', 'Greta', 2020, 20, 'fr');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nom_user` varchar(100) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `mdp_user` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `nom_user`, `email_user`, `mdp_user`) VALUES
(1, 'bezon', 'jeremy.bezon@gmail.com', '123456'),
(2, 'pla', 'guillaume.pla@gmail.com', '$2y$10$2EVCCi2yd1AEyxa/ETXDwutI0FH1UuzUXJltN.vfWBYey2wWJ4nSG');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`isbn`) REFERENCES `livre` (`isbn`),
  ADD CONSTRAINT `commande_ibfk_2` FOREIGN KEY (`code_fournisseur`) REFERENCES `fournisseur` (`code_fournisseur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
