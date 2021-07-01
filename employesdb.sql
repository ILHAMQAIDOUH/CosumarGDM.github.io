-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 30 mai 2021 à 17:15
-- Version du serveur :  10.4.19-MariaDB
-- Version de PHP : 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `my_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `dossiers`
--

CREATE TABLE `dossiers` (
  `id` int(11) NOT NULL,
  `numDo` int(11) NOT NULL,
  `typeDo` tinyint(4) NOT NULL DEFAULT 1,
  `mnt` int(11) NOT NULL,
  `date_depot` date NOT NULL DEFAULT curdate(),
  `lien_parente` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Déchargement des données de la table `dossiers`
--

INSERT INTO `dossiers` (`id`, `numDo`, `typeDo`, `mnt`, `date_depot`, `lien_parente`) VALUES
(1, 1, 1, 555, '2021-05-25', 1),
(2, 5, 1, 1000, '2021-05-25', 1),
(3, 10, 1, 280, '2021-05-25', 1);

-- --------------------------------------------------------

--
-- Structure de la table `employes`
--

CREATE TABLE `employes` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `matricule` varchar(255) NOT NULL,
  `numP` varchar(255) NOT NULL,
  `cin` varchar(255) NOT NULL,
  `cnss` int(11) NOT NULL,
  `cimr` int(11) NOT NULL,
  `depart` varchar(100) NOT NULL,
  `poste` varchar(100) NOT NULL,
  `date_emb` date NOT NULL,
  `date_naiss` date NOT NULL,
  `mail` varchar(255) NOT NULL,
  `statut` tinyint(4) NOT NULL DEFAULT 1,
  `fileupload` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Déchargement des données de la table `employes`
--

INSERT INTO `employes` (`id`, `nom`, `prenom`, `matricule`, `numP`, `cin`, `cnss`, `cimr`, `depart`, `poste`, `date_emb`, `date_naiss`, `mail`, `statut`, `fileupload`) VALUES
(2, 'alami 1', 'kamal 1', '120012001', '1200/3489/001', 'MC414141', 12121212, 121212, 'Mécanique', 'Mécanicien', '2021-05-13', '2021-05-15', '', 0, ''),
(5, 'akram', 'halima', '77889900', '28/3489/17', 'MD12346', 556154, 7173, 'Administration', 'Sécrétaire', '2020-04-22', '2019-08-30', '', 1, ''),
(10, 'alami', 'bachir', '66778878', '28/3489/18', 'MD12347', 556155, 71724, 'Informatique', 'Technicien', '2019-10-01', '2019-10-01', 'alamii@gmail.com', 0, ''),
(11, 'zahira', 'zahira', '2234455', '22/12345/12', 'MD12349', 556677, 71717171, 'informatique', 'technicien', '2017-01-11', '1990-08-12', 'zahirra@gmail.com', 1, ''),
(12, 'qaid', 'souhail', '2234457', '22/12345/12 CHG', 'MD12349 CHG', 11221122, 8888888, '121314', 'technicien', '2021-05-09', '2021-05-09', 'mohamed@gmail.com', 1, '');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`) VALUES
(18, 'younes benazzi', 'YOUNES.TECH', '$2y$12$QsXcGQAxYp1fXoMdfV.kVezvkgntt31tqyFlif1TXJeh9FCpq34ty'),
(22, 'younes benazzi', 'YOUNES.TECH1', '$2y$12$EDDS0/fFQdIjuefwqqfbE.y9zpA7ILUl.liod1fNkAOnPWJSzeVTi'),
(23, 'younes benazzi', 'YOUNES.TECH2', '$2y$12$nrGTSltOc/TbTd0CfAIDdutKWC41ZfPAqX3FoM/AShFEGeE8XJOoS'),
(24, 'younes benazzi', 'YOUNES.TECH3', '$2y$12$IV41s/UUlFEFOsOwtcby7e79qnjUj9oAt4vWe.xUtItDpL6Hg8YPm'),
(25, 'younes benazzi', 'YOUNES.TECH7', '$2y$12$Dus4EkUJL4o4JZo49U9xw.j5fx5LAN5stiuPLzk.ToquOR686pwZm'),
(26, 'younes benazzi', 'YOUNES.TECH9', '$2y$12$1kK2wdgKdICd9XXd8/68x.HKcIhptaBYtTKPAamtw/99teCJ95Lg2');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `dossiers`
--
ALTER TABLE `dossiers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `employes`
--
ALTER TABLE `employes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
