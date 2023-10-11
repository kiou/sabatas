-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 27 août 2023 à 20:28
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
-- Base de données : `sabatas`
--

-- --------------------------------------------------------

--
-- Structure de la table `actualite`
--

DROP TABLE IF EXISTS `actualite`;
CREATE TABLE IF NOT EXISTS `actualite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `actualite`
--

INSERT INTO `actualite` (`id`, `created`, `changed`, `title`, `slug`, `image`, `contenu`, `is_active`, `categorie`, `resume`) VALUES
(1, '2023-08-20 15:57:25', '2023-08-23 15:09:09', 'apibus in ante sit amet, varius iaculis eros.', 'apibus-in-ante-sit-amet-varius-iaculis-eros', 'bb1f8afd0fae9d6f55f03accc1c83dd6-1692803349.jpg', '<p>fringilla varius. Nullam risus velit, convallis sed congue ut, bibendum a purus. Sed dictum imperdiet porta. Aenean scelerisque, ligula vitae commodo elementum, leo mauris tristique nunc, sit amet porttitor nisi mauris eu sapien. Suspendisse non tempor erat. Nullam gravida accumsan blandit. Donec malesuada elit non elit mattis, eget finibus ante aliquet. Maecenas tellus ex, dapibus in ante sit amet, varius iaculis eros.</p>\r\n\r\n<p>Phasellus lacinia est vehicula, molestie purus et, lobortis elit. Etiam interdum porttitor dolor, vel ultrices sapien mollis nec. Nunc vulputate dictum ligula id pretium. Nulla tempor sapien orci, ac lobortis lacus egestas non. Nam a magna varius, faucibus nunc ac, auctor nisi. Phasellus condimentum pretium dui tempor blandit. Quisque lobortis quis sem ut commodo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis eges</p>', 1, 'randonne', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent dapibus pulvinar odio, id gravida dui laoreet a. Etiam egestas vel ligula non rutrum. Pellentesque a augue et justo dictum interdum quis et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabi'),
(2, '2023-08-20 15:57:50', '2023-08-23 15:09:03', 'Vestibulum ante ipsum primis in faucibus orci lu', 'vestibulum-ante-ipsum-primis-in-faucibus-orci-lu', 'b0784894c963b0a3af3bbf1d48452b16-1692803342.jpg', '<p>&nbsp;finibus nunc. Cras non diam lectus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam eu neque at odio fringilla varius. Nullam risus velit, convallis sed congue ut, bibendum a purus. Sed dictum imperdiet porta. Aenean scelerisque, ligula vitae commodo elementum, leo mauris tristique nunc, sit amet porttitor nisi mauris eu sapien. Suspendisse non tempor erat. Nullam gravida accumsan blandit. Donec malesuada elit non elit mattis, eget finibus ante aliquet. Maecenas tellus ex, dapibus in ante sit amet, varius iaculis eros.</p>\r\n\r\n<p>Phasellus lacinia est vehicula, molestie purus et, lobortis elit. Etiam interdum porttitor dolor, vel ultrices sapien mollis nec. Nunc vulputate dictum ligula id pretium. Nulla tempor sapien orci, ac lobortis lacus egestas non. Nam a magna varius, faucibus nunc ac, auctor nisi. Phasellus condimentum pretium&nbsp;</p>', 1, 'accrobranche', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent dapibus pulvinar odio, id gravida dui laoreet a. Etiam egestas vel ligula non rutrum. Pellentesque a augue et justo dictum interdum quis et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabi'),
(3, '2023-08-20 16:03:21', '2023-08-23 15:08:57', 'felis vulputate, malesuada dui vitae, tristique', 'felis-vulputate-malesuada-dui-vitae-tristique', 'ad4e3d07b9ec2a4ad509794dd3379189-1692803336.jpg', '<p>avida accumsan blandit. Donec malesuada elit non elit mattis, eget finibus ante aliquet. Maecenas tellus ex, dapibus in ante sit amet, varius iaculis eros.</p>\r\n\r\n<p>Phasellus lacinia est vehicula, molestie purus et, lobortis elit. Etiam interdum porttitor dolor, vel ultrices sapien mollis nec. Nunc vulputate dictum ligula id pretium. Nulla tempor sapien orci, ac lobortis lacus egestas non. Nam a magna varius, faucibus nunc ac, auctor nisi. Phasellus condimentum pretium dui tempor blandit. Quisque lobortis quis sem ut commodo. Pellentesque habitant morbi tristique senectus et netus et ma</p>', 1, 'equitation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent dapibus pulvinar odio, id gravida dui laoreet a. Etiam egestas vel ligula non rutrum. Pellentesque a augue et justo dictum interdum quis et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabi'),
(4, '2023-08-20 18:24:21', '2023-08-23 15:08:50', 'aptent taciti sociosqu ad litora torquent per c', 'aptent-taciti-sociosqu-ad-litora-torquent-per-c', '94973b0b049fca63c42625f1d5de2f1c-1692803329.jpg', '<p>&nbsp;aptent taciti sociosqu ad litora torquent per c</p>', 1, 'equitation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent dapibus pulvinar odio, id gravida dui laoreet a. Etiam egestas vel ligula non rutrum. Pellentesque a augue et justo dictum interdum quis et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabi'),
(5, '2023-08-20 18:27:16', '2023-08-23 15:31:38', 'us. Vestibulum ante ipsum prim', 'us-vestibulum-ante-ipsum-prim', '153d81eafcec35d85b5f03350c4e9af0-1692803323.jpg', '<h2>orem ipsum dolor sit amet, consectetur adipiscing elit. Duis.</h2>\r\n\r\n<p>porttitor purus a metus tempor, vel eleifend erat ullamcorper. Aliquam lacinia malesuada mauris sed sagittis. In hac habitasse platea dictumst. Maecenas diam enim, cursus quis eleifend in, vestibulum vel massa. Vestibulum lectus tortor, fringilla eu volutpat sed, rhoncus a velit. Donec maximus tortor in mattis ornare. Curabitur nec tincidunt nisl. Ut et venenatis elit. Duis non rhoncus augue, at pretium eros. Ut lobortis turpis erat. Aliquam erat volutpat. Proin elementum sem eu libero pretium, non ornare tellus condimentum. Ut commodo orci odio, ut ornare nibh finibus at. Vivamus quis est quam. Suspendisse potenti.</p>\r\n\r\n<ul>\r\n	<li>qdsqdqsdsqdqsd</li>\r\n	<li>qssdqsdqsdqsdqs</li>\r\n	<li>dsqdqsdqsddsqdqs</li>\r\n</ul>\r\n\r\n<p>Cras maximus posuere lorem vel aliquam. Proin efficitur id augue in condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin magna orci, tincidunt eget nibh vel, ornare sodales augue. Ut non fermentum eros, vel faucibus tortor. Nunc ac lectus blandit, mollis purus eget, imperdiet ante. Proin ullamcorper justo eu nisi iaculis hendrerit. Nullam ornare nunc odio, vel imperdiet metus maximus sit amet. Pellentesque tempus maximus cursus. Integer lectus sem, mattis quis ligula eu, pharetra ultrices ex. Aenean vel velit quis eros feugiat congue id vitae tellus. Morbi placerat dapibus ante eget fringilla. In elit odio, laoreet vitae quam id, ultrices lobortis libero.</p>\r\n\r\n<p>Morbi lobortis non leo in tincidunt. Morbi</p>\r\n\r\n<p><img alt=\"\" src=\"/img/ckeditor/131c1e25cebecc24c113a9c880632529.jpg\" style=\"height:300px; width:450px\" /></p>', 1, 'loisir', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent dapibus pulvinar odio, id gravida dui laoreet a. Etiam egestas vel ligula non rutrum. Pellentesque a augue et justo dictum interdum quis et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabi'),
(6, '2023-08-20 18:28:02', '2023-08-23 15:08:35', 'e, tristique dui. Vestibulum bibendum, nulla a fermentum facilisis, lorem', 'e-tristique-dui-vestibulum-bibendum-nulla-a-fermentum-facilisis-lorem', '131c1e25cebecc24c113a9c880632529-1692803314.jpg', '<p>e, tristique dui. Vestibulum bibendum, nulla a fermentum facilisis, lorem</p>', 1, 'vtt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent dapibus pulvinar odio, id gravida dui laoreet a. Etiam egestas vel ligula non rutrum. Pellentesque a augue et justo dictum interdum quis et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabi');

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

DROP TABLE IF EXISTS `avis`;
CREATE TABLE IF NOT EXISTS `avis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `avis`
--

INSERT INTO `avis` (`id`, `created`, `changed`, `nom`, `prenom`, `contenu`) VALUES
(1, '2023-08-21 10:34:19', NULL, 'Pinelli', 'Luc', 'Lorem ipsum dolor sit amet consectetur. Est et risus urna sociis mauris. Orci nec convallis tortor donec. Ac enim amet quam tincidunt urna facilisis. Luctus vitae nisl tempor gravida sodales. Hac vulputate ante nascetur nulla est pellentesque. Ut tortor ullamcorper sed a nibh ut. Integer arcu nisl adipiscing gravida tortor. A eget nunc ultrices odio.'),
(2, '2023-08-21 10:34:31', NULL, 'Thomas', 'Sophie', 'Lorem ipsum dolor sit amet consectetur. Est et risus urna sociis mauris. Orci nec convallis tortor donec. Ac enim amet quam tincidunt urna facilisis. Luctus vitae nisl tempor gravida sodales. Hac vulputate ante nascetur nulla est pellentesque. Ut tortor ullamcorper sed a nibh ut. Integer arcu nisl adipiscing gravida tortor. A eget nunc ultrices odio.'),
(3, '2023-08-21 10:34:43', NULL, 'Robert', 'Cotois', 'Lorem ipsum dolor sit amet consectetur. Est et risus urna sociis mauris. Orci nec convallis tortor donec. Ac enim amet quam tincidunt urna facilisis. Luctus vitae nisl tempor gravida sodales. Hac vulputate ante nascetur nulla est pellentesque. Ut tortor ullamcorper sed a nibh ut. Integer arcu nisl adipiscing gravida tortor. A eget nunc ultrices odio.');

-- --------------------------------------------------------

--
-- Structure de la table `block`
--

DROP TABLE IF EXISTS `block`;
CREATE TABLE IF NOT EXISTS `block` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

DROP TABLE IF EXISTS `chambre`;
CREATE TABLE IF NOT EXISTS `chambre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taille` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_contenu1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_contenu2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_chambre1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_chambre2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_chambre3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_chambre4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `chambre`
--

INSERT INTO `chambre` (`id`, `created`, `changed`, `nom`, `slug`, `prix`, `taille`, `lit`, `capacite`, `vue`, `contenu`, `is_active`, `type`, `image_contenu1`, `image_contenu2`, `image_chambre1`, `image_chambre2`, `image_chambre3`, `image_chambre4`) VALUES
(3, '2023-08-18 10:55:41', '2023-08-23 19:44:24', 'Exemple chambre 1', 'exemple-chambre-1', '150€', '35m²', '1 lit 180cm + 2 lits 90cm', '2 adultes + 2 enfants', 'Jardin', '<p>Dui aenean a ipsum at semper. Nunc amet a consectetur nisl pellentesque enim. Etiam diam dolor arcu sit non suspendisse rhoncus venenatis proin. Lorem ipsum dolor sit amet consectetur. Quisque mi quis massa ut. Ante rhoncus in arcu pulvinar cursus lacus in. Ornare fermentum etiam justo nunc in tristique urna nullam. Dui aenean a ipsum at semper. Nunc amet a consectetur nisl pellentesque enim. Etiam diam dolor arcu sit non suspendisse rhoncus venenatis proin. Lorem ipsum dolor sit amet consectetur.<br />\r\n<br />\r\nQuisque mi quis massa ut. Ante rhoncus in arcu pulvinar cursus lacus in. Ornare fermentum etiam justo nunc in tristique urna nullam. Dui aenean a ipsum at semper. Nunc amet a consectetur nisl pellentesque enim. Etiam diam dolor arcu sit non suspendisse rhoncus venenatis proin.</p>', 1, 'hote', 'img20230614164824-1692819863.6423.jpg', 'img-20230419-162319-1692819863.6423.jpg', 'img20220403140316-1692817853.37.jpg', 'img20220405153035-1692817853.3702.jpg', 'img20230614164824-1692817853.3702.jpg', 'img20220403140156-1692817853.3703.jpg'),
(4, '2023-08-18 11:02:31', '2023-08-23 19:44:12', 'Exemple de nom', 'exemple-de-nom', '28€', '78m²', '1 lit 180cm + 2 lits 90cm', '2 adultes + 2 enfants', 'Piscine', '<p>Dui aenean a ipsum at semper. Nunc amet a consectetur nisl pellentesque enim. Etiam diam dolor arcu sit non suspendisse rhoncus venenatis proin. Lorem ipsum dolor sit amet consectetur. Quisque mi quis massa ut. Ante rhoncus in arcu pulvinar cursus lacus in. Ornare fermentum etiam justo nunc in tristique urna nullam. Dui aenean a ipsum at semper. Nunc amet a consectetur nisl pellentesque enim. Etiam diam dolor arcu sit non suspendisse rhoncus venenatis proin. Lorem ipsum dolor sit amet consectetur.<br />\r\n<br />\r\nQuisque mi quis massa ut. Ante rhoncus in arcu pulvinar cursus lacus in. Ornare fermentum etiam justo nunc in tristique urna nullam. Dui aenean a ipsum at semper. Nunc amet a consectetur nisl pellentesque enim. Etiam diam dolor arcu sit non suspendisse rhoncus venenatis proin.</p>', 1, 'hote', 'img20220403140316-1692819852.0415.jpg', 'img20230614164824-1692819852.0416.jpg', 'img20220405153035-1692817836.8379.jpg', 'img20220403140316-1692817836.8381.jpg', 'img20220403140156-1692817836.8382.jpg', 'img20230614164824-1692817836.8382.jpg'),
(5, '2023-08-18 11:03:33', '2023-08-23 19:52:47', 'Derniére chambre d\'hote', 'derniere-chambre-dhote', '85€', '122m²', '1 lit 180cm + 2 lits 90cm', '2 adultes + 2 enfants', 'Parking', '<p>Dui aenean a ipsum at semper. Nunc amet a consectetur nisl pellentesque enim. Etiam diam dolor arcu sit non suspendisse rhoncus venenatis proin. Lorem ipsum dolor sit amet consectetur. Quisque mi quis massa ut. Ante rhoncus in arcu pulvinar cursus lacus in. Ornare fermentum etiam justo nunc in tristique urna nullam. Dui aenean a ipsum at semper. Nunc amet a consectetur nisl pellentesque enim. Etiam diam dolor arcu sit non suspendisse rhoncus venenatis proin. Lorem ipsum dolor sit amet consectetur.<br />\r\n<br />\r\nQuisque mi quis massa ut. Ante rhoncus in arcu pulvinar cursus lacus in. Ornare fermentum etiam justo nunc in tristique urna nullam. Dui aenean a ipsum at semper. Nunc amet a consectetur nisl pellentesque enim. Etiam diam dolor arcu sit non suspendisse rhoncus venenatis proin.</p>', 1, 'hote', 'img20220403140156-1692819838.9969.jpg', 'img-20230419-162319-1692819838.997.jpg', 'img20220403140156-1692812079.0553.jpg', 'img20220403140316-1692812079.0556.jpg', 'img20220405153035-1692812079.0556.jpg', 'img20230614164824-1692812079.0557.jpg'),
(6, '2023-08-20 14:25:51', '2023-08-23 19:43:45', 'Chambre gite 1', 'chambre-gite-1', '150€', '65m²', '1 lit 180cm + 2 lits 90cm', '2 adultes + 2 enfants', 'Vaches', '<p>2 adultes + 2 enfants</p>', 1, 'gite', 'img-20230419-155757-1692819825.0549.jpg', 'img20230419161626-1692819825.055.jpg', 'img20230419161453-1692817810.4197.jpg', 'img20230419161626-1692817810.4199.jpg', 'img20230419161603-1692817810.4199.jpg', 'p1020898-copie-1692817810.42.jpg'),
(7, '2023-08-20 14:33:05', '2023-08-23 19:43:35', 'Une autre chambre gite', 'une-autre-chambre-gite', '28€', '17m²', '1 lit 180cm + 2 lits 90cm', '2 adultes + 2 enfants', 'Aucune', '<p>sdqsdqsdqs</p>', 1, 'gite', 'p1020895-copie-1692819814.9806.jpg', 'p1020198-copie-1692819814.9807.jpg', 'photo-piscine-1692817795.9142.jpg', 'p1020898-copie-1692817795.9144.jpg', 'p1020895-copie-1692817795.9145.jpg', 'p1020892-copie-1692817795.9145.jpg'),
(8, '2023-08-20 14:36:55', '2023-08-23 19:43:23', 'un nom encore ici', 'un-nom-encore-ici', '58€', '54m²', '1 lit 180cm + 2 lits 90cm', '2 adultes + 2 enfants', 'qsdqsd', '<p>sqdsqdqsdq</p>', 1, 'gite', 'img-20230419-155757-1692819802.1256.jpg', 'img20230419161603-1692819802.1257.jpg', 'p1020844-copie-1692817774.9697.jpg', 'p1020895-copie-1692817774.9698.jpg', 'p1020892-copie-1692817774.9699.jpg', 'p1020898-copie-1692817774.97.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230815211612', '2023-08-15 21:16:16', 103),
('DoctrineMigrations\\Version20230815212644', '2023-08-15 21:26:50', 51),
('DoctrineMigrations\\Version20230815212833', '2023-08-15 21:28:38', 49),
('DoctrineMigrations\\Version20230815214338', '2023-08-15 21:43:42', 48),
('DoctrineMigrations\\Version20230815215236', '2023-08-15 21:52:39', 197),
('DoctrineMigrations\\Version20230817183141', '2023-08-17 18:31:45', 54),
('DoctrineMigrations\\Version20230817183406', '2023-08-17 18:34:10', 52),
('DoctrineMigrations\\Version20230817184137', '2023-08-17 18:41:40', 52),
('DoctrineMigrations\\Version20230817184657', '2023-08-17 18:47:01', 195),
('DoctrineMigrations\\Version20230820144355', '2023-08-20 14:44:00', 206),
('DoctrineMigrations\\Version20230820155642', '2023-08-20 15:56:45', 153),
('DoctrineMigrations\\Version20230821103020', '2023-08-21 10:30:25', 114),
('DoctrineMigrations\\Version20230821103329', '2023-08-21 10:33:32', 85),
('DoctrineMigrations\\Version20230823131900', '2023-08-23 13:19:06', 81);

-- --------------------------------------------------------

--
-- Structure de la table `header`
--

DROP TABLE IF EXISTS `header`;
CREATE TABLE IF NOT EXISTS `header` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `header`
--

INSERT INTO `header` (`id`, `created`, `changed`, `image`, `is_active`) VALUES
(1, '2023-08-17 20:01:19', '2023-08-17 20:53:42', 'rectangle-5-1692305621.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `nom`, `prenom`, `roles`, `password`, `is_active`) VALUES
(1, 'pinelli.luc@outlook.fr', 'Pinelli', 'Luc', '[]', '$2y$13$WFOuvk.Vd2Ln8qFMck3.9eZQRIlsReXlLpGzBQFXWtwh2tXuPC9cO', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
