-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 05 juil. 2024 à 15:55
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `nfe114_sitemarchand`
--

-- --------------------------------------------------------

--
-- Structure de la table `main.alesoirtaraudslames`
--

DROP TABLE IF EXISTS `main.alesoirtaraudslames`;
CREATE TABLE IF NOT EXISTS `main.alesoirtaraudslames` (
  `nom` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `embout` varchar(55) COLLATE utf8mb3_unicode_ci NOT NULL,
  `queu` tinyint(1) NOT NULL,
  `diam` varchar(75) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ars` tinyint(1) NOT NULL,
  `unite` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL,
  `prixUnitaire` float NOT NULL,
  `quantite` int NOT NULL,
  `iso` tinyint(1) NOT NULL,
  `id` int NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `main.alesoirtaraudslames`
--

INSERT INTO `main.alesoirtaraudslames` (`nom`, `embout`, `queu`, `diam`, `ars`, `unite`, `prixUnitaire`, `quantite`, `iso`, `id`) VALUES
('Alésoir', 'Machine', 1, '4', 0, 'La pièce', 18.4, 4, 0, 0),
('Alésoir', 'Embout Machine', 1, '5', 0, 'La pièce', 10.11, 1, 0, 1),
('Alésoir', 'Embout Machine', 1, '6', 0, 'La pièce', 21.31, 3, 0, 2),
('Alésoir', 'Embout Machine', 1, '8', 0, 'La pièce', 24.17, 3, 0, 3),
('Alésoir', 'Machine', 0, '10', 0, 'La pièce', 25.85, 2, 0, 4),
('Alésoir', 'Machine', 0, '12', 0, 'La pièce', 34.89, 1, 0, 5),
('Alésoir', 'Machine', 0, '14', 1, 'La pièce', 30.27, 3, 0, 6),
('Alésoir', 'Machine', 0, '16', 1, 'La pièce', 31.23, 4, 0, 7),
('Alésoir', 'Machine', 0, '18', 1, 'La pièce', 5.09, 7, 0, 8),
('Alésoir', 'Machine', 0, '20', 0, 'La pièce', 19.28, 3, 0, 9),
('Tarauds', 'Machine', 0, 'M3', 0, 'La pièce', 4.31, 4, 0, 10),
('Tarauds', 'Machine', 0, 'M4 pas 70', 0, 'La pièce', 8.42, 1, 0, 11),
('Tarauds', 'Machine', 0, 'M5 pas 80', 0, 'La pièce', 11.81, 1, 0, 12),
('Tarauds', 'Machine', 0, 'M8 pas 1,25', 0, 'La pièce', 14.83, 2, 0, 13),
('Tarauds', 'Machine', 0, 'M10 pas 1,5', 0, 'La pièce', 14.55, 1, 0, 14),
('Tarauds', 'Machine', 0, '12x175', 0, 'La pièce', 16.54, 2, 1, 15),
('Tarauds', 'Machine', 0, '14x200', 0, 'La pièce', 7.35, 1, 1, 16),
('Lames de scie', 'à metaux', 0, '350x32x1,6 Dts4', 0, 'La pièce', 15.93, 5, 0, 17),
('Lames de scie', 'Machine', 0, '10Dts/cm L300', 0, 'La pièce', 1.42, 19, 0, 18);

-- --------------------------------------------------------

--
-- Structure de la table `main.bobines`
--

DROP TABLE IF EXISTS `main.bobines`;
CREATE TABLE IF NOT EXISTS `main.bobines` (
  `id` int NOT NULL,
  `nom` varchar(55) COLLATE utf8mb3_unicode_ci NOT NULL,
  `diam` float NOT NULL,
  `color` varchar(55) COLLATE utf8mb3_unicode_ci NOT NULL,
  `poids` float NOT NULL,
  `prixUnitaire` float NOT NULL,
  `quantite` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `main.bobines`
--

INSERT INTO `main.bobines` (`id`, `nom`, `diam`, `color`, `poids`, `prixUnitaire`, `quantite`) VALUES
(1, 'PLA', 1.75, 'Black', 0.8, 16.9, 1),
(2, 'PLA', 1.75, 'Pink', 0.8, 16.9, 2),
(3, 'PLA', 1.75, 'Red', 0.8, 16.9, 3),
(4, 'PLA', 1.75, 'White', 0.8, 16.9, 4),
(5, 'PLA', 1.75, 'Blue', 0.8, 16.9, 1),
(6, 'PLA', 1.75, 'Neon Orange', 0.8, 16.9, 1),
(7, 'PLA', 1.75, 'Neon Yellow', 0.8, 16.9, 2),
(8, 'PLA', 1.75, 'Neon Green', 0.8, 16.9, 1),
(9, 'PLA', 1.75, 'T-red', 1, 18.8, 1),
(10, 'PLA', 1.75, 'T-purple', 1, 18.8, 1),
(11, 'PLA', 1.75, 'T-yellow', 1, 18.8, 0),
(12, 'PLA', 1.75, 'T-green', 1, 18.8, 1),
(13, 'PLA', 1.75, 'T-blue', 1, 18.8, 1),
(14, 'PLA', 1.75, 'Fluo orange', 1, 18.8, 1),
(15, 'PLA', 1.75, 'Bright red', 1, 18.8, 0),
(16, 'PLA', 1.75, 'Fushia', 1, 18.8, 2),
(17, 'PLA', 1.75, 'Pink', 1, 18.8, 3),
(18, 'PLA', 1.75, 'Purple', 1, 18.8, 1),
(19, 'PLA', 1.75, 'Skyblue', 1, 18.8, 1),
(20, 'PLA', 1.75, 'Black', 1, 18.8, 1),
(21, 'PVA', 1.75, 'Naturel', 0.5, 35.9, 1);

-- --------------------------------------------------------

--
-- Structure de la table `main.cartouches`
--

DROP TABLE IF EXISTS `main.cartouches`;
CREATE TABLE IF NOT EXISTS `main.cartouches` (
  `id` int NOT NULL AUTO_INCREMENT,
  `secteur` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `quantite` float NOT NULL,
  `prixUnitaire` float NOT NULL,
  `machine` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `marque` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ref` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `main.cartouches`
--

INSERT INTO `main.cartouches` (`id`, `secteur`, `quantite`, `prixUnitaire`, `machine`, `marque`, `ref`) VALUES
(1, 'Magasin', 3, 38, 'PIXMA MG3600', 'CANON', 'FTCPG540XL'),
(2, 'Magasin', 0, 0, 'PIXMA MG3600', 'CANON', 'FTCCCL541XL'),
(3, 'Magasin', 0, 19, '845C', 'HP', 'HP15/origine'),
(4, 'Magasin', 1, 19, '845C', 'HP', 'FTH6615D'),
(5, 'CDI', 0, 146, 'C2665DNF', 'Dell', 'FTD593-BBBU_BKCMY'),
(6, 'CDI', 1, 37, 'C2665DNF', 'Dell', 'FTD593-BBBU'),
(7, 'CDI', 0, 37, 'C2665DNF', 'Dell', 'FTD593-BBBT'),
(8, 'CDI', 0, 37, 'C2665DNF', 'Dell', 'FTD593-BBBS'),
(9, 'CDI', 0, 37, 'C2665DNF', 'Dell', 'FTD593-BBBR'),
(10, 'Modelage', 0, 335, 'C831 (PCL)', 'Oki', ' FTO44844508BKCMY'),
(11, 'Modelage', 1, 72, 'C831 (PCL)', 'Oki', ' FTO44844508'),
(12, 'Modelage', 1, 92, 'C831 (PCL)', 'Oki', ' FTO44844507'),
(13, 'Modelage', 1, 92, 'C831 (PCL)', 'Oki', ' FTO44844506'),
(14, 'Modelage', 0, 92, 'C831 (PCL)', 'Oki', ' FTO44844508-Y'),
(15, 'CPI', 1, 106, 'C823DN', 'Oki', '46471104-BK'),
(16, 'CPI', 1, 384, 'C823DN', 'Oki', 'FTO44844616-BKCMY'),
(17, 'Art App C308', 0, 384, 'C822DN', 'Oki', 'FTO44844616_BKCMY'),
(18, 'Art App C308', 0, 74, 'C822DN', 'Oki', 'FTO44844616'),
(19, 'Art App C308', 0, 128, 'C822DN', 'Oki', 'FTO44844615'),
(20, 'Art App C308', 0, 128, 'C822DN', 'Oki', 'FTO44844614'),
(21, 'Art App C308', 0, 128, 'C822DN', 'Oki', 'FTO44844613'),
(22, 'Déco C309', 0, 42, 'MFC-J6510DW', 'Brother', 'FTBLC1280XLBKCMY'),
(23, 'TS Ceram', 0, 302, 'PAGEWIDE 352DW', 'HP', 'HP L0R95AE BKCMY'),
(24, 'TS Ceram', 0, 62, 'PAGEWIDE 352DW', 'HP', 'HP L0R95AE'),
(25, 'TS Ceram', 0, 62, 'PAGEWIDE 352DW', 'HP', 'HP F6T77AE'),
(26, 'TS Ceram', 0, 62, 'PAGEWIDE 352DW', 'HP', 'HP F6T78AE'),
(27, 'TS Ceram', 0, 62, 'PAGEWIDE 352DW', 'HP', 'HP F6T79AE'),
(28, 'MEI', 0, 242, 'laserjet pro M277DW', 'HP', 'FTHCF400X_BKCMY'),
(29, 'MEI', 0, 550, 'enterprise M553N', 'laserjet', 'FTHCF361A_BKCMY'),
(30, 'FOND', 0, 3, 'MFC 6490 cw (250c)', 'Brother', 'LC1100-BK/origine'),
(31, 'FOND', 0, 3, 'MFC 6490 cw (250c)', 'Brother', 'LC1100-C/origine'),
(32, 'FOND', 0, 3, 'MFC 6490 cw (250c)', 'Brother', 'LC1100-M/origine'),
(33, 'FOND', 0, 3, 'MFC 6490 cw (250c)', 'Brother', 'LC1100-Y/origine'),
(34, 'SN', 1, 41, '1320N', 'HP', 'FTH5949A'),
(35, 'SN', 1, 34, 'LASERJET 2100', 'HP', 'FTH4096'),
(36, 'SN', 1, 212, 'LASERJET CP 3505 DN', 'HP', 'FTH6470A_BKCMY'),
(37, 'SN', 2, 45, 'ML2525', 'SAMSUNG', 'FTSMLT-D1052L'),
(38, 'TU', 0, 16, 'Deskjet 5740', 'HP', 'FTHC9363EE'),
(39, 'TU', 2, 19, 'Deskjet 5740', 'HP', 'HP339/origine'),
(40, 'TU', 2, 19, 'Deskjet 5740', 'HP', 'FTHC8767'),
(41, 'STD2A', 1, 56, 'MFC J6930DW', 'Brother', 'FTBLC3219XLBKCMY'),
(42, 'STI2D', 2, 3, 'MFC 250C', 'Brother', 'FTBLC1100BK'),
(43, 'STI2D', 0, 3, 'MFC 250C', 'Brother', 'FTBLC1100M'),
(44, 'STI2D', 1, 3, 'MFC 250C', 'Brother', 'LC1100-Y/origine');

-- --------------------------------------------------------

--
-- Structure de la table `main.consommable`
--

DROP TABLE IF EXISTS `main.consommable`;
CREATE TABLE IF NOT EXISTS `main.consommable` (
  `nom` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `unite` int NOT NULL,
  `prixUnitaire` float NOT NULL,
  `quantite` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `main.consommable`
--

INSERT INTO `main.consommable` (`nom`, `unite`, `prixUnitaire`, `quantite`, `id`) VALUES
('Pétrole', 0, 3, 13, 1),
('White spirit', 0, 3, 4, 2),
('Alcool à brûler', 0, 1, 15, 3),
('Essence à la terebentine', 0, 6, 9, 4),
('Acetone', 0, 3, 5, 5),
('Diluant cellulosique', 0, 5, 14, 6),
('Usinex CG200/Décoltex DC28', 0, 2, 20, 7),
('Blasorun 5', 0, 18, 6, 8),
('Blasocut', 0, 10, 208, 9),
('Gliss 68 SW', 0, 2, 20, 10),
('Degrippant KF5/WD40', 0, 9, 9, 11),
('Nettoyant Contact', 0, 9, 2, 12),
('Absorbant végétal ignifugé - 40l', 0, 16, 20, 13),
('Papier d\'essuyage', 0, 7, 37, 14),
('Pinceau pure Bristle 25,4mm', 0, 1, 5, 15),
('Pinceaux à décrasser nylon larg.40', 0, 1, 4, 16),
('Colle Cyanoacrylate', 0, 2, 15, 17);

-- --------------------------------------------------------

--
-- Structure de la table `main.disctroncmeul`
--

DROP TABLE IF EXISTS `main.disctroncmeul`;
CREATE TABLE IF NOT EXISTS `main.disctroncmeul` (
  `dom` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `mot` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `diam` float NOT NULL,
  `epais` int NOT NULL,
  `alesa` float NOT NULL,
  `fer` float NOT NULL,
  `plate` float NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `main.disctroncmeul`
--

INSERT INTO `main.disctroncmeul` (`dom`, `mot`, `diam`, `epais`, `alesa`, `fer`, `plate`, `id`) VALUES
('Disque', 'a meuler', 115, 6, 22, 0, 0, 1),
('Disque', 'a tronconner', 115, 1, 0, 0, 0, 2),
('Disque', 'a tronconner', 125, 2, 22, 0, 0, 3),
('Disque', 'a meuler', 125, 6, 22, 0, 0, 4),
('Disque', 'a tronconner', 250, 1, 32, 0, 0, 5),
('Disque', 'a tronconner', 250, 1, 32, 0, 0, 6),
('Disque', 'a tronconner', 250, 2, 31, 0, 0, 7),
('Meule', 'a tronconner', 230, 3, 22, 0, 0, 8),
('Meule', 'a meuler', 230, 6, 22, 0, 0, 9),
('Meule', 'a tronconner', 300, 3, 25, 0, 0, 10);

-- --------------------------------------------------------

--
-- Structure de la table `main.epi`
--

DROP TABLE IF EXISTS `main.epi`;
CREATE TABLE IF NOT EXISTS `main.epi` (
  `nom` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `unite` int NOT NULL,
  `quantite` int NOT NULL,
  `prixUnitaire` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `main.epi`
--

INSERT INTO `main.epi` (`nom`, `unite`, `quantite`, `prixUnitaire`) VALUES
('Casque anti-bruit', 0, 17, 4),
('masques FFP3  x10', 0, 6, 25),
('Visière de protection', 0, 40, 9),
('Lunette de protection', 0, 20, 2),
('Sur lunettes', 0, 10, 4),
('Gant nitrile taille M', 0, 7, 18),
('Gant nitrile taille L ', 0, 7, 18),
('Gant nitrile taille XL', 0, 0, 18);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
