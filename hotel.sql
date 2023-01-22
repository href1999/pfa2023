-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 02 juil. 2018 à 22:00
-- Version du serveur :  10.1.31-MariaDB
-- Version de PHP :  7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `hotel`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `email` text,
  `cdate` date DEFAULT NULL,
  `approval` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `fullname`, `phoneno`, `email`, `cdate`, `approval`) VALUES
(1, 'Issam Caoui', 676394726, 'lhpip@yahoo.fr', '2018-06-28', 'Not Allowed');

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE `login` (
  `id` int(10) UNSIGNED NOT NULL,
  `usname` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`id`, `usname`, `pass`) VALUES
(1, 'Admin', '1234'),
(3, 'Aimane', '1234');

-- --------------------------------------------------------

--
-- Structure de la table `newsletterlog`
--

CREATE TABLE `newsletterlog` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(52) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `news` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `newsletterlog`
--

INSERT INTO `newsletterlog` (`id`, `title`, `subject`, `news`) VALUES
(1, 'TITLE', 'SUBJECT', 'LLLL');

-- --------------------------------------------------------

--
-- Structure de la table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) DEFAULT NULL,
  `title` varchar(5) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `troom` varchar(30) DEFAULT NULL,
  `Capacity` varchar(30) DEFAULT NULL,
  `nroom` int(11) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `ttot` double(8,2) DEFAULT NULL,
  `fintot` double(8,2) DEFAULT NULL,
  `mepr` double(8,2) DEFAULT NULL,
  `Material` varchar(30) DEFAULT NULL,
  `btot` double(8,2) DEFAULT NULL,
  `noofdays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `payment`
--

INSERT INTO `payment` (`id`, `title`, `fname`, `lname`, `troom`, `Capacity`, `nroom`, `cin`, `cout`, `ttot`, `fintot`, `mepr`, `Material`, `btot`, `noofdays`) VALUES
(19, 'Dr.', 'Issam', 'Caoui', 'SALLE DE CONFERENCE', '50', 21, '2018-06-30', '2018-07-07', 47040.00, 47084.80, 0.00, 'Sans', 44.80, 7),
(1, 'Dr.', 'Omari', 'Mohammed', 'SALLE DE REUNION', '200', 19, '0000-00-00', '0000-00-00', 0.00, 0.00, 0.00, 'Avec', 0.00, 0),
(1, 'Dr.', 'Issam', 'Caoui', 'SALLE DE CONFERENCE', '200', 18, '2018-07-03', '2018-07-12', 51840.00, 52185.60, 230.40, 'Avec', 115.20, 9),
(2, 'Dr.', 'Issam', 'Caoui', 'SALLE AUDITION', '50', 17, '2018-07-04', '2018-07-14', 25500.00, 25530.00, 0.00, 'Sans', 30.00, 10),
(3, 'Dr.', 'Issam', 'Caoui', 'SALLE EXPOSITION', '500', 22, '2018-07-03', '2018-07-14', 43560.00, 43560.00, 0.00, 'Avec', 0.00, 11);

-- --------------------------------------------------------

--
-- Structure de la table `room`
--

CREATE TABLE `room` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `Capacity` varchar(10) DEFAULT NULL,
  `place` varchar(10) DEFAULT NULL,
  `cusid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `room`
--

INSERT INTO `room` (`id`, `type`, `Capacity`, `place`, `cusid`) VALUES
(17, 'SALLE AUDITION', '50', 'Not free', 2),
(18, 'SALLE DE CONFERENCE', '200', 'Not free', 1),
(19, 'SALLE DE REUNION', '200', 'Free', 0),
(20, 'SALLE AUDITION', '400', 'Free', NULL),
(21, 'SALLE DE CONFERENCE', '50', 'Free', 0),
(22, 'SALLE EXPOSITION', '500', 'Not free', 3),
(23, 'SALLE DE CONFERENCE', '10', 'Free', NULL),
(24, 'SALLE AUDITION', '500', 'Free', NULL),
(25, 'SALLE DE REUNION', '10', 'Free', NULL),
(26, 'SALLE DE REUNION', '50', 'Free', NULL),
(27, 'SALLE DE REUNION', '400', 'Free', NULL),
(29, 'SALLE AUDITION', '200', 'Free', NULL),
(30, 'SALLE EXPOSITION', '10', 'Free', NULL),
(31, 'SALLE EXPOSITION', '200', 'Free', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `roombook`
--

CREATE TABLE `roombook` (
  `id` int(10) UNSIGNED NOT NULL,
  `Title` varchar(5) DEFAULT NULL,
  `FName` text,
  `LName` text,
  `Email` varchar(50) DEFAULT NULL,
  `National` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `Phone` text,
  `TRoom` varchar(20) DEFAULT NULL,
  `Capacity` varchar(10) DEFAULT NULL,
  `NRoom` varchar(2) DEFAULT NULL,
  `Material` varchar(15) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `stat` varchar(15) DEFAULT NULL,
  `nodays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `roombook`
--

INSERT INTO `roombook` (`id`, `Title`, `FName`, `LName`, `Email`, `National`, `Country`, `Phone`, `TRoom`, `Capacity`, `NRoom`, `Material`, `cin`, `cout`, `stat`, `nodays`) VALUES
(1, 'Dr.', 'Issam', 'Caoui', 'lhpipk@yahoo.fr', 'Moroccan', 'Morocco', '676394726', 'SALLE DE CONFERENCE', '200', '18', 'Avec', '2018-07-03', '2018-07-12', 'Confirm', 9),
(2, 'Dr.', 'Issam', 'Caoui', 'KLL@yahoo.fr', 'Moroccan', 'Morocco', '676394726', 'SALLE AUDITION', '50', '17', 'Sans', '2018-07-04', '2018-07-14', 'Confirm', 10),
(3, 'Dr.', 'Issam', 'Caoui', 'LLLL@glail.com', 'Moroccan', 'Morocco', '676394726', 'SALLE EXPOSITION', '500', '22', 'Avec', '2018-07-03', '2018-07-14', 'Confirm', 11);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `newsletterlog`
--
ALTER TABLE `newsletterlog`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roombook`
--
ALTER TABLE `roombook`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `newsletterlog`
--
ALTER TABLE `newsletterlog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `roombook`
--
ALTER TABLE `roombook`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
