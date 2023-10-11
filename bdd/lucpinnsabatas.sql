-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : lucpinnsabatas.mysql.db
-- Généré le : mer. 11 oct. 2023 à 16:14
-- Version du serveur : 5.7.42-log
-- Version de PHP : 8.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `lucpinnsabatas`
--

-- --------------------------------------------------------

--
-- Structure de la table `actualite`
--

CREATE TABLE `actualite` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `actualite`
--

INSERT INTO `actualite` (`id`, `created`, `changed`, `title`, `slug`, `image`, `contenu`, `is_active`, `categorie`, `resume`) VALUES
(5, '2023-08-20 18:27:16', '2023-10-01 21:35:15', 'Visiter Chomérac', 'visitechomerac', 'chomerac-1696188213.jpg', '<div>\r\n<div><iframe allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen=\"\" frameborder=\"0\" height=\"500\" src=\"https://www.youtube.com/embed/DGt3B70XNUs?si=Wnejx4v0WLVaeP6w\" title=\"YouTube video player\" width=\"800\"></iframe></div>\r\n</div>', 1, 'loisir', 'Pour découvrir notre beau et paisible village!'),
(6, '2023-08-20 18:28:02', '2023-10-01 21:35:08', 'Voie douce Chomérac', 'voie-douce-chomerac', 'voie-douce-de-la-payre-1696188414.jpg', '<p>Situ&eacute;e &agrave; 2 km de chez nous, de jolies balades &agrave; faire &agrave; v&eacute;lo ou &agrave; pieds!</p>\r\n\r\n<div>\r\n<div>\r\n<div><iframe allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen=\"\" frameborder=\"0\" height=\"500\" src=\"https://www.youtube.com/embed/1vvawSSXtoY?si=1UGbu11wtKf_6DXA\" title=\"YouTube video player\" width=\"800\"></iframe></div>\r\n</div>\r\n</div>', 1, 'randonne', 'voie douce de Privas au Pouzin'),
(7, '2023-10-02 18:33:12', '2023-10-02 19:41:06', 'Cascade du Gournier', 'gournier', 'cascade-de-gournier-tunnel-p1025526-1696268019.jpg', '<div>\r\n<div><iframe allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen=\"\" frameborder=\"0\" height=\"500\" src=\"https://www.youtube.com/embed/vUdd11uY53o?si=Gb8zScufwl57nKat\" title=\"YouTube video player\" width=\"800\"></iframe></div>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>', 1, 'randonne', 'Promenade fraicheur à côté du village d\'Alissas.');

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `avis`
--

INSERT INTO `avis` (`id`, `created`, `changed`, `nom`, `prenom`, `contenu`, `is_active`) VALUES
(1, '2023-08-21 10:34:19', '2023-10-04 19:59:20', 'Stefanie', 'Allemagne, septembre 2023', 'Merveilleuses chambres récemment rénovées avec beaucoup de goût. Nous avons particulièrement aimé l\'accueil chaleureux et le super petit déjeuner. Recommandé!', 1),
(2, '2023-08-21 10:34:31', '2023-10-04 19:57:59', 'Alain', 'France, septembre 2023', 'La cuisine en commun permet de faire connaissance avec les autres hôtes et le réfrigérateur mis à la disposition permet d\'avoir de la boisson fraîche pour le départ. Endroit calme, lit très confortable et chambre spacieuse. Très bon rapport qualité-prix. Nous sommes ravis !!!... et si l\'occasion se présentait de nouveau, nous y retournerions sans hésiter!', 1),
(3, '2023-08-21 10:34:43', '2023-10-04 19:55:52', 'Alexander', 'Allemagne, septembre 2023', 'Excellent hébergement dans un endroit très calme. Excellent équipé, très propre, super service. Ancienne ferme agréablement rénovée avec des murs en pierre épais qui gardent la fraîcheur même en été. Tout est moderne et spacieux. Hôte absolument avant tout et serviable. Point de départ idéal pour mieux connaître la région.', 1),
(4, '2023-10-04 20:00:27', NULL, 'Nicole', 'Allemagne, apût 2023', 'C\'est comme un petit trésor caché. Très bon goût l\'ancien reconnecté avec le nouveau. Les propriétaires sont très gentils et serviables. Heureusement, j\'avais aussi l\'air conditionné car il faisait très chaud. Vous pouvez également faire de la randonnée très gentiment à partir de là.', 1),
(5, '2023-10-04 20:01:55', NULL, 'Laëtitia', 'Belgique, août 2023', 'Magnifique endroit,magnifique chambre,tout était propre et parfait ,vraiment très agréable moment passé en famille , les hôtes étaient supers très attentionnés et le petit déjeuner délicieux sur la petite terrasse 😍nous recommandons à 100 pourcent', 1),
(6, '2023-10-04 20:06:15', NULL, 'Raux', 'Belgique, août 2023', 'Au calme dans la campagne ardechoise, vous êtes accueilli par des hôtes sympathiques. Le logement récemment restauré surprend par la taille des chambres, l\'équipement des salles de bains, la qualité de la literie. Le petit déjeuner est très bien: confitures maison, jus de fruits, pain artisanal, brioche,... À 5min du centre village avec quelques restaurants, à 15 min de l\'A7 pour une escale, la Grange est idéalement située. Nous recommandons vivement !', 1),
(7, '2023-10-04 20:07:39', NULL, 'Harrisson', 'All', 'Un endroit charmant où séjourner ! Les hôtes sont si sympathiques, gentils et accueillants... Je me sentais si soigné. Le logement est absolument magnifique... l\'ensemble du site et la conversion. Plein de charme, style subtil, et caractère merveilleux. Très propre et confortable, et la cuisine a tout ce dont vous pourriez avoir besoin. Beaucoup de places de parking. Magnifique vue sur la campagne... Un bel emplacement. J\'ai vraiment adoré mon moment ici. J\'aurais aimé rester plus longtemps', 1);

-- --------------------------------------------------------

--
-- Structure de la table `block`
--

CREATE TABLE `block` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `block`
--

INSERT INTO `block` (`id`, `created`, `changed`, `title`, `content`, `categorie`) VALUES
(1, '2023-09-02 16:01:27', '2023-10-04 10:27:00', 'Accueil / Premier block en dessous de l\'image', '<h3>St&eacute;phanie et David vous souhaitent la bienvenue chez eux.</h3>\r\n\r\n<h2>5 chambres d&#39;h&ocirc;tes et un g&icirc;te au coeur de l&#39;Ard&egrave;che</h2>\r\n\r\n<p>C&#39;est dans le corps d&#39;une ancienne ferme que nous vous accueillerons pour une halte ou pour un s&eacute;jour au calme et ressour&ccedil;ant... Une invitation &agrave; l&#39;&eacute;vasion!</p>\r\n\r\n<p><u><strong>La Grange de Sabatas</strong></u> : 4 spacieuses chambres&nbsp; tout confort qui se situent dans une grange que nous avons totalement r&eacute;habilit&eacute;e en 2023. Elles disposent d&#39;une grande cuisine partag&eacute;e toute &eacute;quip&eacute;e. Dans la cour, vous pourrez profiter des tables &agrave; votre disposition.</p>\r\n\r\n<p><u><strong>La Terrasse de Sabatas</strong></u> : une grande chambre avec coin salon en mezzanine de 40 m2 et son toit-terrasse offrant une superbe vue panoramique.</p>\r\n\r\n<p><u><strong>La Ferme de Sabatas </strong></u>: un g&icirc;te avec piscine nich&eacute; dans une ancienne ch&egrave;vrerie pour des vacances en famille ou entre amis.</p>', 'Accueil'),
(2, '2023-09-02 16:04:51', '2023-09-27 18:01:36', 'Contact / Le texte en dessous du titre', '<p>Si vous souhaitez venir vous &eacute;vader, vous ressourcer le temps d&#39;une nuit ou d&#39;un s&eacute;jour dans notre ferme au coeur de l&#39;Ard&egrave;che, n&#39;h&eacute;sitez pas &agrave; nous contacter.</p>', 'Accueil'),
(3, '2023-09-02 16:06:53', '2023-09-27 17:27:07', 'Contact / Adresse postale', '<p>406 chemin de la gibeci&egrave;re</p>\r\n\r\n<p>hameau de Sabatas</p>\r\n\r\n<p>07210 Chom&eacute;rac</p>', 'Accueil'),
(4, '2023-09-02 16:07:30', '2023-09-30 11:30:36', 'Contact / Email(s)', '<p>notre site : domaine-de-sabatas.fr</p>\r\n\r\n<p>mail : lagrange.stedasca@gmail.com</p>', 'Accueil'),
(5, '2023-09-02 16:08:10', '2023-09-30 11:29:30', 'Contact / Téléphone(s)', '<p>David : 06 72 22 75 00</p>\r\n\r\n<p>St&eacute;phanie : 06 28 07 97 85</p>', 'Accueil'),
(6, '2023-09-02 16:08:49', '2023-10-01 19:41:23', 'Contact / Horaires', '<p>St&eacute;phanie et David Scaringella vous accueillent toute l&#39;ann&eacute;e.</p>\r\n\r\n<p>Les arriv&eacute;es se font entre 15h et 19h. Il est possible d&#39;arriver en dehors de ces horaires; nous consulter.</p>\r\n\r\n<p>Les d&eacute;parts se font au plus tard &agrave; 11h.</p>', 'Accueil'),
(7, '2023-09-02 16:10:33', '2023-09-30 15:09:48', 'Accueil / Mise en avant', '<h2>Quelques informations de plus...</h2>\r\n\r\n<p>St&eacute;phanie et David seront heureux de vous accueillir dans leur ancienne ferme, au calme, &agrave; la campagne avec les vaches, les chevaux, les moutons et nos poules... Avec des d&eacute;parts de rando depuis la maison.</p>\r\n\r\n<p>Le hameau de Sabatas est &agrave; 15 minutues de la sortie d&#39;autoroute de Loriol, &agrave; 2 minutes en voiture du centre du village de Chom&eacute;rac disposant de toutes commodit&eacute;s : bars, restaurants, pizzeria, glacier et sa place du Bosquet, tr&egrave;s anim&eacute;e en &eacute;t&eacute;!</p>\r\n\r\n<p>Vous &ecirc;tes &agrave; proximit&eacute; de Mont&eacute;limar, de Valence, des gorges de l&#39;Ard&egrave;che, de la via Rhona et de la voie verte de la Payre. Amis cyclistes et motards, vous serez les bienvenus avec un emplacement couvert pour garer v&eacute;los et motos.</p>\r\n\r\n<p>&nbsp;</p>', 'Accueil');

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

CREATE TABLE `chambre` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taille` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_contenu1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_contenu2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_chambre1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_chambre2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_chambre3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_chambre4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_chambre5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_chambre6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_chambre7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_chambre8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_chambre9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_chambre10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `chambre`
--

INSERT INTO `chambre` (`id`, `created`, `changed`, `nom`, `slug`, `prix`, `taille`, `lit`, `capacite`, `vue`, `contenu`, `is_active`, `type`, `image_contenu1`, `image_contenu2`, `image_chambre1`, `image_chambre2`, `image_chambre3`, `image_chambre4`, `image_chambre5`, `image_chambre6`, `image_chambre7`, `image_chambre8`, `image_chambre9`, `image_chambre10`) VALUES
(3, '2023-08-18 10:55:41', '2023-10-11 14:32:25', 'La ferme', 'laferme', 'nous consulter', '70m²', '1 lit 140cm + 2 lits 90cm + 1 clic-clac', '2 adultes + 2 enfants (+2 sur le clic-clac)', 'Jardin', '<p>G&icirc;te lou&eacute; &agrave; la semaine ou &agrave; la quinzaine. lave-linge, lave-vaisselle, wifi, TV. Jardinet avec barbecue. Vous avez l&#39;exclusivit&eacute; de la piscine (L :11m / l : 5m et une profondeur allant de 1.10m &agrave; 1.50m).</p>\r\n\r\n<p>2 chambres : une avec lit en 140 et une avec 2 lits en 90. Un clic-clac peut accueillir 2 personnes suppl&eacute;mentaires.</p>\r\n\r\n<p>Les chiens sont les bienvenus (pr&eacute;voir un plaid s&#39;il est habitu&eacute; &agrave; monter sur les canap&eacute;s afin qu&#39;il n&#39;y laisse pas de poils)</p>', 1, 'gite', 'fb-img-1661100325503-1697027287.3543.jpg', 'img20230615155505-1696091091.0484.jpg', 'img20230615155523-1697027544.2088.jpg', 'img20230701154552-1696154547.6509.jpg', 'img20230701154724-1696154547.651.jpg', 'img20230701154419-1696154547.651.jpg', 'img20230701154006-1696154547.651.jpg', 'img20230701154035-1696154547.651.jpg', 'img20230701154543-1696154547.651.jpg', 'img20220614175228-1696154547.651.jpg', 'img-20230727-170835-1696154547.651.jpg', 'img20230419161626-1696154547.651.jpg'),
(4, '2023-08-18 11:02:31', '2023-10-04 15:51:21', 'Terrasse', 'terrasse', '65€', '40m²', '1 lit 160cm', '2 adultes', NULL, '<p>Grande chambre double avec toit terrasse offrant une magnifique vue sur la campagne environnante et le village. Les soirs d&#39;&eacute;t&eacute;, vous pourrez contempler les &eacute;toiles depuis votre terrasse.&nbsp;</p>\r\n\r\n<p>Vous avez un coin salon privatif sur mezzanine, attenant &agrave; votre chambre, avec un r&eacute;frig&eacute;rateur, un micro-onde, une cafeti&egrave;re Senseo et une bouilloire qui sont &agrave; votre disposition.</p>\r\n\r\n<p>Votre chambre est &eacute;quip&eacute;e d&#39;une clim, d&#39;une TV, du wifi.</p>\r\n\r\n<p>Le petit d&eacute;jeuner est inclu dans le prix de la chambre; vous pourrez d&eacute;guster le pain bio fait par David tous les jours.&nbsp;</p>\r\n\r\n<p>Un lit b&eacute;b&eacute; peut &ecirc;tre mis &agrave; disposition.</p>\r\n\r\n<p>Les chiens sont les bienvenus (pr&eacute;voir un plaid s&#39;il est habitu&eacute; &agrave; monter sur les canap&eacute;s afin qu&#39;il n&#39;y laisse pas de poils)</p>\r\n\r\n<p>&nbsp;</p>', 1, 'hote', 'img20220405153035-1696090584.3504.jpg', 'img20220403140156-1696090584.3504.jpg', 'img20220403140156-1696090584.3492.jpg', 'img20220403140205-1696090584.3501.jpg', 'img20220403140221-1696090584.3501.jpg', 'img20220403140337-1696090584.3501.jpg', 'img20220615143935-1696090584.3501.jpg', 'img20220615175440-1696090584.3501.jpg', 'img20230614164824-1696090584.3501.jpg', 'img20220403140144-1696090584.3501.jpg', 'img-20230419-162319-1696090584.3501.jpg', 'img20230614164853-1696090584.3501.jpg'),
(5, '2023-08-18 11:03:33', '2023-10-01 18:17:01', 'Toinette', 'toinette', 'à partir de 60€', '25m²', '1 lit 140cm', '2 adultes', NULL, '<p>Petite chambre double avec lit en mezzanine, un espace de vie en bas et une salle de bain avec wc.</p>\r\n\r\n<p>Votre chambre est &eacute;quip&eacute;e d&#39;une clim r&eacute;versible, d&#39;une TV, du wifi. Une grande cuisine toute &eacute;quip&eacute;e est &agrave; partag&eacute;e avec les 3 autres chambres. Dans la cour, vous avez des tables &agrave; disposition pour passer un bon moment.</p>\r\n\r\n<p>Le petit d&eacute;jeuner est inclu dans le prix de la chambre; vous pourrez d&eacute;guster le pain bio fait par David tous les jours.&nbsp;</p>\r\n\r\n<p>Un lit b&eacute;b&eacute; peut &ecirc;tre mis &agrave; disposition.</p>\r\n\r\n<p>Les chiens sont les bienvenus (pr&eacute;voir un plaid s&#39;il est habitu&eacute; &agrave; monter sur les canap&eacute;s afin qu&#39;il n&#39;y laisse pas de poils)</p>', 1, 'hote', 'img20230429124151-1696089340.8522.jpg', 'img20230429124312-1696089340.8522.jpg', 'img20230429124151-1696089340.8511.jpg', 'img20230429124312-1696089340.8519.jpg', 'img20230429124211-1696089340.852.jpg', 'img20230426110021-1696089340.852.jpg', 'img20230429124115-1696089340.852.jpg', 'img20230927162650-1696089340.852.jpg', 'img20230927162635-1696089340.852.jpg', 'img20230927162404-1696089340.852.jpg', 'img20230419161453-1696089340.852.jpg', 'img20230505181530-1696089340.852.jpg'),
(6, '2023-08-20 14:25:51', '2023-10-01 18:16:35', 'Payre', 'payre', 'à partir de 65€', '35m²', '1 lit 160cm + 1 canapé BZ', '2 adultes + 1 enfant', NULL, '<p>Grande chambre double avec lit en mezzanine et espace de vie en bas. Clim, wifi, TV et salle de bain privative. Un canap&eacute; BZ permet le couchage d&#39;une personne suppl&eacute;mentaire.</p>\r\n\r\n<p>Votre chambre est &eacute;quip&eacute;e d&#39;une clim r&eacute;versible, d&#39;une TV, du wifi.</p>\r\n\r\n<p>Une grande cuisine toute &eacute;quip&eacute;e est &agrave; partag&eacute;e avec les 3 autres chambres. Dans la cour, vous avez des tables &agrave; disposition pour passer un bon moment.</p>\r\n\r\n<p>Le petit d&eacute;jeuner est inclu dans le prix de la chambre; vous pourrez d&eacute;guster le pain bio fait par David tous les jours.&nbsp;</p>\r\n\r\n<p>Un lit b&eacute;b&eacute; peut &ecirc;tre mis &agrave; disposition.</p>\r\n\r\n<p>Les chiens sont les bienvenus (pr&eacute;voir un plaid s&#39;il est habitu&eacute; &agrave; monter sur les canap&eacute;s afin qu&#39;il n&#39;y laisse pas de poils)</p>', 1, 'hote', 'img20230506171137-1696080207.8106.jpg', 'img20230506170841-1696080207.8106.jpg', 'img20230506170250-1696080207.8094.jpg', 'img20230506170822-1696080207.8102.jpg', 'img20230506170307-1696080207.8103.jpg', 'img20230506170313-1696080207.8103.jpg', 'img20230506170913-1696080207.8103.jpg', 'img20230607145555-1696080207.8103.jpg', 'img20230608122510-1696080207.8103.jpg', 'img20230419161626-1696080207.8103.jpg', 'img20230501174050-1696080207.8103.jpg', 'img-20230419-155757-1696080207.8103.jpg'),
(7, '2023-08-20 14:33:05', '2023-10-01 18:15:51', 'Coiron', 'coiron', 'à partir de 65€', '35m²', '1 lit 160cm + 1 clic-clac', '2 adultes + 2 enfants', NULL, '<p>Grande chambre double avec coin nuit en mezzanine et espace de vie en bas.Vous disposez d&#39;une grande salle de bain avec toilettes. Votre chambre est &eacute;quip&eacute;e d&#39;une clim r&eacute;versible, d&#39;une TV, du wifi. Une grande cuisine toute &eacute;quip&eacute;e est &agrave; partag&eacute;e avec les 3 autres chambres. Dans la cour, vous avez des tables &agrave; disposition pour passer un bon moment.</p>\r\n\r\n<p>Id&eacute;alement con&ccedil;ue pour 2 personnes&nbsp; pour un confort optimal, cette chambres peut accueillir ponctuellement 2 personnes suppl&eacute;mentaires sur le clic-clac.</p>\r\n\r\n<p>Le petit d&eacute;jeuner est inclu dans le prix de la chambre; vous pourrez d&eacute;guster le pain bio fait par David tous les jours.&nbsp;</p>\r\n\r\n<p>Un lit b&eacute;b&eacute; peut &ecirc;tre mis &agrave; disposition.</p>\r\n\r\n<p>Les chiens sont les bienvenus (pr&eacute;voir un plaid s&#39;il est habitu&eacute; &agrave; monter sur les canap&eacute;s afin qu&#39;il n&#39;y laisse pas de poils)</p>', 1, 'hote', 'img20230417140743-1695226246.9643.jpg', 'img20230417124658-1695226246.9643.jpg', 'img20230917120048-1696072638.7107.jpg', 'img20230417124753-1696072638.712.jpg', 'img20230417140743-1696072638.712.jpg', 'img20230917120106-1696072638.712.jpg', 'img20230417140731-1696072638.712.jpg', 'img20230917120122-1696153353.7715.jpg', 'img20230612130536-1696153353.7715.jpg', 'img20230927162624-1696072638.712.jpg', 'img20230602153919-1696072638.712.jpg', 'img20230608122532-1696072638.712.jpg'),
(8, '2023-08-20 14:36:55', '2023-10-01 18:15:24', 'Gardette', 'gardette', 'à partir de 65 €', '35m²', '1 lit 160cm + 1 clic-clac', '2 adultes + 2 enfants', NULL, '<p>Grande chambre double tr&egrave;s lumineuse avec coin nuit en mezzanine et espace de vie en bas. Vous disposez d&#39;une grande salle de bain avec toilettes. Id&eacute;alement con&ccedil;ue pour 2 personnes&nbsp; pour un confort optimal, cette chambres peut accueillir ponctuellement 2 personnes suppl&eacute;mentaires sur le clic-clac.&nbsp;</p>\r\n\r\n<p>Votre chambre est &eacute;quip&eacute;e d&#39;une clim r&eacute;versible, d&#39;une TV, du wifi. Une grande cuisine toute &eacute;quip&eacute;e est &agrave; partag&eacute;e avec les 3 autres chambres. Dans la cour, vous avez des tables &agrave; disposition pour passer un bon moment.</p>\r\n\r\n<p>Le petit d&eacute;jeuner est inclu dans le prix de la chambre; vous pourrez d&eacute;guster le pain bio fait par David tous les jours.&nbsp;</p>\r\n\r\n<p>Un lit b&eacute;b&eacute; peut &ecirc;tre mis &agrave; disposition.</p>\r\n\r\n<p>Les chiens sont les bienvenus (pr&eacute;voir un plaid s&#39;il est habitu&eacute; &agrave; monter sur les canap&eacute;s afin qu&#39;il n&#39;y laisse pas de poils)</p>', 1, 'hote', 'img20230419155623-1696070396.0029.jpg', 'img20230419145432-1696070396.0029.jpg', 'img20230419153027-1696070396.0017.jpg', 'img20230419145444-1696070396.0026.jpg', 'img20230917120016-1696070396.0027.jpg', 'img20230419153011-1696070396.0027.jpg', 'img20230917115944-1696070396.0027.jpg', 'img20230917120008-1696070396.0027.jpg', 'img20230419155306-1696070396.0027.jpg', 'img20230612130531-1696070396.0027.jpg', 'img20230927162611-1696070396.0027.jpg', 'img20230608122459-1696070396.0027.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
('DoctrineMigrations\\Version20230823131900', '2023-08-23 13:19:06', 81),
('DoctrineMigrations\\Version20230929091022', '2023-09-29 11:10:28', 96);

-- --------------------------------------------------------

--
-- Structure de la table `header`
--

CREATE TABLE `header` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `header`
--

INSERT INTO `header` (`id`, `created`, `changed`, `image`, `is_active`) VALUES
(1, '2023-08-17 20:01:19', '2023-08-17 20:53:42', 'rectangle-5-1692305621.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `nom`, `prenom`, `roles`, `password`, `is_active`) VALUES
(1, 'pinelli.luc@outlook.fr', 'Pinelli', 'Luc', '[]', '$2y$13$WFOuvk.Vd2Ln8qFMck3.9eZQRIlsReXlLpGzBQFXWtwh2tXuPC9cO', 1),
(2, 'lagrange.stedasca@gmail.com', 'Sabatas', 'Domaine', '[]', '$2y$13$SIWVrQ5DiT8CLh3hkMhJf./nvpZgw7wNNS4yXIF9whezyFTje3Ay6', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actualite`
--
ALTER TABLE `actualite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actualite`
--
ALTER TABLE `actualite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `avis`
--
ALTER TABLE `avis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `block`
--
ALTER TABLE `block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `chambre`
--
ALTER TABLE `chambre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `header`
--
ALTER TABLE `header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
