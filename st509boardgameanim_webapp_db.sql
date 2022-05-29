-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mar 05 Avril 2022 à 16:06
-- Version du serveur :  10.3.32-MariaDB-1:10.3.32+maria~stretch-log
-- Version de PHP :  7.1.33-13+0~20200224.34+debian9~1.gbp2471e1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `st509boardgameanim_webapp_db`
--

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
-- Contenu de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20211214093800', '2021-12-14 10:49:59', 60);

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

CREATE TABLE `reset_password_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `reset_password_request`
--

INSERT INTO `reset_password_request` (`id`, `user_id`, `selector`, `hashed_token`, `requested_at`, `expires_at`) VALUES
(4, 3, 'g2C2k4gqrFxYimoDWZjI', 'fKEzGKZTJxr+lVsTzf6YHFzKSIfl4CRALYuycsYgO8M=', '2022-02-12 18:37:29', '2022-02-12 19:37:29');

-- --------------------------------------------------------

--
-- Structure de la table `setting`
--

CREATE TABLE `setting` (
  `setting_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `setting`
--

INSERT INTO `setting` (`setting_key`, `value`) VALUES
('Le gagnant est', 'Le joueur avec le plus de point'),
('Nombre de tours', '3');

-- --------------------------------------------------------

--
-- Structure de la table `squares`
--

CREATE TABLE `squares` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_square` int(11) NOT NULL,
  `type_square` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_color_text` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#00749d',
  `header_color_bg` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#ffffff',
  `header_display` tinyint(1) DEFAULT NULL,
  `body_color_text` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#003b54',
  `body_color_bg` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#eac474',
  `body_img` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_text` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color_text` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#00749d',
  `footer_color_bg` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#eac474',
  `footer_value` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_display` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `squares`
--

INSERT INTO `squares` (`id`, `name`, `order_square`, `type_square`, `description`, `header_color_text`, `header_color_bg`, `header_display`, `body_color_text`, `body_color_bg`, `body_img`, `body_text`, `footer_color_text`, `footer_color_bg`, `footer_value`, `footer_display`) VALUES
(5, 'Départ', 1, 'depart', 'Bienvenue dans votre nouvelle vie d\'entrepreneur !', '#00749d', '#ffffff', 1, '#003b54', '#eac474', NULL, 'Lancement de votre projet ', '#00749d', '#eac474', '', 1),
(15, 'RAS', 2, 'Neutre ', NULL, '#00749d', '#ffffff', NULL, '#003b54', '#eac474', NULL, 'Épiphanie ', '#00749d', '#eac474', NULL, NULL),
(19, 'Bonne nouvelle', 3, 'bonus', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Création de l\'identité visuelle', '#00749d', '#eac474', '100', 0),
(20, 'Évènement', 4, 'bonus', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Soldes d\'Hiver', '#00749d', '#eac474', '20', 1),
(21, 'RAS', 5, 'neutre', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Nouvel an chinois', '#00749d', '#eac474', NULL, 0),
(22, 'Gestion', 6, 'neutre', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Réunion Syndicale', '#00749d', '#eac474', NULL, 0),
(23, 'Évènement', 7, 'bonus', 'Vos offres promotionnelles ont bien fonctionnées', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'St Valentin', '#00749d', '#eac474', '20', 1),
(24, 'Gestion', 8, 'neutre', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Formation', '#00749d', '#eac474', NULL, 0),
(25, 'Bonne nouvelle', 9, 'bonus', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Création du site Internet', '#00749d', '#eac474', '100', 1),
(26, 'Partenariat', 10, 'collaboration', 'Chaque joueur gagne 10 points de communauté.', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, NULL, '#00749d', '#eac474', '10', 1),
(27, 'Évènement', 11, 'bonus', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'St Patrick', '#00749d', '#eac474', NULL, 0),
(28, 'Bonne nouvelle', 12, 'bonus', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Financement participatif', '#00749d', '#eac474', '20', 1),
(29, 'Incident', 13, 'malus', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Erreur impression', '#00749d', '#eac474', '10', 1),
(30, 'Bonne nouvelle', 14, 'bonus', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Campagne réseaux sociaux', '#00749d', '#eac474', NULL, 1),
(31, 'Évènement', 15, 'depart', 'Vous êtes sponsor officiel d\'un évènement national, votre logo apparait sur tous les supports.', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Festival/Concert', '#00749d', '#eac474', '70', 1),
(32, 'Évènement', 16, 'malus', 'Vous avez dépensé beaucoup d\'argent pour une campagne qui n\'a pas fonctionné…', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'French Day', '#00749d', '#eac474', '30', 1),
(33, 'RAS', 17, 'neutre', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Fête du travail', '#00749d', '#eac474', NULL, 0),
(34, 'Évènement', 18, 'bonus', 'Votre stand a attiré du monde grâce à vos diverses impressions (flyers, kakemono, etc..)', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Salon, Foire, Exposition', '#00749d', '#eac474', '10', 1),
(35, 'Incident', 19, 'malus', 'La panne est résolue en moins de 2h', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Panne Serveur', '#00749d', '#eac474', '10', 1),
(36, 'Bonne nouvelle', 20, 'bonus', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Nouvelle flotte de véhicule', '#00749d', '#eac474', '10', 1),
(37, 'Évènement', 21, 'neutre', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Fête des mères', '#00749d', '#eac474', NULL, 0),
(38, 'Incident', 22, 'malus', 'Un concurrent se monte à -500m et vous prend le monopole.', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Nouveau concurrent', '#00749d', '#eac474', '50', 1),
(39, 'RAS', 23, 'neutre', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, '24h du Mans', '#00749d', '#eac474', NULL, 0),
(40, 'RAS', 24, 'neutre', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Fête de la Musique', '#00749d', '#eac474', NULL, 0),
(41, 'Évènement', 25, 'bonus', 'Vous avez communiquez en amont sur vos réseaux et fait une distribution de flyer ! Bien joué', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Soldes d\'Été', '#00749d', '#eac474', '20', 1),
(42, 'Évènement', 26, 'bonus', 'Vous êtes sponsor officiel d\'un évènement national, votre logo apparait sur tous les supports', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Tour de France de Vélo', '#00749d', '#eac474', '30', 1),
(43, 'Partenariat', 27, 'collaboration', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Promotion via Influenceur', '#00749d', '#eac474', '10', 1),
(44, 'Incident', 28, 'malus', 'Vous avez perdu aux prud\'hommes', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Prud\'homme', '#00749d', '#eac474', '80', 1),
(45, 'Incident', 29, 'deplacement', 'Vous avez perdu vos machines. Vous êtes en incapacités de travail pendant plusieurs semaines ( avancer case départ)', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Inondation des locaux', '#00749d', '#eac474', NULL, 0),
(46, 'RAS', 30, 'neutre', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Congés annuels', '#00749d', '#eac474', NULL, 0),
(47, 'Évènement', 31, 'bonus', 'Renforcez la cohésion avec vos collaborateurs', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Séminaire', '#00749d', '#eac474', '5', 1),
(48, 'Incident', 32, 'malus', 'Votre principal concurrent est sponsors de l\'évènement', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Compétition sportive', '#00749d', '#eac474', '10', 1),
(49, 'Partenariat', 33, 'bonus', 'Diffusion d\'un article qui parle de votre société', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Revue de Presse', '#00749d', '#eac474', '20', 1),
(50, 'Incident', 34, 'malus', 'Vous avez perdu votre site internet ainsi que toute vos données', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'ncendie Data-Center', '#00749d', '#eac474', '500', 1),
(51, 'RAS', 35, 'neutre', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Rentrée Scolaire', '#00749d', '#eac474', NULL, 0),
(52, 'Incident', 36, 'malus', 'Vous avez perdu du temps a chercher des factures manquantes', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Expert comptable', '#00749d', '#eac474', '15', 1),
(53, 'Partenariat', 37, 'collaboration', 'Chaque joueur gagne 10 points de communauté.', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Partenariat avec un autre joueur', '#00749d', '#eac474', '10', 1),
(54, 'Évènement', 38, 'bonus', 'Vous avez organisé un jeu concours relayé sur les réseaux sociaux', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'French Day de la Rentrée', '#00749d', '#eac474', '20', 1),
(55, 'Incident', 39, 'malus', 'Redressement Urssaf', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Urssaf', '#00749d', '#eac474', '25', 1),
(56, 'RAS', 40, 'neutre', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Visite médicale', '#00749d', '#eac474', NULL, 0),
(57, 'Bonne nouvelle', 41, 'bonus', 'Vous avez développé un nouveau service et avez communiqué sur différents supports', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Nouveau service/produit', '#00749d', '#eac474', '15', 1),
(58, 'RAS', 42, 'neutre', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Compétition sportive', '#00749d', '#eac474', NULL, 0),
(59, 'Incident', 43, 'malus', 'Perte de temps administrative.', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Inspection du travail', '#00749d', '#eac474', '10', 1),
(60, 'RAS', 44, 'neutre', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Halloween', '#00749d', '#eac474', NULL, 0),
(61, 'Bonne nouvelle', 45, 'bonus', 'Vous êtes éligible à certaines aides de l\'État.', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Subvention de l\'État', '#00749d', '#eac474', '10', 1),
(62, 'RAS', 46, 'neutre', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Nouveau recrutement', '#00749d', '#eac474', NULL, 0),
(63, 'Évènement', 47, 'bonus', 'Grâce à votre communication, les clients étaient au rdv.', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Black Friday', '#00749d', '#eac474', '30', 1),
(64, 'Évènement', 48, 'bonus', 'Grâce à votre communication, les clients étaient au rdv', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Cyber Monday', '#00749d', '#eac474', '10', 1),
(65, 'Incident', 49, 'malus', 'Les écoles sont fermées, les enfants sont au bureau.', '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Grève Nationale', '#00749d', '#eac474', '15', 1),
(66, 'RAS', 50, 'neutre', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, 'Courage, il ne reste que 2 semaines !', '#00749d', '#eac474', NULL, 0),
(67, 'Noël', 51, 'neutre', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, NULL, '#00749d', '#eac474', NULL, 0),
(82, 'Jour de l\'an', 52, 'neutre', NULL, '#00749d', '#ffffff', 0, '#003b54', '#eac474', NULL, NULL, '#00749d', '#eac474', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `square_type`
--

CREATE TABLE `square_type` (
  `key` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_color_text` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_color_bg` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_display` tinyint(1) NOT NULL,
  `body_color_text` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_color_bg` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_text` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_color_text` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_color_bg` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_value` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_display` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'peyrotericpeyrot@gmail.com', '[\"Super Administrator\"]', '$2y$13$CGXNic5szFoZ9om5dNTM0OcqmhGFCsYnkFHPaKlch6Pj9M5wzSKuq'),
(3, 'peyroteric@yahoo.com', '[\"Client administrator\"]', '$2y$13$rGrFJlzcA/56eyQTQvq8bekqkitK3mFhKSVbs2TIV0GWLsBox1fre'),
(54, 'admin@studio509.fr', '[\"Super Administrator\"]', '$2y$13$ZGNp8jv2DI6A6Zm/r2MhT.xKotKh2HsXxn5DOla9zpkC97I9Thfbu'),
(55, 'lussiez.stephen@free.fr', '[\"Super Administrator\"]', '$2y$13$ZGNp8jv2DI6A6Zm/r2MhT.xKotKh2HsXxn5DOla9zpkC97I9Thfbu');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CE748AA76ED395` (`user_id`);

--
-- Index pour la table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_key`);

--
-- Index pour la table `squares`
--
ALTER TABLE `squares`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `square_type`
--
ALTER TABLE `square_type`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `squares`
--
ALTER TABLE `squares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
