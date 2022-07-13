-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 13, 2022 at 03:12 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `encyclopedie`
--

-- --------------------------------------------------------

--
-- Table structure for table `agentministere`
--

CREATE TABLE `agentministere` (
  `matriculeAgent` varchar(50) NOT NULL,
  `nom_agent` varchar(50) NOT NULL,
  `prenom_agent` varchar(50) NOT NULL,
  `telephone_agent` varchar(50) NOT NULL,
  `email_agent` varchar(100) NOT NULL,
  `photo_agent` varchar(100) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agentministere`
--

INSERT INTO `agentministere` (`matriculeAgent`, `nom_agent`, `prenom_agent`, `telephone_agent`, `email_agent`, `photo_agent`, `password`) VALUES
('0014', 'Dusabecccccccccccc', 'Guillaumecccccc', '71616648', 'trustlord86@gmail.com', 'gigi.jpg', '125'),
('158', 'NKURUNZIZA', 'Aimable', '71589654', 'nkuru21@gmail.com', 'avatar3.jpg', '1239');

-- --------------------------------------------------------

--
-- Table structure for table `chercher`
--

CREATE TABLE `chercher` (
  `numero` int(11) NOT NULL,
  `id_livre` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `consulter`
--

CREATE TABLE `consulter` (
  `matricule_enseignant` varchar(50) NOT NULL,
  `id_livre` int(11) NOT NULL,
  `date_consultation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `eleve`
--

CREATE TABLE `eleve` (
  `numero` int(11) NOT NULL,
  `nom_eleve` varchar(50) NOT NULL,
  `prenom_eleve` varchar(50) NOT NULL,
  `adresse_eleve` varchar(50) NOT NULL,
  `email_eleve` varchar(100) NOT NULL,
  `etablissement` varchar(100) NOT NULL,
  `motpasse_eleve` varchar(120) NOT NULL,
  `id_niveau` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employes`
--

CREATE TABLE `employes` (
  `matricule` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `Telephone` varchar(50) NOT NULL,
  `email` varchar(120) NOT NULL,
  `username` varchar(50) NOT NULL,
  `motdepasse` varchar(100) NOT NULL,
  `role` varchar(120) NOT NULL,
  `etat` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employes`
--

INSERT INTO `employes` (`matricule`, `nom`, `prenom`, `Telephone`, `email`, `username`, `motdepasse`, `role`, `etat`) VALUES
(1, 'DUSABE', 'Guillaume', '71616648', 'trustlord86@gmail.com', 'DUSABE', '4122cb13c7a474c1976c9706ae36521d', 'Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `enseignant`
--

CREATE TABLE `enseignant` (
  `matricule_enseignant` int(11) NOT NULL,
  `nom_enseignant` varchar(50) NOT NULL,
  `prenom_enseignant` varchar(50) NOT NULL,
  `adresse_enseignant` varchar(50) NOT NULL,
  `email_enseignant` varchar(100) NOT NULL,
  `etablissement` varchar(50) NOT NULL,
  `profil` varchar(50) NOT NULL,
  `photo_enseigant` varchar(100) NOT NULL,
  `motpasse_enseignant` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enseignant`
--

INSERT INTO `enseignant` (`matricule_enseignant`, `nom_enseignant`, `prenom_enseignant`, `adresse_enseignant`, `email_enseignant`, `etablissement`, `profil`, `photo_enseigant`, `motpasse_enseignant`) VALUES
(4, 'DUSABE', 'Guillaume', 'BUJUMBURA', 'RUHOGAZI', 'S', 'trustlord86@gmail.com', 'avatar6.jpg', '123'),
(5, 'BUTOYI', 'Deo', 'KIRIRI', 'tutu85@gmail.com', 'BUKAVU', 'Etudiant', 'avatar7.jpg', '1230'),
(6, 'IRAKOZE', 'Danny', 'Buhonga', 'bobo24@gmail.com', 'Buhogazi', 'Enseignant', 'avatar2.jpg', '10');

-- --------------------------------------------------------

--
-- Table structure for table `livre`
--

CREATE TABLE `livre` (
  `id_livre` int(11) NOT NULL,
  `id_niveau` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `couverture` varchar(50) NOT NULL,
  `fichier` varchar(50) NOT NULL,
  `resume` text NOT NULL,
  `matriculeAgent` varchar(50) NOT NULL,
  `postdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `livre`
--

INSERT INTO `livre` (`id_livre`, `id_niveau`, `titre`, `couverture`, `fichier`, `resume`, `matriculeAgent`, `postdate`) VALUES
(17, 1, 'Les chansons de Dgbge', 'avatar5.jpg', 'COMPILATION 5 21.pdf', '       EXAMEN DE REPECHAGE DE TICE /50pts             CLASSE : 2PSC1\r\n1. Quelle est la signification de l’acronyme TICE/5pts \r\n2. Expliquez comment supprimer tout ou partie d\'un dessin /5pts \r\n3. Donnez le canevas du cours de TICE que nous avons vu ensemble dans le troisième trimestre/10pts \r\n4. Après avoir défini un objet WordArt, donnez leur fonction /10pts \r\n5. A l’aide des exemples donnez la fonction de rechercher avec plus de précision /10pts \r\n6. A quoi servent les taquets de tabulation /10pts\r\n                                          \r\n       Kelly IRAKOZE                                        Bonne Chance !!!\r\n', '0014', '2022-07-13 13:38:18'),
(18, 1, 'Ma gig preferable', 'images (5).jfif', 'COMPILATION 5 21.pdf', '       EXAMEN DE REPECHAGE DE RI /50pts             CLASSE : 2IM\r\n1. Quelle est la condition primordiale pour que des ordinateurs puissent échanger des données? /10pts \r\n 2. Pendant la configuration d’une adresse IP, est-il nécessaire de saisir le masque de sous réseau ? Pourquoi ? /10pts \r\n3. Comment se fait la transmission des données dans le partage de fichiers par l\'Hébergement Internet ? /10pts\r\n4. Comment peut-on consulter les documents partagés ?/10pts \r\n5. Comment peut-on vérifier le groupe de travail des ordinateurs qui sont en réseau ? /10pts \r\n     Kelly Ange                                    Bonne Chance !!!\r\n', '0014', '2022-07-13 13:38:18'),
(19, 1, 'Emotional', 'avatar4.jpg', 'Agents.php', '       EXAMEN DE REPECHAGE DE TICE /50pts             CLASSE : 2PSC1\r\n1. Quelle est la signification de l’acronyme TICE/5pts \r\n2. Expliquez comment supprimer tout ou partie d\'un dessin /5pts \r\n3. Donnez le canevas du cours de TICE que nous avons vu ensemble dans le troisième trimestre/10pts \r\nDUSABE Guillaume\r\n', '0014', '2022-07-13 13:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `magasinier`
--

CREATE TABLE `magasinier` (
  `idMagasinier` int(11) NOT NULL,
  `nomMagasinier` varchar(50) NOT NULL,
  `prenomMagasier` varchar(50) NOT NULL,
  `telMagasier` varchar(50) NOT NULL,
  `idStock` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `matiere`
--

CREATE TABLE `matiere` (
  `numero_mat` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `matricule_enseignant` varchar(50) NOT NULL,
  `id_niveau` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matiere`
--

INSERT INTO `matiere` (`numero_mat`, `description`, `matricule_enseignant`, `id_niveau`) VALUES
(10, 'dfddddfdf', '1', 1),
(14, 'dfee', '4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `niveau`
--

CREATE TABLE `niveau` (
  `id_niveau` int(11) NOT NULL,
  `nom_niveau` varchar(50) NOT NULL,
  `id_section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `niveau`
--

INSERT INTO `niveau` (`id_niveau`, `nom_niveau`, `id_section`) VALUES
(1, 'pipi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id_section` int(11) NOT NULL,
  `nom_section` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id_section`, `nom_section`) VALUES
(1, 'ECONOMIQUE'),
(6, 'SOCIALE'),
(7, 'MA-PHY'),
(8, 'BIO-CHIMIE');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nomutilisateur` text NOT NULL,
  `prenom_utilisateur` text NOT NULL,
  `adresse_utilisateur` text NOT NULL,
  `email` text NOT NULL,
  `etablissement` text NOT NULL,
  `photo_utilisateur` text NOT NULL,
  `role` text NOT NULL,
  `password` text NOT NULL,
  `verification_code` text NOT NULL,
  `email_verified_at` text,
  `etat` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nomutilisateur`, `prenom_utilisateur`, `adresse_utilisateur`, `email`, `etablissement`, `photo_utilisateur`, `role`, `password`, `verification_code`, `email_verified_at`, `etat`) VALUES
(180, 'DUSABE', 'Guillaume', 'Musaga', 'joymugeni2@gmail.com', 'L RUTOVU', 'gigi.jpg', 'Enseignant', 'd4c567f7c783a99df620a2140c26a442', '111295', '2022-07-09 20:59:13', 1),
(181, 'DUSABE', 'Guillaume', 'Musaga', 'joymugeni2@gmail.com', 'L RUTOVU', 'gigi.jpg', 'Enseignant', 'd4c567f7c783a99df620a2140c26a442', '111295', '2022-07-09 20:59:13', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agentministere`
--
ALTER TABLE `agentministere`
  ADD PRIMARY KEY (`matriculeAgent`);

--
-- Indexes for table `chercher`
--
ALTER TABLE `chercher`
  ADD KEY `numero` (`numero`),
  ADD KEY `id_livre` (`id_livre`);

--
-- Indexes for table `consulter`
--
ALTER TABLE `consulter`
  ADD KEY `matricule_enseignant` (`matricule_enseignant`),
  ADD KEY `id_livre` (`id_livre`);

--
-- Indexes for table `eleve`
--
ALTER TABLE `eleve`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `id_niveau` (`id_niveau`);

--
-- Indexes for table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`matricule`);

--
-- Indexes for table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`matricule_enseignant`);

--
-- Indexes for table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`id_livre`),
  ADD KEY `matriculeAgent` (`matriculeAgent`),
  ADD KEY `id_niveau` (`id_niveau`);

--
-- Indexes for table `magasinier`
--
ALTER TABLE `magasinier`
  ADD PRIMARY KEY (`idMagasinier`);

--
-- Indexes for table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`numero_mat`),
  ADD KEY `id_niveau` (`id_niveau`),
  ADD KEY `matricule_enseignant` (`matricule_enseignant`);

--
-- Indexes for table `niveau`
--
ALTER TABLE `niveau`
  ADD PRIMARY KEY (`id_niveau`),
  ADD KEY `id_section` (`id_section`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id_section`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eleve`
--
ALTER TABLE `eleve`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employes`
--
ALTER TABLE `employes`
  MODIFY `matricule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `enseignant`
--
ALTER TABLE `enseignant`
  MODIFY `matricule_enseignant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `livre`
--
ALTER TABLE `livre`
  MODIFY `id_livre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `numero_mat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `niveau`
--
ALTER TABLE `niveau`
  MODIFY `id_niveau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id_section` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chercher`
--
ALTER TABLE `chercher`
  ADD CONSTRAINT `chercher_ibfk_1` FOREIGN KEY (`id_livre`) REFERENCES `livre` (`id_livre`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chercher_ibfk_2` FOREIGN KEY (`numero`) REFERENCES `eleve` (`numero`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `consulter`
--
ALTER TABLE `consulter`
  ADD CONSTRAINT `consulter_ibfk_2` FOREIGN KEY (`id_livre`) REFERENCES `livre` (`id_livre`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eleve`
--
ALTER TABLE `eleve`
  ADD CONSTRAINT `eleve_ibfk_1` FOREIGN KEY (`id_niveau`) REFERENCES `niveau` (`id_niveau`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `livre_ibfk_1` FOREIGN KEY (`matriculeAgent`) REFERENCES `agentministere` (`matriculeAgent`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `livre_ibfk_2` FOREIGN KEY (`id_niveau`) REFERENCES `niveau` (`id_niveau`);

--
-- Constraints for table `matiere`
--
ALTER TABLE `matiere`
  ADD CONSTRAINT `matiere_ibfk_2` FOREIGN KEY (`id_niveau`) REFERENCES `niveau` (`id_niveau`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `niveau`
--
ALTER TABLE `niveau`
  ADD CONSTRAINT `niveau_ibfk_1` FOREIGN KEY (`id_section`) REFERENCES `section` (`id_section`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
