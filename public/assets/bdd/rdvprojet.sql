-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 02 juin 2021 à 14:07
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `rdvprojet`
--
CREATE DATABASE IF NOT EXISTS `rdvprojet` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `rdvprojet`;

-- --------------------------------------------------------

--
-- Structure de la table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `statue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booked_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booked_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('DoctrineMigrations\\Version20210531132922', '2021-05-31 13:29:37', 157),
('DoctrineMigrations\\Version20210602121107', '2021-06-02 14:11:43', 142),
('DoctrineMigrations\\Version20210602122741', '2021-06-02 14:27:56', 58),
('DoctrineMigrations\\Version20210602124659', '2021-06-02 14:48:03', 59);

-- --------------------------------------------------------

--
-- Structure de la table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `job`
--

INSERT INTO `job` (`id`, `name`, `category`) VALUES
(1, 'médecin', 'Médical'),
(2, 'chirurgien-dentiste', 'Médical'),
(3, 'pharmacien', 'Médical'),
(4, 'sage-femme', 'Médical'),
(5, 'biologiste médical', 'Médical'),
(6, 'chirurgien', 'Médical'),
(7, 'gynécologue-obstétricien', 'Médical'),
(8, 'infirmier', 'Médical'),
(9, 'electricien', 'Craft'),
(10, 'photographe', 'Craft'),
(11, 'plombier', 'Craft'),
(12, 'peintre', 'Craft'),
(13, 'menuisier', 'Craft'),
(14, 'avocat', 'Legal'),
(15, 'juriste', 'Legal'),
(16, 'notaire', 'Legal'),
(17, 'secrétaire juridique', 'Legal'),
(18, 'magistrat', 'Legal');

-- --------------------------------------------------------

--
-- Structure de la table `pro`
--

CREATE TABLE `pro` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `job_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pro`
--

INSERT INTO `pro` (`id`, `firstname`, `lastname`, `details`, `price`, `job_category`) VALUES
(1, 'Francis', 'Deromano', 'Dentiste depuis 1994', 30, 'Dentiste');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `email`, `phone_number`) VALUES
(1, 'alexis', '[]', '$2y$13$zRBvZ72El9ZapDTUP.DGK.WZQmRQF9157CNyCMAaJRRfYLCX0UV7y', 'alexis@alexis.com', 555555555),
(5, 'yuyuyu', '[]', '$2y$13$QAIZsyf0sPqG9eyDww5fbO1mm5OcM5hStF75UaB3Pk7EfltEW5PJ6', 'yuyuyu@yuyuyu.com', 1234567890),
(6, 'jeremygg', '[]', '$2y$13$UujsrnI3wv9TI2T6HhX4wuBUA6Vy0Pd0018xoq6qjti6vo7yNlLh6', 'jeremygg@gmail.com', 621365555),
(8, 'agathe', '[]', '$2y$13$s/GtgG3CR32nnNC1nYwrMePoK/HePZXZqcAS7HA7ChvxcGxYoBdZa', 'agathe@agathe.com', 606060606);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pro`
--
ALTER TABLE `pro`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `pro`
--
ALTER TABLE `pro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
