-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 02 mars 2023 à 17:19
-- Version du serveur :  8.0.32-0buntu0.20.04.1
-- Version de PHP : 7.4.3-4ubuntu2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;

--
-- Base de données : `ussd`
--

-- --------------------------------------------------------

--
-- Structure de la table `academies`
--

CREATE TABLE `academies` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int DEFAULT NULL,
  `annee_en_cours` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `academies`
--

INSERT INTO `academies` (`id`, `name`, `createdAt`, `updatedAt`, `userId`, `annee_en_cours`) VALUES
(1, '2021-2022', '2022-06-29 18:16:33', '2022-07-01 13:16:53', 14, NULL),
(2, '2022-2023', '2022-09-22 13:50:27', '2022-09-22 13:50:27', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `admissions`
--

CREATE TABLE `admissions` (
  `id` int NOT NULL,
  `Date_admission` date DEFAULT NULL,
  `Baccalaureat_serie` varchar(255) DEFAULT NULL,
  `Annee_obtention` varchar(255) DEFAULT NULL,
  `Mention` varchar(255) DEFAULT NULL,
  `Lycee_college` varchar(255) DEFAULT NULL,
  `Facute_institut` varchar(255) DEFAULT NULL,
  `Periode` varchar(255) DEFAULT NULL,
  `Raison` varchar(255) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Extrait_naissance` varchar(255) DEFAULT NULL,
  `Diplome` varchar(255) DEFAULT NULL,
  `Certificat_medical` varchar(255) DEFAULT NULL,
  `Releve_notes` varchar(255) DEFAULT NULL,
  `Cycle` varchar(255) DEFAULT NULL,
  `utilisateur` varchar(255) DEFAULT NULL,
  `filiere_etude` varchar(255) DEFAULT NULL,
  `Statut` varchar(255) DEFAULT 'EN ATTENTE',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int DEFAULT NULL,
  `classprofId` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sexe` varchar(255) DEFAULT 'EN ATTENTE',
  `filiere` varchar(255) DEFAULT 'EN ATTENTE',
  `nationalite` varchar(255) DEFAULT NULL,
  `condition_utilisation` varchar(255) DEFAULT NULL,
  `filiere_demande` varchar(255) DEFAULT NULL,
  `niveau_etude_demande` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `admissions`
--

INSERT INTO `admissions` (`id`, `Date_admission`, `Baccalaureat_serie`, `Annee_obtention`, `Mention`, `Lycee_college`, `Facute_institut`, `Periode`, `Raison`, `Photo`, `Extrait_naissance`, `Diplome`, `Certificat_medical`, `Releve_notes`, `Cycle`, `utilisateur`, `filiere_etude`, `Statut`, `createdAt`, `updatedAt`, `userId`, `classprofId`, `email`, `sexe`, `filiere`, `nationalite`, `condition_utilisation`, `filiere_demande`, `niveau_etude_demande`) VALUES
(2, '2022-06-13', 'Scientifique ', '2018', 'Passable ', 'Collège bary ', 'Université de Yaoundé 1', '2019/2020', 'Voulais faire médecine ', 'Images/1655134454838.jpeg', 'Images/1655134465614.jpeg', 'Images/1655134465640.jpeg', 'Inapte', 'Images/1655134465818.jpeg', '2022-2023', NULL, 'Medecine/Licence2', 'VALIDER', '2022-06-13 15:34:25', '2022-12-30 00:05:00', 33, 2, 'taguenajordan@gmail.com', 'Masculin', 'Medecine', 'Camérounaise', NULL, 'Médecine', 'Licence'),
(3, '2022-06-17', 'S2', '2016', 'Passable', 'Lycée Abdoulaye Sadji', 'Ussd', '2018-2020', 'Je voulais changer de filière ', 'Images/1655473707396.jpg', 'Images/1655473713532.jpg', 'Images/1655473718809.jpg', 'Inapte', 'Images/1655473727789.jpg', '2022-2023', NULL, 'Pharmacie/Licence3', 'VALIDER', '2022-06-17 13:49:03', '2022-12-22 20:59:08', 66, 7, 'warecia96@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', NULL, NULL, NULL),
(5, '2022-08-03', 'Baccalauréat S', '2019', 'Assez Bien', 'Lycée Maurice Delafosse ABIDJAN', 'Université de Lille', '2019-2022', 'Pour faire la formation de Pharmacie pas accessible dans l\'autre école', 'Images/1659552597997.jpg', 'Images/1659552598493.pdf', 'Images/1659552598982.pdf', NULL, 'Images/1659552600104.pdf', NULL, 'ASSANDE PAULE PRISCILLE ', 'Pharmacie/Licence 1', 'VALIDER', '2022-08-03 18:50:00', '2022-12-22 21:00:32', 180, 4, 'priscilleassande@gmail.com', 'Feminin', 'Pharmacie', 'Ivoirienne', NULL, NULL, NULL),
(6, '2022-08-08', 'Serie D', '2021', 'Passable', 'College Pere Augustin Planque', 'College Pere Augustin Planque', '2018-2021', 'Succes au BAC', 'Images/1659962738920.jpeg', 'Images/1659962739103.jpeg', 'Images/1659962739197.jpeg', NULL, 'Images/1659962739218.jpeg', '2022-2023', 'KINI Komi Pascal Luther King ', 'Medecine/License 2', 'VALIDER', '2022-08-08 12:45:40', '2022-12-22 21:13:12', 35, 2, 'kiniluther@gmail.com', 'null', 'Medecine', 'Togolaise', NULL, NULL, NULL),
(7, '2022-08-09', 'Série D', '2021', 'Assez bien', 'Académie privée FOTSO MOBILE', 'undefined', '2020-2021', 'undefined', 'Images/1660006800371.pdf', 'Images/1660006801149.pdf', 'Images/1660006801425.pdf', NULL, 'Images/1660006801807.pdf', '2022-2023', 'NZE MAMFOUMBI Bilal Maurice ', 'Medecine/License 2', 'VALIDER', '2022-08-09 01:00:02', '2022-12-22 21:13:40', 36, 2, 'mauricemamfoumbi504@gmail.com', 'null', 'Medecine', 'Gabonaise ', NULL, NULL, NULL),
(8, '2022-08-09', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'Car j\'ai obtenu mon diplôme et j\'ai voulu poursuivre mes études à l\'extérieur ', 'Images/1660067283547.jpg', 'Images/1660067283749.jpg', 'Images/1660067284976.jpg', NULL, 'Images/1660067286900.jpg', '2022-2023', 'Fea Kpassinambona', 'Medecine/License 1', 'VALIDER', '2022-08-09 17:48:08', '2022-12-22 21:04:44', 189, 1, 'semromualdfea@gmail.com', 'Masculin', 'Medecine', 'Centre-Africaine', NULL, NULL, NULL),
(9, '2022-08-09', 'D', '2021', 'Passable', 'Collège et lycée Raponda Walker', 'aucun', '2020-2021', 'aucun', 'Images/1660085909206.png', 'Images/1660085910973.pdf', 'Images/1660085918567.pdf', NULL, 'Images/1660085923016.pdf', '2022-2023', 'Koumba Gloire Sqtchelle', 'Medecine/License 1', 'VALIDER', '2022-08-09 22:58:46', '2022-12-22 21:16:02', 21, 1, 'gloirekoumba27@gmail.com', 'null', 'Medecine', 'Gabonaise', NULL, NULL, NULL),
(10, '2022-08-15', 'Série D', '2016', 'Passable', 'Lycée 2 février', 'RAS', 'Non applicable', 'RAS', 'Images/1660583178649.jpg', 'Images/1660583178735.pdf', 'Images/1660583180832.pdf', NULL, 'Images/1660583181965.pdf', '2022-2023', 'GALLEY Ablavi Cathérine', 'Pharmacie/Master2', 'VALIDER', '2022-08-15 17:06:23', '2022-12-22 21:22:29', 194, 14, 'catherinegalley9@gmail.com', 'Feminin', 'Pharmacie', 'Toglaise', NULL, NULL, NULL),
(11, '2022-09-01', 'Série D', '2022', 'Assez bien', 'COLLEGE ET LYCEE CALASANZ ', 'undefined', 'undefined', 'undefined', 'Images/1662029254020.pdf', 'Images/1662029254367.pdf', 'Images/1662029255021.pdf', NULL, 'Images/1662029255106.pdf', '2022-2023', 'DJIGUEMDE Adidjata Marly Souton-Nooma', 'Medecine/License 1', 'VALIDER', '2022-09-01 10:47:35', '2022-12-22 21:23:02', 201, 1, 'amarlydjiguemde@gmail.com', 'Feminin', 'Medecine', 'Burkinabaise', NULL, NULL, NULL),
(12, '2022-09-13', 'Baccalauréat Série D ', '2022', 'Passable', 'Cours Secondaire Ambourhouet ', 'undefined', '2021-2022', 'Je veux intégrer une des meilleures écoles pour poursuivre mes études en pharmacie et j'ai choisis la vôtre.', 'Images/1663056188683.jpeg', 'Images/1663056189121.pdf', 'Images/1663056189888.pdf', NULL, 'Images/1663056190178.pdf', '2022-2023', 'LATEDJOU', 'Pharmacie/Licence 1', 'VALIDER', '2022-09-13 08:03:10', '2022-12-22 21:30:47', 202, 4, 'stephielatedjou@gmail.com', 'Feminin', 'Pharmacie', 'Gabonaise', NULL, NULL, NULL),
(13, '2022-09-13', 'sciences mathématiques ', '2022', 'passable', 'IHSANE', 'undefined', 'undefined', 'undefined', 'Images/1663110890960.jpg', 'Images/1663110891198.pdf', 'Images/1663110891287.pdf', NULL, 'Images/1663110893905.pdf', '2022-2023', 'HAMDOU  NIZAR', 'Pharmacie/Licence 1', 'VALIDER', '2022-09-13 23:14:55', '2022-12-22 21:33:11', 174, 4, 'nizar.hamdou2005@gmail.com', 'Masculin', 'Pharmacie', 'Marocaine', NULL, NULL, NULL),
(14, '2022-09-14', 'C', '2022', 'Assez bien ', 'Collège et Lycée Notre Dame de Quaben ', 'undefined', 'undefined', 'undefined', 'Images/1663154036406.jpeg', 'Images/1663154036559.jpeg', 'Images/1663154037978.pdf', NULL, 'Images/1663154038028.pdf', '2022-2023', 'DIABATE N'zié Mohamed Ramadan ', 'Pharmacie/Licence 1', 'VALIDER', '2022-09-14 11:13:59', '2022-12-22 21:34:05', 205, 4, 'nziediabate@gmail.com', 'Masculin', 'Pharmacie', 'Gabonaise', NULL, NULL, NULL),
(15, '2022-09-16', 'Série S2', '2022', 'assez Bien', 'Lycée  de Mbao', 'undefined', '2020-2022', 'undefined', 'Images/1663324915684.jpg', 'Images/1663324915875.pdf', 'Images/1663324916579.pdf', 'undefined', 'Images/1663324917877.pdf', '2022-2023', 'FAYE Mame Diene', 'Pharmacie/Licence 1', 'VALIDER', '2022-09-16 10:41:58', '2022-12-22 21:35:07', 207, 4, 'farimata2003@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', NULL, NULL, NULL),
(16, '2022-09-21', 'Série D', '2018', 'Passable', 'Institut Martessi', 'Institut Martessi', 'undefined', 'undefined', 'Images/1663763212091.jpg', 'Images/1663763212170.pdf', 'Images/1663763212700.pdf', 'Inapte', 'Images/1663763213268.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-09-21 12:26:53', '2022-12-22 21:35:50', 210, 2, 'arukiyatu@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', NULL, NULL, NULL),
(17, '2022-09-23', 'Série D', '2018', 'Passable', 'Groupe scolaire  LES MINIMES', 'EUROMED', '2018-2021', 'Soucis financiers', 'Images/1663932175968.jpg', 'Images/1663932176039.pdf', 'Images/1663932176560.pdf', 'Inapte', 'Images/1663932177066.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Master1', 'VALIDER', '2022-09-23 11:22:57', '2022-12-22 21:36:27', 212, 8, 'deolviebikouta@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', NULL, NULL, NULL),
(18, '2022-09-23', 'Série D', '2017', 'Passable', 'Rahma et ELOURWA', 'undefined', 'undefined', 'undefined', 'Images/1663933969013.jpg', 'Images/1663933969100.pdf', 'Images/1663933970281.pdf', 'Inapte', 'Images/1663933970975.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Master2', 'VALIDER', '2022-09-23 11:52:51', '2022-12-22 21:36:50', 214, 9, 'nanaarby97@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', NULL, NULL, NULL),
(19, '2022-09-23', 'Série D', 'undefined', 'Passable', 'Lycée Djoué DABANY', 'undefined', 'undefined', 'undefined', 'Images/1663936114180.jpg', 'Images/1663936114262.pdf', 'Images/1663936115094.pdf', 'Inapte', 'Images/1663936115414.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-09-23 12:28:35', '2022-12-22 21:38:36', 30, 2, 'afoshaonthebeat@gmail.com', 'null', 'Medecine', 'Sénégalaise', NULL, NULL, NULL),
(20, '2022-09-26', 'C', '2022', 'Passable', 'Lycée piblique Jean Arsene Bouguenza', 'undefined', '2020-2022', 'undefined', 'Images/1664196808256.pdf', 'Images/1664196808632.pdf', 'Images/1664196808907.pdf', 'undefined', 'Images/1664196808954.pdf', '2022-2023', 'FAYE Mame Diene', 'Medecine/License 1', 'VALIDER', '2022-09-26 12:53:29', '2022-12-22 21:39:06', 215, 1, 'tamdoura850@icloud.com', 'Feminin', 'Medecine', 'Sénégalaise', NULL, NULL, NULL),
(21, '2022-09-26', 'D', '2022', 'Passable', 'Lucée Don Bosco', 'undefined', '2020-2022', 'undefined', 'Images/1664198141255.jpg', 'Images/1664198144550.jpg', 'Images/1664198145630.pdf', 'undefined', 'Images/1664198146855.pdf', '2022-2023', 'FAYE Mame Diene', 'Medecine/License 1', 'VALIDER', '2022-09-26 13:15:48', '2022-12-22 21:40:32', 216, 1, 'lauretteminko19@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', NULL, NULL, NULL),
(22, '2022-09-26', 'Série D', '2021', 'Passable', 'Lycée Charles Mefane', 'undefined', 'undefined', 'undefined', 'Images/1664200358406.jpg', 'Images/1664200358503.pdf', 'Images/1664200359069.pdf', 'Inapte', 'Images/1664200359470.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 1', 'VALIDER', '2022-09-26 13:52:39', '2022-12-22 21:42:40', 50, 1, 'Florisboundzanga@gmail.com', 'Masculin', 'Medecine', 'Sénégalaise', NULL, NULL, NULL),
(24, '2022-09-26', 'Série D', '2021', 'Assez Bien', 'Collège Bilingue Bethelehem LEGRAND', 'undefined', 'undefined', 'undefined', 'Images/1664202512137.jpg', 'Images/1664202512232.pdf', 'Images/1664202512734.pdf', 'Inapte', 'Images/1664202513165.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-09-26 14:28:33', '2022-12-22 21:52:52', 76, 2, 'davilaentalia@yahoo.com', 'Feminin', 'Medecine', 'Sénégalaise', NULL, NULL, NULL),
(25, '2022-09-26', 'Série D', '2019', 'Passable', 'Lycée d\'application de l\'école normale supérieure ', 'undefined', 'undefined', 'undefined', 'Images/1664203093301.jpg', 'Images/1664203093408.pdf', 'Images/1664203093745.pdf', 'undefined', 'Images/1664203094377.pdf', 'undefined', 'Marie GAYE', NULL, 'archiver', '2022-09-26 14:38:14', '2022-10-06 12:19:31', 189, NULL, 'semromualdfea@gmail.com', 'Masculin', NULL, 'Sénégalaise', NULL, NULL, NULL),
(26, '2022-09-26', 'Série D', '2019', 'Passable', 'La Colombe de Mavie', 'undefined', 'undefined', 'undefined', 'Images/1664203907821.jpg', 'Images/1664203907908.pdf', 'Images/1664203908447.pdf', 'Inapte', 'Images/1664203908887.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 1', 'VALIDER', '2022-09-26 14:51:49', '2022-12-22 21:53:20', 47, 1, 'lazeceleste@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', NULL, NULL, NULL),
(27, '2022-09-26', 'Série C', '2020', 'Assez Bien', 'Groupe Scolaire ALIYOU FATIMA', 'undefined', 'undefined', 'undefined', 'Images/1664204128431.jpg', 'Images/1664204128517.pdf', 'Images/1664204129708.pdf', 'Inapte', 'Images/1664204129969.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-09-26 14:55:30', '2022-12-22 21:53:56', 24, 2, 'calebdoungous7@gmail.com', 'null', 'Medecine', 'Sénégalaise', NULL, NULL, NULL),
(28, '2022-09-26', 'D', '2018', 'Passable', 'undefined', 'undefined', 'undefined', 'undefined', 'Images/1664208012671.jpg', 'Images/1664208012768.pdf', 'Images/1664208014056.pdf', 'Inapte', 'Images/1664208014643.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-09-26 16:00:14', '2022-12-22 21:55:39', 217, 2, 'janvierjules16@gmail.com', 'Masculin', 'Medecine', 'Sénégalaise', NULL, NULL, NULL),
(29, '2022-09-26', 'Série D', '2021', 'Passable', 'Collège et Lycée MGR RAPONDA WALKER', 'undefined', 'undefined', 'undefined', 'Images/1664208698333.jpg', 'Images/1664208698428.pdf', 'Images/1664208698947.pdf', 'Inapte', 'Images/1664208699269.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-09-26 16:11:39', '2022-12-22 21:55:56', 218, 2, 'sagara41@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', NULL, NULL, NULL),
(30, '2022-10-03', 'Série D', '2018', 'Passable', 'Lycée Joseph AMBOUROUET AVARO', 'undefined', 'undefined', 'undefined', 'Images/1664801995412.jpg', 'Images/1664801995617.pdf', 'Images/1664801998050.pdf', 'Inapte', 'Images/1664802000436.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'archiver', '2022-10-03 13:00:01', '2022-10-05 07:40:36', 217, 2, 'janvierjules16@gmail.com', 'Masculin', 'Medecine', 'Sénégalaise', NULL, NULL, NULL),
(31, '2022-10-03', 'Série C', '2020', 'Assez Bien', 'Groupe Scolaire ALIYOU FATIMA', '', 'undefined', 'undefined', 'Images/1664802242081.jpg', 'Images/1664802242282.pdf', 'Images/1664802244790.pdf', 'Inapte', 'Images/1664802246095.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'archiver', '2022-10-03 13:04:07', '2022-10-05 07:39:46', 24, 2, 'calebdoungous7@gmail.com', 'null', 'Medecine', 'Sénégalaise', NULL, NULL, NULL),
(32, '2022-10-03', 'Série D', '2021', 'Passable', 'Lycée Joseph AMBOUROUET AVARO', 'undefined', 'undefined', 'undefined', 'Images/1664802500521.jpg', 'Images/1664802500746.pdf', 'Images/1664802502704.pdf', 'Inapte', 'Images/1664802504490.pdf', 'undefined', 'Marie GAYE', NULL, 'archiver', '2022-10-03 13:08:26', '2022-10-11 09:02:06', 218, NULL, 'sagara41@gmail.com', 'Feminin', NULL, 'Sénégalaise', NULL, NULL, NULL),
(33, '2022-10-03', 'undefined', '2021', 'Passable', 'Lycée Charles Mefane', 'undefined', 'undefined', 'undefined', 'Images/1664802646144.jpg', 'Images/1664802646398.pdf', 'Images/1664802648769.pdf', 'Inapte', 'Images/1664802650279.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 1', 'VALIDER', '2022-10-03 13:10:51', '2022-12-22 21:58:51', 18, 1, 'willsboundzanga@gmail.com', 'null', 'Medecine', 'Sénégalaise', NULL, NULL, NULL),
(34, '2022-10-03', 'Série D', '2019', 'Passable', 'Lycée Lubin Martial NTOUTOUME OBAME', 'undefined', 'undefined', 'undefined', 'Images/1664802893304.jpg', 'Images/1664802893561.pdf', 'Images/1664802896345.pdf', 'undefined', 'Images/1664802898890.pdf', 'undefined', 'Marie GAYE', NULL, 'archiver', '2022-10-03 13:15:00', '2022-10-05 07:44:45', 87, NULL, 'azayengnsi@gmail.com', 'Feminin', NULL, 'Sénégalaise', NULL, NULL, NULL),
(35, '2022-10-03', 'Série D', '2019', 'Passable', 'La Colombe de Mavie', 'undefined', 'undefined', 'undefined', 'Images/1664803265197.jpg', 'Images/1664803265336.pdf', 'Images/1664803267902.pdf', 'Inapte', 'Images/1664803269021.pdf', 'undefined', 'Marie GAYE', NULL, 'archiver', '2022-10-03 13:21:10', '2022-10-11 09:03:25', 47, NULL, 'lazeceleste@gmail.com', 'Feminin', NULL, 'Sénégalaise', NULL, NULL, NULL),
(36, '2022-10-05', 'Série D', '2020', 'Bien', 'Complexe Evangile CITE DE DOLISIE', 'undefined', 'undefined', 'undefined', 'Images/1664964806163.jpg', 'Images/1664964806269.pdf', 'Images/1664964806681.pdf', 'Inapte', 'Images/1664964808082.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 1', 'VALIDER', '2022-10-05 10:13:29', '2022-12-22 21:59:20', 181, 1, 'malondajonathanschadrak@gmail.comm', 'Masculin', 'Medecine', 'Sénégalaise', 'accepter', NULL, NULL),
(37, '2022-10-05', 'Série C', '2021', 'Assez Bien', 'Sainte Thérèse de Dolisie', 'undefined', 'undefined', 'undefined', 'Images/1664964935534.jpg', 'Images/1664964935644.pdf', 'Images/1664964935989.pdf', 'Inapte', 'Images/1664964936265.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-10-05 10:15:36', '2022-12-22 21:59:52', 19, 2, 'mpremedite95@gmail.com', 'null', 'Medecine', 'Sénégalaise', 'accepter', NULL, NULL),
(38, '2022-10-05', 'Série D', '2017', 'Passable', 'Lycée d\'application Nelson MANDELA', 'undefined', 'undefined', 'undefined', 'Images/1664966209967.jpg', 'Images/1664966210056.pdf', 'Images/1664966210550.pdf', 'Inapte', 'Images/1664966211765.pdf', 'undefined', 'Marie GAYE', NULL, 'archiver', '2022-10-05 10:36:52', '2022-10-06 11:14:03', 222, NULL, 'ndouoghoakoma10@gmail.com', 'Masculin', NULL, 'Sénégalaise', 'accepter', NULL, NULL),
(39, '2022-10-05', 'Série D', '2021', 'Passable', 'Lycée Georges MABIGNATH', 'undefined', 'undefined', 'undefined', 'Images/1664967091898.jpg', 'Images/1664967091994.pdf', 'Images/1664967092405.pdf', 'Inapte', 'Images/1664967092698.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-10-05 10:51:32', '2022-12-22 21:56:30', 223, 2, 'cyndimmb842@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', NULL, NULL),
(40, '2022-10-05', 'Série D', '2021', 'Passable', 'Lycée Mouhamed ARISSANI', 'undefined', 'undefined', 'undefined', 'Images/1664967558595.jpg', 'Images/1664967558682.pdf', 'Images/1664967559221.pdf', 'Inapte', 'Images/1664967559953.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 1', 'VALIDER', '2022-10-05 10:59:20', '2022-12-22 21:56:57', 224, 1, 'shekinaelingui932@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', NULL, NULL),
(41, '2022-10-05', 'S2', '2022', 'Passable', 'Lycée  Billes', 'undefined', '2020-2022', 'undefined', 'Images/1664981296184.jpg', 'Images/1664981296431.pdf', 'Images/1664981297427.pdf', 'undefined', 'Images/1664981299192.pdf', 'undefined', 'FAYE Mame Diene', NULL, 'archiver', '2022-10-05 14:48:20', '2022-10-06 11:29:40', 225, NULL, 'annaisbaeeee.0@gmail.com', 'Feminin', NULL, 'Sénégalaise', 'accepter', NULL, NULL),
(42, '2022-10-05', 'Série D', '2021', 'undefined', 'Lycée Simone OYONO ABBA\'A', 'undefined', 'undefined', 'undefined', 'Images/1664981945769.jpg', 'Images/1664981945857.pdf', 'Images/1664981946369.pdf', 'Inapte', 'Images/1664981947458.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-10-05 14:59:08', '2022-12-22 22:00:43', 23, 2, 'oyanealloghodavillagaelle@gmail.com', 'null', 'Medecine', 'Sénégalaise', 'accepter', NULL, NULL),
(43, '2022-10-05', 'undefined', 'undefined', 'Assez Bien', 'CEMINACE', 'undefined', 'undefined', 'undefined', 'Images/1664982155783.jpg', 'Images/1664982155987.pdf', 'Images/1664982156857.pdf', 'Inapte', 'Images/1664982157786.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-10-05 15:02:38', '2022-12-22 22:09:29', 195, 2, 'nkoukabenette@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', NULL, NULL),
(44, '2022-10-05', 'S2', '2022', 'Passable', 'Lycée  Billes', 'undefined', '2020-2022', 'undefined', 'Images/1664983316165.jpg', 'Images/1664983316258.pdf', 'Images/1664983317158.pdf', 'undefined', 'Images/1664983317918.pdf', '2022-2023', 'FAYE Mame Diene', 'Pharmacie/Licence 1', 'VALIDER', '2022-10-05 15:21:58', '2022-12-22 21:59:38', 226, 4, 'ndeyeannandiaye04@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', NULL, NULL),
(45, '2022-10-05', 'Série D', '2021', 'Passable', 'Saint Victor', 'undefined', 'undefined', 'undefined', 'Images/1664983544092.jpg', 'Images/1664983544178.pdf', 'Images/1664983544497.pdf', 'Inapte', 'Images/1664983544781.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 1', 'VALIDER', '2022-10-05 15:25:45', '2022-12-22 22:49:33', 17, 1, 'benieloufoua@gmail.com', 'null', 'Medecine', 'Sénégalaise', 'accepter', NULL, NULL),
(46, '2022-10-05', 'Série D', '2021', 'Passable', 'Saint Victor', 'undefined', 'undefined', 'undefined', 'Images/1664983545469.jpg', 'Images/1664983545485.pdf', 'Images/1664983545881.pdf', 'Inapte', 'Images/1664983546051.pdf', 'undefined', 'Marie GAYE', NULL, 'archiver', '2022-10-05 15:25:46', '2022-10-06 11:48:35', 17, NULL, 'benieloufoua@gmail.com', 'null', NULL, 'Sénégalaise', 'accepter', NULL, NULL),
(47, '2022-10-06', 'Série D', '2021', 'Passable', 'Lycée Nelson Mandela', 'undefined', 'undefined', 'undefined', 'Images/1665054468576.jpg', 'Images/1665054468672.pdf', 'Images/1665054469313.pdf', 'Inapte', 'Images/1665054469715.pdf', 'undefined', 'Marie GAYE', NULL, 'archiver', '2022-10-06 11:07:49', '2022-10-06 12:06:38', 229, NULL, 'dashfirst8@gmail.com', 'Masculin', NULL, 'Sénégalaise', 'accepter', NULL, NULL),
(48, '2022-10-06', 'Série D', '2019', 'Passable', 'undefined', 'undefined', 'undefined', 'undefined', 'Images/1665057744618.jpg', 'Images/1665057744724.pdf', 'Images/1665057746225.pdf', 'Inapte', 'Images/1665057746327.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-10-06 12:02:27', '2022-12-22 22:55:26', 87, 2, 'azayengnsi@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', NULL, NULL),
(49, '2022-10-06', 'Série D', '2021', 'Passable', 'Collège Cogito EDUC', 'undefined', 'undefined', 'undefined', 'Images/1665058284660.jpg', 'Images/1665058284756.pdf', 'Images/1665058285158.pdf', 'Inapte', 'Images/1665058285607.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 1', 'VALIDER', '2022-10-06 12:11:25', '2022-12-22 22:00:24', 230, 1, 'mabika@gmail.com', 'Masculin', 'Medecine', 'Sénégalaise', 'accepter', NULL, NULL),
(50, '2022-10-06', 'Série D', '2021', 'Passable', 'College Protestant Gbéto', 'undefined', 'undefined', 'undefined', 'Images/1665058934772.jpg', 'Images/1665058934859.pdf', 'Images/1665058935354.pdf', 'Inapte', 'Images/1665058935938.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 1', 'VALIDER', '2022-10-06 12:22:17', '2022-12-22 22:50:30', 228, 1, 'verase4@yahoo.fr', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', NULL, NULL),
(51, '2022-10-06', 'Série D', '2021', 'Passable', 'G.S. AMOUR DE MARSEILLE', 'undefined', 'undefined', 'undefined', 'Images/1665060355828.jpg', 'Images/1665060355924.pdf', 'Images/1665060356327.pdf', 'Inapte', 'Images/1665060356822.pdf', 'undefined', 'Marie GAYE', NULL, 'archiver', '2022-10-06 12:45:57', '2022-10-11 09:14:28', 230, NULL, 'mabika@gmail.com', 'Masculin', NULL, 'Sénégalaise', 'accepter', NULL, NULL),
(52, '2022-10-06', 'Série D', '2021', 'Passable', 'G.S. AMOUR DE MARSEILLE', 'undefined', 'undefined', 'undefined', 'Images/1665060529779.jpg', 'Images/1665060529877.pdf', 'Images/1665060530215.pdf', 'Inapte', 'Images/1665060530489.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 1', 'VALIDER', '2022-10-06 12:48:51', '2022-12-22 22:01:27', 231, 1, 'adrimel@gmail.com', 'Masculin', 'Medecine', 'Sénégalaise', 'accepter', NULL, NULL),
(53, '2022-10-06', 'S2', '2021', 'Passable', 'CHANN', 'undefined', 'undefined', 'undefined', 'Images/1665061077044.jpg', 'Images/1665061077145.pdf', 'Images/1665061077580.pdf', 'Inapte', 'Images/1665061078451.pdf', '2021-2022', 'Marie GAYE', 'Medecine/License 1', 'archiver', '2022-10-06 12:57:58', '2022-12-07 10:59:23', 25, 1, 'mamafaty120@gmail.com', 'null', 'Medecine', 'Sénégalaise', 'accepter', NULL, NULL),
(54, '2022-10-06', 'D', '2022', 'Passable', 'Lycée Paul INDJENJET GONDJOUT', 'undefined', '2020-2022', 'undefined', 'Images/1665066502152.jpg', 'Images/1665066504854.pdf', 'Images/1665066505485.pdf', 'undefined', 'Images/1665066505854.pdf', '2022-2023', 'FAYE Mame Diene', 'Medecine/License 1', 'VALIDER', '2022-10-06 14:28:26', '2022-12-22 22:56:05', 232, 1, 'mpierreemmanuelle@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', NULL, NULL),
(55, '2022-10-11', 'D', '2022', 'Passable', 'Lycée HENRI SYLVOZ', 'undefined', '2021-2022', 'undefined', 'Images/1665480366391.jpg', 'Images/1665480367938.pdf', 'Images/1665480368303.pdf', 'undefined', 'Images/1665480368688.pdf', '2022-2023', 'FAYE Mame Diene', 'Pharmacie/Licence 1', 'VALIDER', '2022-10-11 09:26:09', '2022-12-22 21:57:47', 233, 4, 'ntoutoumebella22@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', NULL, NULL),
(56, '2022-10-11', 'Série D', '2020', 'undefined', 'Collège et Lycée Sainte-Marie', 'undefined', 'undefined', 'undefined', 'Images/1665496187376.jpg', 'Images/1665496187480.jpg', 'Images/1665496187572.pdf', 'Inapte', 'Images/1665496187939.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-10-11 13:49:48', '2022-12-22 22:02:25', 234, 2, 'michelbiyogha@gmail.com', 'Masculin', 'Medecine', 'Sénégalaise', 'accepter', NULL, NULL),
(57, '2022-10-11', 'S2', '2019', 'Assez Bien', 'undefined', 'undefined', 'undefined', 'undefined', 'Images/1665497173337.jpg', 'Images/1665497173423.pdf', 'Images/1665497173807.pdf', 'Inapte', 'Images/1665497174130.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-11 14:06:15', '2022-12-22 22:50:49', 235, 3, 'ouliskc01@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', NULL, NULL),
(58, '2022-10-11', 'Série D', '2019', 'Passable', 'undefined', 'undefined', 'undefined', 'undefined', 'Images/1665498874194.jpg', 'Images/1665498874279.pdf', 'Images/1665498874749.pdf', 'Inapte', 'Images/1665498875682.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-11 14:34:35', '2022-12-22 22:51:04', 236, 3, 'okounaruth@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', NULL, NULL),
(59, '2022-10-11', 'Série D', '2020', 'Passable', 'undefined', 'undefined', 'undefined', 'undefined', 'Images/1665500547734.jpg', 'Images/1665500547837.pdf', 'Images/1665500548276.pdf', 'Inapte', 'Images/1665500548854.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-10-11 15:02:29', '2022-12-22 22:03:08', 99, 2, 'pharecessandone@gmail.com', 'Masculin', 'Medecine', 'Sénégalaise', 'accepter', NULL, NULL),
(60, '2022-10-11', 'S', '2020', 'Assez Bien', 'Lycée LLYES', 'undefined', 'undefined', 'undefined', 'Images/1665502980049.jpg', 'Images/1665502980123.pdf', 'Images/1665502980745.pdf', 'Inapte', 'Images/1665502981468.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-10-11 15:43:01', '2022-12-22 22:51:18', 237, 2, 'bakadou98@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', NULL, NULL),
(61, '2022-10-11', 'Série D', '2020', 'Passable', 'Lycée GOBONGO', 'undefined', 'undefined', 'undefined', 'Images/1665503913552.jpg', 'Images/1665503913555.pdf', 'Images/1665503914094.pdf', 'Inapte', 'Images/1665503914598.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-10-11 15:58:35', '2022-12-22 22:03:49', 43, 2, 'dieubenihonnet733@gmail.com', 'Masculin', 'Medecine', 'Sénégalaise', 'accepter', NULL, NULL),
(62, '2022-10-11', 'Série D', '2019', 'undefined', 'Lycée Methodiste de Cocody', 'Saint -Christopher IBA MAR DIOP', '2020-2021', 'undefined', 'Images/1665506452170.jpg', 'Images/1665506452262.pdf', 'Images/1665506452630.pdf', 'Inapte', 'Images/1665506454276.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-11 16:40:54', '2022-12-22 22:56:21', 238, 3, 'moyaemmakouadio@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', NULL, NULL),
(63, '2022-10-12', 'Série D', '2019', 'Passable', 'Etablissement Anne Marie Javouhey', 'undefined', 'undefined', 'undefined', 'Images/1665569149556.jpg', 'Images/1665569149631.pdf', 'Images/1665569150161.pdf', 'Inapte', 'Images/1665569150674.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-10-12 10:05:50', '2022-12-22 22:52:14', 239, 2, 'mavdieuleveut3@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(64, '2022-10-12', 'Série D', '2020', 'Passable', 'Lycée de MIKOLONGO', 'undefined', 'undefined', 'undefined', 'Images/1665569747373.jpg', 'Images/1665569747473.pdf', 'Images/1665569747949.pdf', 'Inapte', 'Images/1665569748464.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-10-12 10:15:49', '2022-12-22 22:53:42', 187, 2, 'Xavierambiya@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(65, '2022-10-12', 'Série C', '2018', 'undefined', 'Lycée National Léon MBA', 'undefined', 'undefined', 'undefined', 'Images/1665572581560.jpg', 'Images/1665572581753.pdf', 'Images/1665572582217.pdf', 'Inapte', 'Images/1665572582649.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-12 11:03:02', '2022-12-22 22:53:59', 240, 3, 'feenynoelmeye@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(66, '2022-10-12', 'Série D', '2020', 'Assez Bien', 'Lycée privé de Nzeng-Ayong Fdt Mbele', 'undefined', 'undefined', 'undefined', 'Images/1665573426268.jpg', 'Images/1665573426357.pdf', 'Images/1665573427986.pdf', 'Inapte', 'Images/1665573428320.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-10-12 11:17:08', '2022-12-22 22:04:38', 241, 2, 'koukidymaurel@gmail.com', 'Masculin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(67, '2022-10-12', 'Série D', '2019', 'Passable', 'Lycée classique et moderne de Garoua', 'Université de Ngaoundere', '2019-2020', 'undefined', 'Images/1665575553002.jpg', 'Images/1665575553097.pdf', 'Images/1665575553540.pdf', 'Inapte', 'Images/1665575553892.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-12 11:52:34', '2022-12-22 22:54:26', 93, 3, 'mouminiraissa7@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(68, '2022-10-12', 'S', '2018', 'Passable', 'Lyccée de Djibouti', 'undefined', '2015-2018', 'undefined', 'Images/1665582294307.pdf', 'Images/1665582294519.pdf', 'Images/1665582295645.pdf', 'undefined', 'Images/1665582297594.pdf', '2022-2023', 'FAYE Mame Diene', 'Pharmacie/Licence 1', 'VALIDER', '2022-10-12 13:44:58', '2022-12-22 22:04:01', 242, 4, 'charmarke.13@gmail.com', 'Masculin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(69, '2022-10-13', 'Série D', '2020', 'Passable', 'Collège  Privé Paul VALERY', 'undefined', 'undefined', 'undefined', 'Images/1665656311007.jpg', 'Images/1665656311097.pdf', 'Images/1665656311582.pdf', 'Inapte', 'Images/1665656311884.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-13 10:18:32', '2022-12-22 22:47:58', 243, 3, 'jilcaa7@icloud.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(70, '2022-10-13', 'S2', '2022', 'Passable', 'Lycée Blaise Diagne', 'undefined', '2020-2022', 'undefined', 'Images/1665656535658.pdf', 'Images/1665656535876.pdf', 'Images/1665656536715.pdf', 'undefined', 'Images/1665656537567.pdf', '2022-2023', 'FAYE Mame Diene', 'Medecine/License 1', 'VALIDER', '2022-10-13 10:22:18', '2022-12-22 22:05:12', 213, 1, 'ousmane.manediallo@gmail.com', 'Masculin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(71, '2022-10-13', 'Série D', '2020', 'Passable', 'Lycée Paul INDJENDJET GONDJOUT', 'undefined', 'undefined', 'undefined', 'Images/1665657071012.jpg', 'Images/1665657071098.pdf', 'Images/1665657071536.pdf', 'Inapte', 'Images/1665657071829.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-10-13 10:31:12', '2022-12-22 22:05:55', 244, 2, 'fredndouna9@gmail.com', 'Masculin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(72, '2022-10-13', 'Série D', '2019', 'Passable', 'Collège et lycée Sainte Marie', 'undefined', 'undefined', 'undefined', 'Images/1665659414356.jpg', 'Images/1665659414448.pdf', 'Images/1665659414951.pdf', 'Inapte', 'Images/1665659415410.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-13 11:10:15', '2022-12-22 22:06:50', 245, 3, 'livernaudparker@gmail.com', 'Masculin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(73, '2022-10-13', 'Série D', '2020', 'Passable', 'Groupe Scolaire ATLAS', 'undefined', 'undefined', 'undefined', 'Images/1665660612429.jpg', 'Images/1665660612537.pdf', 'Images/1665660612924.pdf', 'Inapte', 'Images/1665660614202.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-10-13 11:30:15', '2022-12-22 22:44:30', 246, 2, 'ngatalahelena@icloud.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(74, '2022-10-13', 'Série D', '2019', 'Passable', 'Collège DELTA', 'undefined', 'undefined', 'undefined', 'Images/1665661442190.jpg', 'Images/1665661442273.pdf', 'Images/1665661443286.pdf', 'Inapte', 'Images/1665661443476.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-13 11:44:03', '2022-12-22 22:44:46', 247, 3, 'julieokita444@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(75, '2022-10-13', 'Série S', '2019', 'undefined', 'Académie de Nantes', 'undefined', 'undefined', 'undefined', 'Images/1665662751989.jpg', 'Images/1665662752079.pdf', 'Images/1665662753201.pdf', 'Inapte', 'Images/1665662754163.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-13 12:05:55', '2022-12-22 22:07:21', 248, 3, 'ahyiyann66@gmail.com', 'Masculin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(76, '2022-10-13', 'Série D', '2019', 'Bien', 'Collège catholique Ste Thérèse de l\'enfant de Jésus', 'undefined', 'undefined', 'undefined', 'Images/1665667206791.jpg', 'Images/1665667206890.pdf', 'Images/1665667207304.pdf', 'Inapte', 'Images/1665667208666.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-13 13:20:09', '2022-12-22 22:07:57', 249, 3, 'ronaldaitchedji@gmail.com', 'Masculin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(77, '2022-10-13', 'Série D', '2020', 'Passable', 'Institut Altogovéen d\'enseignement secondaire', 'undefined', 'undefined', 'undefined', 'Images/1665667992079.jpg', 'Images/1665667992179.pdf', 'Images/1665667992828.pdf', 'Inapte', 'Images/1665667993208.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-10-13 13:33:13', '2022-12-22 22:08:47', 183, 2, 'barneyatsougou13@gmail.com', 'Masculin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(78, '2022-10-13', 'Série D', '2019', 'Passable', 'Lycée Paul INDJENDJET GONDJOUT', 'undefined', 'undefined', 'undefined', 'Images/1665668994914.jpg', 'Images/1665668995000.pdf', 'Images/1665668995681.pdf', 'Inapte', 'Images/1665668996276.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-10-13 13:49:56', '2022-12-22 22:45:03', 250, 2, 'souliadelwami@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(79, '2022-10-13', 'Série D', '2020', 'Passable', 'Lycée Monseigneur BESSIEUX', 'undefined', 'undefined', 'undefined', 'Images/1665674284823.jpg', 'Images/1665674284900.pdf', 'Images/1665674285383.pdf', 'Inapte', 'Images/1665674285935.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-13 15:18:06', '2022-12-22 22:33:53', 86, 3, 'orlanelovael2016@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(80, '2022-10-13', 'S2', '2020', 'Passable', 'Cours Sacré Coeur', 'undefined', 'undefined', 'undefined', 'Images/1665676177753.jpg', 'Images/1665676177836.pdf', 'Images/1665676178412.pdf', 'Inapte', 'Images/1665676179173.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-13 15:49:39', '2022-12-22 22:28:51', 251, 3, 'christelle122001@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(81, '2022-10-13', 'S2', '2020', 'Passable', 'Saldia', 'undefined', 'undefined', 'undefined', 'Images/1665677816840.jpg', 'Images/1665677816940.pdf', 'Images/1665677817326.pdf', 'Inapte', 'Images/1665677818605.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-13 16:16:59', '2022-12-22 22:27:39', 252, 3, 'bintou@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(82, '2022-10-13', 'S2', '2020', 'Passable', 'undefined', 'undefined', 'undefined', 'undefined', 'Images/1665682488932.jpg', 'Images/1665682488987.pdf', 'Images/1665682489381.pdf', 'Inapte', 'Images/1665682489840.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-13 17:34:50', '2022-12-22 22:10:08', 190, 3, 'elhadjmory03@gmail.com', 'Masculin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(83, '2022-10-14', 'S2', '2015', 'Passable', 'Complexe scolaire la SAGESSE', 'undefined', 'undefined', 'undefined', 'Images/1665744647166.jpg', 'Images/1665744647270.pdf', 'Images/1665744647925.pdf', 'Inapte', 'Images/1665744648401.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-14 10:50:49', '2022-12-22 22:11:35', 253, 3, 'alassanej783@gmail.com', 'Masculin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(84, '2022-10-14', 'Série S', '2018', 'Passable', 'Lycée Blaise Pascal', 'EUROMED', '2019-2020', 'undefined', 'Images/1665745991865.jpg', 'Images/1665745991961.pdf', 'Images/1665745992437.pdf', 'Inapte', 'Images/1665745992959.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-10-14 11:13:13', '2022-12-22 22:27:53', 254, 2, 'cherievonlote@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(85, '2022-10-14', 'Série D', '2016', 'Passable', 'Lycée d\' excellence de Libreville', 'undefined', 'undefined', 'undefined', 'Images/1665749491947.jpg', 'Images/1665749492031.pdf', 'Images/1665749492499.pdf', 'Inapte', 'Images/1665749492974.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Master1', 'VALIDER', '2022-10-14 12:11:33', '2022-12-22 22:10:48', 255, 8, 'romeoagondjo@gmail.com', 'Masculin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(86, '2022-10-14', 'S2', '2019', 'undefined', 'Collège Africain Sport  Etudes', 'undefined', 'undefined', 'undefined', 'Images/1665750270883.jpg', 'Images/1665750270976.pdf', 'Images/1665750271341.pdf', 'Inapte', 'Images/1665750271817.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-14 12:24:31', '2022-12-22 22:12:26', 75, 3, 'karimdiop99@gmail.com', 'Masculin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(87, '2022-10-14', 'Série C', '2018', 'Passable', 'Lycée de NSAM EFOULAN', 'undefined', 'undefined', 'undefined', 'Images/1665752072053.jpg', 'Images/1665752072146.pdf', 'Images/1665752072549.pdf', 'Inapte', 'Images/1665752073134.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-14 12:54:34', '2022-12-22 22:26:45', 256, 3, 'madjikiorlane@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(88, '2022-10-14', 'Série D', '2018', 'Passable', 'C.S La ROSE', 'undefined', 'undefined', 'undefined', 'Images/1665752996331.jpg', 'Images/1665752996416.pdf', 'Images/1665752996809.pdf', 'Inapte', 'Images/1665752997206.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-14 13:09:57', '2022-12-22 22:26:34', 77, 3, 'athenambambi@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(89, '2022-10-14', 'Série D', '2017', 'Assez Bien', 'Lycée René DESCARTES', 'Faculté des Sciences de la Santé ', '2018-2019', 'undefined', 'Images/1665759599317.jpg', 'Images/1665759599416.pdf', 'Images/1665759599756.pdf', 'Inapte', 'Images/1665759599984.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-14 15:00:00', '2022-12-22 22:24:59', 257, 3, 'moboulaalicia33@gmail.com', 'null', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(90, '2022-10-14', 'S2', '2019', 'Assez Bien', 'undefined', 'undefined', 'undefined', 'undefined', 'Images/1665760728935.jpg', 'Images/1665760729026.pdf', 'Images/1665760729465.pdf', 'Inapte', 'Images/1665760730032.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Master1', 'VALIDER', '2022-10-14 15:18:51', '2022-12-22 22:26:21', 79, 8, 'ndeyekhadyndong54@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(91, '2022-10-14', 'Série D', '2014', 'undefined', 'Anne Marie JAVOUHEY', 'Faculté des Sciences de la Santé ', '2014-2018', 'undefined', 'Images/1665762659210.jpg', 'Images/1665762659303.pdf', 'Images/1665762659724.pdf', 'Inapte', 'Images/1665762660268.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-14 15:51:01', '2022-12-22 22:26:06', 258, 3, 'lmonkala@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(92, '2022-10-14', 'S2', '2019', 'Passable', 'Lycée Mboro', '', 'undefined', 'undefined', 'Images/1665763633991.jpg', 'Images/1665763634087.pdf', 'Images/1665763634654.pdf', 'Inapte', 'Images/1665763635122.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Master1', 'VALIDER', '2022-10-14 16:07:15', '2022-12-22 22:25:40', 70, 8, 'mamndack07@outlook.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(93, '2022-10-14', 'S2', '2019', 'Passable', 'Lycée John F. KENNEDY', 'undefined', 'undefined', 'undefined', 'Images/1665764913703.jpg', 'Images/1665764913804.pdf', 'Images/1665764914398.pdf', 'Inapte', 'Images/1665764914856.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Master1', 'VALIDER', '2022-10-14 16:28:35', '2022-12-22 22:25:26', 81, 8, 'vivianedieme00@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(94, '2022-10-14', 'Série C', '2018', 'Passable', 'Lycée d\'Application de l\'ENS', 'undefined', 'undefined', 'undefined', 'Images/1665766544760.jpg', 'Images/1665766544863.pdf', 'Images/1665766545366.pdf', 'Inapte', 'Images/1665766546333.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-14 16:55:47', '2022-12-22 22:13:50', 84, 3, 'amidaomarius15@gmail.com', 'Masculin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(95, '2022-10-17', 'Série D', '2019', 'Passable', 'Lycée Léon MBA', 'undefined', 'undefined', 'undefined', 'Images/1666020831705.jpg', 'Images/1666020831762.pdf', 'Images/1666020832300.pdf', 'Inapte', 'Images/1666020832669.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-17 15:33:52', '2022-12-22 22:14:27', 260, 3, 'bedjejeanmarc@gmail.com', 'Masculin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(96, '2022-10-17', 'Baccalauréat série D', '2019', 'Mention : passable', 'lycee paul indjedjet gondjout  libreville gabon', 'Université des sciences de la sante de libreville  ', '2019-2020', 'undefined', 'Images/1666021968092.pdf', 'Images/1666021968368.jpg', 'Images/1666021968673.jpg', NULL, 'Images/1666021969402.jpg', '2022-2023', 'MOUNANGA BISSIELOU Paul yohan', 'Medecine/License 1', 'VALIDER', '2022-10-17 15:52:49', '2022-12-22 22:16:36', 56, 1, 'paulyohanm@gmail.com', 'Masculin', 'Medecine', 'Gabonaise', 'accepter', 'Médecine', NULL),
(97, '2022-10-17', 'Série C', '2015', 'Passable', 'Lycée de L\'AENS', 'undefined', 'undefined', 'undefined', 'Images/1666025672691.jpg', 'Images/1666025672783.pdf', 'Images/1666025673368.pdf', 'Inapte', 'Images/1666025673935.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Licence 3', 'VALIDER', '2022-10-17 16:54:34', '2022-12-22 22:17:09', 261, 3, 'mltoungouyasset@gmail.com', 'Masculin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(98, '2022-10-17', 'Série D', '2016', 'Passable', 'Lycée et College Saint-Gabriel', 'undefined', 'undefined', 'undefined', 'Images/1666026846667.jpg', 'Images/1666026846753.pdf', 'Images/1666026847749.pdf', 'Inapte', 'Images/1666026848372.pdf', '2021-2022', 'Marie GAYE', 'Médecine/Licence 3', 'archiver', '2022-10-17 17:14:08', '2022-10-18 09:35:18', 262, 3, 'anguekogeorges@gmail.com', 'Masculin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(99, '2022-10-18', 'Série D', '2014', 'Passable', 'undefined', 'undefined', 'undefined', 'undefined', 'Images/1666091482389.jpg', 'Images/1666091482499.pdf', 'Images/1666091483082.pdf', 'Inapte', 'Images/1666091483974.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Master2', 'VALIDER', '2022-10-18 11:11:24', '2022-12-22 22:25:12', 191, 9, 'leloedjo@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(100, '2022-10-18', 'S2', '2018', 'Assez Bien', 'Léopold Sédar Senghor', 'undefined', 'undefined', 'undefined', 'Images/1666091799420.jpg', 'Images/1666091799503.pdf', 'Images/1666091799987.pdf', 'Inapte', 'Images/1666091800537.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Master2', 'VALIDER', '2022-10-18 11:16:42', '2022-12-22 22:29:14', 71, 9, 'habibatoullahsow1306@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(101, '2022-10-18', 'Série D', '2018', 'Passable', 'undefined', 'Université Kofi Annan de Guinée', '2019-2021', 'undefined', 'Images/1666093244779.jpg', 'Images/1666093244855.pdf', 'Images/1666093245346.pdf', 'Inapte', 'Images/1666093245905.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Master2', 'VALIDER', '2022-10-18 11:40:46', '2022-12-22 22:18:46', 263, 9, 'zjervisjunior@gmail.com', 'Masculin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(102, '2022-10-18', 'Série D', '2014', 'Passable', 'Lycée de LOGPOM II', 'undefined', 'undefined', 'undefined', 'Images/1666098187079.jpg', 'Images/1666098187172.pdf', 'Images/1666098187628.pdf', 'Inapte', 'Images/1666098188169.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Master2', 'VALIDER', '2022-10-18 13:03:08', '2022-12-22 22:38:23', 264, 9, 'ngamseuingrid@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(103, '2022-10-18', 'Série D', '2013', 'Passable', 'Lycée La Révolution', 'undefined', 'undefined', 'undefined', 'Images/1666105938931.jpg', 'Images/1666105939026.pdf', 'Images/1666105939382.pdf', 'Inapte', 'Images/1666105940024.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Master2', 'VALIDER', '2022-10-18 15:12:20', '2022-12-22 22:19:46', 265, 9, 'marrionoboua@gmail.com', 'Masculin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(104, '2022-10-19', 'Série D', '2016', 'Passable', 'PIE XII', 'Université Amadou Hampâté BA', '2017-2019', 'undefined', 'Images/1666174594863.jpg', 'Images/1666174594963.pdf', 'Images/1666174595588.pdf', 'Inapte', 'Images/1666174596333.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Master2', 'VALIDER', '2022-10-19 10:16:37', '2022-12-22 22:38:42', 266, 9, 'negremagou.m@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(105, '2022-10-19', 'Série D', '2014', 'Assez Bien', 'Lycée d\' excellence de Libreville', 'NIZHNY NOVGOROD STATE MEDICAL ACADEMY ', '2016 - 2017', 'undefined', 'Images/1666175790059.jpg', 'Images/1666175790166.jpg', 'Images/1666175790282.pdf', 'Inapte', 'Images/1666175790630.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Master2', 'VALIDER', '2022-10-19 10:36:31', '2022-12-22 22:30:51', 267, 9, 'jephyndoumou@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(106, '2022-10-19', 'D', '2022', 'Passable', 'Lycée Paul Emane EYEGUE', 'undefined', '2019-2022', 'undefined', 'Images/1666175985016.jpg', 'Images/1666175985107.pdf', 'Images/1666175987413.pdf', 'undefined', 'Images/1666175988674.pdf', '2022-2023', 'FAYE Mame Diene', 'Medecine/License 1', 'VALIDER', '2022-10-19 10:39:50', '2022-12-22 22:31:04', 268, 1, 'naomiemintsa91@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', 'undefined', NULL),
(107, '2022-10-19', 'undefined', '2018', 'Passable', 'Clef  de la Réussite', 'undefined', '2017-2018', 'undefined', 'Images/1666177654514.pdf', 'Images/1666177654686.pdf', 'Images/1666177655499.pdf', 'undefined', 'Images/1666177656085.pdf', '2022-2023', 'FAYE Mame Diene', 'Medecine/License 1', 'VALIDER', '2022-10-19 11:07:37', '2022-12-22 22:21:49', 269, 1, 'kingkarldjimadja@gmail.com', 'Masculin', 'Medecine', 'Sénégalaise', 'accepter', 'undefined', NULL),
(108, '2022-10-19', 'Série D', '2016', 'Passable', 'Institut Immaculée Conception', 'undefined', 'undefined', 'undefined', 'Images/1666179597680.jpg', 'Images/1666179597773.pdf', 'Images/1666179598339.pdf', 'Inapte', 'Images/1666179599639.pdf', '2021-2022', 'Marie GAYE', 'Médecine/Master1', 'VALIDER', '2022-10-19 11:40:02', '2022-12-22 22:31:17', 267, 8, 'jephyndoumou@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(109, '2022-10-19', 'D', '2008', 'Passable', 'Colège BESSIEUX', 'undefined', 'undefined', 'undefined', 'Images/1666190145109.jpg', 'Images/1666190145285.pdf', 'Images/1666190146437.pdf', 'undefined', 'Images/1666190146692.pdf', '2022-2023', 'FAYE Mame Diene', 'Pharmacie/Master1', 'VALIDER', '2022-10-19 14:35:47', '2022-12-22 22:22:33', 271, 13, 'karlognalaghamba684@gmail.com', 'Masculin', 'Pharmacie', 'Sénégalaise', 'accepter', 'undefined', NULL),
(110, '2022-10-19', 'DJIDDA OUMAR Haoua', '2015', 'Assez Bien', 'undefined', 'undefined', 'undefined', 'undefined', 'Images/1666194736836.jpg', 'Images/1666194736937.pdf', 'Images/1666194737495.pdf', 'Apte', 'Images/1666194739292.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Master1', 'VALIDER', '2022-10-19 15:52:20', '2022-12-22 22:31:33', 272, 8, 'djiddaoumarhawa@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(111, '2022-10-19', 'Série D', '2014', 'Passable', 'Lycée Thomas Sankara', 'undefined', 'undefined', 'undefined', 'Images/1666195770071.jpg', 'Images/1666195770167.pdf', 'Images/1666195770652.pdf', 'Inapte', 'Images/1666195771033.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Master1', 'VALIDER', '2022-10-19 16:09:31', '2022-12-22 22:34:16', 273, 8, 'belfridek@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(112, '2022-10-19', 'Série D', '2016', 'undefined', 'Institut Immaculée Conception', 'undefined', 'undefined', 'undefined', 'Images/1666196441539.jpg', 'Images/1666196441633.pdf', 'Images/1666196442191.pdf', 'Inapte', 'Images/1666196443308.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Master2', 'VALIDER', '2022-10-19 16:20:44', '2022-12-22 22:34:36', 270, 9, 'sylviane.koumba@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(113, '2022-10-20', 'C', '2022', 'Passable', 'Lycée Agrace', 'undefined', '2019-2022', 'undefined', 'Images/1666271108825.jpg', 'Images/1666271111692.pdf', 'Images/1666271111965.pdf', 'undefined', 'Images/1666271112283.pdf', '2022-2023', 'FAYE Mame Diene', 'Medecine/License 1', 'VALIDER', '2022-10-20 13:05:12', '2022-12-22 22:34:51', 274, 1, 'penielleexaucees@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(114, '2022-10-21', 'D', '2020', 'Passable', 'Lycée Barthélimi Bouganda', 'undefined', 'undefined', 'undefined', 'Images/1666349764932.jpg', 'Images/1666349765029.pdf', 'Images/1666349769077.pdf', 'undefined', 'Images/1666349769510.pdf', '2022-2023', 'FAYE Mame Diene', 'Medecine/License 1', 'VALIDER', '2022-10-21 10:56:10', '2022-12-22 22:30:17', 276, 1, 'beniciajessicanamzoka@gmail.com', 'null', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL);
INSERT INTO `admissions` (`id`, `Date_admission`, `Baccalaureat_serie`, `Annee_obtention`, `Mention`, `Lycee_college`, `Facute_institut`, `Periode`, `Raison`, `Photo`, `Extrait_naissance`, `Diplome`, `Certificat_medical`, `Releve_notes`, `Cycle`, `utilisateur`, `filiere_etude`, `Statut`, `createdAt`, `updatedAt`, `userId`, `classprofId`, `email`, `sexe`, `filiere`, `nationalite`, `condition_utilisation`, `filiere_demande`, `niveau_etude_demande`) VALUES
(115, '2022-10-24', 'D', '2019', 'Passable', 'Colége Catholique Saint pierre et Paul  ', 'undefined', '2017-2019', 'undefined', 'Images/1666604119779.jpg', 'Images/1666604120790.pdf', 'Images/1666604121059.pdf', 'undefined', 'Images/1666604123017.pdf', '2022-2023', 'FAYE Mame Diene', 'Pharmacie/Licence 1', 'VALIDER', '2022-10-24 09:35:23', '2022-12-22 22:23:35', 277, 4, 'lecadoutheodoraahou@gmail.com', 'null', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(116, '2022-10-24', 'D', '2022', 'Passable', 'Lycée  Irman', 'undefined', '2020-2022', 'undefined', 'Images/1666608063590.pdf', 'Images/1666608063906.pdf', 'Images/1666608065520.pdf', 'undefined', 'Images/1666608066598.pdf', '2022-2023', 'FAYE Mame Diene', 'Medecine/License 1', 'VALIDER', '2022-10-24 10:41:07', '2022-12-22 22:35:41', 278, 1, 'annekereneliora@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(117, '2022-10-24', 'D', '2022', 'Passable', 'Lycée  Ruissiane GALAXI', 'undefined', '2021-2022', 'undefined', 'Images/1666610573162.jpg', 'Images/1666610576248.pdf', 'Images/1666610576797.pdf', 'undefined', 'Images/1666610577715.pdf', '2022-2023', 'FAYE Mame Diene', 'Medecine/License 1', 'VALIDER', '2022-10-24 11:22:57', '2022-12-22 22:42:41', 279, 1, 'aichajumat2003@gmail.com', 'null', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(118, '2022-10-26', 'Série D', '2017', 'Passable', 'Lycée National Léon MBA ', 'undefined', 'undefined', 'undefined', 'Images/1666784167835.jpg', 'Images/1666784167920.pdf', 'Images/1666784168312.pdf', 'Inapte', 'Images/1666784168644.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Doctorat1', 'VALIDER', '2022-10-26 11:36:08', '2022-12-22 22:42:00', 280, 10, 'saramounienda@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(119, '2022-10-26', 'S2', '2016', 'Passable', 'undefined', 'undefined', 'undefined', 'undefined', 'Images/1666786310312.jpg', 'Images/1666786310401.pdf', 'Images/1666786311235.pdf', 'Inapte', 'Images/1666786311496.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Master2', 'VALIDER', '2022-10-26 12:11:51', '2022-12-22 22:24:48', 281, 9, 'ismailmoulaye@gmail.com', 'Masculin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(120, '2022-10-26', 'S2', '2017', 'Assez Bien', 'Groupe Scolaire les pédagogues', 'undefined', 'undefined', 'undefined', 'Images/1666787900568.jpg', 'Images/1666787900668.pdf', 'Images/1666787901085.pdf', 'Inapte', 'Images/1666787901597.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Doctorat1', 'VALIDER', '2022-10-26 12:38:21', '2022-12-22 22:45:30', 282, 10, 'aminatacissegassama@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(121, '2022-10-26', 'D', '2017', 'Passable', 'Lycée Joseph Kizerbo', 'EUROMED', '2017-2018', 'undefined', 'Images/1666788894334.jpg', 'Images/1666788894428.pdf', 'Images/1666788894764.pdf', 'Inapte', 'Images/1666788895257.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Doctorat1', 'VALIDER', '2022-10-26 12:54:55', '2022-12-22 22:45:49', 11, 10, 'jeasminesom@yahoo.fr', 'null', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(122, '2022-10-26', 'Série D', 'undefined', 'Passable', 'Lycée Privé de Nzeng-Ayong Fdt. MBELE', 'Fac de Médeceine Libreville', '2015-2018', 'undefined', 'Images/1666791946140.jpg', 'Images/1666791946227.pdf', 'Images/1666791946585.pdf', 'Inapte', 'Images/1666791946965.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Doctorat1', 'VALIDER', '2022-10-26 13:45:47', '2022-12-22 22:25:29', 8, 10, 'danielferrandm484@gmail.com', 'null', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(123, '2022-10-26', 'Série D', '2016', 'Passable', 'C S Privé AMOUR DEI', 'undefined', 'undefined', 'undefined', 'Images/1666793642924.jpg', 'Images/1666793643021.pdf', 'Images/1666793643517.pdf', 'Inapte', 'Images/1666793643707.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Doctorat1', 'VALIDER', '2022-10-26 14:14:03', '2022-12-22 22:46:05', 283, 10, 'olivia.ikia@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(124, '2022-10-26', 'Série D', '2014', 'Passable', 'René DESCARTES', 'undefined', 'undefined', 'undefined', 'Images/1666794448309.jpg', 'Images/1666794448403.pdf', 'Images/1666794448980.pdf', 'Inapte', 'Images/1666794449161.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Doctorat1', 'VALIDER', '2022-10-26 14:27:29', '2022-12-22 22:26:08', 6, 10, 'o.mayoulou@gmail.com', 'null', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(125, '2022-10-27', 'S2', '2015', 'Passable', 'Lycée Maristes', 'Université Amadou Hampâté BA', '2016-2017', 'undefined', 'Images/1666863730846.jpg', 'Images/1666863730939.pdf', 'Images/1666863731413.pdf', 'Inapte', 'Images/1666863731660.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Doctorat2', 'VALIDER', '2022-10-27 09:42:12', '2022-12-22 22:46:22', 284, 11, 'adjilamareme96@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(126, '2022-10-27', 'S2', '2016', 'Passable', 'Collège EDUC AZUR', 'undefined', 'undefined', 'undefined', 'Images/1666868291315.jpg', 'Images/1666868291405.pdf', 'Images/1666868292174.pdf', 'Inapte', 'Images/1666868292496.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Doctorat2', 'VALIDER', '2022-10-27 10:58:12', '2022-12-22 22:59:26', 285, 11, 'mariemendiaye04@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(127, '2022-10-28', 'S', '2016', 'undefined', 'undefined', 'EUROMED', '2016-2020', 'undefined', 'Images/1666968855627.jpg', 'Images/1666968855719.pdf', 'Images/1666968856147.pdf', 'Inapte', 'Images/1666968856537.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Doctorat2', 'VALIDER', '2022-10-28 14:54:16', '2022-12-22 22:27:20', 96, 11, 'mahdititan75@gmail.com', 'Masculin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(128, '2022-10-28', 'Série D', '2015', 'Assez Bien', 'CEMINACE', 'undefined', 'undefined', 'undefined', 'Images/1666969985665.jpg', 'Images/1666969985752.pdf', 'Images/1666969986092.pdf', 'Inapte', 'Images/1666969986246.pdf', '2022-2023', 'Marie GAYE', 'Médecine/Doctorat2', 'VALIDER', '2022-10-28 15:13:06', '2022-12-22 22:46:39', 221, 11, 'daliabothi04@gmail.com', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(129, '2022-10-28', 'Série D', '2011', 'Passable', 'Lycée Paul INDJENDJET GONDJOUT', 'Faculté des Sciences de la Santé Libreville', '2011-2014', 'undefined', 'Images/1666970974601.jpg', 'Images/1666970974701.pdf', 'Images/1666970975070.pdf', 'Inapte', 'Images/1666970975230.pdf', '2021-2022', 'Marie GAYE', 'Médecine/Doctorat1', 'VALIDER', '2022-10-28 15:29:35', '2022-12-22 22:29:07', 95, 10, 'jeannoelussd@gmail.com', 'Masculin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(130, '2022-10-29', 'D', '2022', 'Passable', 'Lycée Groupe  scolaire Saint Amour de Marchalle', 'undefined', '2020 2022', 'undefined', 'Images/1667039069176.jpg', 'Images/1667039069323.pdf', 'Images/1667039071223.pdf', 'undefined', 'Images/1667039071634.pdf', '2022-2023', 'FAYE Mame Diene', 'Medecine/License 1', 'VALIDER', '2022-10-29 10:24:31', '2022-12-22 22:46:56', 286, 1, 'jeanciaondiala@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(131, '2022-10-31', 'Série D', '2018', 'Passable', 'El Maarij', 'undefined', 'undefined', 'undefined', 'Images/1667217604817.jpg', 'Images/1667217604902.pdf', 'Images/1667217605210.pdf', 'Inapte', 'Images/1667217606647.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence 1', 'VALIDER', '2022-10-31 12:00:06', '2022-12-22 22:30:12', 287, 4, 'ismaildiami18@gmail.com', 'Masculin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(132, '2022-10-31', 'Série D', '2021', 'Passable', 'CEMINACE', 'undefined', 'undefined', 'undefined', 'Images/1667218490389.jpg', 'Images/1667218490488.pdf', 'Images/1667218490917.pdf', 'Inapte', 'Images/1667218491059.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence2', 'VALIDER', '2022-10-31 12:14:51', '2022-12-22 22:22:56', 289, 5, 'guisma@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(133, '2022-10-31', 'D', '2018', 'Passable', 'Lycée Michal Goban ', 'undefined', '2016-2018', 'undefined', 'Images/1667218970401.jpg', 'Images/1667218972097.pdf', 'Images/1667218972246.pdf', 'undefined', 'Images/1667218972390.pdf', '2022-2023', 'FAYE Mame Diene', 'Pharmacie/Licence2', 'VALIDER', '2022-10-31 12:22:52', '2022-12-22 22:22:41', 288, 5, 'exauceeboueya9@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(134, '2022-10-31', 'S2', '2021', 'undefined', 'GSEK', 'undefined', 'undefined', 'undefined', 'Images/1667219546179.jpg', 'Images/1667219546267.pdf', 'Images/1667219546609.pdf', 'Inapte', 'Images/1667219547020.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence2', 'VALIDER', '2022-10-31 12:32:27', '2022-12-22 23:09:53', 290, 5, 'baseydoumamadouanow@gmail.com', 'Masculin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(135, '2022-10-31', 'Série D', '2017', 'undefined', 'Lycée classique ABIDJAN', 'undefined', 'undefined', 'undefined', 'Images/1667220532604.jpg', 'Images/1667220532688.pdf', 'Images/1667220533030.pdf', 'Inapte', 'Images/1667220533473.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence 1', 'VALIDER', '2022-10-31 12:48:53', '2022-12-22 22:21:45', 291, 4, 'agnisanle@icloud.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(136, '2022-10-31', 'Série D', '2021', 'Passable', 'Lycée Mouhamed ARISSANI', 'undefined', 'undefined', 'undefined', 'Images/1667221442479.jpg', 'Images/1667221442571.pdf', 'Images/1667221442769.pdf', 'Inapte', 'Images/1667221442987.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence2', 'VALIDER', '2022-10-31 13:04:03', '2022-12-22 22:21:31', 292, 5, 'lydwinemakele@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(137, '2022-10-31', 'Série D', '2021', 'Assez Bien', 'Collège André Malraux Cocody rRviera', '', 'undefined', 'undefined', 'Images/1667222959321.jpg', 'Images/1667222959414.pdf', 'Images/1667222959804.pdf', 'Inapte', 'Images/1667222960426.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-10-31 13:29:21', '2022-12-22 23:09:28', 293, 2, 'Zaaria324@gmzil.com', 'Masculin', 'Medecine', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(138, '2022-10-31', 'Série D', '2021', 'Passable', 'undefined', 'undefined', 'undefined', 'undefined', 'Images/1667227615706.jpg', 'Images/1667227615783.pdf', 'Images/1667227616519.pdf', 'Inapte', 'Images/1667227617271.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence2', 'VALIDER', '2022-10-31 14:46:57', '2022-12-22 22:21:19', 294, 5, 'kiniclever18@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(139, '2022-10-31', 'Série D', '2020', 'Passable', 'Notre Dame de Quaben', 'undefined', 'undefined', 'undefined', 'Images/1667229313471.jpg', 'Images/1667229313572.pdf', 'Images/1667229313944.pdf', 'Inapte', 'Images/1667229314725.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence 1', 'VALIDER', '2022-10-31 15:15:15', '2022-12-22 22:21:05', 295, 4, 'vedrneclelsea@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(140, '2022-10-31', 'S2', '2021', 'Passable', 'LCBRS', 'undefined', 'undefined', 'undefined', 'Images/1667229977684.pdf', 'Images/1667229980717.pdf', 'Images/1667229981842.pdf', 'Inapte', 'Images/1667229984226.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence2', 'VALIDER', '2022-10-31 15:26:25', '2022-12-22 22:22:29', 20, 5, 'gwladysmarinad@gmail.com', 'null', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(141, '2022-10-31', 'Série D', '2020', 'Passable', 'undefined', 'undefined', 'undefined', 'undefined', 'Images/1667230814771.jpg', 'Images/1667230814855.pdf', 'Images/1667230815273.pdf', 'Inapte', 'Images/1667230816169.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence2', 'VALIDER', '2022-10-31 15:40:16', '2022-12-22 23:10:15', 91, 5, 'ddoloick@gmail.com', 'Masculin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(142, '2022-10-31', 'S2', '2021', 'Passable', 'EPCHK', 'undefined', 'undefined', 'undefined', 'Images/1667231829763.jpg', 'Images/1667231829843.pdf', 'Images/1667231830302.pdf', 'Apte', 'Images/1667231830976.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence2', 'VALIDER', '2022-10-31 15:57:11', '2022-12-22 23:10:38', 22, 5, 'layediawsarr@gmail.com', 'null', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(143, '2022-10-31', 'S', '2017', 'Passable', ' Lycée Jean MERMOZ', 'undefined', 'undefined', 'undefined', 'Images/1667233139121.jpg', 'Images/1667233139214.pdf', 'Images/1667233139710.pdf', 'Inapte', 'Images/1667233140042.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence2', 'VALIDER', '2022-10-31 16:19:00', '2022-12-22 23:17:31', 40, 5, 'momokarakeh19@gmail.com', 'null', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(144, '2022-10-31', 'Série D', '2021', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'Images/1667234814205.jpg', 'Images/1667234814294.pdf', 'Images/1667234814615.pdf', 'undefined', 'Images/1667234814817.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence2', 'VALIDER', '2022-10-31 16:46:54', '2022-12-22 22:20:50', 44, 5, 'cristalyori@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(145, '2022-10-31', 'S2', '2021', 'undefined', 'EPCT', 'undefined', 'undefined', 'undefined', 'Images/1667235452636.jpg', 'Images/1667235452730.pdf', 'Images/1667235453109.pdf', 'Inapte', 'Images/1667235453602.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence2', 'VALIDER', '2022-10-31 16:57:34', '2022-12-22 22:20:34', 27, 5, 'KhadyGadiaga6@gmail.com', 'null', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(146, '2022-10-31', 'Série D', '2021', 'undefined', 'Henry LOPES', 'undefined', 'undefined', 'undefined', 'Images/1667239027238.jpg', 'Images/1667239027318.pdf', 'Images/1667239027645.pdf', 'Inapte', 'Images/1667239027804.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence 1', 'VALIDER', '2022-10-31 17:57:08', '2022-12-22 22:20:13', 46, 4, 'znguesso2023@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(147, '2022-10-31', 'TSE', '2021', 'undefined', 'Lycée Ségou', 'undefined', 'undefined', 'undefined', 'Images/1667239501929.jpg', 'Images/1667239502030.pdf', 'Images/1667239502475.pdf', 'Inapte', 'Images/1667239502807.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence2', 'VALIDER', '2022-10-31 18:05:02', '2022-12-22 23:11:17', 52, 5, 'mohamedsang1234@gmail.com', 'Masculin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(148, '2022-10-31', 'S2', '2021', 'Passable', 'undefined', 'undefined', 'undefined', 'undefined', 'Images/1667240380315.jpg', 'Images/1667240380396.pdf', 'Images/1667240380803.pdf', 'Inapte', 'Images/1667240381698.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence2', 'VALIDER', '2022-10-31 18:19:42', '2022-12-22 22:20:00', 28, 5, '', 'null', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(149, '2022-11-02', 'D', '2021', 'Passable', 'Lycée Anliance Chrétiene', 'undefined', '2019-2021', 'undefined', 'Images/1667388437574.jpg', 'Images/1667388439241.pdf', 'Images/1667388439417.pdf', 'undefined', 'Images/1667388442473.pdf', '2022-2023', 'FAYE Mame Diene', 'Medecine/License 1', 'VALIDER', '2022-11-02 11:27:22', '2022-12-22 23:11:49', 296, 1, 'weindydipombo638@gmail.com', 'Masculin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(150, '2022-11-03', 'Série D', '2021', 'Passable', 'Lycée Paul INDJENDJET GONDJOUT', 'undefined', '', '', 'Images/1667492277711.jpg', 'Images/1667492277817.pdf', 'Images/1667492278192.pdf', 'Inapte', 'Images/1667492278472.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-11-03 16:17:58', '2022-12-22 23:12:18', 299, 2, 'stannnang23@gmail.com', 'Masculin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(151, '2022-11-03', 'Série D', '2021', 'Passable', 'Lycée Victor AUGAGNEUR', 'undefined', '', '', 'Images/1667493850685.jpg', 'Images/1667493850789.pdf', 'Images/1667493851132.pdf', 'Inapte', 'Images/1667493851276.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 1', 'VALIDER', '2022-11-03 16:44:11', '2022-12-22 22:48:24', 300, 1, 'mavoungou@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(152, '2022-11-03', 'Série D', '2021', 'Assez Bien', '', 'undefined', '', '', 'Images/1667497061087.jpg', 'Images/1667497061186.pdf', 'Images/1667497061570.pdf', 'Inapte', 'Images/1667497061732.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-11-03 17:37:42', '2022-12-22 22:48:40', 301, 2, 'hosannamombo@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(153, '2022-11-03', 'Série D', '2021', 'Passable', '', 'undefined', '', '', 'Images/1667499352140.jpg', 'Images/1667499352238.pdf', 'Images/1667499352567.pdf', 'undefined', 'Images/1667499352916.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-11-03 18:15:53', '2022-12-22 22:48:53', 302, 2, 'remadji@gmail.com', 'Masculin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(154, '2022-11-03', 'Série D', '2019', 'Passable', 'CPRED', 'undefined', '', '', 'Images/1667499853798.jpg', 'Images/1667499853892.pdf', 'Images/1667499856120.pdf', 'Inapte', 'Images/1667499857038.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 1', 'VALIDER', '2022-11-03 18:24:17', '2022-12-22 23:17:48', 303, 1, 'williamsnikiniki@gmail.com', 'Masculin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(155, '2022-11-04', 'D', '2022', 'Passable', 'Lycée aint thérése de l\'enfant de Jessus', 'undefined', '2020-2022', '', 'Images/1667554680455.jpg', 'Images/1667554680637.pdf', 'Images/1667554681513.pdf', 'undefined', 'Images/1667554683886.pdf', '2022-2023', 'FAYE Mame Diene', 'Pharmacie/Licence 1', 'VALIDER', '2022-11-04 09:38:04', '2022-12-22 22:19:46', 220, 4, 'lionel.tonoukouin@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(156, '2022-11-04', 'S', '2019', 'Passable', 'lycée Cours SAINTE MARIE DE ANNE', 'undefined', '20172019', '', 'Images/1667564427623.pdf', 'Images/1667564427798.pdf', 'Images/1667564428378.pdf', 'undefined', 'Images/1667564428566.pdf', '', 'FAYE Mame Diene', NULL, 'archiver', '2022-11-04 12:20:28', '2022-11-04 12:35:56', 203, NULL, 'malickfassa73@gmail.com', 'Masculin', NULL, 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(157, '2022-11-04', 'Série D', '2017', 'Passable', 'Lycée d\' excellence de Franceville', 'undefined', '', '', 'Images/1667567118454.jpg', 'Images/1667567118559.pdf', 'Images/1667567119957.pdf', 'Inapte', 'Images/1667567120720.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-11-04 13:05:20', '2022-12-22 22:57:33', 184, 2, 'waguemaryam@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(158, '2022-11-04', 'Série D', '2020', 'Passable', 'Lycée Paul INDJENDJET GONDJOUT', 'undefined', '', '', 'Images/1667567723146.jpg', 'Images/1667567723236.pdf', 'Images/1667567723593.pdf', 'Inapte', 'Images/1667567723941.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-11-04 13:15:24', '2022-12-22 22:37:51', 39, 2, 'j.odendo2003@gmail.com', 'null', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(159, '2022-11-04', 'Série D', '2021', 'Passable', 'Lycée Paul INDJENDJET GONDJOUT', 'undefined', '', '', 'Images/1667568994481.jpg', 'Images/1667568994580.pdf', 'Images/1667568994970.pdf', 'Inapte', 'Images/1667568995156.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-11-04 13:36:35', '2022-11-07 08:23:21', 36, 2, 'mauricemamfoumbi504@gmail.com', 'null', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(160, '2022-11-04', 'Série D', '2019', 'Passable', 'Lycée Paul INDJENDJET GONDJOUT', 'undefined', '', '', 'Images/1667570597514.jpg', 'Images/1667570597614.pdf', 'Images/1667570598073.pdf', 'Inapte', 'Images/1667570598363.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-11-04 14:03:18', '2022-11-07 08:26:32', 56, 2, 'paulyohanm@gmail.com', 'Masculin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(161, '2022-11-04', 'Série D', '2021', 'Passable', '', 'undefined', '', '', 'Images/1667571269114.jpg', 'Images/1667571269209.pdf', 'Images/1667571269663.pdf', 'Inapte', 'Images/1667571269902.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-11-04 14:14:30', '2022-12-22 22:57:50', 37, 2, 'claudymomo9@gmail.com', 'null', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(162, '2022-11-04', 'S2', '2021', 'Passable', 'Lycée Birago DIOP', 'undefined', '', '', 'Images/1667572645491.jpg', 'Images/1667572645666.pdf', 'Images/1667572646020.pdf', 'Inapte', 'Images/1667572646437.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-11-04 14:37:26', '2022-12-22 22:31:22', 34, 2, 'cedricsane00@gmail.com', 'null', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(163, '2022-11-04', 'Série D', '2017', 'undefined', '', 'undefined', '', '', 'Images/1667574140902.jpg', 'Images/1667574141011.pdf', 'Images/1667574141403.pdf', 'Inapte', 'Images/1667574141605.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-11-04 15:02:22', '2022-12-22 23:18:04', 48, 2, 'ovougousid@gmail.com', 'Masculin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(164, '2022-11-04', 'S2', '2021', 'Passable', 'Cours Sainte Marie de HANN', 'undefined', '', '', 'Images/1667574630954.jpg', 'Images/1667574631062.pdf', 'Images/1667574631439.pdf', 'Inapte', 'Images/1667574631899.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-11-04 15:10:32', '2022-12-22 23:19:46', 82, 2, 'babacarniangdu11@gmail.com', 'null', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(165, '2022-11-04', 'Série D', '2020', 'Passable', '', 'undefined', '', '', 'Images/1667575510347.jpg', 'Images/1667575510448.pdf', 'Images/1667575510837.pdf', 'Inapte', 'Images/1667575511154.pdf', '2022-2023', 'Marie GAYE', 'Medecine/License 2', 'VALIDER', '2022-11-04 15:25:11', '2022-12-22 22:58:11', 57, 2, 'didierndoulou17@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(166, '2022-11-07', 'D', '2022', 'assez Bien', 'Lycée notre dame de  du rosée', 'undefined', '2020-2022', '', 'Images/1667810922363.pdf', 'Images/1667810922631.pdf', 'Images/1667810924578.pdf', 'undefined', 'Images/1667810926755.pdf', '2022-2023', 'FAYE Mame Diene', 'Medecine/License 1', 'VALIDER', '2022-11-07 08:48:52', '2022-12-22 22:58:29', 305, 1, 'ruthalvinedibalakiassala@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(167, '2022-11-07', '', '', 'undefined', '', 'undefined', '', '', 'Images/1667823642170.jpg', 'Images/1667823642254.pdf', 'Images/1667823642791.pdf', 'undefined', 'Images/1667823643089.pdf', '2021-2022', 'Marie GAYE', 'Medecine/Licence1', 'VALIDER', '2022-11-07 12:20:43', '2023-02-12 19:37:47', 306, 1, 'g.maixence@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(168, '2022-11-07', 'Série D', '2019', 'Passable', 'Lycée Bilingue NKOL-ETON', 'Faculté de Médecine DE YAOUNDE', '2019-2020', '', 'Images/1667824781464.jpg', 'Images/1667824781569.pdf', 'Images/1667824782007.pdf', 'Inapte', 'Images/1667824782407.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence3', 'VALIDER', '2022-11-07 12:39:42', '2022-12-22 22:19:32', 307, 7, 'brinellsoyinka@gmail.3com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(169, '2022-11-07', 'Série D', '2017', 'undefined', '', 'Faculté de Médecine ', '2018-2019', '', 'Images/1667825907788.jpg', 'Images/1667825907898.pdf', 'Images/1667825909206.pdf', 'Inapte', 'Images/1667825910248.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence3', 'VALIDER', '2022-11-07 12:58:31', '2022-12-22 22:19:19', 308, 7, 'faridafofana135@gmail.com', 'Masculin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(170, '2022-11-07', 'Série D', '2017', 'Passable', '', 'Faculté des Sciences Dhar El Mahraz', '2020-2021', '', 'Images/1667831909076.jpg', 'Images/1667831909165.pdf', 'Images/1667831909544.pdf', 'Inapte', 'Images/1667831909928.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence3', 'VALIDER', '2022-11-07 14:38:31', '2022-12-22 23:12:46', 309, 7, 'aboubacarmlki@gmail.com', 'Masculin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(171, '2022-11-07', 'S', '2001', 'Passable', 'René DESCARTES', 'BORDEAUX uNIVERSIT2', '', '', 'Images/1667836379854.jpg', 'Images/1667836379959.pdf', 'Images/1667836380503.pdf', 'Inapte', 'Images/1667836381068.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence3', 'VALIDER', '2022-11-07 15:53:01', '2022-12-22 22:18:42', 310, 7, 'ahissanaudrey1@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(172, '2022-11-08', 'Série D', '2019', 'Passable', '', 'Faculté des Sciences Ain Chock', '2020-2021', '', 'Images/1667901220477.jpg', 'Images/1667901220565.pdf', 'Images/1667901221163.pdf', 'Inapte', 'Images/1667901221452.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence3', 'VALIDER', '2022-11-08 09:53:42', '2022-12-22 22:17:42', 311, 7, 'nazifatouseidou@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(173, '2022-11-08', 'S2', '2020', 'Passable', 'CSEMBR', 'undefined', '', '', 'Images/1667901788184.jpg', 'Images/1667901788289.pdf', 'Images/1667901788744.pdf', 'Inapte', 'Images/1667901789234.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence3', 'VALIDER', '2022-11-08 10:03:09', '2022-12-22 22:17:28', 59, 7, 'nsanou577@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(174, '2022-11-08', 'S2', '2020', 'Passable', '', 'undefined', '', '', 'Images/1667902368480.jpg', 'Images/1667902368559.pdf', 'Images/1667902368997.pdf', 'Inapte', 'Images/1667902370553.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence3', 'VALIDER', '2022-11-08 10:12:50', '2022-12-22 23:13:01', 60, 7, 'mansourgraal@gmail.com', 'Masculin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(175, '2022-11-08', 'Série D', '2019', 'undefined', 'Lycée Moderne Mankono', 'undefined', '', '', 'Images/1667902783985.jpg', 'Images/1667902784161.pdf', 'Images/1667902784437.pdf', 'Inapte', 'Images/1667902785683.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence3', 'VALIDER', '2022-11-08 10:19:48', '2022-12-22 22:17:12', 80, 7, 'Kouassisagesse4@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(176, '2022-11-08', 'Série D', '2015', 'Passable', '', 'Faculté des Sciences de la Vie et de la Terre', '2016-2020', '', 'Images/1667903631293.jpg', 'Images/1667903631394.pdf', 'Images/1667903631896.pdf', 'Inapte', 'Images/1667903632227.pdf', '', 'Marie GAYE', NULL, 'archiver', '2022-11-08 10:33:53', '2022-11-10 07:54:24', 80, NULL, 'Kouassisagesse4@gmail.com', 'Feminin', NULL, 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(177, '2022-11-08', 'S2', '2020', 'Passable', 'LCND', 'undefined', '', '', 'Images/1667904320574.jpg', 'Images/1667904320685.pdf', 'Images/1667904321067.pdf', 'Inapte', 'Images/1667904322737.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence3', 'VALIDER', '2022-11-08 10:45:25', '2022-12-22 22:18:23', 42, 7, 'badjibineta2002@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(178, '2022-11-08', 'D', '2019', 'Passable', 'Gnanga Edouard', 'undefined', '2017-2019', '', 'Images/1667905336620.jpg', 'Images/1667905337179.pdf', 'Images/1667905337872.pdf', 'undefined', 'Images/1667905338062.pdf', '2022-2023', 'FAYE Mame Diene', 'Medecine/License 1', 'VALIDER', '2022-11-08 11:02:18', '2022-12-22 23:00:38', 312, 1, 'gordegemankita@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(179, '2022-11-08', 'Série D', '2017', 'Passable', '', 'Faculté des Sciences Dar El Mahraz', '2019-2020', '', 'Images/1667908207759.jpg', 'Images/1667908207851.pdf', 'Images/1667908208274.pdf', 'Inapte', 'Images/1667908208674.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Licence3', 'VALIDER', '2022-11-08 11:50:09', '2022-12-22 23:13:14', 68, 7, 'papsoneridwale@gmail.com', 'Masculin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(180, '2022-11-08', 'Série C', '2018', 'Passable', '', 'undefined', '', '', 'Images/1667910429892.jpg', 'Images/1667910429980.pdf', 'Images/1667910430323.pdf', 'Inapte', 'Images/1667910430482.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Master1', 'VALIDER', '2022-11-08 12:27:10', '2022-12-22 23:13:30', 32, 13, 'cmouanza2018@gmail.com', 'null', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(181, '2022-11-08', 'Série D', '2019', 'Passable', '', 'undefined', '', '', 'Images/1667911094344.jpg', 'Images/1667911094446.pdf', 'Images/1667911094872.pdf', 'Inapte', 'Images/1667911095240.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Master1', 'VALIDER', '2022-11-08 12:38:15', '2022-12-22 23:13:45', 31, 13, 'solimeamana19@gmail.com', 'null', 'Pharmacie', 'Sénégalaise', 'accepter', '', NULL),
(182, '2022-11-08', 'Série D', '2019', 'Passable', '', 'undefined', '', '', 'Images/1667911820514.jpg', 'Images/1667911820615.pdf', 'Images/1667911821031.pdf', 'Inapte', 'Images/1667911821960.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Master1', 'VALIDER', '2022-11-08 12:50:22', '2022-12-22 22:14:29', 313, 13, 'tabitadokoula18@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(183, '2022-11-08', 'Série D', '2019', 'Passable', '', 'undefined', '', '', 'Images/1667916804817.jpg', 'Images/1667916804916.pdf', 'Images/1667916805299.pdf', 'Inapte', 'Images/1667916805730.pdf', '2021-2022', 'Marie GAYE', 'Medecine/License 1', 'archiver', '2022-11-08 14:13:25', '2022-11-10 09:04:46', 316, 1, 'fkobeananfranck85@gmail.com', 'Masculin', 'Medecine', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(184, '2022-11-08', 'Série D', '2011', 'Assez Bien', '', 'Faculté des Sciences de la Santé ', '2018-2019', '', 'Images/1667917747059.jpg', 'Images/1667917747252.pdf', 'Images/1667917747592.pdf', 'Inapte', 'Images/1667917748464.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Master1', 'VALIDER', '2022-11-08 14:29:09', '2022-12-22 22:14:04', 317, 13, 'souhoi-reine@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(185, '2022-11-08', 'Série D', '2011', 'Bien', '', 'undefined', '', '', 'Images/1667918888466.jpg', 'Images/1667918888651.pdf', 'Images/1667918888991.pdf', 'Inapte', 'Images/1667918889418.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Master1', 'VALIDER', '2022-11-08 14:48:09', '2022-12-22 22:13:49', 318, 13, 'fadhila3294@hotmail.fr', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(186, '2022-11-08', 'S', '2018', 'Passable', '', 'undefined', '', '', 'Images/1667925761123.jpg', 'Images/1667925761377.pdf', 'Images/1667925763004.pdf', 'Inapte', 'Images/1667925764339.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Master1', 'VALIDER', '2022-11-08 16:42:46', '2022-12-22 23:14:02', 319, 13, 'naghorayeb5@gmail.com', 'null', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(187, '2022-11-08', 'S1', '2019', 'Passable', 'LFK', 'undefined', '', '', 'Images/1667927691064.jpg', 'Images/1667927691158.pdf', 'Images/1667927691510.pdf', 'Inapte', 'Images/1667927692680.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Master1', 'VALIDER', '2022-11-08 17:14:53', '2022-12-22 22:13:28', 320, 13, 'syra307@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(188, '2022-11-09', 'Série D', '2019', 'Passable', 'Lycée Moderne GUITRY', 'undefined', '', '', 'Images/1667989203564.jpg', 'Images/1667989203652.pdf', 'Images/1667989204040.pdf', 'Inapte', 'Images/1667989204329.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Master1', 'VALIDER', '2022-11-09 10:20:04', '2022-12-22 23:14:17', 321, 13, 'koffiflavien@yahoo.fr', 'Masculin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(189, '2022-11-09', 'Série D', '2011', 'Bien', 'Lycée BLaise Pascal', 'Université de Lyon', '2012-2013', '', 'Images/1668011128289.jpg', 'Images/1668011128364.pdf', 'Images/1668011128722.pdf', 'undefined', 'Images/1668011129042.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Master2', 'VALIDER', '2022-11-09 16:25:29', '2022-12-22 23:14:33', 97, 14, 'charliie80@gmail.com', 'Masculin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(190, '2022-11-11', 'Série C', '2016', 'Passable', '', 'undefined', '', '', 'Images/1668168124627.jpg', 'Images/1668168124754.pdf', 'Images/1668168125758.pdf', 'undefined', 'Images/1668168126122.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Master2', 'VALIDER', '2022-11-11 12:02:06', '2022-12-22 23:14:46', 323, 14, 'constantdano08@gmail.com', 'Masculin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(191, '2022-11-11', 'S2', '2018', 'Passable', 'CPMC', 'undefined', '', '', 'Images/1668169489151.jpg', 'Images/1668169489277.pdf', 'Images/1668169489762.pdf', 'Inapte', 'Images/1668169489992.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Master2', 'VALIDER', '2022-11-11 12:24:51', '2022-12-22 22:12:47', 324, 14, 'mamita2411@icloud.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(192, '2022-11-11', 'S', '2018', 'undefined', 'Cours Sainte Marie HANN', 'undefined', '', '', 'Images/1668171258189.jpg', 'Images/1668171258301.pdf', 'Images/1668171258744.pdf', 'Inapte', 'Images/1668171258958.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Master2', 'VALIDER', '2022-11-11 12:54:19', '2022-12-22 23:15:17', 325, 14, 'mouhama02@gmail.com', 'Masculin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(193, '2022-11-11', 'Série D', '2016', 'Assez Bien', '', 'undefined', '', '', 'Images/1668174174901.jpg', 'Images/1668174175025.pdf', 'Images/1668174175623.pdf', 'Inapte', 'Images/1668174175767.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Master2', 'VALIDER', '2022-11-11 13:42:55', '2022-12-22 22:12:28', 326, 14, 'mbindzaharryca@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(194, '2022-11-11', 'S2', '2018', 'Passable', 'LJFK', 'undefined', '', '', 'Images/1668175140255.jpg', 'Images/1668175140380.pdf', 'Images/1668175140892.pdf', 'Inapte', 'Images/1668175141192.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Master2', 'VALIDER', '2022-11-11 13:59:01', '2022-12-22 22:12:14', 327, 14, 'manemariehelene@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(195, '2022-11-11', 'Série D', '2017', 'Assez Bien', 'Lycée KORON', 'Faculté des Sciences Médicales et Paramédicales', '2015-2019', '', 'Images/1668177470229.jpg', 'Images/1668177470648.pdf', 'Images/1668177470933.pdf', 'Inapte', 'Images/1668177471401.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Master2', 'VALIDER', '2022-11-11 14:37:51', '2022-12-22 22:11:59', 328, 14, 'felematourahimkeita@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(196, '2022-11-11', 'Série D', '', 'Passable', '', 'Université IBRAHIMA NIASS', '2015-2020', '', 'Images/1668179173699.jpg', 'Images/1668179174280.pdf', 'Images/1668179178360.pdf', 'Inapte', 'Images/1668179181072.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Master2', 'VALIDER', '2022-11-11 15:06:22', '2022-12-22 22:11:25', 329, 14, 'julieaxelle1@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(197, '2022-11-11', 'Série D', '2017', 'Passable', '', 'Faculté des Sciences Médicales et Pharmaceutiques ', '2018-2020', '', 'Images/1668183081153.jpg', 'Images/1668183081276.pdf', 'Images/1668183081752.pdf', 'Inapte', 'Images/1668183081965.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Master2', 'VALIDER', '2022-11-11 16:11:22', '2022-12-22 23:15:34', 7, 14, 'angemampolo21@gmail.com', 'null', 'Pharmacie', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(198, '2022-11-11', 'Série D', '2018', 'Passable', '', 'undefined', '', '', 'Images/1668185419877.jpg', 'Images/1668185420388.pdf', 'Images/1668185420610.pdf', 'Inapte', 'Images/1668185420905.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Master2', 'VALIDER', '2022-11-11 16:50:21', '2022-12-22 22:11:09', 331, 14, 'annejemimaloisanelouk@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(199, '2022-11-15', 'Série D', '2003', 'Passable', 'College Protestant ', 'Faculté des Sciences de la Santé ', '', '', 'Images/1668505368579.jpg', 'Images/1668505368888.pdf', 'Images/1668505369394.pdf', 'Inapte', 'Images/1668505369560.pdf', '', 'Marie GAYE', NULL, 'archiver', '2022-11-15 09:42:49', '2022-11-16 07:33:38', 332, NULL, 'olivierkomiayeh06@gmail.com', 'Masculin', NULL, 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(200, '2022-11-15', 'Série D', '2016', 'Passable', '', 'Université El Hadji Ibrahima NIASSE', '', '', 'Images/1668506736056.jpg', 'Images/1668506736150.pdf', 'Images/1668506736539.pdf', 'Inapte', 'Images/1668506736935.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Doctorat1', 'VALIDER', '2022-11-15 10:05:37', '2022-12-22 22:10:55', 333, 15, 'd-mercedesprudencio@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(201, '2022-11-15', 'S2', '2016', 'Passable', '', 'Université El Hadji Ibrahima NIASSE', '2017- 2020', '', 'Images/1668508427569.jpg', 'Images/1668508427649.pdf', 'Images/1668508428027.pdf', 'Inapte', 'Images/1668508428279.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Doctorat1', 'VALIDER', '2022-11-15 10:33:48', '2022-12-22 22:10:42', 334, 15, 'nogleye@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(202, '2022-11-15', 'Série D', '2016', 'Passable', 'Ecole Privé DOLIE de DOLISIE', 'undefined', '', '', 'Images/1668511283065.jpg', 'Images/1668511283137.pdf', 'Images/1668511283335.pdf', 'Inapte', 'Images/1668511283534.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Doctorat1', 'VALIDER', '2022-11-15 11:21:24', '2022-12-22 23:15:50', 335, 15, 'guisanntandou@gmail.com', 'Masculin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(203, '2022-11-16', 'Série D', '2012', 'Assez Bien', '', 'Université Chiekh Antz Dioop', '2015 - 2019', '', 'Images/1668593436840.jpg', 'Images/1668593436932.pdf', 'Images/1668593437321.pdf', 'Inapte', 'Images/1668593437698.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Doctorat1', 'VALIDER', '2022-11-16 10:10:37', '2022-12-22 22:10:24', 337, 15, 'goudjinouaudrey@gmail.com', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(204, '2022-11-16', 'Série D', '2019', 'Passable', 'Cours GAMA', 'undefined', '', '', 'Images/1668595604718.jpg', 'Images/1668595604800.pdf', 'Images/1668595609627.pdf', 'Inapte', 'Images/1668595611005.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Doctorat1', 'VALIDER', '2022-11-16 10:46:52', '2022-12-22 23:16:06', 338, 15, 'aaronewa@hotmail.com', 'Masculin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(205, '2022-11-16', 'S2', '2017', 'Passable', '', 'undefined', '', '', 'Images/1668598180784.jpg', 'Images/1668598180866.pdf', 'Images/1668598181192.pdf', 'Inapte', 'Images/1668598181376.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Doctorat1', 'VALIDER', '2022-11-16 11:29:42', '2022-12-22 23:16:21', 339, 15, 'juniorbampoky@gmail.com', 'Masculin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(206, '2022-11-16', 'D', '2021', 'Passable', 'Cours secondaire AMBOURHOUET', 'undefined', '2018-2019', '', 'Images/1668599805330.jpg', 'Images/1668599806008.pdf', 'Images/1668599809197.pdf', 'undefined', 'Images/1668599811013.pdf', '2022-2023', 'FAYE Mame Diene', 'Medecine/License 1', 'VALIDER', '2022-11-16 11:56:52', '2022-12-22 23:04:28', 340, 1, 'mboumbaclaude120@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(207, '2022-11-16', 'D', '2021', 'Passable', 'Lycée national Léon MBA ', 'undefined', 'undefined', 'undefined', 'Images/1668600241517.jpg', 'Images/1668600242370.pdf', 'Images/1668600243784.pdf', NULL, 'Images/1668600244692.pdf', '2022-2023', 'MANFOUMBI-MBOUYI Lorna-Marjolaine ', 'Medecine/License 1', 'VALIDER', '2022-11-16 12:04:05', '2022-12-22 23:04:43', 336, 1, 'Lornambouyi@gmail.com', 'Feminin', 'Medecine', 'Gabonaise', 'accepter', 'Médecine', NULL),
(208, '2022-11-16', 'S2', '2016', 'Passable', 'LFK', 'undefined', '', '', 'Images/1668615234627.jpg', 'Images/1668615234695.pdf', 'Images/1668615235011.pdf', 'Inapte', 'Images/1668615235218.pdf', '2022-2023', 'Marie GAYE', 'Pharmacie/Doctorat2', 'VALIDER', '2022-11-16 16:13:55', '2022-12-22 22:02:58', 342, 16, 'ana301198@hotmail.fr', 'Feminin', 'Pharmacie', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(209, '2022-11-28', 'D', '20199', 'Passable', 'Colège Adventisse', 'EUROMED', '2019', 'lONGUE TRAJECTOIRE', 'Images/1669638797223.jpg', 'Images/1669638797289.pdf', 'Images/1669638798125.pdf', 'undefined', 'Images/1669638799784.pdf', '2022-2023', 'FAYE Mame Diene', 'Medecine/License 2', 'VALIDER', '2022-11-28 12:33:21', '2022-12-22 23:05:37', 350, 2, 'syllashafatim@gmail.com', 'Feminin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(210, '2022-11-28', 'D', '2021', 'Passable', 'Lycée Djoue DABANY', 'undefined', '2019-2021', '', 'Images/1669640760724.jpg', 'Images/1669640764169.pdf', 'Images/1669640765302.pdf', 'undefined', 'Images/1669640765786.pdf', '2022-2023', 'FAYE Mame Diene', 'Medecine/License 1', 'VALIDER', '2022-11-28 13:06:06', '2022-12-22 22:21:04', 345, 1, 'glennbac2021@gmail.com', 'Masculin', 'Medecine', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(211, '2022-11-28', 'D', '2018', 'Passable', 'Colège lAVAL', 'KOFI ANNAn', '2015-2018', 'Crise Politique et raisons per²sonnes', 'Images/1669643216914.jpg', 'Images/1669643225877.pdf', 'Images/1669643227509.pdf', 'undefined', 'Images/1669643228378.pdf', '2022-2023', 'FAYE Mame Diene', 'Médecine/Master1', 'VALIDER', '2022-11-28 13:47:09', '2022-12-22 23:08:10', 351, 8, 'bcynthiapaule@yahoo.fr', 'Feminin', 'Médecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(212, '2022-12-12', 'D', '2021', 'Passable', 'Les phiramides', 'undefined', '2020-2021', '', 'Images/1670849821511.pdf', 'Images/1670849821604.pdf', 'Images/1670849822009.pdf', 'undefined', 'Images/1670849822916.pdf', '2021-2022', 'FAYE Mame Diene', 'Medecine/Licence1', 'EN COURS DE TRAITEMENT', '2022-12-12 12:57:03', '2023-02-12 22:42:18', 355, 1, 'pharese@icloud.com', 'Masculin', 'Medecine', 'Sénégalaise', 'accepter', 'Pharmacie', NULL),
(213, '2022-12-13', 'S2', '2022', 'Passable', 'Cour privée de la zac', 'undefined', '2022', '', 'Images/1670937848562.jpg', 'Images/1670937849662.pdf', 'Images/1670937850591.pdf', 'undefined', 'Images/1670937851216.pdf', '', 'FAYE Mame Diene', NULL, 'EN ATTENTE', '2022-12-13 13:24:11', '2022-12-13 13:24:11', 356, NULL, 'dadprincessse@gmail.com', 'Feminin', NULL, 'Sénégalaise', 'accepter', 'Médecine', NULL),
(214, '2022-12-13', 'S2', '2022', 'Passable', 'Lycée Coumba Ndoffen Diouf Fatick', 'undefined', '2020-2022', '', 'Images/1670940630837.jpg', 'Images/1670940630920.pdf', 'Images/1670940631284.pdf', 'undefined', 'Images/1670940632099.pdf', '', 'FAYE Mame Diene', NULL, 'EN ATTENTE', '2022-12-13 14:10:32', '2022-12-13 14:10:32', 298, NULL, 'oulimatabadji0112@gmail.com', 'Feminin', NULL, 'Sénégalaise', 'accepter', 'Médecine', NULL),
(215, '2022-12-13', 'S2', '2022', 'Passable', 'Lycée Coumba Ndoffen Diouf Fatick', 'undefined', '2020-2022', '', 'Images/1670940632472.jpg', 'Images/1670940632485.pdf', 'Images/1670940632672.pdf', 'undefined', 'Images/1670940633440.pdf', '', 'FAYE Mame Diene', NULL, 'archiver', '2022-12-13 14:10:33', '2022-12-14 10:57:20', 298, NULL, 'oulimatabadji0112@gmail.com', 'Feminin', NULL, 'Sénégalaise', 'accepter', 'Médecine', NULL),
(216, '2022-12-16', 'D', '2022', 'Passable', 'COLLEGE lIBERMANE', 'undefined', '2020-2022', '', 'Images/1671191796522.pdf', 'Images/1671191796616.pdf', 'Images/1671191797128.pdf', 'undefined', 'Images/1671191797619.pdf', '2022-2023', 'FAYE Mame Diene', 'Medecine/License 1', 'VALIDER', '2022-12-16 11:56:38', '2022-12-22 21:57:34', 358, 1, 'skafunda2@gmail.com', 'Masculin', 'Medecine', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(217, '2022-12-19', 'D', '2021', 'Passable', 'Lycée DELTA', 'undefined', '2020-2021', '', 'Images/1671451010321.jpg', 'Images/1671451010402.pdf', 'Images/1671451011476.pdf', 'undefined', 'Images/1671451012304.pdf', '', 'FAYE Mame Diene', NULL, 'EN ATTENTE', '2022-12-19 11:56:53', '2023-01-03 09:20:57', 359, NULL, 'elzymoussavoumourou@gmail.com', 'Feminin', NULL, 'Sénégalaise', 'accepter', 'Pharmacie', 'Licence'),
(218, '2022-12-20', 'D', '2016', 'Passable', 'Collège Capitaine Charles  NTCHORIRE', 'undefined', '2016', '', 'Images/1671543183811.jpg', 'Images/1671543184277.pdf', 'Images/1671543185468.pdf', 'undefined', 'Images/1671543186158.pdf', '', 'FAYE Mame Diene', NULL, 'EN ATTENTE', '2022-12-20 13:33:07', '2022-12-20 13:33:07', 360, NULL, 'alrystiphoine@gmail.com', 'Feminin', NULL, 'Sénégalaise', 'accepter', 'Médecine', NULL),
(219, '2022-12-20', 'D', '2016', 'Passable', 'Collège Capitaine Charles  NTCHORIRE', 'undefined', '2016', '', 'Images/1671543188105.jpg', 'Images/1671543188672.pdf', 'Images/1671543190010.pdf', 'undefined', 'Images/1671543190941.pdf', '', 'FAYE Mame Diene', NULL, 'EN ATTENTE', '2022-12-20 13:33:11', '2022-12-20 13:33:11', 360, NULL, 'alrystiphoine@gmail.com', 'Feminin', NULL, 'Sénégalaise', 'accepter', 'Médecine', NULL),
(220, '2022-12-22', 'D', '2021', 'Passable', ' Lycée de l\'excélence', 'undefined', '2019-2021', '', 'Images/1671721978216.jpg', 'Images/1671721986997.pdf', 'Images/1671721988963.pdf', 'undefined', 'Images/1671721992881.pdf', '', 'FAYE Mame Diene', NULL, 'EN ATTENTE', '2022-12-22 15:13:18', '2022-12-22 15:13:18', 361, NULL, 'avedan95@gmail.com', 'Masculin', NULL, 'Sénégalaise', 'accepter', 'Médecine', NULL),
(221, '2022-12-23', 'D', '2017', 'Passable', 'Lycée d\'application Nelson Mendéla', 'undefined', '2015-2017', '', 'Images/1671808794143.jpg', 'Images/1671808794235.pdf', 'Images/1671808794582.pdf', 'undefined', 'Images/1671808795169.pdf', '', 'FAYE Mame Diene', NULL, 'EN ATTENTE', '2022-12-23 15:19:55', '2022-12-23 15:19:55', 362, NULL, 'rebeccacarmina4@gmail.com', 'Feminin', NULL, 'Sénégalaise', 'accepter', 'Médecine', NULL),
(222, '2023-01-12', 'D', '2022', 'Passable', '', 'undefined', '2020-2022', '', 'Images/1673537377469.jpg', 'Images/1673537377568.pdf', 'Images/1673537377936.pdf', 'undefined', 'Images/1673537378123.pdf', '', 'FAYE Mame Diene', NULL, 'EN ATTENTE', '2023-01-12 15:29:38', '2023-01-12 15:29:38', 348, NULL, 'mallomarcosylver@gmail.com', 'Masculin', 'EN ATTENTE', 'Sénégalaise', 'accepter', 'Médecine', NULL),
(223, '2023-01-18', 'D', '2022', 'Passable', '', 'undefined', '2020-2022', '', 'Images/1674041359082.jpg', 'Images/1674041359160.pdf', 'Images/1674041359540.pdf', 'undefined', 'Images/1674041359721.pdf', '', 'FAYE Mame Diene', NULL, 'archiver', '2023-01-18 11:29:19', '2023-01-18 11:33:05', 348, NULL, 'mallomarcosylver@gmail.com', 'Masculin', 'EN ATTENTE', 'Sénégalaise', 'accepter', 'Médecine', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'FACTURE ELECTRICITE', '2022-04-08 20:53:16', '2022-12-06 11:23:44'),
(2, 'FACTURE EAU', '2022-04-08 20:53:34', '2022-04-08 20:53:34');

-- --------------------------------------------------------

--
-- Structure de la table `classprofs`
--

CREATE TABLE `classprofs` (
  `id` int NOT NULL,
  `departement` varchar(255) DEFAULT NULL,
  `niveau` varchar(255) DEFAULT NULL,
  `professeurs` varchar(255) DEFAULT NULL,
  `classe` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int DEFAULT NULL,
  `semestre` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `classprofs`
--

INSERT INTO `classprofs` (`id`, `departement`, `niveau`, `professeurs`, `classe`, `createdAt`, `updatedAt`, `userId`, `semestre`) VALUES
(1, 'Medecine', 'Licence', 'Mor FALL', 'Medecine/Licence1', '2022-03-16 12:21:48', '2023-02-22 19:12:11', 1, '[{\"id\": 1, \"nom\": \"semestre 1\"}, {\"id\": 26, \"nom\": \"semestre 2\"}]'),
(2, 'Medecine', 'Licence', NULL, 'Medecine/Licence2', '2022-06-12 12:24:47', '2023-02-22 19:17:47', 1, '[{\"id\": 4, \"nom\": \"semestre 3\"}, {\"id\": 3, \"nom\": \"semestre 4\"}]'),
(3, 'Médecine', 'Licence', NULL, 'Medecine/Licence3', '2022-06-13 12:20:53', '2023-02-22 19:19:11', 1, '[{\"id\": 5, \"nom\": \"semestre 5\"}, {\"id\": 12, \"nom\": \"semestre 6\"}]'),
(4, 'Pharmacie', 'Licence', NULL, 'Pharmacie/Licence1', '2022-07-01 11:58:04', '2023-02-22 19:20:50', 1, '[{\"id\": 1, \"nom\": \"semestre 1\"}, {\"id\": 26, \"nom\": \"semestre 2\"}]'),
(5, 'Pharmacie', 'Licence', NULL, 'Pharmacie/Licence2', '2022-07-01 12:01:49', '2023-02-22 19:22:03', 94, '[{\"id\": 4, \"nom\": \"semestre 3\"}, {\"id\": 3, \"nom\": \"semestre 4\"}]'),
(7, 'Pharmacie', 'Licence', NULL, 'Pharmacie/Licence3', '2022-07-01 12:45:08', '2023-02-22 19:23:27', 58, '[{\"id\": 5, \"nom\": \"semestre 5\"}, {\"id\": 12, \"nom\": \"semestre 6\"}]'),
(8, 'Médecine', 'Master', NULL, 'Medecine/Master1', '2022-07-01 12:49:11', '2023-02-22 19:24:55', 1, '[{\"id\": 13, \"nom\": \"semestre 7\"}, {\"id\": 14, \"nom\": \"semestre 8\"}]'),
(9, 'Médecine', 'Master', NULL, 'Medecine/Master2', '2022-07-01 12:50:25', '2023-02-22 19:26:16', 1, '[{\"id\": 15, \"nom\": \"semestre 9\"}, {\"id\": 16, \"nom\": \"semestre 10\"}]'),
(10, 'Médecine', 'Doctorat', NULL, 'Medecine/Doctorat1', '2022-07-01 12:50:53', '2023-02-22 19:28:14', 1, '[{\"id\": 30, \"nom\": \"semestre 11\"}, {\"id\": 31, \"nom\": \"semestre 12\"}]'),
(11, 'Médecine', 'Doctorat', NULL, 'Medecine/Doctorat2', '2022-07-01 12:51:15', '2023-02-22 19:43:16', 1, '[{\"id\": 32, \"nom\": \"semestre 13\"}, {\"id\": 33, \"nom\": \"semestre 14\"}]'),
(12, 'Médecine', 'Doctorat', NULL, 'Medecine/Doctorat3', '2022-07-01 12:53:39', '2023-02-22 19:51:16', 1, '[{\"id\": 34, \"nom\": \"semestre 15\"}, {\"id\": 35, \"nom\": \"semestre 16\"}]'),
(13, 'Pharmacie', 'Master', NULL, 'Pharmacie/Master1', '2022-07-01 13:20:10', '2023-02-22 19:53:11', 14, '[{\"id\": 13, \"nom\": \"semestre 7\"}, {\"id\": 14, \"nom\": \"semestre 8\"}]'),
(14, 'Pharmacie', 'Master', NULL, 'Pharmacie/Master2', '2022-07-01 13:20:45', '2023-02-22 19:54:10', 14, '[{\"id\": 13, \"nom\": \"semestre 9\"}, {\"id\": 14, \"nom\": \"semestre 10\"}]'),
(15, 'Pharmacie', 'Doctorat', NULL, 'Pharmacie/Doctorat1', '2022-07-01 13:21:13', '2023-02-22 19:55:57', 14, '[{\"id\": 30, \"nom\": \"semestre 11\"}, {\"id\": 31, \"nom\": \"semestre 12\"}]'),
(16, 'Pharmacie', 'Doctorat', NULL, 'Pharmacie/Doctorat2', '2022-07-01 13:21:44', '2023-02-22 19:58:12', 14, '[{\"id\": 32, \"nom\": \"semestre 13\"}, {\"id\": 33, \"nom\": \"semestre 14\"}]');

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id` int NOT NULL,
  `date` date DEFAULT NULL,
  `support` varchar(255) DEFAULT NULL,
  `Annee_academique` varchar(255) DEFAULT NULL,
  `categorie` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `classprofId` int DEFAULT NULL,
  `semestreId` int DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `departements`
--

CREATE TABLE `departements` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `departements`
--

INSERT INTO `departements` (`id`, `name`, `createdAt`, `updatedAt`, `userId`) VALUES
(1, 'Médecine', '2022-02-24 07:16:48', '2022-06-13 09:50:40', 58),
(2, 'Pharmacie', '2022-02-24 07:17:01', '2022-02-24 07:17:01', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `depenses`
--

CREATE TABLE `depenses` (
  `id` int NOT NULL,
  `categorie` varchar(255) DEFAULT NULL,
  `numero_facture` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `objet` varchar(255) DEFAULT NULL,
  `montant` varchar(255) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `elements`
--

CREATE TABLE `elements` (
  `id` int NOT NULL,
  `nom_element` varchar(255) DEFAULT NULL,
  `cm` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `stage` varchar(255) DEFAULT NULL,
  `TP_TD` varchar(255) DEFAULT NULL,
  `TPE` varchar(255) DEFAULT NULL,
  `VHT` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `matiereId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `elements`
--

INSERT INTO `elements` (`id`, `nom_element`, `cm`, `reference`, `stage`, `TP_TD`, `TPE`, `VHT`, `createdAt`, `updatedAt`, `matiereId`) VALUES
(1, 'Chimie physique générale', '25', 'MED1111  ', NULL, '10', '25', '60', '2022-06-10 13:10:46', '2022-06-14 13:07:09', 2),
(2, 'Mathématiques', '20', 'Med1141', NULL, '10', '30', '60', '2022-06-10 13:14:01', '2022-06-10 15:13:51', 3),
(3, 'Statistiques', '20', 'Med1142', NULL, '10', '30', '60', '2022-06-10 13:14:57', '2022-07-28 01:23:11', 3),
(4, 'Génétique', '25', 'Med1131', NULL, '10', '65', '100', '2022-06-10 15:12:33', '2022-06-10 15:12:33', 4),
(5, 'Biologie cellaire', '30', 'Med1121', NULL, '20', '50', '100', '2022-06-10 15:16:45', '2022-06-10 15:16:45', 5),
(6, 'Anatomie générale 1', '25', 'Med1151', NULL, '10', '25', '60', '2022-06-10 15:19:28', '2022-06-10 15:19:42', 6),
(7, 'Anatomie générale 2', '25', 'Med1152', NULL, '10', '20', '60', '2022-06-10 15:20:48', '2022-06-10 15:20:48', 6),
(8, 'Informatique', '20', 'Med1161', NULL, '10', '10', '40', '2022-06-10 15:22:15', '2022-06-10 15:22:15', 7),
(10, 'Biochimie 2', '30', 'Med2311', NULL, '10', '80', '120', '2022-06-10 15:25:32', '2022-06-10 15:26:41', 8),
(11, 'Histologie embryologie spéciale', '30', 'Med2321', NULL, '10', '80', '120', '2022-06-10 15:29:52', '2022-06-10 15:29:52', 9),
(12, 'Physique sensorielle', '25', 'Med2331', NULL, '10', '65', '100', '2022-06-10 15:32:10', '2022-06-10 15:32:10', 10),
(13, 'Physique nucléaire et imagerie médicale', '25', 'Med2341', NULL, '10', '65', '100', '2022-06-10 15:35:20', '2022-06-10 15:35:20', 11),
(14, 'Physiologie spéciale', '30', 'Med2351', NULL, '10', '80', '120', '2022-06-10 15:38:05', '2022-06-10 15:38:05', 12),
(15, 'Anglais', '10', 'Med2361', NULL, '10', '20', '40', '2022-06-10 15:39:35', '2022-06-10 15:40:17', 13),
(16, 'Parasitologie', '30', 'Med3511', NULL, '10', '40', '80', '2022-06-10 15:44:51', '2022-06-10 15:44:51', 14),
(17, 'Mycologie', '10', 'Med3512', NULL, '10', '20', '40', '2022-06-10 15:46:07', '2022-06-10 15:46:07', 14),
(18, 'Bactériologie générale et systématique', '30', 'Med3521', NULL, '10', '40', '80', '2022-06-10 15:48:19', '2022-06-10 15:48:19', 15),
(19, 'Virologie générale et systématique', '20', 'Med2352', NULL, '10', '10', '40', '2022-06-10 15:49:38', '2022-06-10 15:49:38', 15),
(20, 'Pharmacologie', '20', 'Med3531', NULL, '10', '90', '120', '2022-06-10 15:51:22', '2022-06-10 15:51:22', 16),
(21, 'Sémiologie médicale', '72', 'Med3541', NULL, '8', '40', '120', '2022-06-10 15:53:50', '2022-06-10 15:53:50', 17),
(22, 'Stages précliniques 2 : Sémiologie médicale', NULL, 'Med3551', '100', NULL, NULL, '100', '2022-06-10 15:55:40', '2022-06-13 09:30:29', 18),
(23, 'Informatique', '10', 'Med3561', NULL, NULL, '10', '20', '2022-06-10 15:59:13', '2022-06-10 15:59:13', 19),
(24, 'Physique 1', '20', 'Med1211', '', '10', '50', '80', '2022-06-13 08:20:25', '2022-06-13 08:20:25', 20),
(25, 'Biophysique 1', '20', 'Med1221', NULL, '10', '50', '80', '2022-06-13 08:23:40', '2022-06-13 08:57:50', 21),
(26, ' Biochimie générale', '30', 'Med1231', NULL, '10', '30', '70', '2022-06-13 08:40:35', '2022-06-13 08:56:43', 22),
(27, 'Biologie moléculaire', '20', 'Med1232', NULL, '10', '20', '50', '2022-06-13 08:47:06', '2022-06-13 08:47:06', 22),
(28, ' Chimie organique', '20', 'Med124', NULL, '10', '45', '80', '2022-06-13 08:52:49', '2022-06-13 09:27:29', 23),
(29, 'Histologie', '20', 'Med1251', NULL, '10', '20', '50', '2022-06-13 09:01:22', '2022-06-13 09:01:22', 24),
(30, 'Embryologie', '20', 'Med1252', NULL, '10', '20', '50', '2022-06-13 09:03:20', '2022-06-13 09:03:20', 24),
(31, ' Physiologie générale', '25', 'Med1261', NULL, '10', '65', '100', '2022-06-13 09:09:26', '2022-06-13 09:10:18', 25),
(32, 'Anglais', '8', 'Med1271', NULL, '2', '9', '40', '2022-06-13 09:13:24', '2022-12-07 13:06:38', 26),
(33, 'Psychologie médicale', '20', 'Med1411', NULL, '10', '10', '40', '2022-06-13 11:03:53', '2022-06-13 11:03:53', 27),
(34, 'Sociologie-Anthropologie', '20', 'Med1412', NULL, '10', '10', '40', '2022-06-13 11:05:47', '2022-06-13 11:05:47', 27),
(35, 'Bioéthique Droit de la santé ', '20', 'Med1413', NULL, '10', '10', '40', '2022-06-13 11:07:51', '2022-06-13 11:07:51', 27),
(36, 'Système nerveux central Thorax Abdomen organes des sens', '20', 'Med 1421', NULL, '20', '40', '80', '2022-06-13 11:14:12', '2022-06-13 11:14:12', 28),
(37, 'Système nerveux périphérique membres', '20', 'Med 1422', NULL, '10', '30', '60', '2022-06-13 11:16:45', '2022-06-13 11:16:45', 28),
(38, 'soins infirmiers et secourisme ', '20', 'Med1431', NULL, '10', '50', '80', '2022-06-13 11:19:41', '2022-06-13 11:19:41', 29),
(39, 'Stages Précliniques1', NULL, 'Med1432', '80', NULL, NULL, '80', '2022-06-13 11:21:42', '2022-06-13 11:21:42', 29),
(40, 'Sémiologie médicale', '20', 'Med 1441', NULL, '10', '50', '80', '2022-06-13 11:24:49', '2022-06-13 11:24:49', 33),
(41, 'Sémiologie chirurgicale', '20', 'Med1451', NULL, '10', '50', '80', '2022-06-13 11:33:42', '2022-06-13 11:33:42', 34),
(42, 'Informatique', '10', 'Med1461', NULL, '20', '40', '40', '2022-06-13 11:37:16', '2022-06-13 11:37:16', 35),
(43, 'Lésions élémentaires-Troubles circulatoires', '20', 'Med3611', NULL, '10', '40', '70', '2022-06-13 13:25:17', '2022-06-13 13:27:34', 36),
(44, 'Processus inflammatoires-Processus normal', '20', 'Med3612', NULL, '10', '40', '70', '2022-06-13 13:26:52', '2022-06-13 13:26:52', 36),
(45, 'Hématologie biologique', '20', 'Med3621', NULL, '10', '50', '80', '2022-06-13 13:31:04', '2022-06-13 13:31:27', 37),
(46, 'Immunologie', '10', 'Med3622', NULL, '10', '20', '40', '2022-06-13 13:32:55', '2022-06-13 13:32:55', 37),
(47, 'Biochimie clinique', '10', 'Med3623', NULL, '10', '20', '40', '2022-06-13 13:34:24', '2022-06-13 13:34:24', 37),
(48, 'Sémiologie chirurgicale', '80', 'Med3631', NULL, NULL, '60', '140', '2022-06-13 13:36:43', '2022-12-06 12:55:29', 38),
(49, 'Stages précliniques 3 : Sémiologie chirurgicale', NULL, 'Med3641', '120', NULL, NULL, '120', '2022-06-13 13:38:30', '2022-06-13 13:41:52', 39),
(50, 'Anglais', '20', 'Med3651', NULL, NULL, '20', '40', '2022-06-13 13:40:29', '2022-06-13 13:40:29', 40),
(51, 'Maladies infectieuses', '40', 'Med4711', '', '40', '40', '120', '2022-12-06 14:37:08', '2022-12-06 14:37:08', 42),
(52, 'Maladies infectieuses et tropicales', '40', 'MED4711', NULL, '40', '40', '120', '2022-12-06 16:39:51', '2022-12-06 16:39:51', 43),
(53, 'Urgences et réanimation', '40', 'MED4721', NULL, '40', '40', '120', '2022-12-06 16:49:01', '2022-12-06 16:49:01', 44),
(54, 'Hématologie clinique', '20', 'Med473', NULL, '20', '20', '60', '2022-12-06 16:51:46', '2022-12-06 16:51:46', 45),
(55, 'Maladies de système', '20', 'MED4732', NULL, '20', '20', '60', '2022-12-06 16:52:49', '2022-12-06 16:52:49', 45),
(56, 'Oncologie générale', '20', 'MED4741', NULL, '20', '20', '60', '2022-12-06 16:55:08', '2022-12-06 16:55:08', 46),
(57, 'Stages cliniques : Médecine et chirurgie', '0', 'MED476', '120', '0', '0', '120', '2022-12-06 16:59:37', '2022-12-06 17:03:19', 48),
(58, 'Pathologie cardio-vasculaire', '30', 'Med4811 ', NULL, '10', '20', '60', '2022-12-07 10:49:24', '2022-12-07 10:49:24', 49),
(59, 'Chirurgie thoracique et cardio-vasculaire', '10', 'Med4812', NULL, '10', '20', '40', '2022-12-07 10:51:01', '2022-12-07 10:51:01', 49),
(60, 'Pathologie de l\'appareil rspiratoire bas', '30', 'MED4821', NULL, '10', '40', '80', '2022-12-07 10:53:22', '2022-12-07 11:07:37', 50),
(61, 'Hépato-gastro-entérologie', '20', 'MED4831', NULL, '20', '40', '80', '2022-12-07 10:57:12', '2022-12-07 10:57:12', 51),
(62, 'Pathologie digestive chirurgicale', '15', 'MED4832', NULL, '10', '15', '40', '2022-12-07 10:59:01', '2022-12-07 10:59:01', 51),
(63, 'Rhumatologie', '20', 'MED4841', NULL, '20', '40', '80', '2022-12-07 11:00:38', '2022-12-07 11:08:34', 52),
(64, 'Traumatologie', '20', 'MED4851', NULL, '20', '20', '60', '2022-12-07 11:02:39', '2022-12-07 11:09:21', 53),
(65, 'Orthopédie', '10', 'MED4852', NULL, '10', '20', '40', '2022-12-07 11:03:46', '2022-12-07 11:03:46', 53),
(66, 'Anglais 4', '10', 'MED4861', NULL, '20', '10', '40', '2022-12-07 11:05:15', '2022-12-07 11:10:08', 54),
(67, 'Stages cliniques1 : Maladiesinfecieuses', '', 'MED4871', '100', '', '0', '100', '2022-12-07 11:14:47', '2022-12-07 11:15:24', 55),
(68, 'Pédiatrie sociale et nutrition', '30', 'MED5911', NULL, '10', '20', '60', '2022-12-07 11:18:35', '2022-12-07 11:18:35', 56),
(69, 'Néonatologie et génétique', '20', 'MED5912', NULL, '10', '30', '60', '2022-12-07 11:19:34', '2022-12-07 11:19:34', 56),
(70, 'Pathologie endocrinienne', '20', 'MED5921', NULL, '10', '30', '60', '2022-12-07 11:22:47', '2022-12-07 11:22:47', 57),
(71, 'Pathologies métaboliques et nutritionnelles', '20', 'MED5922', NULL, '10', '30', '60', '2022-12-07 11:23:56', '2022-12-07 11:23:56', 57),
(72, 'Bases fondamentales', '10', 'MED5931', NULL, '10', '30', '50', '2022-12-07 11:25:38', '2022-12-07 11:29:22', 58),
(73, 'Pathologies urologiques', '20', 'MED5932', NULL, '10', '20', '50', '2022-12-07 11:26:55', '2022-12-07 11:26:55', 58),
(74, 'Bases fondamentales', '10', 'MED5941', NULL, '10', '30', '50', '2022-12-07 11:28:41', '2022-12-07 11:28:41', 59),
(75, 'Pathologies néphrologiques', '20', 'MED5942', NULL, '10', '20', '50', '2022-12-07 11:30:34', '2022-12-07 11:30:34', 59),
(76, 'Anglais5', '10', 'MED5951', NULL, '20', '10', '40', '2022-12-07 11:32:40', '2022-12-07 11:32:40', 60),
(77, 'Stages cliniques 4 : Pédiatrie', NULL, 'MED5961', '120', NULL, NULL, '120', '2022-12-07 11:34:49', '2022-12-07 11:35:16', 61),
(78, 'Gynécologie Obstétrique', '40', 'MED5.10.1.1', NULL, '40', '40', '120', '2022-12-07 11:41:25', '2022-12-07 11:41:25', 62),
(79, 'Neurologie', '20', 'MED5.10.2.1', NULL, '10', '10', '40', '2022-12-07 11:43:40', '2022-12-07 11:43:40', 63),
(80, 'Neurochirurgie', '20', 'MED5.10.2.2', NULL, '10', '10', '40', '2022-12-07 11:45:11', '2022-12-07 11:45:11', 63),
(81, 'Psychiatrie', '20', 'MED5.10.2.3', NULL, '10', '10', '40', '2022-12-07 11:46:22', '2022-12-07 11:46:22', 63),
(82, 'Dermatologie', '30', 'MED5.10.3.1', NULL, '10', '10', '50', '2022-12-07 11:48:17', '2022-12-07 11:48:17', 64),
(83, 'Infections sexuellement transmissibles ', '20', 'MED5.10.3.2', NULL, '10', '20', '50', '2022-12-07 11:49:42', '2022-12-07 11:49:42', 64),
(84, 'Radiologie TDM', '20', 'MED5.10.4.1', NULL, '10', '10', '40', '2022-12-07 11:51:20', '2022-12-07 11:51:20', 65),
(85, 'Explorations isotopiques - Ultrasonographie', '20', 'MED5.10.4.2', NULL, '10', '10', '40', '2022-12-07 11:52:48', '2022-12-07 11:52:48', 65),
(86, 'Imagerie à résonance magnétique (IRM) ', '10', 'MED5.10.4.3', NULL, '5', '5', '20', '2022-12-07 11:54:14', '2022-12-07 11:54:14', 65),
(87, 'Informatique', '30', 'MED5.10.5.1', NULL, '15', '15', '60', '2022-12-07 12:05:41', '2022-12-07 12:05:41', 66),
(88, 'Stages cliniques 3 : Obstétrique', NULL, 'MED5.10.6.1', '120', NULL, NULL, '120', '2022-12-07 12:08:07', '2022-12-07 12:08:32', 67),
(89, 'Chimie physique générale', '50', 'PHARM1111', NULL, '20', '50', '120', '2022-12-07 12:21:33', '2022-12-07 12:21:33', 68),
(90, 'Biologie cellulaire', '30', 'PHARM1121', NULL, '20', '50', '100', '2022-12-07 12:23:47', '2022-12-07 12:23:47', 69),
(91, 'Génétique', '25', 'PHARM1131', NULL, '10', '65', '100', '2022-12-07 12:25:53', '2022-12-07 12:25:53', 70),
(92, 'Mathématiques', '20', 'PHARM1141', NULL, '10', '30', '60', '2022-12-07 12:27:57', '2022-12-07 12:27:57', 71),
(93, 'Statistiques', '20', 'PHARM1142', NULL, '10', '30', '60', '2022-12-07 12:29:10', '2022-12-07 12:29:10', 71),
(94, 'Anatomie générale', '50', 'PHARM1151', NULL, '20', '50', '120', '2022-12-07 12:31:07', '2022-12-07 12:31:07', 72),
(95, 'Informatique', '20', 'PHARM1161', NULL, '10', '10', '40', '2022-12-07 12:36:02', '2022-12-07 12:36:02', 73),
(96, 'Physique 1', '20', 'PHARM1211', NULL, '10', '50', '80', '2022-12-07 12:40:40', '2022-12-07 12:40:40', 74),
(97, 'Biophysique 1', '20', 'PHARM1221', NULL, '20', '20', '60', '2022-12-07 12:42:12', '2022-12-07 12:42:12', 75),
(98, 'Biochimie générale', '30', 'PHARM1231', NULL, '10', '20', '60', '2022-12-07 12:44:31', '2022-12-07 12:44:31', 76),
(99, 'Biologie moléculaire', '20', 'PHARM1232', NULL, '5', '15', '40', '2022-12-07 12:48:06', '2022-12-07 12:48:06', 76),
(100, 'Chimie organique', '25', 'PHARM1241', NULL, '10', '45', '80', '2022-12-07 12:49:46', '2022-12-07 12:49:46', 77),
(101, 'Histologie Embryologie', '40', 'PHARM1251', NULL, '20', '20', '80', '2022-12-07 12:51:32', '2022-12-07 12:51:32', 78),
(102, 'Botanique', '25', 'PHARM1261', NULL, '10', '45', '80', '2022-12-07 12:53:57', '2022-12-07 12:53:57', 79),
(103, 'Initiation à la connaissance du médicament', '25', 'PHARM1271', NULL, '10', '45', '80', '2022-12-07 12:56:03', '2022-12-07 12:56:03', 80),
(104, 'Anglais', '8', 'PHARM1281', NULL, '2', '10', '20', '2022-12-07 12:58:13', '2022-12-07 12:58:13', 81),
(105, 'Wolof', '8', 'PHARM1282', NULL, '2', '10', '20', '2022-12-07 12:59:13', '2022-12-07 12:59:13', 81),
(106, 'Wolof', '8', 'MED1272', NULL, '2', '10', '20', '2022-12-07 13:03:15', '2022-12-07 13:08:39', 26),
(107, 'Ophtalmologie', '20', 'ME6.11.1.1', NULL, '20', '60', '100', '2022-12-07 14:08:11', '2022-12-07 14:08:50', 82),
(108, 'ORL', '20', 'MED6.11.2.1', NULL, '20', '60', '100', '2022-12-07 14:12:19', '2022-12-07 14:12:19', 83),
(109, 'Stomatologie', '20', 'MED6.11.2.2', NULL, '20', '60', '100', '2022-12-07 14:13:21', '2022-12-07 14:13:21', 83),
(110, 'Gériatrie', '20', 'MED6.11.3.1', NULL, '10', '30', '60', '2022-12-07 14:16:25', '2022-12-07 14:16:25', 84),
(111, 'Gérontologie', '20', 'MED6.11.3.2', NULL, '10', '30', '60', '2022-12-07 14:17:17', '2022-12-07 14:17:17', 84),
(112, 'Méthodologie de la recherche', '20', 'MED6.11.4.1', NULL, '30', '30', '80', '2022-12-07 14:20:15', '2022-12-07 14:20:15', 85),
(113, 'Management des services de santé-entreprenariat', '20', 'MED6.11.5.1', NULL, '30', '30', '80', '2022-12-07 14:24:19', '2022-12-07 14:24:19', 86),
(114, 'Stages cliniques', NULL, 'MED6.11.6.1', '120', NULL, NULL, '120', '2022-12-07 14:26:48', '2022-12-07 14:27:49', 87),
(115, 'Chimie organique 2', '30', 'PHARM2311', NULL, '20', '70', '120', '2022-12-08 08:24:33', '2022-12-08 08:25:35', 88),
(116, 'Biochimie clinique et métabolique', '30', 'PHARM2321', NULL, '20', '70', '120', '2022-12-08 08:27:12', '2022-12-08 08:29:30', 89),
(117, 'Parasitologie entomologie', '30', 'PHARM2331', NULL, '30', '40', '100', '2022-12-08 08:33:19', '2022-12-08 08:33:19', 90),
(118, 'Bactériologie-virologie', '30', 'PHARM2341', NULL, '30', '40', '100', '2022-12-08 08:35:13', '2022-12-08 08:35:13', 91),
(119, 'Biophysique 2', '30', 'PHARM2351', NULL, '20', '70', '120', '2022-12-08 08:37:01', '2022-12-08 08:37:01', 92),
(120, 'Anglais 2', '20', 'PHARM236', NULL, '10', '10', '40', '2022-12-08 08:38:33', '2022-12-08 08:38:33', 93),
(121, 'Chimie minérale', '30', 'PHARM2411', NULL, '20', '50', '100', '2022-12-08 08:46:49', '2022-12-08 08:46:49', 94),
(122, 'Chimie analytique', '30', 'PHARM2421', NULL, '35', '55', '120', '2022-12-08 08:51:15', '2022-12-08 08:51:15', 95),
(123, 'Biologie végétale', '20', 'PHARM2431', NULL, '30', '50', '100', '2022-12-08 08:53:14', '2022-12-08 08:53:14', 96),
(124, 'Physiologie générale', '20', 'PHARM2441', NULL, '10', '90', '120', '2022-12-08 08:54:52', '2022-12-08 08:54:52', 97),
(125, 'Stage d\'initiation', NULL, 'PHARM2451', NULL, '80', '40', '120', '2022-12-08 08:56:59', '2022-12-08 08:57:27', 98),
(126, 'Informatique 2', '15', 'PHARM2461', NULL, '5', '20', '40', '2022-12-08 08:59:11', '2022-12-08 08:59:11', 99),
(127, 'Physiologiespéciale', '30', 'PHARM3511', NULL, '30', '60', '120', '2022-12-08 09:01:16', '2022-12-08 09:01:16', 100),
(128, 'Bactériologie-virologie', '30', 'PHARM3521', NULL, '30', '40', '100', '2022-12-08 09:10:40', '2022-12-08 09:10:40', 101),
(129, 'Chimie analytique', '30', 'PHARM3531', NULL, '20', '50', '100', '2022-12-08 09:17:59', '2022-12-08 09:17:59', 102),
(130, 'Contrôle et essais physico-chimiques des médicaments', '20', 'PHARM3541', NULL, '30', '50', '100', '2022-12-08 09:20:51', '2022-12-08 09:20:51', 103),
(131, 'Pharmacognosie', '40', 'PHARM3551', NULL, '20', '20', '80', '2022-12-08 09:38:52', '2022-12-08 09:38:52', 104),
(132, 'Pharmacie galénique et biopharmacie', '40', 'PHARM3561', NULL, '20', '20', '80', '2022-12-08 09:42:06', '2022-12-08 09:42:06', 105),
(133, 'Informatique', '20', 'PHARM3571', NULL, '10', '10', '40', '2022-12-08 09:43:59', '2022-12-08 09:44:41', 106),
(134, 'Immunologie générale', '25', 'PHARM3611', NULL, '15', '30', '70', '2022-12-08 09:47:46', '2022-12-08 09:47:46', 107),
(135, 'Génétique médicale', '20', 'PHARM3612', NULL, '10', '20', '50', '2022-12-08 09:48:39', '2022-12-08 09:48:39', 107),
(136, 'Biochimie clinique', '20', 'PHARM3621', NULL, '10', '70', '100', '2022-12-08 09:50:19', '2022-12-08 09:50:19', 108),
(137, 'Chimie thérapeutique', '30', 'PHARM3631', NULL, '20', '50', '100', '2022-12-08 09:51:51', '2022-12-08 09:51:51', 109),
(138, 'Pharmacologie générale', '25', 'PHARM3641', NULL, '10', '35', '70', '2022-12-08 09:54:07', '2022-12-08 09:54:07', 110),
(139, 'Pharmacologie moléculaire', '20', 'PHARM3642', NULL, '10', '20', '50', '2022-12-08 09:55:03', '2022-12-08 09:55:03', 110),
(140, 'Bromatologie ', '20', 'PHARM3651', NULL, '10', '20', '50', '2022-12-08 09:56:55', '2022-12-08 09:56:55', 111),
(141, 'Toxicologie', '20', 'PHARM3652', NULL, '10', '40', '70', '2022-12-08 10:01:08', '2022-12-08 10:01:08', 111),
(142, 'Anglais', '10', 'PHARM3671', NULL, '10', '20', '40', '2022-12-08 10:02:47', '2022-12-08 10:02:47', 112),
(143, 'Santé publique et développement', '20', 'PHARM.O4711', NULL, '10', '50', '80', '2022-12-08 10:18:01', '2022-12-08 10:23:56', 113),
(144, 'Toxicologie', '20', 'PHARM.O4721', NULL, '20', '60', '100', '2022-12-08 10:20:31', '2022-12-08 10:23:25', 114),
(145, 'Hydrologie', '20', 'PHARM.O4731', NULL, '20', '40', '80', '2022-12-08 10:22:33', '2022-12-08 10:22:33', 115),
(146, 'Pharmacie galénique et biopharmacie', '20', 'PHARM.O4741', NULL, '10', '50', '80', '2022-12-08 10:27:39', '2022-12-08 10:27:39', 116),
(147, 'Pharmacologie appliquée 2', '20', 'PHARM.O4751', NULL, '10', '50', '80', '2022-12-08 10:29:20', '2022-12-08 10:29:20', 117),
(148, 'Plantes médicinales et phytothérapie', '20', 'PHARM.O4761', NULL, '20', '40', '80', '2022-12-08 10:31:25', '2022-12-08 10:31:25', 118),
(149, 'Développement et production des médicaments', '20', 'PHARM.O4771', NULL, '10', '30', '60', '2022-12-08 10:33:32', '2022-12-08 10:33:32', 119),
(150, 'Informatique', '20', 'PHARM.O4781', NULL, '10', '10', '40', '2022-12-08 10:35:10', '2022-12-08 10:35:10', 120),
(151, 'Anglais ', '20', 'PHARM.O4811', NULL, '10', '10', '40', '2022-12-08 10:39:06', '2022-12-08 10:39:06', 121),
(152, 'Recherche bibliographique', '20', 'PHARM.O4812', NULL, '10', '10', '40', '2022-12-08 10:40:13', '2022-12-08 10:40:13', 121),
(153, 'Législation', '30', 'PHARM.O4821', NULL, '10', '20', '60', '2022-12-08 10:42:06', '2022-12-08 10:42:06', 122),
(154, 'Secourisme', '20', 'PHARM.O4822', NULL, '10', '10', '40', '2022-12-08 10:43:17', '2022-12-08 10:43:17', 122),
(155, 'Sémiologie et pathologie générale', '30', 'PHARM.O4831', NULL, '10', '20', '60', '2022-12-08 10:45:21', '2022-12-08 10:45:21', 123),
(156, 'Eléments de vaccinologie', '20', 'PHARM.O4832', NULL, '10', '10', '40', '2022-12-08 10:46:46', '2022-12-08 10:46:46', 123),
(157, 'Hématologie', '20', 'PHARM.O4841', '10', NULL, '10', '40', '2022-12-08 10:48:28', '2022-12-08 10:49:31', 124),
(158, 'Mycologie médicale', '20', 'PHARM.O4842', NULL, '5', '5', '30', '2022-12-08 10:50:52', '2022-12-08 10:50:52', 124),
(159, 'Mycologie générale', '20', 'PHARM.O4843', NULL, '5', '5', '30', '2022-12-08 10:51:35', '2022-12-08 10:51:35', 124),
(160, 'Eléments de pharmacie clinique', '20', 'PHARM.O4851', NULL, '10', '10', '40', '2022-12-08 10:53:34', '2022-12-08 10:53:34', 125),
(161, 'Chimie thérapeutique', '30', 'PHARM.O4852', NULL, '5', '5', '40', '2022-12-08 10:54:17', '2022-12-08 10:54:17', 125),
(162, 'Conseils en officine', '20', 'PHARM.O4853', NULL, '10', '10', '40', '2022-12-08 10:55:12', '2022-12-08 10:55:12', 125),
(163, 'Stage d\'application 1', NULL, 'PHARM.O4861', '100', NULL, NULL, '100', '2022-12-08 10:56:40', '2022-12-08 10:57:02', 126),
(164, 'Economie de la Santé', '20', 'PHARM.O5911', NULL, '10', '30', '60', '2022-12-08 11:05:37', '2022-12-08 11:05:37', 127),
(165, 'Analyse des données statistiques ', '20', 'PHARM.O5912', NULL, '10', '10', '40', '2022-12-08 11:06:37', '2022-12-08 11:06:37', 127),
(166, 'Diététique et Nutrition', '20', 'PHARM.O5921', NULL, '10', '50', '80', '2022-12-08 11:09:04', '2022-12-08 11:09:04', 128),
(167, 'Phytopharmacie', '40', 'PHARM.O593', NULL, '20', '40', '100', '2022-12-08 11:17:56', '2022-12-08 11:17:56', 129),
(168, 'Pharmacie vétérinaire', '20', 'PHARM.O5941', NULL, '10', '10', '40', '2022-12-08 11:20:14', '2022-12-08 11:20:14', 130),
(169, 'Gestion d\'une ordonnance', '20', 'PHARM.O5942', NULL, '10', '10', '40', '2022-12-08 11:21:43', '2022-12-08 11:21:43', 130),
(170, 'Gestion de la qualité', '20', 'PHARM.O5951', NULL, '10', '70', '100', '2022-12-08 11:23:45', '2022-12-08 11:23:45', 131),
(171, 'Anglais', '20', 'PHARM.O5961', NULL, '10', '10', '40', '2022-12-08 11:25:28', '2022-12-08 11:25:28', 132),
(172, 'Stage d\'application 2', NULL, 'PHARM.O5971', '70', '', '50', '120', '2022-12-08 11:28:44', '2022-12-08 11:29:20', 133);

-- --------------------------------------------------------

--
-- Structure de la table `matieres`
--

CREATE TABLE `matieres` (
  `id` int NOT NULL,
  `nom_matiere` varchar(255) DEFAULT NULL,
  `Type_matiere` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `credit` varchar(255) DEFAULT NULL,
  `semestreId` int DEFAULT NULL,
  `nom_semestre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `matieres`
--

INSERT INTO `matieres` (`id`, `nom_matiere`, `Type_matiere`, `createdAt`, `updatedAt`, `reference`, `credit`, `semestreId`, `nom_semestre`) VALUES
(2, 'Chimie physique générale', 'THEORIQUE', '2022-06-10 13:06:08', '2022-06-14 13:08:38', 'MED1111', '6', NULL, NULL),
(3, 'Mathématiques statistiques', 'THEORIQUE', '2022-06-10 13:12:43', '2022-07-28 01:22:26', 'MED114', '6', NULL, NULL),
(4, 'Génétique', 'THEORIQUE', '2022-06-10 15:11:30', '2022-06-10 15:11:30', 'Med113', '5', NULL, NULL),
(5, 'Biologie cellullaire', 'THEORIQUE', '2022-06-10 15:15:47', '2022-06-10 15:15:47', 'Med112', '5', NULL, NULL),
(6, 'Anatomie générale', 'THEORIQUE', '2022-06-10 15:17:48', '2022-06-10 15:41:33', 'Med115', '6', NULL, NULL),
(7, 'Informatique', 'THEORIQUE', '2022-06-10 15:21:29', '2022-06-10 15:21:29', 'Med116', '2', NULL, NULL),
(8, 'Biochimie 2', 'THEORIQUE', '2022-06-10 15:24:48', '2022-06-10 15:24:48', 'Med231', '6', NULL, NULL),
(9, 'Histologie embryologie', 'THEORIQUE', '2022-06-10 15:28:19', '2022-06-10 15:28:19', 'Med232', '6', NULL, NULL),
(10, 'Biophysique', 'THEORIQUE', '2022-06-10 15:30:45', '2022-06-10 15:30:45', 'Med233', '5', NULL, NULL),
(11, 'Biohysique ', 'THEORIQUE', '2022-06-10 15:33:52', '2022-06-10 15:33:52', 'Med234', '5', NULL, NULL),
(12, 'Physiologie 2', 'THEORIQUE', '2022-06-10 15:36:13', '2022-06-10 15:36:13', 'Med235', '5', NULL, NULL),
(13, 'Anglais', 'THEORIQUE', '2022-06-10 15:38:39', '2022-06-10 15:38:39', 'Med236', '2', NULL, NULL),
(14, 'Parasitologie mycologie', 'THEORIQUE', '2022-06-10 15:43:26', '2022-06-10 15:43:26', 'Med351', '6', NULL, NULL),
(15, 'Bactériologie virologie', 'THEORIQUE', '2022-06-10 15:47:10', '2022-06-10 15:47:10', 'Med352', '6', NULL, NULL),
(16, 'Pharmacologie', 'THEORIQUE', '2022-06-10 15:50:20', '2022-06-10 15:50:20', 'Med353', '6', NULL, NULL),
(17, 'Sémiologie médicale', 'THEORIQUE', '2022-06-10 15:52:14', '2022-06-10 15:52:14', 'Med354', '6', NULL, NULL),
(18, 'Stage 1', 'PRATIQUE', '2022-06-10 15:54:34', '2022-06-10 15:54:34', 'Med355', '5', NULL, NULL),
(19, 'Informatique', 'PRATIQUE', '2022-06-10 15:58:23', '2022-06-10 15:58:23', 'Med356', '1', NULL, NULL),
(20, 'Physique', 'THEORIQUE', '2022-06-13 08:18:01', '2022-06-13 08:18:01', 'MED211', '4', NULL, NULL),
(21, 'Biophysique', 'THEORIQUE', '2022-06-13 08:21:56', '2022-06-13 08:21:56', 'Med122', '4', NULL, NULL),
(22, 'Med123 Biochimie-Biologie moléculaire', 'THEORIQUE', '2022-06-13 08:36:06', '2022-06-13 08:36:06', 'Med123', '6', NULL, NULL),
(23, 'Med124 Chimie organique', 'THEORIQUE', '2022-06-13 08:49:46', '2022-06-13 09:04:39', 'Med124', '4', NULL, NULL),
(24, 'Histologie-Embryologie', 'THEORIQUE', '2022-06-13 08:59:56', '2022-06-13 08:59:56', 'Med125', '5', NULL, NULL),
(25, 'Physiologie', 'THEORIQUE', '2022-06-13 09:07:00', '2022-06-13 09:07:00', 'Med126', '5', NULL, NULL),
(26, 'Langues', 'THEORIQUE', '2022-06-13 09:11:46', '2022-12-07 13:05:29', 'Med127', '2', 26, NULL),
(27, 'Sciences humaines et sociales', 'THEORIQUE', '2022-06-13 11:01:23', '2022-06-13 11:01:23', 'Med141', '6', NULL, NULL),
(28, 'Anatomie 2', 'THEORIQUE', '2022-06-13 11:09:42', '2022-06-13 11:09:42', 'Med142', '6', NULL, NULL),
(29, 'Soins infirmiers et secourisme', 'THEORIQUE', '2022-06-13 11:17:58', '2022-06-13 11:17:58', 'Med143', '6', NULL, NULL),
(33, 'Sémiologie médicale 1', 'THEORIQUE', '2022-06-13 11:23:05', '2022-06-13 11:30:08', 'Med 144', '5', NULL, NULL),
(34, 'Sémiologie Chirurgicale 1', 'THEORIQUE', '2022-06-13 11:32:25', '2022-06-13 11:32:25', 'Med 145', '5', NULL, NULL),
(35, 'Informatique', 'PRATIQUE', '2022-06-13 11:34:59', '2022-06-13 11:34:59', 'Med 146', '2', NULL, NULL),
(36, 'Anatomie pathologique générale', 'THEORIQUE', '2022-06-13 13:23:56', '2022-06-13 13:23:56', 'Med361', '70', NULL, NULL),
(37, 'Hématologie bioloogique-Immunologie-Biochimie clinique', 'THEORIQUE', '2022-06-13 13:28:44', '2022-06-13 13:28:44', 'Med362', '8', NULL, NULL),
(38, 'Sémiologie chirurgicale', 'THEORIQUE', '2022-06-13 13:35:21', '2022-06-13 13:35:21', 'Med363', '7', NULL, NULL),
(39, 'Stage 2', 'PRATIQUE', '2022-06-13 13:37:17', '2022-06-14 10:26:42', 'Med364', '6', NULL, NULL),
(40, 'Anglais', 'THEORIQUE', '2022-06-13 13:39:17', '2022-06-13 13:39:17', 'Med365', '2', NULL, NULL),
(42, 'Maladies infectieuses et tropicales', NULL, '2022-12-06 14:34:50', '2022-12-06 14:34:50', 'Med471', NULL, NULL, ''),
(43, 'Maladies infectieuses et tropicales', 'THEORIQUE', '2022-12-06 16:38:52', '2022-12-06 16:38:52', 'MED471', '6', 13, 'Semestre 7'),
(44, 'Urgences et réanimation', 'THEORIQUE', '2022-12-06 16:46:11', '2022-12-06 16:46:11', 'MED472', '6', 13, 'Semestre 7'),
(45, 'Hématologie clinique - Maladies de système', 'THEORIQUE', '2022-12-06 16:50:03', '2022-12-06 16:50:03', 'Med473', '6', 13, 'Semestre 7'),
(46, 'Oncologie', 'THEORIQUE', '2022-12-06 16:53:33', '2022-12-06 16:53:33', 'MED474', '5', 13, 'Semestre 7'),
(47, 'Informatique', 'THEORIQUE', '2022-12-06 16:56:03', '2022-12-06 16:56:03', 'MED475', '2', 13, 'Semestre 7'),
(48, 'Stage 4', 'PRATIQUE', '2022-12-06 16:56:54', '2022-12-06 17:01:10', 'MED476', '5', 13, 'Semestre 7'),
(49, 'Cardiologie-Chirurgie thoracique et cardio-vasculaire', 'THEORIQUE', '2022-12-07 10:48:09', '2022-12-07 10:48:09', 'MED481', '5', 14, 'Semestre 8'),
(50, 'Pneumologie', 'THEORIQUE', '2022-12-07 10:52:15', '2022-12-07 10:52:15', 'MED482', '4', 14, 'Semestre 8'),
(51, 'Hépato-gastro-entérologie chirurgie digestive', 'THEORIQUE', '2022-12-07 10:55:31', '2022-12-07 10:55:31', 'MED483', '5', NULL, 'Semestre 8'),
(52, 'Rhumatologie', 'THEORIQUE', '2022-12-07 10:59:46', '2022-12-07 10:59:46', 'MED484', '4', 14, 'Semestre 8'),
(53, 'Traumatologie Orthopédie', 'THEORIQUE', '2022-12-07 11:01:31', '2022-12-07 13:00:34', 'MED485', '5', 14, 'Semestre 8'),
(54, 'Langue3', 'THEORIQUE', '2022-12-07 11:04:33', '2022-12-07 11:04:33', 'MED486', '2', 14, 'Semestre 8'),
(55, 'Stage 3', 'PRATIQUE', '2022-12-07 11:11:20', '2022-12-07 11:11:20', 'MED487', '5', 14, 'Semestre 8'),
(56, 'Pédiatrie', 'THEORIQUE', '2022-12-07 11:17:12', '2022-12-07 11:17:12', 'MED591', '6', 15, 'Semestre 9'),
(57, 'Endocrinologie métabolisme nutrition', 'THEORIQUE', '2022-12-07 11:20:51', '2022-12-07 11:20:51', 'MED592', '6', 15, 'Semestre 9'),
(58, 'Urologie', 'THEORIQUE', '2022-12-07 11:24:36', '2022-12-07 11:24:36', 'MED593', '5', 15, 'Semestre 9'),
(59, 'Néphrologie', 'THEORIQUE', '2022-12-07 11:27:33', '2022-12-07 11:27:33', 'MED594', '5', 15, 'Semestre 9'),
(60, 'Anglais', 'THEORIQUE', '2022-12-07 11:31:46', '2022-12-07 11:31:46', 'MED595', '2', NULL, 'Semestre 9'),
(61, 'Stage 6', 'PRATIQUE', '2022-12-07 11:33:29', '2022-12-07 11:33:29', 'MED596', '6', 15, 'Semestre 9'),
(62, 'Gynécologie Obstétrique', 'THEORIQUE', '2022-12-07 11:37:58', '2022-12-07 11:37:58', 'MED5101', '6', 16, 'Semestre 10'),
(63, 'Neurologie Neurochirurgie Psychiatrie', 'THEORIQUE', '2022-12-07 11:42:40', '2022-12-07 11:42:40', 'MED5.10.2', '6', 16, 'Semestre 10'),
(64, 'Dermatologie et Vénérologie', 'THEORIQUE', '2022-12-07 11:47:13', '2022-12-07 11:47:13', 'MED5.10.3', '5', 16, 'Semestre 10'),
(65, 'Imagerie médicale', 'THEORIQUE', '2022-12-07 11:50:20', '2022-12-07 11:50:20', 'MED5.1.4', '5', 16, 'Semestre 10'),
(66, 'Informatique ', 'THEORIQUE', '2022-12-07 11:55:24', '2022-12-07 11:55:24', 'MED5.10.5', '2', 16, 'Semestre 10'),
(67, 'Stage 5', 'PRATIQUE', '2022-12-07 12:06:49', '2022-12-07 12:06:49', 'MED5.10.6', '6', NULL, 'Semestre 10'),
(68, 'Chimie physique générale', 'THEORIQUE', '2022-12-07 12:20:38', '2022-12-07 12:20:38', 'PHARM111', '6', 1, 'Semestre 1'),
(69, 'Biologie cellulaire', 'THEORIQUE', '2022-12-07 12:22:38', '2022-12-07 12:22:38', 'PHARM112', '5', 1, 'Semestre 1'),
(70, 'Génétique', 'THEORIQUE', '2022-12-07 12:24:34', '2022-12-07 12:24:34', 'PHARM113', '5', 1, 'Semestre 1'),
(71, 'Mathématiques statistiques', 'THEORIQUE', '2022-12-07 12:26:41', '2022-12-07 12:26:41', 'PHARM114', '6', 1, 'Semestre 1'),
(72, 'Anatomie générale', 'THEORIQUE', '2022-12-07 12:29:55', '2022-12-07 12:29:55', 'PHARM115', '6', 1, 'Semestre 1'),
(73, 'Informatique ', 'THEORIQUE', '2022-12-07 12:34:44', '2022-12-07 12:34:44', 'PHARM116', '2', 1, 'Semestre 1'),
(74, 'Physique', 'THEORIQUE', '2022-12-07 12:39:22', '2022-12-07 12:39:22', 'PHARM121', '4', 26, 'Semestre 2'),
(75, 'Biophysique', 'THEORIQUE', '2022-12-07 12:41:21', '2022-12-07 12:41:21', 'PHARM122', '3', 26, 'Semestre 2'),
(76, 'Biochimie-Biologie cellulaire', 'THEORIQUE', '2022-12-07 12:43:19', '2022-12-07 12:43:19', 'PHARM123', '5', 26, 'Semestre 2'),
(77, 'Chimie organique', 'THEORIQUE', '2022-12-07 12:48:56', '2022-12-07 12:48:56', '124', '4', 26, 'Semestre 2'),
(78, 'Histologie Embryologie', 'THEORIQUE', '2022-12-07 12:50:43', '2022-12-07 12:50:43', 'PHARM125', '4', 26, 'Semestre 2'),
(79, 'Botanique', 'THEORIQUE', '2022-12-07 12:52:13', '2022-12-07 12:52:13', 'PHARM126', '4', 26, 'Semestre 2'),
(80, 'Initiation à la connaissance du médicament', 'THEORIQUE', '2022-12-07 12:55:06', '2022-12-07 12:55:06', 'PHARM127', '4', 26, 'Semestre 2'),
(81, 'Langues', 'THEORIQUE', '2022-12-07 12:57:10', '2022-12-07 12:57:10', 'PHARM128', '2', 26, 'Semestre 2'),
(82, 'Ophtalmologie', 'THEORIQUE', '2022-12-07 14:06:58', '2022-12-07 14:06:58', 'MED6.11.1', '5', 30, 'Semestre 11'),
(83, 'ORL-Stomatologie', 'THEORIQUE', '2022-12-07 14:10:15', '2022-12-07 14:10:15', 'MED6.11.2.', '5', 31, 'Semestre 12'),
(84, 'Gériatrie-Gérontologie', 'THEORIQUE', '2022-12-07 14:15:13', '2022-12-07 14:15:13', 'MED6.11.3', '6', 30, 'Semestre 11'),
(85, 'Outils de base', 'THEORIQUE', '2022-12-07 14:18:54', '2022-12-07 14:18:54', 'MED6.11.4', '4', 30, 'Semestre 11'),
(86, 'Management', 'THEORIQUE', '2022-12-07 14:22:31', '2022-12-07 14:22:31', 'MED6.11.5', '4', 30, 'Semestre 11'),
(87, 'Stage', 'PRATIQUE', '2022-12-07 14:25:55', '2022-12-07 14:25:55', 'MED6.11.6', '6', 30, 'Semestre 11'),
(88, 'Chimie organique 2', 'THEORIQUE', '2022-12-08 08:23:43', '2022-12-08 08:31:52', 'PHARM231', '6', 4, 'Semestre 2'),
(89, 'Biochimie 2', 'THEORIQUE', '2022-12-08 08:26:13', '2022-12-08 08:31:25', 'PHARM232', '6', 4, 'Semestre 2'),
(90, 'Parasitologie entomologie', 'THEORIQUE', '2022-12-08 08:30:57', '2022-12-08 08:30:57', 'PHARM233', '5', 4, 'Semestre 3'),
(91, 'Bactériologie-virologie', 'THEORIQUE', '2022-12-08 08:34:07', '2022-12-08 08:34:07', 'PHARM234', '5', 4, 'Semestre 3'),
(92, 'Biophysique 2', 'THEORIQUE', '2022-12-08 08:36:00', '2022-12-08 08:36:00', 'PHARM235', '6', 4, 'Semestre 3'),
(93, 'Anglais', 'THEORIQUE', '2022-12-08 08:37:42', '2022-12-08 08:37:42', 'PHARM236', '2', 4, 'Semestre 3'),
(94, 'Chimie minérale', 'THEORIQUE', '2022-12-08 08:40:45', '2022-12-08 08:40:45', 'PHARM241', '5', 3, 'Semestre 4'),
(95, 'Chimie analytique', 'THEORIQUE', '2022-12-08 08:48:39', '2022-12-08 08:51:35', 'PHARM242', '6', 3, 'Semestre 4'),
(96, 'Biologie végétale', 'THEORIQUE', '2022-12-08 08:52:25', '2022-12-08 08:52:25', 'PHARM243', '5', 3, 'Semestre 4'),
(97, 'Physiologie générale', 'THEORIQUE', '2022-12-08 08:54:03', '2022-12-08 08:54:03', 'PHARM244', '6', 3, 'Semestre 4'),
(98, 'Stage d\'initiation', 'PRATIQUE', '2022-12-08 08:55:48', '2022-12-08 08:55:48', 'PHAR245', '6', 3, 'Semestre 4'),
(99, 'Informatique ', 'THEORIQUE', '2022-12-08 08:58:16', '2022-12-08 08:58:16', 'PHARM246', '2', 3, 'Semestre 4'),
(100, 'Physiologie ', 'THEORIQUE', '2022-12-08 09:00:18', '2022-12-08 09:00:18', 'PHARM351', '6', 5, 'Semestre 5'),
(101, 'Bactériologie-virologie', 'THEORIQUE', '2022-12-08 09:07:44', '2022-12-08 09:07:44', 'PHARM352', '5', 5, 'Semestre 5'),
(102, 'Chimie analytique', 'THEORIQUE', '2022-12-08 09:16:32', '2022-12-08 09:16:32', 'PHARM353', '5', 5, 'Semestre 5'),
(103, 'Contrôle et essais physico-chimiques des médicaments', 'THEORIQUE', '2022-12-08 09:20:00', '2022-12-08 09:20:00', 'PHARM354', '5', 5, 'Semestre 5'),
(104, 'Pharmacognosie', 'THEORIQUE', '2022-12-08 09:35:21', '2022-12-08 09:35:21', 'PHARM355', '4', 5, 'Semestre 5'),
(105, 'Pharmacie galénique', 'THEORIQUE', '2022-12-08 09:40:14', '2022-12-08 09:40:14', 'PHARM356', '4', 5, 'Semestre 5'),
(106, 'Informatique', 'THEORIQUE', '2022-12-08 09:42:57', '2022-12-08 09:42:57', 'PHARM357', '2', 5, 'Semestre 5'),
(107, 'Immunologie-génétique médicale', 'THEORIQUE', '2022-12-08 09:46:45', '2022-12-08 09:46:45', 'PHARM361', '6', 12, 'Semestre 6'),
(108, 'Biochimie clinique', 'THEORIQUE', '2022-12-08 09:49:22', '2022-12-08 09:49:22', 'PHARM362', '5', 12, 'Semestre 6'),
(109, 'Chimie thérapeutique', 'THEORIQUE', '2022-12-08 09:51:04', '2022-12-08 09:51:04', 'PHARM363', '5', 12, 'Semestre 6'),
(110, 'Pharmacologie', 'THEORIQUE', '2022-12-08 09:52:42', '2022-12-08 09:52:42', 'PHARM364', '6', 12, 'Semestre 6'),
(111, 'Bromatologie toxicologie', 'THEORIQUE', '2022-12-08 09:56:10', '2022-12-08 09:56:10', 'PHARM365', '6', 12, 'Semestre 6'),
(112, 'Anglais ', 'THEORIQUE', '2022-12-08 10:01:58', '2022-12-08 10:01:58', 'PHARM367', '2', 12, 'Semestre 6'),
(113, 'Santé publique et développement', 'THEORIQUE', '2022-12-08 10:17:16', '2022-12-08 10:24:25', 'PHARM.O471', '4', 13, 'Semestre 7'),
(114, 'Toxicologie', 'THEORIQUE', '2022-12-08 10:19:41', '2022-12-08 10:24:48', 'PHARM.O472', '5', 13, 'Semestre 7'),
(115, 'Hydrologie et thermalisme', 'THEORIQUE', '2022-12-08 10:21:28', '2022-12-08 10:25:11', 'PHARM.O473', '4', 13, 'Semestre 7'),
(116, 'Pharmacie galénique et biopharmacie', 'THEORIQUE', '2022-12-08 10:26:09', '2022-12-08 10:26:09', 'PHARM.O474', '4', 13, 'Semestre 7'),
(117, 'Pharmacologie appliquée 2', 'THEORIQUE', '2022-12-08 10:28:25', '2022-12-08 10:28:25', 'PHARM.O475', '4', 13, 'Semestre 7'),
(118, 'Plantes médicinales et phytothérapie', 'THEORIQUE', '2022-12-08 10:30:38', '2022-12-08 10:30:38', 'PHARM.O476', '4', 13, 'Semestre 7'),
(119, 'Développement et production des médicaments', 'THEORIQUE', '2022-12-08 10:32:31', '2022-12-08 10:32:31', 'PHARM.O477', '3', 13, 'Semestre 7'),
(120, 'Informatique ', 'THEORIQUE', '2022-12-08 10:34:14', '2022-12-08 10:34:14', 'PHARM.O478', '2', 13, 'Semestre 7'),
(121, 'Anglais - Documentation 1', 'THEORIQUE', '2022-12-08 10:37:36', '2022-12-08 10:37:36', 'PHARM.O481', '4', 14, 'Semestre 8'),
(122, 'Législation et secourisme', 'THEORIQUE', '2022-12-08 10:41:10', '2022-12-08 10:41:10', 'PHARM.O482', '5', 14, 'Semestre 8'),
(123, 'Sémiologie, pathologie générale et vaccinologie', 'THEORIQUE', '2022-12-08 10:44:24', '2022-12-08 10:44:24', 'PHARM.O483', '5', 14, 'Semestre 8'),
(124, 'Sciences biologiques', 'THEORIQUE', '2022-12-08 10:47:27', '2022-12-08 10:47:27', 'PHARM.O484', '5', 14, 'Semestre 8'),
(125, 'Sciences du médicament 1', 'THEORIQUE', '2022-12-08 10:52:38', '2022-12-08 10:52:38', 'PHARM.O485', '6', 14, 'Semestre 8'),
(126, 'Stage d\'application 1', 'PRATIQUE', '2022-12-08 10:56:07', '2022-12-08 10:56:07', 'PHARM.O486', '5', 14, 'Semestre 8'),
(127, 'Sciences de la Santé', 'THEORIQUE', '2022-12-08 11:04:28', '2022-12-08 11:04:28', 'PHARM.O591', '5', 15, 'Semestre 9'),
(128, 'Diététique et Nutrition', 'THEORIQUE', '2022-12-08 11:08:18', '2022-12-08 11:08:18', 'PHARM.O592', '4', 15, 'Semestre 9'),
(129, 'Phytopharmacie', 'THEORIQUE', '2022-12-08 11:12:41', '2022-12-08 11:12:41', 'PHARM.O593', '5', 15, 'Semestre 9'),
(130, 'Sciences du médicament', 'THEORIQUE', '2022-12-08 11:18:41', '2022-12-08 11:18:41', 'PHARM.O594', '4', 15, 'Semestre 9'),
(131, 'Gestion de la qualité', 'THEORIQUE', '2022-12-08 11:22:58', '2022-12-08 11:22:58', 'PHARM.O595', '5', 15, 'Semestre 9'),
(132, 'Anglais', 'THEORIQUE', '2022-12-08 11:24:37', '2022-12-08 11:24:37', 'PHARM.O596', '2', 15, 'Semestre 9'),
(133, 'Stage d\'application', 'PRATIQUE', '2022-12-08 11:26:32', '2022-12-08 11:26:32', 'PHARM.O597', '5', 15, 'Semestre 9');

-- --------------------------------------------------------

--
-- Structure de la table `niveauxes`
--

CREATE TABLE `niveauxes` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `niveauxes`
--

INSERT INTO `niveauxes` (`id`, `name`, `createdAt`, `updatedAt`, `userId`) VALUES
(1, 'Licence', '2022-02-24 07:17:19', '2022-07-01 11:59:46', 94),
(2, 'Master', '2022-02-24 07:17:34', '2022-07-01 12:00:35', 94),
(3, 'Doctorat', '2022-06-13 12:19:06', '2022-07-01 12:01:08', 94);

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

CREATE TABLE `notes` (
  `id` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `matiereId` int DEFAULT NULL,
  `elementId` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `Cycle` varchar(255) DEFAULT NULL,
  `classprofId` int DEFAULT NULL,
  `semestreId` int DEFAULT NULL,
  `categorie` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `anonymat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `notes`
--

INSERT INTO `notes` (`id`, `createdAt`, `updatedAt`, `matiereId`, `elementId`, `userId`, `Cycle`, `classprofId`, `semestreId`, `categorie`, `note`, `anonymat`) VALUES
(18, '2023-02-24 12:19:47', '2023-02-24 12:19:47', 3, 2, 189, '2022-2023', 1, 1, 'EXAMEN', '9', NULL),
(19, '2023-02-24 12:19:47', '2023-02-24 12:19:47', 3, 2, 21, '2022-2023', 1, 1, 'EXAMEN', '5', NULL),
(20, '2023-02-24 12:33:32', '2023-02-24 12:33:32', 3, 3, 189, '2022-2023', 1, 1, 'DEVOIR', '12', NULL),
(21, '2023-02-24 12:33:32', '2023-02-24 12:33:32', 3, 3, 21, '2022-2023', 1, 1, 'DEVOIR', '15', NULL),
(22, '2023-02-24 16:58:48', '2023-02-24 16:58:48', 3, 3, 189, '2022-2023', 1, 1, 'EXAMEN', '12', NULL),
(23, '2023-02-24 16:58:48', '2023-02-24 16:58:48', 3, 3, 21, '2022-2023', 1, 1, 'EXAMEN', '15', NULL),
(26, '2023-02-26 19:45:58', '2023-02-26 19:45:58', 2, 1, 189, '2022-2023', 1, 1, 'DEVOIR', '12', NULL),
(27, '2023-02-26 19:45:58', '2023-02-26 19:45:58', 2, 1, 21, '2022-2023', 1, 1, 'DEVOIR', '15', NULL),
(28, '2023-02-28 02:37:28', '2023-02-28 02:37:28', 3, 3, 21, '2022-2023', 1, 1, 'TP', '15', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `notifiations`
--

CREATE TABLE `notifiations` (
  `id` int NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `paiements`
--

CREATE TABLE `paiements` (
  `id` int NOT NULL,
  `date` date DEFAULT NULL,
  `motif_paiement` varchar(255) DEFAULT NULL,
  `montant` varchar(255) DEFAULT NULL,
  `utilisateur` varchar(255) DEFAULT NULL,
  `mode_paiement` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int DEFAULT NULL,
  `admissionId` int DEFAULT NULL,
  `Cycle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `paiements`
--

INSERT INTO `paiements` (`id`, `date`, `motif_paiement`, `montant`, `utilisateur`, `mode_paiement`, `createdAt`, `updatedAt`, `userId`, `admissionId`, `Cycle`) VALUES
(5, '2022-10-29', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov', '500000', 'administrateur', 'Espece', '2022-10-29 10:30:10', '2022-12-29 22:08:38', 286, 130, NULL),
(6, '2022-11-07', 'Frais inscription administrative,Frais inscription pedagogique/Oct', '500000', 'FAYE Mame Diene', 'Versement bancaire', '2022-11-07 16:01:12', '2022-11-07 16:01:12', 189, 8, NULL),
(7, '2022-11-07', 'Frais inscription pedagogique/Avril,Frais inscription pedagogique/Mai,Frais inscription pedagogique/Juin,Frais inscription pedagogique/Juil,Frais inscription pedagogique/Aout', '1400000', 'FAYE Mame Diene', 'Versement bancaire', '2022-11-07 16:02:43', '2022-11-07 16:02:43', 37, 161, NULL),
(11, '2022-11-24', 'Frais inscription administrative,Frais inscription pedagogique/Oct', '400000', 'FAYE Mame Diene', 'Versement bancaire', '2022-11-24 10:25:21', '2022-11-24 10:25:21', 18, 33, NULL),
(12, '2022-11-24', 'Frais inscription administrative', '120000', 'FAYE Mame Diene', 'Versement bancaire', '2022-11-24 10:28:28', '2022-11-24 10:28:28', 81, 93, NULL),
(15, '2022-11-29', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév,Frais inscription pedagogique/Mars', '2.000000', 'FAYE Mame Diene', 'Versement bancaire', '2022-11-29 11:22:36', '2022-11-29 11:22:36', 248, 75, NULL),
(16, '2022-11-29', 'Frais inscription administrative', '280000', 'FAYE Mame Diene', 'Versement bancaire', '2022-11-29 13:35:47', '2022-11-29 13:35:47', 8, 122, NULL),
(17, '2022-11-29', 'Frais inscription administrative', '230000', 'FAYE Mame Diene', 'Versement bancaire', '2022-11-29 13:49:52', '2022-11-29 13:49:52', 40, 143, NULL),
(18, '2022-11-29', 'Frais inscription administrative', '120000', 'FAYE Mame Diene', 'Versement bancaire', '2022-11-29 13:53:53', '2022-11-29 13:53:53', 351, 211, NULL),
(19, '2022-11-30', 'Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév', '1320000', 'FAYE Mame Diene', 'Carte bancaire', '2022-11-30 11:12:25', '2022-11-30 11:12:25', 27, 145, NULL),
(23, '2022-10-17', 'Frais inscription administrative,Frais inscription pedagogique/Oct', '400000', 'FAYE Mame Diene', 'Carte bancaire', '2022-12-05 11:39:50', '2022-12-05 11:39:50', 190, 82, NULL),
(24, '2022-11-08', 'Frais inscription pedagogique/Nov', '280000', 'FAYE Mame Diene', 'Carte bancaire', '2022-12-05 11:40:45', '2022-12-05 11:40:45', 190, 82, NULL),
(25, '2022-10-24', 'Frais inscription administrative,Frais inscription pedagogique/Oct', '260000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-05 11:49:10', '2022-12-05 11:49:10', 251, 80, NULL),
(26, '2022-10-24', 'Frais inscription administrative', '120000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-05 11:50:02', '2022-12-05 11:50:02', 252, 81, NULL),
(27, '2022-07-24', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc', '940000', 'FAYE Mame Diene', 'Espece', '2022-12-05 12:01:52', '2022-12-05 12:01:52', 296, 149, NULL),
(28, '2022-09-20', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév,Frais inscription pedagogique/Mars', '2120000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-05 12:06:44', '2022-12-05 12:06:44', 232, 54, NULL),
(29, '2022-10-21', 'Frais inscription administrative,Frais inscription pedagogique/Oct', '520000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-05 12:10:44', '2022-12-05 12:10:44', 277, 115, NULL),
(30, '2022-09-26', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév', '1520000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-05 12:12:35', '2022-12-05 12:12:35', 215, 20, NULL),
(31, '2022-11-27', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév', '1520000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-05 12:13:33', '2022-12-05 12:13:33', 216, 21, NULL),
(32, '2022-09-28', 'Frais inscription administrative,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév', '1520000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-05 12:14:48', '2022-12-05 12:14:48', 278, 116, NULL),
(33, '2022-10-07', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc', '960000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-05 12:16:25', '2022-12-05 12:16:25', 268, 106, NULL),
(34, '2022-10-11', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév', '1520000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-05 12:17:20', '2022-12-05 12:17:20', 233, 55, NULL),
(35, '2022-10-17', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov', '680000', 'FAYE Mame Diene', 'Espece', '2022-12-05 12:18:44', '2022-12-05 12:18:44', 269, 107, NULL),
(36, '2022-10-17', 'Frais inscription administrative', '120000', 'FAYE Mame Diene', 'Espece', '2022-12-05 12:20:11', '2022-12-05 12:20:11', 276, 114, NULL),
(37, '2022-10-31', 'Frais inscription administrative', '120000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-05 12:22:46', '2022-12-05 12:22:46', 274, 113, NULL),
(38, '2022-11-02', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév,Frais inscription pedagogique/Mars', '2800000', 'FAYE Mame Diene', 'Carte bancaire', '2022-12-05 12:32:39', '2022-12-05 12:32:39', 228, 50, NULL),
(39, '2022-11-07', 'Frais inscription administrative,Frais inscription pedagogique/Oct', '500000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-05 12:36:39', '2022-12-05 12:36:39', 189, 8, NULL),
(40, '2022-11-14', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov', '820000', 'FAYE Mame Diene', 'Espece', '2022-12-05 12:40:26', '2022-12-05 12:40:26', 312, 178, NULL),
(41, '2022-11-14', 'Frais inscription administrative,Frais inscription pedagogique/Oct', '400000', 'FAYE Mame Diene', 'Espece', '2022-12-05 12:41:44', '2022-12-05 12:41:44', 305, 166, NULL),
(42, '2022-11-24', 'Frais inscription administrative,Frais inscription pedagogique/Oct', '380000', 'FAYE Mame Diene', 'Espece', '2022-12-05 12:43:45', '2022-12-05 12:43:45', 345, 210, NULL),
(43, '2022-11-24', 'Frais inscription administrative,Frais inscription pedagogique/Oct', '560000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-05 12:45:28', '2022-12-05 12:45:28', 340, 206, NULL),
(44, '2022-09-13', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév', '1520000', 'FAYE Mame Diene', 'Carte bancaire', '2022-12-05 12:46:27', '2022-12-05 12:46:27', 207, 15, NULL),
(45, '2022-10-05', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc', '960000', 'FAYE Mame Diene', 'Carte bancaire', '2022-12-05 12:47:26', '2022-12-05 12:47:26', 226, 44, NULL),
(46, '2022-09-26', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév', '1520000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-05 12:48:17', '2022-12-05 12:48:17', 205, 14, NULL),
(47, '2022-10-26', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév', '1520000', 'FAYE Mame Diene', 'Carte bancaire', '2022-12-05 12:50:19', '2022-12-05 12:50:19', 242, 68, NULL),
(48, '2022-10-26', 'Frais inscription administrative,Frais inscription pedagogique/Oct', '380000', 'FAYE Mame Diene', NULL, '2022-12-05 12:52:37', '2022-12-05 12:52:37', 299, 150, NULL),
(49, '2022-10-31', 'Frais inscription administrative,Frais inscription pedagogique/Oct', '400000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-05 12:53:20', '2022-12-05 12:53:20', 223, 39, NULL),
(50, '2022-11-03', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév', '1520000', 'FAYE Mame Diene', NULL, '2022-12-05 12:54:07', '2022-12-05 12:54:07', 34, 162, NULL),
(51, '2022-11-14', 'Frais inscription administrative', '120000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-05 12:55:36', '2022-12-05 12:55:36', 87, 48, NULL),
(52, '2022-11-21', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév', '1400000', 'FAYE Mame Diene', 'Carte bancaire', '2022-12-05 12:56:50', '2022-12-05 12:56:50', 82, 164, NULL),
(53, '2022-10-17', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév', '1520000', 'FAYE Mame Diene', 'Carte bancaire', '2022-12-05 12:58:30', '2022-12-05 12:58:30', 22, 142, NULL),
(54, '2022-10-31', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv', '1400000', 'FAYE Mame Diene', 'Carte bancaire', '2022-12-05 13:11:55', '2022-12-05 13:11:55', 290, 134, NULL),
(55, NULL, 'Frais inscription administrative,Frais inscription pedagogique/Oct', '500000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-05 13:16:05', '2022-12-05 13:16:05', 44, 144, NULL),
(56, '2022-11-07', 'Frais inscription administrative,Frais inscription pedagogique/Oct', '400000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-05 13:19:31', '2022-12-05 13:19:31', 52, 147, NULL),
(57, '2022-11-30', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév', '1520000', 'FAYE Mame Diene', 'Carte bancaire', '2022-12-05 13:20:23', '2022-12-05 13:20:23', 27, 145, NULL),
(58, '2022-11-29', 'Frais inscription administrative', '100000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-05 13:22:45', '2022-12-05 13:22:45', 40, 143, NULL),
(59, '2022-10-31', 'Frais inscription administrative', '120000', 'FAYE Mame Diene', 'Espece', '2022-12-05 13:24:55', '2022-12-05 13:24:55', 288, 133, NULL),
(60, '2022-11-07', 'Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév', '1400000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-05 13:25:34', '2022-12-05 13:25:34', 288, 133, NULL),
(61, '2022-11-29', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév,Frais inscription pedagogique/Mars', '2000000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-05 13:26:54', '2022-12-05 13:26:54', 248, 75, NULL),
(62, '2022-10-17', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév', '1500000', 'FAYE Mame Diene', 'Carte bancaire', '2022-12-05 13:29:23', '2022-12-05 13:29:23', 60, 174, NULL),
(63, '2022-10-24', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv', '1500000', 'FAYE Mame Diene', 'Carte bancaire', '2022-12-05 13:30:20', '2022-12-05 13:30:20', 42, 177, NULL),
(64, '2022-10-24', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv', '1510000', 'FAYE Mame Diene', 'Carte bancaire', '2022-12-05 13:31:09', '2022-12-05 13:31:09', 59, 173, NULL),
(65, '2022-11-29', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv', '1450000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-05 13:32:48', '2022-12-05 13:32:48', 311, 172, NULL),
(66, '2022-09-19', 'Frais inscription administrative', '100000', 'FAYE Mame Diene', 'Espece', '2022-12-05 13:33:46', '2022-12-05 13:33:46', 79, 90, NULL),
(67, '2022-12-05', 'Frais inscription pedagogique/Déc', '280000', 'FAYE Mame Diene', 'Carte bancaire', '2022-12-05 14:01:51', '2022-12-05 14:01:51', 190, 82, NULL),
(68, '2022-10-09', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc', '940000', 'FAYE Mame Diene', 'Carte bancaire', '2022-12-06 10:33:02', '2022-12-06 10:33:02', 70, 92, NULL),
(69, '2022-11-24', 'Frais inscription administrative,Frais inscription pedagogique/Oct', '400000', 'FAYE Mame Diene', NULL, '2022-12-06 10:36:47', '2022-12-06 10:36:47', 77, 88, NULL),
(70, '2022-12-09', 'Frais inscription pedagogique/Nov', '280000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-09 10:17:33', '2022-12-09 10:17:33', 52, 147, NULL),
(71, '2022-12-09', 'Frais inscription pedagogique/Janv', '280000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-09 10:27:53', '2022-12-09 10:27:53', 310, 171, NULL),
(72, '2022-12-09', 'Frais inscription administrative,Frais inscription pedagogique/Oct', '400000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-09 10:29:08', '2022-12-09 10:29:08', 68, 179, NULL),
(73, '2022-12-13', 'Frais inscription administrative,Frais inscription pedagogique/Oct', '525.000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-13 08:58:40', '2022-12-13 08:58:40', 221, 128, NULL),
(74, '2022-12-13', 'Frais inscription administrative', '120000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-13 09:29:27', '2022-12-13 09:29:27', 319, 186, NULL),
(75, '2022-12-13', 'Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv', '962000', 'administrateur', 'Versement bancaire', '2022-12-13 10:01:46', '2022-12-29 19:55:41', 286, 130, NULL),
(76, '2022-12-14', 'Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév,Frais inscription pedagogique/Mars', '450.000', 'FAYE Mame Diene', 'Carte bancaire', '2022-12-14 10:50:53', '2022-12-14 10:50:53', 75, 86, NULL),
(77, '2022-12-14', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv', '1420000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-14 10:52:00', '2022-12-14 10:52:00', 249, 76, NULL),
(78, '2022-12-14', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov', '820000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-14 11:12:18', '2022-12-14 11:12:18', 285, 126, NULL),
(79, '2022-12-19', 'Frais inscription pedagogique/Déc', '200000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-19 14:58:02', '2022-12-19 14:58:02', 312, 178, NULL),
(80, '2022-12-19', 'Frais inscription pedagogique/Oct', '280000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-19 15:00:06', '2022-12-19 15:00:06', 87, 48, NULL),
(81, '2022-12-19', 'Frais inscription pedagogique/Nov', '280000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-19 15:02:26', '2022-12-19 15:02:26', 299, 150, NULL),
(82, '2022-12-19', 'Frais inscription pedagogique/Oct', '100000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-19 15:04:26', '2022-12-19 15:04:26', 8, 122, NULL),
(83, '2022-12-19', 'Frais inscription administrative', '120000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-19 15:14:56', '2022-12-19 15:14:56', 356, 213, NULL),
(84, '2022-12-19', 'Frais inscription pedagogique/Nov', '280000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-19 15:27:50', '2022-12-19 15:27:50', 333, 200, NULL),
(85, '2022-12-20', 'Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév', '1400000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-20 15:03:11', '2022-12-20 15:03:11', 40, 143, NULL),
(86, '2022-12-20', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév', '1520000', 'FAYE Mame Diene', 'Versement bancaire', '2022-12-20 15:11:33', '2022-12-20 15:11:33', 358, 216, NULL),
(88, '2023-01-03', 'Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév,Frais inscription pedagogique/Mars', '840000', 'FAYE Mame Diene', 'Carte bancaire', '2023-01-03 12:57:55', '2023-01-03 12:57:55', 225, 41, NULL),
(91, '2023-01-04', 'Frais inscription pedagogique/Janv', '280000', 'FAYE Mame Diene', 'Carte bancaire', '2023-01-04 16:57:42', '2023-01-04 16:57:42', 190, 82, NULL),
(128, '2023-01-17', 'Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév', '840000', 'FAYE Mame Diene', 'Carte bancaire', '2023-01-18 12:10:28', '2023-01-18 12:10:28', 70, 92, NULL),
(129, '2023-01-13', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc', '940000', 'FAYE Mame Diene', 'Versement bancaire', '2023-01-18 12:12:04', '2023-01-18 12:12:04', 20, 140, NULL),
(130, '2023-01-12', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc', '960000', 'FAYE Mame Diene', 'Versement bancaire', '2023-01-18 12:14:01', '2023-01-18 12:14:01', 350, 209, NULL),
(131, '2023-01-12', 'Frais inscription pedagogique/Nov', '140000', 'FAYE Mame Diene', 'Versement bancaire', '2023-01-18 12:14:42', '2023-01-18 12:14:42', 251, 80, NULL),
(132, '2023-01-12', 'Frais inscription administrative,Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov', '680000', 'FAYE Mame Diene', 'Carte bancaire', '2023-01-18 12:15:52', '2023-01-18 12:15:52', 324, 191, NULL),
(133, '2023-01-09', 'Frais inscription pedagogique/Nov', '280000', 'FAYE Mame Diene', 'Versement bancaire', '2023-01-18 12:17:08', '2023-01-18 12:17:08', 50, 22, NULL),
(134, '2023-01-09', 'Frais inscription pedagogique/Oct', '280000', 'FAYE Mame Diene', 'Versement bancaire', '2023-01-18 12:19:22', '2023-01-18 12:19:22', 319, 186, NULL),
(135, '2023-01-09', 'Frais inscription pedagogique/Déc', '280000', 'FAYE Mame Diene', 'Versement bancaire', '2023-01-18 12:22:05', '2023-01-18 12:22:05', 269, 107, NULL),
(136, '2023-01-09', 'Frais inscription pedagogique/Nov', '280000', 'FAYE Mame Diene', 'Versement bancaire', '2023-01-18 12:22:48', '2023-01-18 12:22:48', 87, 48, NULL),
(137, '2023-01-09', 'Frais inscription pedagogique/Déc', '280000', 'FAYE Mame Diene', 'Versement bancaire', '2023-01-18 12:23:48', '2023-01-18 12:23:48', 52, 147, NULL),
(138, '2023-01-09', 'Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc', '840000', 'FAYE Mame Diene', 'Versement bancaire', '2023-01-18 13:06:09', '2023-01-18 13:06:09', 359, 217, NULL),
(139, '2023-02-06', 'Frais inscription pedagogique/Janv', '280000', 'FAYE Mame Diene', 'Versement bancaire', '2023-02-06 15:53:08', '2023-02-06 15:53:08', 333, 200, NULL),
(140, '2023-02-06', 'Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov', '560000', 'FAYE Mame Diene', 'Versement bancaire', '2023-02-06 16:04:08', '2023-02-06 16:04:08', 331, 198, NULL),
(141, '2023-02-06', 'Frais inscription pedagogique/Janv', '280000', 'FAYE Mame Diene', 'Versement bancaire', '2023-02-06 16:12:12', '2023-02-06 16:12:12', 359, 217, NULL),
(142, '2023-02-07', 'Frais inscription pedagogique/Fév', '280000', 'FAYE Mame Diene', 'Carte bancaire', '2023-02-07 12:37:17', '2023-02-07 12:37:17', 190, 82, NULL),
(143, '2023-02-07', 'Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv', '560000', 'FAYE Mame Diene', 'Versement bancaire', '2023-02-07 12:37:53', '2023-02-07 12:37:53', 79, 90, NULL),
(144, '2023-02-27', 'Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév', '1400000', 'FAYE Mame Diene', 'Versement bancaire', '2023-02-27 15:02:20', '2023-02-27 15:02:20', 274, 113, NULL),
(145, '2023-02-27', 'Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév', '1400000', 'FAYE Mame Diene', 'Versement bancaire', '2023-02-27 15:04:20', '2023-02-27 15:04:20', 274, 113, NULL),
(146, '2023-02-27', 'Frais inscription pedagogique/Oct,Frais inscription pedagogique/Nov,Frais inscription pedagogique/Déc,Frais inscription pedagogique/Janv,Frais inscription pedagogique/Fév', '1400000', 'FAYE Mame Diene', 'Versement bancaire', '2023-02-27 15:06:50', '2023-02-27 15:06:50', 274, 113, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `paiement_tarif`
--

CREATE TABLE `paiement_tarif` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `paiementId` int NOT NULL,
  `tarificationId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `parents`
--

CREATE TABLE `parents` (
  `id` int NOT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `confirm_password` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT 'activated',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `parents`
--

INSERT INTO `parents` (`id`, `prenom`, `nom`, `email`, `tel`, `username`, `password`, `confirm_password`, `etat`, `createdAt`, `updatedAt`) VALUES
(1, 'Seydina ', 'MBENGUE', 'seydinambengue@outlook.com', '777180577', 'MMBENGUE', '$2a$08$Wi7lsc0MKu0c9jw7ZqITz.cowDMmEHd/u55v7nQuyBwv5v4KrDz4.', NULL, 'activated', '2022-10-05 10:31:45', '2022-10-05 10:31:45'),
(2, 'Papa ', 'SALL', 'papa_sall57@hotmail.fr', '776317666', 'Papa SALL', '$2a$08$Lr5BzXRxzZW/5IfZYeSSSuQ.ZoEkao0HnEA8pzEaICnVSAqLxbT8y', NULL, 'activated', '2022-10-05 12:06:50', '2022-12-06 11:31:44'),
(3, 'André Daniel', 'SANE', 'danielsane66@gmail.com', '775636638', 'André Daniel', '$2a$08$6GwJXJ1RfrLo30gcoNwG2OWfiZToP8R9XuxzdzOPawvNve6EjS496', 'andrésane66', 'activated', '2022-12-02 10:38:01', '2022-12-02 10:38:01'),
(4, 'Franck H.', 'HANTO', 'hantoherve@gmail.com', '+22997074276', 'papasourou', '$2a$08$YXS/9oSwqxS0qAju11q6fOzDpIiWh93oZjKbi5CYjSF8jOJT9qBNy', '08067700', 'activated', '2022-12-12 13:02:30', '2022-12-12 13:02:30'),
(5, 'Mouhamadou Saïdou ', 'DIALLO', 'msaidou.diallo@senelec.sn', '776406298', 'saidou', '$2a$08$/msF4VvkWJSj2q/Lj2EF.ezc.u.gO0q70lyrmYatIQ7VCPIiZEemi', 'papaaïssatou', 'activated', '2022-12-13 13:47:50', '2022-12-13 13:47:50'),
(6, ' MAX Kevin', 'MBANDA', 'mbanda_mk@hotmail.com', '+24177294626', 'papacleeford', '$2a$08$CxdD0JLYqxRd1DiGVQMdnuLBv.zwiFmkJkNO7Zao/RYDkbP41ilxG', 'maman241', 'activated', '2022-12-19 12:03:12', '2022-12-19 12:03:12'),
(7, 'MOUGUIAMA ', 'Nicole Zella', 'cocoyeibimou@rockotmail.com', '+24174199020', 'zella', '$2a$08$2Pm/ziTbaggHNh3sYYoufOpX05OxAJTzWT1ha.Tt726d2MhSvcdUm', '4444', 'activated', '2022-12-20 13:37:54', '2022-12-20 13:37:54');

-- --------------------------------------------------------

--
-- Structure de la table `parent_roles`
--

CREATE TABLE `parent_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int NOT NULL,
  `parentId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `parent_roles`
--

INSERT INTO `parent_roles` (`createdAt`, `updatedAt`, `roleId`, `parentId`) VALUES
('2022-10-05 10:31:45', '2022-10-05 10:31:45', 4, 1),
('2022-10-05 12:06:50', '2022-10-05 12:06:50', 4, 2),
('2022-12-02 10:38:01', '2022-12-02 10:38:01', 4, 3),
('2022-12-12 13:02:30', '2022-12-12 13:02:30', 4, 4),
('2022-12-13 13:47:50', '2022-12-13 13:47:50', 4, 5),
('2022-12-19 12:03:12', '2022-12-19 12:03:12', 4, 6),
('2022-12-20 13:37:54', '2022-12-20 13:37:54', 4, 7);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', '2022-02-23 20:48:29', '2022-02-23 20:48:29'),
(2, 'enseignant', '2022-02-23 20:48:29', '2022-02-23 20:48:29'),
(3, 'etudiant', '2022-02-23 20:48:29', '2022-02-23 20:48:29'),
(4, 'parent', '2022-02-23 20:48:29', '2022-02-23 20:48:29'),
(5, 'paths', '2022-11-09 19:15:07', '2022-11-09 19:15:07');

-- --------------------------------------------------------

--
-- Structure de la table `schedulers`
--

CREATE TABLE `schedulers` (
  `id` int NOT NULL,
  `nom_mat` varchar(255) DEFAULT NULL,
  `nom_classe` varchar(255) DEFAULT NULL,
  `debut` date DEFAULT NULL,
  `fin` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `classprofId` int DEFAULT NULL,
  `matiereId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `semestres`
--

CREATE TABLE `semestres` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `semestres`
--

INSERT INTO `semestres` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Semestre 1', '2022-07-04 09:22:26', '2022-07-04 09:22:26'),
(3, 'Semestre 4', '2022-07-04 16:19:36', '2022-07-04 16:19:36'),
(4, 'Semestre 3', '2022-12-06 11:31:23', '2022-12-06 11:31:23'),
(5, 'Semestre 5', '2022-12-06 11:31:56', '2022-12-06 11:31:56'),
(12, 'Semestre 6', '2022-12-06 16:35:01', '2022-12-06 16:35:01'),
(13, 'Semestre 7', '2022-12-06 16:35:27', '2022-12-06 16:35:27'),
(14, 'Semestre 8', '2022-12-06 16:35:40', '2022-12-06 16:35:40'),
(15, 'Semestre 9', '2022-12-06 16:35:55', '2022-12-06 16:35:55'),
(16, 'Semestre 10', '2022-12-06 16:36:06', '2022-12-06 16:36:06'),
(26, 'Semestre 2', '2022-12-07 12:38:34', '2022-12-07 12:38:34'),
(30, 'Semestre 11', '2022-12-07 13:54:54', '2022-12-07 13:54:54'),
(31, 'Semestre 12', '2022-12-07 14:09:26', '2022-12-07 14:09:26'),
(32, 'semestre 13', '2023-02-22 19:29:39', '2023-02-22 19:29:39'),
(33, 'semestre 14', '2023-02-22 19:29:57', '2023-02-22 19:29:57'),
(34, 'semestre 15', '2023-02-22 19:49:48', '2023-02-22 19:49:48'),
(35, 'semestre 16', '2023-02-22 19:49:59', '2023-02-22 19:49:59');

-- --------------------------------------------------------

--
-- Structure de la table `tarifications`
--

CREATE TABLE `tarifications` (
  `id` int NOT NULL,
  `nom_tarif` varchar(255) DEFAULT NULL,
  `mois` varchar(255) DEFAULT NULL,
  `montant_tarif` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `temps`
--

CREATE TABLE `temps` (
  `id` int NOT NULL,
  `Annee_academique` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `classprofId` int DEFAULT NULL,
  `semestreId` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `support` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `temps`
--

INSERT INTO `temps` (`id`, `Annee_academique`, `createdAt`, `updatedAt`, `classprofId`, `semestreId`, `date`, `support`) VALUES
(1, '2022-2023', '2022-11-15 16:52:41', '2022-11-15 16:52:41', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `lieu_naissance` varchar(255) DEFAULT NULL,
  `nationalite` varchar(255) DEFAULT NULL,
  `adresse_senegal` varchar(255) DEFAULT NULL,
  `adresse_pays_origine` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `confirm_password` varchar(255) DEFAULT NULL,
  `tel_mobile` varchar(255) DEFAULT NULL,
  `tel_fixe` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT 'activated',
  `Nom_pere` varchar(255) DEFAULT NULL,
  `Profession_pere` varchar(255) DEFAULT NULL,
  `Telephone_pere` varchar(255) DEFAULT NULL,
  `Adresse_pere` varchar(255) DEFAULT NULL,
  `Nom_mere` varchar(255) DEFAULT NULL,
  `Profession_mere` varchar(255) DEFAULT NULL,
  `Telephone_mere` varchar(255) DEFAULT NULL,
  `Adresse_mere` varchar(255) DEFAULT NULL,
  `Personne_contact` varchar(255) DEFAULT NULL,
  `Cin` varchar(255) DEFAULT NULL,
  `Etablissement_origine` varchar(255) DEFAULT NULL,
  `Type_contrat` varchar(255) DEFAULT NULL,
  `Date_recrutement` date DEFAULT NULL,
  `Specialite` varchar(255) DEFAULT NULL,
  `volume_horaire` varchar(255) DEFAULT NULL,
  `unite_enseignement` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `sexe` varchar(255) DEFAULT NULL,
  `Matricule` varchar(255) DEFAULT NULL,
  `primo` varchar(255) DEFAULT NULL,
  `diplome` varchar(255) DEFAULT NULL,
  `fonction` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `parentId` int DEFAULT NULL,
  `categorie` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `elementId` int DEFAULT NULL,
  `filiere` json DEFAULT NULL,
  `level` json DEFAULT NULL,
  `niveau_etude` json DEFAULT NULL,
  `ec` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `username`, `date_naissance`, `lieu_naissance`, `nationalite`, `adresse_senegal`, `adresse_pays_origine`, `email`, `password`, `confirm_password`, `tel_mobile`, `tel_fixe`, `etat`, `Nom_pere`, `Profession_pere`, `Telephone_pere`, `Adresse_pere`, `Nom_mere`, `Profession_mere`, `Telephone_mere`, `Adresse_mere`, `Personne_contact`, `Cin`, `Etablissement_origine`, `Type_contrat`, `Date_recrutement`, `Specialite`, `volume_horaire`, `unite_enseignement`, `createdAt`, `updatedAt`, `sexe`, `Matricule`, `primo`, `diplome`, `fonction`, `grade`, `parentId`, `categorie`, `age`, `elementId`, `filiere`, `level`, `niveau_etude`, `ec`) VALUES
(1, 'administrateur', 'admin', '2022-02-23', '', '', '', '', 'platefirme@ussd.sn', '$2a$08$pqcaTgBCdoKbCg61Ay1y.uVB3fQOoJl0yab02/lE4eScNVsInFFFy', '$2a$08$/kZYN/FT1HjV3Zo5jvEB4uFYujNPG4Bg.c7ZzDyrblTweiEWoWIme', '', '', 'activated', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-23 20:59:48', '2022-02-23 20:59:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'BARRY Zainoul Abidine', 'Barry', NULL, NULL, 'Sénégalaise', 'Ouakam', NULL, 'bzainoul@yahoo.fr', '$2a$08$GFgaO9Pg6/X5RPKl3vUEt.rK4m1ODMn9Q544IKrPLXLDSSBOA3pry', '$2a$08$90lxPaQoqvm4ptZiMSpQoumd2vpgDJiVptpbqGTM.GmAdFrFWJuJG', '774346112', '338590131', 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '47555555', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-24 11:41:15', '2022-10-17 10:34:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'FAYE Mame Diene', 'Mame', NULL, NULL, 'Sénégalaise', 'Ouakam', NULL, 'mamediene97@gmail.com', '$2a$08$5N0RJFPDymX0UiAFDty96OBE1lHIRxLKgkVw6NRur8M5IbntIylVm', '$2a$08$3R0CDuu3DOVPQSsxbmPofedGq8ALbo8SB302Y4.dc3XvFSX9hO/.a', '779686579', '338590131', 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '175119996745', NULL, NULL, NULL, NULL, NULL, '', '2022-02-24 11:47:59', '2022-07-04 15:56:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'NDIR Oumar', 'Recteur', NULL, '', 'Sénégalaise', 'Cite Comico Ouakam', NULL, 'mbagamndir@gmail.com', '$2a$08$MbC4PyeCAJgJ1zZZOlktAukvjzss/4BLn9Nl82E8k9nYgtSbkSbDu', '$2a$08$QWwIwYf1/aH.NP3N2vTDW.yaOqCRBDPDGp3zzWd7r3Tn6NxXM/LGO', '775697010', '338590131', 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '175119508374', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-24 11:51:48', '2022-02-24 11:51:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Bouyer Mayoulou Odlin', 'Odl1n', '1999-03-18', 'Libreville', 'Gabonaise', 'Ouakam', 'Charbonnages', 'o.mayoulou@gmail.com', '$2a$08$i4LjJHSW.1nu7Zl1UDRzUueyUvEWiICI/thSYabZJYuxaF/gfJC0.', '$2a$08$W8P0DXOPK5AVs7E1fUTyuuDZi2bLBLD1QA1DUe3tKPRCcEOb/kAVC', '784690885', NULL, 'activated', 'Mayoulou Mirapou Aurelien ', NULL, NULL, NULL, 'Bouyer Julie', NULL, '+241 07224034', 'Charbonnages ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-24 13:54:44', '2022-12-22 22:26:08', 'Masculin', '2022M1124', NULL, NULL, NULL, NULL, 2, NULL, '24', NULL, NULL, NULL, NULL, NULL),
(7, 'Makoundou Mampolo Ange Chrisphat ', 'ACM', '1994-12-12', 'Brazzaville ', 'Congolaise', 'Route de front de terre', 'Mpaka 120', 'angemampolo21@gmail.com', '$2a$08$r1wPi7p9b/mXzOjC5.CkheAJC58NbxJ.IdPoSPrDJDRx1cXUObDd6', '$2a$08$cs4vCfYjCf9YBvS55bvxGOxK2sNxxfJs.73cYCVwCKA4JjRLq8Svy', '221701019876', '221701019876', 'activated', 'Nitchamio Makoundou Joseph ', 'Capitaine ', '', NULL, 'Maboundou Christine', 'Pharmacienne', '+242068686198', 'Mpaka 120', '+33 6 83 71 41 56', 'SN012205', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-24 17:29:03', '2022-12-22 23:15:34', 'Masculin', '2022P1197', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Daniel Ferrand', 'MBOUMBA MBOUMBA', '1993-06-25', 'mouila', 'Gabonaise', 'niari tali', 'libreville pk12', 'danielferrandm484@gmail.com', '$2a$08$.V8X5pHX5YAx42num42zkOhOSSt73lfIW8RV689P.jLhC8.Acx1o2', '$2a$08$7y0f5ya9o3GdcCXDboI4ner8N.Vh.CUfMVQO3yNkQYYEJSuO/O6b2', '772685644', '338255907', 'activated', '', NULL, NULL, NULL, 'MATSANGA ladie sylviane', 'Enseignante', '+24166282909', 'libreville/Gabon ', '785468708', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:47:39', '2022-12-22 22:25:29', 'Masculin', '2022M1122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Ngone sarr', 'Sngone', '2004-01-01', 'Dakar', 'Sénégalaise', 'Parcelles', 'Senegal', 'ngone1@gmail.com', '$2a$08$2IUuZn3nMx2Qhs63/ZPuC.qEmWWPhK90/TWeh6tfwmlUf0ypMr0Oq', '$2a$08$9wwEYfg.4Ib/Y/Tj8A2BiepMyqx9e0yMMb7GVkuWaaF0SsWBAPD4u', '778503986', '338000000', 'activated', 'Lamine', 'Medecin', '776547382', 'Dakar', 'Fatou', 'Medecin', '776463822', 'Parcelles', 'Papa', '1752200400923', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-28 12:11:11', '2022-02-28 12:11:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'SOME BANIOGROU STELLA JEASMINE ', 'STELLA', '1999-03-06', 'BOBO DIOULASSO', 'Burkinabaise', 'LIBERTE', 'BOBO DIOULASSO', 'jeasminesom@yahoo.fr', '$2a$08$lEDl5E6QWkae4dm7ISDg4uhBudA8dRYbjH1dl9.jS/CB.sdEoi85S', '$2a$08$bKrtgELbxATLwZT.uumSueSTn/gjoYQ6/6hjHqCA3TDkSotuV0f/S', '780184428', '780184428', 'activated', 'SOME N ANTOINE', 'FONCTIONNER INTERNATIONAL ', '0022371041640', 'MALI BAMAKO ', 'SOME/SOMDA CLARIS', 'COUTURIERE ', '0022670229283', 'BURKINA FASO BOBO DIOULASSO ', 'MERE', 'PASSEPORT', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-04 11:55:51', '2022-12-22 22:45:49', 'Feminin', '2022M2121', NULL, NULL, NULL, NULL, NULL, NULL, '24', NULL, NULL, NULL, NULL, NULL),
(13, 'SYLL Massamba', 'Massamba', NULL, NULL, NULL, 'Sicap Foire', NULL, 'syll.massamba@hotmail.fr', '$2a$08$oK3.WR2u2ZuD94RRIjUDm.oU8kx7pWhyx4D7wI.LQ4Ic34FvO7QEK', '$2a$08$u1dyyEJ7i65MxAJrSbAAouK5dsxFH/jb.zi1GG7lVzdJK34I.SC/i', '775529163', '338222332', 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-14 14:01:15', '2022-04-14 14:01:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Amy DIOUF', 'Amy', NULL, NULL, NULL, NULL, NULL, 'amydioufdione@gmail.com', '$2a$08$b3PUNLPR1lSIHmaz47sQUOEnnD/Q34f8qOHRJ.uB/fMkcY/7yxp3u', '$2a$08$Kdey7O6rRfMvp5hijzuG3O2G1flh2KId8GN7tt5pZktRlhiG3uXoG', '781117365', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-14 14:15:22', '2022-04-14 14:15:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Loufoua Dorlica ', 'Dorlica L', '2003-04-18', 'Pointe Noire', 'Congolaise ', 'Ouakam', 'Mpita', 'benieloufoua@gmail.com', '$2a$08$MegCIBw1.Y2HM5xOMkmARelxLW74Jc4JSP2jYgyF73mtu6wJJdWkK', '$2a$08$7Ww77e26luivN/B4t7LbOeBUiYusoIKP/V7W071dnPH7JR7KI0hsC', '+221773102872', '+221773102872', 'activated', 'Loufoua eloi patrice', 'Frigoriste ', '+242066642218', 'Mpita', 'Kinzonzi flore edwige', 'Enseignante', '+242066573460', 'Mpita', 'Papa', 'OA0505049', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-04 17:16:07', '2022-12-22 22:49:32', 'Feminin', '2022M245', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Boundzanga Mayombo Wills', ' Floris-Med USSD', '2002-08-03', 'Gabon lbv', 'Gabonaise ', 'Liberte6 extension ', 'Libreville ', 'willsboundzanga@gmail.com', '$2a$08$dXriA65a68Hne2PKt3MRWusZTU2c8BRbg77Mw9xeH..qZef0aUZvC', '$2a$08$nj9mdTGhtwtR/TAaetlsNuy4/19F6e0Gdi.z1Wf.zaiteZRsfWqDy', '774889627', '774889627', 'activated', 'Ngoye Dieu Donner', 'Prefet ', '+24177140511', 'Libreville Gabon', 'Bickissa Doba Nerie', 'Agent du servie Sociale', '+24177025243', 'Libreville Gabon ', '+221 781154971', '20GA01257', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-04 17:55:58', '2022-12-22 21:58:51', 'Masculin', '2022M133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, ' MAVOULOU PREMEDITE CHOYE DREYAURE COERCIE ', 'Browser ', '2004-06-18', 'Brazzaville ', 'Congolaise', 'Ouakam', 'Mokondzi-Ngouaka ', 'mpremedite95@gmail.com', '$2a$08$loVSvJK8XV8NbHTgUDqsZOH44n4J8a3HJbmTPa2lKJ6k6fsquEJIy', '$2a$08$MBprfhV2mJ657bO1HaecYunoappl4AwE3a3T0iIk9FIhsM8C8XSx.', '781134808', '777272353', 'activated', 'MAVOULOU AURELIEN MAGLOIRE ', 'Gendarme', '+242064719875', 'Mokondzi-Ngouaka', 'MOUKALA GWLADYS PRISCA AUDREY ', 'Fonctionnaire ', '+242066525759', 'Mokondzi-Ngouaka ', 'MAVOULOU AURELIEN MAGLOIRE ', 'OA0461271', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-04 18:06:41', '2022-12-22 21:59:52', 'Masculin', '2022M137', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'DIATTA Gwladys Marina Karine ', 'Gwladys', '2003-10-29', 'DAKAR', 'Sénégalaise', 'DAKAR', 'DAKAR', 'gwladysmarinad@gmail.com', '$2a$08$Z9yqygAh7S7ywNPlkvdHFOs/3I0aIjMJIo42SwPs831o2CXi79Xx2', '$2a$08$YDBHB/Uj/fl4G131YvwWUea8h5Mzc3VFlTMnuTf1RpO1nVF0Xqw9y', '778690556', '', 'activated', 'DIATTA', '', '776579772', NULL, 'SENGHOR', NULL, '774073072', NULL, 'Emile', '2 751 2003 02034', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-04 18:13:14', '2022-12-22 22:22:29', 'Feminin', '2022P2140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Koumba Gloire Sqtchelle', 'Koumba', '2003-06-22', 'Port-Gentil', 'Gabonaise', 'Dieuppel ', 'Port- Gentil', 'gloirekoumba27@gmail.com', '$2a$08$unJjCoZl2sf82q9beATcMua1VPCQdUpJMrvcbS9j4LIV.vmLjX/fK', '$2a$08$uIbChQKMbFcrAEgm257SnOcj7JZkmlC0/aOIVty/m62dEommLVNoa', '+221776595685', NULL, 'activated', 'Koumba Stephane', 'Responsable operationnel', '+241 07299540', 'Massuku', 'Koumba Estelle', 'Comptable', '+24106055993', 'Massuku', 'maman', '19GA308979', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-04 19:04:37', '2022-12-22 21:16:02', 'Feminin', '2022M29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Sarr Abdoulaye', 'laye sarr', '2001-11-29', 'Thies', 'Sénégalaise', 'Mbour 3, Thies', 'Mbour 3, Thies', 'layediawsarr@gmail.com', '$2a$08$9QoAXC5YntOT4MecEbZ2ye2QNl6rOmrqZieZtHx2r3rCJQC7fOnd2', '$2a$08$5mcrnhWiRhgbhRd0rOQXSus5IJvniNb79zqaq4HvRRYWgw5ZvQ6jO', '782922619', '339520837', 'activated', 'Sarr Ibrahima', 'medecin', '777080860', 'Mbour 3, Thies', 'Diariatou Sakho', 'Pharmacienne', '776314049', 'Mbour 3, Thies', 'Pere', '1915200100854', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-04 19:38:59', '2022-12-22 23:10:38', 'Masculin', '2022P1142', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'OYANE ALLOGHO Davilla Gaelle Alda ', 'Davillaussd2022', '2002-09-20', 'Oyem', 'Gabonaise ', 'Ouakam ', 'Afap-avion', 'oyanealloghodavillagaelle@gmail.com', '$2a$08$uB4k5HTlI2.7wRoL0aF6ue6kJzzYhdvHyKFTaM8Vl4m7CgyUdvy1y', '$2a$08$5b7iGPuHd.j72zb2jo2DtuDYS5GFf6/Nd8R7llIW/DtR3G9StUova', '776851090', '776851090', 'activated', 'ALLOGHO BISSOU PROSPER', 'Chaufeur ', '+24177627605', 'Adjougou,Oyem ', 'ADA ZANG CHRISTELLE ', 'Au foyer ', '+24177484947', 'Afap-avion ,bitam ', 'NGUEMA ABESSOLO Steeve ', '20GA18660', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-04 22:24:18', '2022-12-22 22:00:43', 'Feminin', '2022M242', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'DOUNGOU\'S KONDOLO Caleb Marcel', 'CALEB@', '2000-09-12', 'BRAZZAVILLE', 'Congolaise', 'GRAND DAKAR', 'Kombo/BRAZZAVILLE', 'calebdoungous7@gmail.com', '$2a$08$cWcScZ1tQ2MeLRP0iKLVkOIm4JQcFWuQShqdIQJZggF3L.EjNKd9.', '$2a$08$swPIlXQOwlIDebIYxn14yOf5.oqFFw1Y7fsMwYr80saHqP5G50Pfi', '778817374', '', 'activated', 'DOUNGOU\'S Remy', 'STATISTICIEN ECONOMISTE', '00242055510544', 'Kombo/BRAZZAVILLE', 'MALONDA Sylvie', 'COMMERCANTE', '', 'Kombo/BRAZZAVILLE', ' ', 'OA0439541', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-04 23:07:20', '2022-12-22 21:53:56', 'Masculin', '2022M127', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Faty Nafissatou ', 'Nafi', '2002-03-31', 'Dakar ', 'Sénégalaise', 'Hann Maristes 2', 'Hann Maristes 2', 'mamafaty120@gmail.com', '$2a$08$RBk9lqLyEdyDHUS4BSusLOanQKdqUgS/Paavfjj7JPLWip/n/aY3C', '$2a$08$7GkvgM8cr1QZwlk.6e.Nv.Y2xaeJ2ZzOUvYRJMEjmBEcI9nqvH9QW', '+221784753255', NULL, 'activated', 'Sadia', 'Pharmacien ', '+221776307257', 'Hann Maristes 2', 'Awa', 'Comptable ', '+221771613740', 'Hann Maristes 2', 'Sadia', '2755200200936', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-05 14:47:47', '2022-10-11 09:27:03', NULL, '2022254', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Ly Hassinatou Marieme Alpha', 'Hassina27', '2002-11-27', 'Dakar', 'Sénégalaise', 'Nord foire', 'Nord foire', 'lyhassina24@gmail.com', '$2a$08$V.dJpPUSNRbq8aNWsOND3e7Pdjvzlf37RuD8BU9K8rbLdThDUdQ.e', '$2a$08$bOnPSABaRbiOxukV2ZyBJ.23BNUgTOmdMLRj8AOgfCew4mVwLEVla', '781877960', NULL, 'activated', 'Ly', NULL, NULL, NULL, 'Ly', NULL, NULL, NULL, 'Aissatou Toure', '2895200202334', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-05 14:57:41', '2022-05-05 14:57:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Gadiaga Khadidiatou ', 'Khadija', '2004-01-06', 'Malika', 'Sénégalaise', 'Liberte 6 extension ', 'Malika montagne ', 'KhadyGadiaga6@gmail.com', '$2a$08$46kfoOL2ZHI0l1aOGCaCwOM2cIy4e0kHtEpNTJ4l5lTPbt0uczFMi', '$2a$08$5o3oZViOOVVqv36MO4vO4.JCKkLCWooGkj.YdCYNKjE0WhSVc.vTG', '+221785456494', NULL, 'activated', 'Alioune ', 'Pharmacien ', '+221772087543', 'Malika montagne ', 'Aminata', 'Enseignante', '+221774366121', 'Malika montagne ', 'Alioune', '201200401', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-05 15:06:00', '2022-12-22 22:20:34', 'Feminin', '2022P2145', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Ndiaye Rokhayatou ', 'Rokhaya', '2002-01-14', 'Dakar', 'Sénégalaise', 'Grand Mbao ', 'Grand Mbao ', '', '$2a$08$y3edxAlasqtvuM8rp1dvyeG4BvjZfXHaruVCXBf96ybBVLYfJykL2', '$2a$08$LAkVRPsrz3vyGwl1mtIMXewe9WpC7Kaxejhu1pMxMi34alpCM1aDe', '768158698', '768158698', 'activated', 'Ndiaye Sassy', 'Directeur ecole  ', '775331886', 'Grand Mbao ', 'Ndaw khady', 'Pharmacienne', '776495778', 'Grand Mbao ', 'Mere ', '2895200200089', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-05 15:49:12', '2022-12-22 22:20:00', 'Feminin', '2022P2148', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Moussavou Mendene Aalya Eve ', 'Aalya Eve', '2003-02-21', 'Libreville ', 'Gabonaise ', 'Garage guedewaye cote eglise a HLM', 'Sobraga ( owendo ', 'Moussavoualya@gmail.com', '$2a$08$DM06DmaNeu4aElPUNtYT3.nEuzdg.Er8IvIMEKhJ/93z6ZfTVug.6', '$2a$08$MMWKKaMMzPgbHvgxnaKqHuohSPPyx6isK6P7PMwVih172w36AGaZS', '771184626', NULL, 'activated', 'Mendene Ntougou Gabin ', 'Ingenieur ', '+24107561395', 'Sobraga (owendo)', 'OYE MOUANDA Fleur ', 'Ressources humaines ', '+24107091949', 'Sobraga (owendo)', '776983885 -771355527', '20GA07631', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-05 19:49:04', '2022-05-05 19:49:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'AFOUA-OSSIBA Hans', 'Hans os', '1997-01-02', 'Leconie ', 'Gabonaise ', 'Yoff nord foire ', 'Libreville /Iai', 'afoshaonthebeat@gmail.com', '$2a$08$uKMoPO4l6tj6.Q4N9KMCzOgXRudnwMk4gcWam10j28KIHhWJPynUS', '$2a$08$xLzZ24QAJiGh/AVX1J3/m.RJr.FZs9M56kGjnmwEt7Zy60KK48N1e', '781929632', NULL, 'activated', 'YALIS Davy', 'Enseignant', '+241 (0) 4 92 69 87', 'Libreville /iai', 'OSSIBA Jodie Christelle ', 'Gendarme', '062180493', 'Libreville/iai', 'Abibou BA:  +221 782490711', '19GA32793 ', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-06 13:06:19', '2022-12-22 21:38:36', 'Masculin', '2022M119', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'amana solime', 'amana', '1999-09-19', 'Lome Agoe', 'Togolaise', 'ouest foire', 'Lome agoe', 'solimeamana19@gmail.com', '$2a$08$9lvCNZ7uxed4mh7jBvZA8ujsUo8dsyTf2ofE.gFsoVtU67cX/YfEm', '$2a$08$XPHLee4rqPJNMISoutCtCOwiSs3FO/zSVobSyNv4ScYxEz1lX5NSu', '777239193', '777239193', 'activated', 'Amana', 'Commercant', '22890048922', 'Lome Agoe', 'ahouloma', 'Commercante', '22890282800', 'Lome Agoe', 'jelil', '02169558064', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-09 13:26:17', '2022-12-22 23:13:45', 'Masculin', '2022P1181', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'MOUANZA CLAUDE MARVEIL', 'CLAUDE98', '1998-08-21', 'BRAZZAVILLE', 'Congolaise', 'Sipres foire', 'Pointe noire mpaka', 'cmouanza2018@gmail.com', '$2a$08$ea0/.HEkugRVRfJPgvRr5OrP0MoiEmqL2q1u4YhaTsagctBVx44ze', '$2a$08$I.EzcLFUNJLlAgBJUZujhOxREYEJvZaC9G7hzor9Tu2BtWrX29zfu', '778777462', '778777462', 'activated', 'MOUANZA CLAUDE', 'comptable', '00242069526868', 'Pointe noire mpaka', 'MOUNIONZI Edith', 'Commercante', '00242066662942', 'Pointe noire ngoyo', 'NZAKA Kedma', 'OA0352717', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-09 13:34:08', '2022-12-22 23:13:30', 'Masculin', '2022P1180', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Dontsop Taguena Jordan ', 'Jordan ', '1999-05-05', 'Yaounde ', 'Camérounaise', 'Grand dakar ', 'Yaounde', 'taguenajordan@gmail.com', '$2a$08$Z3iBM9.HER7RwebgW3e.DuKboNAVyuK5Q/CvAtvW6aNpLWQ0yR/em', '$2a$08$RXbi3RVMXNW6E01FK9gS1eQrQQf.b6eCExumJav.jizC8MtOYbIgm', '221 784259530', '221 784259530', 'activated', 'Taguena David ', 'Otelerie ', '237 6 73 58 79 50', '237 6 73 58 79 50', 'Djoubou rosaline', 'Menagere', '237 6 73 58 79 50', 'Yaounde', '221773141860', 'AA094208', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-09 13:42:32', '2022-12-30 00:05:00', 'Masculin', '2022M12', NULL, NULL, NULL, NULL, NULL, NULL, '28', NULL, NULL, NULL, NULL, NULL),
(34, 'SANE Wilfried Cedric Shamari', 'WILL', '2003-07-04', 'DAKAR', 'Sénégalaise', 'Mermoz cite des enseignant', 'Mermoz cite des enseignant', 'cedricsane00@gmail.com', '$2a$08$uG5qJUX68rdNKEp.YAOmvOlMNMrXtZEz3fnDse2LJ6ja4TQ1iYvhy', '$2a$08$LeUndW80dm6/LLiyaGwxAeYlLUqU3SYNF/8faYdYtPKDzDjHE5h0i', '221772206399', '221772206399', 'activated', 'SANE', 'Pr d Orthepedie ', '221775636638', 'Mermoz cite des enseignant', 'DIATTA', 'Kinesitherapeute', '221775449144', 'Mermoz cite des enseignant', 'Andre Daniel ', '1752200301020', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-09 13:47:28', '2022-12-22 22:31:22', 'Masculin', '2022M1162', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'KINI Komi Pascal Luther King ', 'Luther King KINI', '2003-05-17', 'Lome', 'Togolaise', 'Ouakam', 'Lome Baguida', 'kiniluther@gmail.com', '$2a$08$KAofbGKqhnK2KTHs7n5pdeiV6C.wev3XSN0L7qzRLkFt90mZjcMw2', '$2a$08$Vab5BMVRwMSZZYkbtVYhBuBXfcRPkfjk4YnK8ync/REHjKfxViCqq', '00221773141860', '00221773141860', 'activated', 'KINI Bessan', 'Gestionnaire Comptable', '0022890130857', 'Lome Baguida', 'MIGNANOU Marie', 'Commercante', '0022890012837', 'Lome Baguida', '00221781687445', '11107381061', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-09 13:56:26', '2022-12-22 21:13:12', 'Masculin', '2022M16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'NZE MAMFOUMBI Bilal Maurice ', 'Maurice NM ', '2003-06-07', 'Libreville ', 'Gabonaise ', 'Sicap Baobab ', 'Pk 11', 'mauricemamfoumbi504@gmail.com', '$2a$08$WmsO2VCHvUKLTbDNboq0Gu6x0JC1IEbNbyKXm7iQNHiGgexPLlYPm', '$2a$08$eKQyyyYLBjCE5mwyWqLDYOjXKXP7T9fobIQ9Az9LHKcJ4OlOA9tQu', '777758697', '777758697', 'activated', 'MAMFOUMBI DOUKAGA Edouard ', 'Inspecteur administratif', '24106952911', 'Awugou ', 'EKOUMBENG Elisabeth ', 'Agent des eaux et forets ', '24106758107', 'Pk 11', 'Mirella 772967491', '20GA07846', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 13:08:16', '2022-12-22 21:13:40', 'Masculin', '2022M17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'Momo Miranda ', 'Miranda Momo ', '2004-09-27', 'Yaounde ', 'Camérounaise ', 'Ouest foire ', 'Obobogo yaounde ', 'claudymomo9@gmail.com', '$2a$08$VvAMVa4nh9ehvEUlfOPigu452Wh5P268A.K7AeV31JM3IsH./YYJS', '$2a$08$7rcopqhjknc8d/jkItDpWOK5ewjIR.CdupHSzChlBTDCkUIRnbTmy', '771822862', NULL, 'activated', 'Momo Soffack Guy Bertrand ', 'Sous prefet ', '699998755', 'Dshang ', 'Metchop Ngeujeu Armele ', 'Medecin ', '675503454', 'Yaounde ', 'Matek Lyvia ', 'AA088938', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 13:10:38', '2022-12-22 22:57:50', 'Feminin', '2022M2161', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'NKOUKA Paule Benette ', 'Nana ', '2002-05-12', 'Pointe-Noire (Congo)', 'Congolaise ', 'Fass Delorme rue 22prolongee(Dakar)', 'Ngoyo (Pointe Noire)', 'nkoukapaule18@gmail.com', '$2a$08$X8qKv1QdPDSwhbRiVAMEf.Qm7EuzFXDpYKRadPtxVeDGyl9Khm162', '$2a$08$dwyEouFhUlpyVskr5My6YeONHRzOcuj8lYqYz8GKGpGsx9fnbydX2', '773592221', '773592221', 'activated', 'NKOUKA Albert', 'Petrolier', '00242067049177', 'Tchimbamba (Pointe-Noire)', 'KIORI Murielle Josie', 'Banquiere ', '00242055612230', 'Ngoyo (Pointe Noire)', 'NKOUKA Gabriela Michele ', 'SN012215', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 13:58:32', '2022-05-10 13:58:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'Odendo Avaro Jael', 'jannounou', '2003-05-29', 'Libreville', 'Gabonaise', 'Ouakam cite avion', 'kinguele', 'j.odendo2003@gmail.com', '$2a$08$L/zxYVm7hLMkR8vA55HMd.ht/nWcaZa96fXJePI2kxFowno3lp1sq', '$2a$08$F8MZd0w5BGnyYK5LUdXdZO4ePryy6n/CB1GOqVPV3vR74jo/T6fJG', '221763881451', '221338600376', 'activated', NULL, NULL, NULL, NULL, 'Ndjombini Olingoh Lydia ', 'Aide a la personne', '33788243917', 'Paris', '221777319394 soeur ainee', '19GA25145', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 15:48:25', '2022-12-22 22:37:51', 'Feminin', '2022M2158', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'Karakeh mohamad ', 'Django23', '1998-09-20', 'Ouagadougou ', 'Burkinabaise', 'Rue amadou assane ndoye ', 'Boulevard de Marseille bietry abidjan ', 'momokarakeh19@gmail.com', '$2a$08$vgxNrxd8bLTTFYvXCHjVI.g1VPlsRYRhiUUV7nViUdM25mTrLk/pK', '$2a$08$tUhwbwCvIkFBGyYnYwMqQuw/zcct8oUYL3HC8EwNaIHlzi1Typily', '221781273086', NULL, 'activated', 'Karakeh mazen', 'Commercant ', '22507619446', 'Boulevard de Marseille bietry abidjan ', 'Karakeh fanta', 'Commercante ', '22507568705', 'Boulevard de Marseille abidjan bietry', 'Soudan 22177 361 69 89', 'A22220022', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 16:04:45', '2022-12-22 23:17:31', 'Masculin', '2022P1143', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Badji Bineta', 'bineta', '2002-03-21', 'Medina Sabakh', 'Sénégalaise', 'Point E', 'Fatick', 'badjibineta2002@gmail.com', '$2a$08$a/4kylqshxfk/DlmseFUK.mkx.wx/ly03bh5ABhge6qbzmX4EeJ8i', '$2a$08$idODPF9uIHC7otFCIwh3jOI3Wyl7F0VuK0IAWadREWdQ1D8K7sHUC', '778102131', '778102131', 'activated', 'Mamadou Lamine', 'Pharmaçien', '776467184', 'Fatick', 'Aissatou DJIBA', 'Enseignante', '775418005', 'Fatick', 'Mamadou Lamine', '2418200200303', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 14:28:25', '2022-12-22 22:18:23', 'Feminin', '2022P2177', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Honnet LIPLI DIEUBENI ', 'dieubenihonnet733@gmail.com ', '2022-07-12', '12 juillet 2002', 'Centre-Africaine ', 'Nyarri Tally ', 'Bimbo', 'dieubenihonnet733@gmail.com', '$2a$08$CvFkvYcrWX6eb4Ur8KvENus/7AQqNEn0gWFC8bazbfIgicmCw/09i', '$2a$08$8X/g5zSUerQVsTCGc0DGduE0JAbFyyO2cHYCibt0/GM.bbdv/U3m2', '00221707869802', '', 'activated', 'HONNET Jean Bruno', 'Techniciens agriculteurs ', '0023670188483', 'Bimbo', 'Kosselenga Odette ', 'Ménagère ', '0023675162129', 'Bimbo', 'Lorraine ', '000179653', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 15:29:06', '2022-12-22 22:03:49', 'Masculin', '2022M161', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'DOGO Astrid', 'astrid_cristal', '2003-11-26', 'Cotonou ', 'Togolaise ', 'Dieuppeul Derklé. Rue DD-132', 'Bénin ', 'cristalyori@gmail.com', '$2a$08$cPbNKBdOB4t5rF.lwP4EI.sUD5btOlQwBY8KJdJOS0QxFelYhaHrm', '$2a$08$seCPH0uFq7ih.vkXoSEjGeFDvxXWZKE7pKMBg7z2xmYUMh0fxw5q6', '777320826', '773740103', 'activated', 'Dogo Darius', 'Directeur général Dafra pharma', NULL, 'Cameroun ', 'Hounsou yvonne', 'Gestionnaire ', '+22890187405', 'Togo', 'La mère ', '4458235713', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 15:35:22', '2022-12-22 22:20:49', 'Feminin', '2022P2144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'Fea kpassinambona ', 'Fearomualdsem@gmail.com ', '2002-12-08', 'Bangui ', 'Centre-Africaine ', 'Ouakam cité avion ', 'Bagui ', 'Fearomualdsem@gmail.com', '$2a$08$egZyml/q81IzWS.WNvw5C.8UGv9UUrQoTNHLi5UypPMyto9fUiIsK', '$2a$08$5UayZsT2yV8Aq6z4Tx19eOeRMyz3NHllu2HwjVVe2a8MyDtxxu5FG', '778577508', NULL, 'activated', 'Feizoungai xavier prince ', 'Contrôleur du trésor public ', '0023675732246', 'Bangui ', 'Fea nadege ', 'Commerçante ', '0023672522265', 'Bangui ', '78 5981091', 'O00174157', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 15:40:42', '2022-06-07 15:40:42', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'N'GUESSO Williams Zora Jenifer', 'Zora Williams', '2003-04-29', 'Congo Brazzaville ', 'Congolaise ', 'Marché Fass ', 'Nkombo ', 'znguesso2023@gmail.com', '$2a$08$4idCYTiw0qPTY.IibjdVtO/HmRQs3qQMdFNXeAsVnX8/dtID8bMDK', '$2a$08$ZJVnsvG1Jfr15HiWPKJNWu.wDVsl/Audg7vnMfgDZNbQnmo2CjQ/C', '774195927', '', 'activated', 'N'GUESSO Daniel', 'Militaire ', NULL, NULL, 'ATIPO Viviane', 'Agent des impôts ', '+242068703430', NULL, 'ATIPO Viviane', 'OA0457702', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 15:41:45', '2022-12-22 22:20:13', 'Feminin', '2022P2146', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'Céleste Belvie BOUNGOU LAZE', 'Celeste_LAZE', '2001-10-06', 'Pointe-noire', 'Congolaise', 'Sacré coeur ', 'Loandjili ', 'lazeceleste@gmail.com', '$2a$08$SPJAoojf8QkENC6JfkjNguwdR1/2syh/zSJvsDBfsOqvx/NGQNTa2', '$2a$08$PuBhKslqpn2MDZ/rCiHJf.Wri3iv4LsKDOfnG4jtGRpfavJM8dw1W', '776997546', '776997546', 'activated', 'BOUNGOU Lazare', 'Ingénieur ', '+242066643959', 'Loandjili ', 'MAKOSSO Léa ', 'Dentiste ', '+242069906176', 'Loandjili ', 'Soeur ', 'OA0434056', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 15:43:28', '2022-12-22 21:53:20', 'Feminin', '2022M226', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'OVOUGOU Sid Bienvenu ', 'OVOUGOU Sid', '2000-03-11', 'Owendo', 'Gabonaise', 'Médina rue 15 x 8', 'Sni owendo ', 'ovougousid@gmail.com', '$2a$08$ljnW.6HyEVXXgqLYq6YqUexJe/ZHledVmZp6x0J3k6xuvTHLJyXYS', '$2a$08$DxA9ScvB8yU/cZAwvv/Yiu3VitY/3icmGhtpXEoNc5vVUUwWdHj.y', '771962581', '338214720', 'activated', 'OVOUGOU Bernard', 'Décédé ', NULL, NULL, 'ANTSOUGOU Pauline ', 'Vendeuse', '+24104731562', 'Sni Owendo ', 'Ma mère', '2020 M 1007', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 15:44:48', '2022-12-22 23:18:04', 'Masculin', '2022M1163', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'N'GUESSO Williams Zora Jenifer ', 'Zora', '2003-04-29', 'Congo Brazzaville ', 'Congolaise ', 'Marché Fass', 'Nkombo', 'zora_williams.12@icloud.com', '$2a$08$0mAtofONh/UaPpo0k0BKz.IA00pmAYC8m3w9FR1rpjlZPmgVQ5X0S', '$2a$08$5sbiAOEazjXUIsR.8wRHtOlvmOgH66V5LB346gelvSP8M8Tq6CLpa', '774195927', NULL, 'activated', 'N'GUESSO Daniel', 'Militaire ', NULL, NULL, 'ATIPO Viviane', 'Agent des impôts ', '+242068703430', NULL, 'ATIPO Viviane', 'OA0457702', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 15:45:28', '2022-06-07 15:45:28', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'Boundzanga Wills.', 'Wills-BM', '2000-08-03', 'Libreville ', 'Gabonaise', 'Liberté6 extension ', 'Libreville Nzeng ', 'Florisboundzanga@gmail.com', '$2a$08$1cKX7Y6rHTCzTCY6EbVofeKdt9F4jmWG0GOhXqmSLua4jSSoArnEq', '$2a$08$gXOwz5PD0C2qp0.ENbvJwO.e5O/Esd9SClbTZAxCRL.ERXohkhv/G', '774889627', '774889627', 'activated', 'Ngoye Dieu-Donner', 'Gouverneur de la ville de Fougamou(Gabon)', '77140511', 'Fougamou(Gabon).', 'Bickissa Doba Nerie', 'Agent du service social', '77025243', 'Libreville ', '777501876', '20GA012573', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 15:52:40', '2022-12-22 21:42:40', 'Masculin', '2022M122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'Mambo Atsain Chiepo Marie Oceanne ', 'Marie Oceanne ', '2004-01-04', 'Lakota', 'Ivoirienne ', 'Dakar Ouakam ', 'Abidjan yopougon ', 'oceannemambo4@gmail.com', '$2a$08$1D7FJWRJLNwng297viaqVengr1PA/6GwwSbxvzBEI90e9lQePej4q', '$2a$08$gyOZPW5DcvJK02hFvNftv.HyEzLmdXjeNMVXfhDlI3UrDC8Si8l52', '771005361', '771005361', 'activated', 'Mambo Atsain Remy yves', 'Pharmacien ', '+2250707616368', 'Abidjan yopougon', 'Bogui prisca Sandrine ', 'Ménagère ', '+2250140161601', 'Abidjan yopougon saguidiba', 'Mambo Atsain Remy yves ', '20AE18475', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 16:38:03', '2022-06-07 16:38:03', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Sangaré Mohamed', 'Medmosang', '2004-11-14', 'Bamako', 'Malienne', 'Sacrée coeur 3', 'Sirakoro ', 'mohamedsang1234@gmail.com', '$2a$08$Hi.ZGshKaHvtl1xW0fwWsuBsnRf12k/g1wlUua6hD54OB.cpDFTpy', '$2a$08$z23./f6WPTtT0uq4tADK6edKxtDyolfYXC47ri.TnaRc7tFcs2/ri', '0022394969699', '00221775918339', 'activated', 'Cheick ', 'Docteur en Pharmacie ', '0022376205900', 'Sirakoro ', 'Fatoumata', 'Directrice d'école ', '0022376065646', 'Segou, missira', '0022376205900', 'AA0177347', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 17:51:45', '2022-12-22 23:11:16', 'Masculin', '2022P1147', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Eto'o Irvine ', '___ivieee', '2004-05-18', 'Yaoundé- Cameroun ', 'Camérounaise ', 'Amitié 2', 'Yaoundé ;Cité-Verte', 'ei2099376@gmail.com', '$2a$08$JOEHCQsnULXx7NTvRQVYKeBKNbYHzEyEueouuVBWzA9u2J/YJVx3.', '$2a$08$1/N.FIAO6YxwoIgaOgXyGONAW7iaYKY6Wa/0gF7V3geEaLkJlHafq', '775878107', NULL, 'activated', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Moi-même ', '1156578', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 18:49:35', '2022-06-07 18:49:35', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'Tinen Soplongmo Romane Anais ', 'Anais', '2002-12-09', 'Cameroun', 'Camérounaise ', 'Grand dakar', 'Kotto', 'romanetinen@icloud.com', '$2a$08$yPxemTto6znIr/NFosAr0eOTJPkMFVcL68pSwVEKimGxv3QjVbcj6', '$2a$08$2mbzPW6a4v3ydIGs1i6xj.AP8ouS2nwekSflb8c0fjniqVtFJRguq', '+221785830156', '+221785830156', 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grace Brenda', '1054296', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 20:32:30', '2022-06-07 20:32:30', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'Senga Mbakop grace brenda', 'Grace mbakop', '2002-07-25', 'Douala', 'Camérounaise ', 'Grand dakar', 'Makepe', 'ortegagracebrenda@gmail.com', '$2a$08$ep.CCi9Fp1L31JzhIwmxeO2SYd7bQ8Y8UVoHHbnF2UerZxgNtyEQa', '$2a$08$sU/e62rnscp8fNVs31Q6ZeNvKAIMY.RT2DL.g0AR2BC421AyqVqrC', '786321922', '', 'activated', 'Senga Andre ', 'Banquier', '+237677307009', 'Makepe douala', 'Patipe agnes', 'Comptable', '+237677796861', 'Makepe douala', 'Tinen Romane ', '1238578', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 20:37:02', '2022-06-07 20:37:02', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'MOUNANGA BISSIELOU Paul yohan', 'Paul Yohan', '1997-03-03', 'libreville', 'Gabonaise', 'sacre coeur 3', 'Libreville', 'paulyohanm@gmail.com', '$2a$08$3JAzw4PXJjfIxd3jPLPQR.P58y0Bvd8TUcmeLA0XRNPJT8QTnyxgq', '$2a$08$VCG7nK42tiHnDMGNo5ZICOgG2bKMJCPojEkWJW6LYS6yfgfotJDRi', '77 1931952', NULL, 'activated', 'MOUNANGA Maurice', 'chomeur', NULL, 'Lambarene', 'BINGOUMBA Colette', 'RIEN', 'AUCUN', 'AUCUN', 'soeur ', '18GA23724', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 23:39:14', '2022-12-22 22:16:36', 'Masculin', '2022M196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'NDOULOU Jornie Meda Didier', 'Jornie', '2001-06-25', 'Franceville', 'Gabonaise', 'Liberté 6 extension', 'Akanda', 'didierndoulou17@gmail.com', '$2a$08$utfAb7Q34YStV07WyiEub.K10F4c4i9jCN8YqvLY.p.RztpVaFW5K', '$2a$08$pTIvucfOn2CndgvIc5JIPuPG8piRweAhtHscgdOpIZdG59B.EP2RK', '+221774585396', '+221774585396', 'activated', 'Din serge didier', 'Professeur', '+24166066709', 'Franceville', 'Okouma Raissa', 'Commerçante', '+24174883378', 'Franceville', 'mon père', '19GA32958', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-08 01:21:43', '2022-12-22 22:58:11', 'Feminin', '2022M2165', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'Papa SALL', 'Papa SALL', NULL, NULL, 'Sénégalaise', '711 cité Ainoumady Keur Massar', NULL, 'Papa_sall57@hotmail.fr', '$2a$08$uviG/zVMZ5CjfQjD5DrL0uamQFCtzIVK5tUtB8Lkv7evrzf5sp6e2', '$2a$08$yNULFi8sAStZWh58JIC59ORlluL5v3tDJeoP2j/KbD8ZfUap8akY6', '+221776317666', '+221338789096', 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1728197501127', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-08 10:02:23', '2022-06-08 10:02:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'Sanou Ndiaye ', '777193095', '2002-01-01', 'Nguékokh', 'Sénégalaise ', 'Mbour ', NULL, 'nsanou577@gmail.com', '$2a$08$2lD0Cjq4rgwSh7c9hRDnKuVzLOVGq4crCait/Ubqm4vF7G.zMfaqW', '$2a$08$9wPD3Vu7UNI2n9mRvsiZfegxgWAxsQg6LqrVuvbzyjKNx.VXYolHS', '777193095', '339572319', 'activated', 'Mamadou Lamine Ndiaye', 'Homme d'affaires ', '775482860', 'Mbour', 'Ndeye Awa Diop', 'Pharmacienne ', '776562787', 'Mbour', 'Ndeye AWA Diop ', '2 603 2002 00690', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-08 10:35:22', '2022-12-22 22:17:28', 'Feminin', '2022P2173', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'Mouhamadou Mansour Malick NDOYE', 'Mansour ', '2003-02-05', 'THIES', 'Sénégalaise', 'Cité addoha ancienne gare routière pompier', NULL, 'mansourgraal@gmail.com', '$2a$08$dXPrsGyC8p9Y4YLceUP1x.Y0PKVOdROupo.lFM0wx/NePHDxYngxC', '$2a$08$/KhfBD53lIkfe/.5NveqL.r.wKCc4H8U5rx6ch6Ms3O89svHNLzZK', '770914503', NULL, 'activated', 'Abdourahmane NDOYE', '', '775295715', 'Cité addoha ancienne gare routière pompier', 'Oumou kalsom DIALLO', 'Pharmacienne', '776307075', 'Keur mass tivaouane ', 'Père', '1619200300599', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-08 11:39:33', '2022-12-22 23:13:01', 'Masculin', '2022P1174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Ndzeng Ndzeng ', 'Joas ', '2001-09-22', 'Libres ', 'Gabonaise ', 'Sicap baobab ', 'Pk7', 'jndzengndzeng@gmail.com', '$2a$08$w2Db/.L5KOgl/pd6mdGpJuUwn8.XJJcFUPHLAlVXHbU1hEcE1/oA2', '$2a$08$G86GkHUKpY578BZjr10wjO6OaPz5SKv2A9WwS3QK0...aZxVHay5K', '+221773401832', NULL, 'activated', 'Hombouhiry doungah kheny dorcel', 'Ingénieur logistique ', '+241 02 66 80 86', 'Pk12', NULL, NULL, NULL, NULL, 'Hombouhiry doungah kheny dorcel', '18GA36018', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-08 18:48:12', '2022-06-08 18:48:12', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'Ndeye Waré Diagne ', 'Waré ', '1996-03-18', 'Rufisque', 'Sénégalaise ', 'Aéroport yoff', 'Aéroport yoff', 'warecia96@gmail.com', '$2a$08$SWAc6c1yJKBqQbkdUlfgCuOBWjAtma4JSjHZ7v.31wNqeqG3CX8OO', 'ware1803', '774951657', '33', 'activated', 'Mamour Diagne', 'Menuisier ', '771615845', 'Rufisque', 'Dior gueye', 'Commerçante ', '784769420', 'Rufisque ', 'Mamour Diagne ', '2771199600248', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-11 22:31:24', '2022-12-22 20:59:08', 'Feminin', '2022P23', NULL, NULL, NULL, NULL, NULL, NULL, '27', NULL, NULL, NULL, NULL, NULL),
(67, 'Aimé Ahissan Flora Audrey ', 'Audrey', '1984-02-23', 'BOUAKE', 'Ivoirienne ', 'Dakar Liberté 5 ', 'Abidjan Cocody Riviera Bonoumin ', 'ahissanaudrey@gmail.com', '$2a$08$mhARJmf5Dn5duetAbvCugOBOz/D4MjSlEH0dkvYRQl6tPF28SV5yO', 'aa230284@', '771535725', NULL, 'activated', 'Aimé Louis Kadio ', 'Médecin ', '+2250505676761', 'Abidjan Dokui', 'Dimbour Eliane', 'Pharmacienne', '+22507061394', 'Abidjan Dokui', 'La mère ', 'C 0115 3040 39', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 14:46:22', '2022-06-13 14:46:22', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'ABDRAHAMANE AMADOU ridwane', 'papsoneridwale', '1997-08-29', 'Gotheye ', 'Nigérienne ', 'Rue 45 medina', 'Adewui', 'papsoneridwale@gmail.com', '$2a$08$9EOOo.OrCOczmJX/5WStS.R19hvUbM.Aj9f9A4FUZWlg4z9Xct8Pq', 'aaaaaaaa', '784879953', NULL, 'activated', 'Abdrahamane amadou', 'Commerçant ', '0022893039324', 'Adewui', 'Adjallah Menonlo fati', 'Maison', '0022890822010', 'Adewui', '0022890822010', '10PC38028', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 14:49:38', '2022-12-22 23:13:14', 'Masculin', '2022P1179', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'Sarr Ngoné ', '773872893', '1998-09-25', 'Parcelles assainies ', 'Sénégalaise ', 'Cité fadia ', 'Sénégal ', 'ngone250998@gmail.com', '$2a$08$3hdu3O4kw.mU0S2c0fmVsek.ijqLRuz0drhEEGAvf9IKeUDdbHAcu', 'MotdePasse123', '773872893', '338356034', 'activated', 'Sarr Abdou khadre', 'Transporteur ', '776396481', 'Sicap mbao', 'Diagne Aissatou ', 'Commerçante ', '772163866', 'Sicap mbao', 'Papa', '2996199800625', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 15:02:42', '2022-06-13 15:02:42', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'Mame Ndack Seck', 'MameNdack01', '2001-07-26', 'DAKAR', 'Sénégalaise', 'Avenue Cheikh AntA dIOP', 'senegal', 'mamndack07@outlook.com', '$2a$08$IrYAnON1bfeT6nWicXk8peFZJmzcW38oCjDDALST6vMuSIm7JBv9u', 'Mamendack01', '771637967', '771637967', 'activated', 'Serigne Mbacke Seck', 'businessman', '774333145', 'mboro ', 'Sokhna Diagne', 'Pharmacienne', '775552169', 'mboro', '775552169', '20120010726000081', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 15:13:26', '2022-12-22 22:25:40', 'Feminin', '2022M292', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'SOW Habibatoullah', 'HabibaSow', '2000-01-04', 'Dakar', 'Sénégalaise', 'HLM Grand Médine extension villa N 99', 'HLM Grand Médine extension villa N 99', 'habibatoullahsow1306@gmail.com', '$2a$08$gEGF5i.iBAoJuF7Lqms3V.6JdKxs1HVpD6cnKpej0XKBsZtHha8Uu', 'decalcomanie2019', '782168282', '782168282', 'activated', 'Mamadou SOW', 'transitaire', '771536016', 'HLM Grand Médine extension villa N 99', 'Ndeye Marième Cissé SOW', 'assistante transitaire', '775561565', 'HLM Gr', 'nd Médine extension villa N 99', '2990201500958', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 15:14:02', '2022-12-22 22:29:14', 'Feminin', '2022M2100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'Keïta Bouréhima', 'Keïta', '2003-07-15', 'Dakar', 'Ivoirienne ', 'Thiossan ', 'Côte d'Ivoire ', 'zaaria324@gmail.com', '$2a$08$H/Z49dBZkSUVcN9bwAQ7I.BrYcAAWRuUBe4hnEoLrpyTS7.XL0KN.', 'keitabourehima12', '777508461', NULL, 'activated', 'N/B', NULL, NULL, NULL, 'Keïta Bintou Alamako', 'Pharmacienne ', '+2250709667186', 'Angré', 'Mère', '18AV0204', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 15:14:11', '2022-06-13 15:14:11', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'Cheikh aboul Karim makhtar diop', 'Karimdiop08', '2000-08-12', 'Dakar', 'Sénégalaise', 'Dakar plateau', NULL, 'karimdiop99@gmail.com', '$2a$08$BJ93RQqHg4oiPN7UFcSYi.V6IttkHq0gyCrhJMhBP48QpB1D26.5G', 'juniordiop99', '781295981', '', 'activated', 'Abdoulaye makhtar diop', 'Depute', '766671260', 'Villa anse bernard', 'Coumba ndaw gueye', 'Commercante', '776355785', 'Villa anse bernard', 'Ass sylla', '101200008122000490', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 15:16:22', '2022-12-22 22:12:26', 'Masculin', '2022M186', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'Djeudji Davila ', 'Entalia', '2001-10-08', 'Yaoundé ', 'Camérounaise ', 'Grand Dakar ', 'Nkozoa', 'davilaentalia@yahoo.com', '$2a$08$kqfpT5drHUuKQ2EvyBOez.xjcR8UFjDl/8IwPYCoHxvAH7a39c8d.', 'Davi12la', '773878650', NULL, 'activated', NULL, NULL, NULL, NULL, 'Nono Bopda Seraphine ', 'Coiffeuse ', '699968081', 'Nkozoa ', 'Tchakam jules Bertin', 'SN005873', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 15:17:42', '2022-12-22 21:52:52', 'Feminin', '2022M224', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'MBAMBI ', 'Athena Maeleen ', '1998-11-21', 'Congo Brazzaville ', 'Congolaise', 'Niarry Tally villa 59', 'Tchimbamba', 'athenambambi@gmail.com', '$2a$08$MG8I2A1Fu2oUsTj3YF1yWu6s3AOKLgXurLEh11m5i6YfFMigWfLaq', '1012', '777520494', NULL, 'activated', 'MBAMBI Evariste ', 'Commerçant ', '+242066698894', 'Base aérienne ', 'PAMBOU Marie Aline Berthe', 'Commercante', '+242057878080', 'Tchimbamba ', '775723376', 'OA0380666', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 15:18:21', '2022-12-22 22:26:34', 'Feminin', '2022M288', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'Wilfried Cedric Shamari SANÉ', 'Willy', '2003-07-04', 'Dakar ', 'Sénégalaise', 'Mermoz cité des enseignants ', NULL, 'cedricsane03@gmail.com', '$2a$08$/rzBvttdJo2lOTun3peJ1ujLrfNKyiOW0x/LHQ/yaZQ6/Bvr5kY/q', 'deirfliw00', '772206399', NULL, 'activated', 'André Daniel Pascal SANÉ ', 'Professeur de traumatologie et d'orthopédie', '+221775636638', 'Mermoz cité des enseignants ', 'Itelvina Francisca DIATTA SANÉ ', 'Kinesitherapeute ', '+221775449144', 'Mermoz cité des enseignants ', 'André Daniel Pascal SANÉ', '1752200301020', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 15:19:12', '2022-06-13 15:19:12', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'NDEYE KHADY ', 'Ndonh', '2001-11-20', 'Pikine', 'Sénégalaise ', 'Amitié 2', '', 'ndeyekhadyndong54@gmail.com', '$2a$08$lxt6yBNZI4CDES1a6uUnve54gb4RK4hsYcl7IaaxhbXn93qLQtPO2', 'ndong201', '774200830', NULL, 'activated', 'Ndong', 'Sous-préfet ', '777139552', 'Amitié2', 'Cissé', 'Surveillant générale ', '777123236', 'Amitié 2', 'Mère ', '20120011120000073', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 15:20:29', '2022-12-22 22:26:21', 'Feminin', '2022M290', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'Kouassi Kossiah Marie Sagesse ', 'Kouassisagesse4@gmail.com', '2002-12-03', 'Port bouet', 'Ivoirienne ', 'Sicap liberté 3', 'Bouaké ', 'Kouassisagesse4@gmail.com', '$2a$08$svkZq8e1DMBrsL8ozu2p.ukKFuO4DgCsSmkGV8byEtwBHsjGNHL0W', '1590', '777876005', '777876005', 'activated', 'Kouamé Gustave ', 'Pharmacien', '+2250101187828', 'Bouaké ', 'Koné setou', 'Ménagère ', '+22505422442', 'Korhogo', '777520494', '19AA00781', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 15:21:32', '2022-12-22 22:17:12', 'Feminin', '2022P2175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'Diémé Viviane Maimouna', 'Viviane', '2000-08-15', 'Guinaw Rails', 'Sénégalaise', 'Camp Abdou Diassé ', 'Camp Abdou Diassé', 'vivianedieme00@gmail.com', '$2a$08$G75sFlAPbmFLOwmDFTjogOOQBBatqwKmWN5ju27W90854DPk1AorG', 'vivi2000', '705408465', '774957644', 'activated', 'Ben souleymane Diémé', 'fonctionnaire', '775112678', 'Camp Abdou Diassé', 'Anais Biagui', 'Ménagére', '772048883', 'casamance', 'fatou kine coly', '2943200001885', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 15:24:10', '2022-12-22 22:25:26', 'Feminin', '2022M293', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'Niang Babacar', 'Babs Ng', '2002-09-17', 'Dakar', 'Sénégalaise ', 'Hann mariste 1 Villa PC1 62', NULL, 'babacarniangdu11@gmail.com', '$2a$08$04YweuUyW2b.o1VwtO318uqP2gN45o9w4FcBCBr3dDM9uJ2zZ8g.6', 'messineymarsuarezmsn', '783096066', '338325895', 'activated', 'Niang Gora', 'Pharmacien', '776449557', 'Hann mariste 1 Villa PC1 62', 'Sylla Mame Aminata', 'Assistante ELI', '776418692', 'Hann mariste 1 Villa PC1 62', 'Gora Niang / Mame Aminata Sylla', '10120020917000306', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 15:28:22', '2022-12-22 23:19:46', 'Masculin', '2022M1164', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'NDEYE KHADY Ndong ', 'Ndeye khady', '2001-11-20', 'Pikine', 'Sénégalaise ', 'Amitié ', NULL, 'mamankhady2001@gmail.com', '$2a$08$Mu4JDNUsQu.cTxKb8nT4yOwu1jiXG/2XlumJDMkkUacpJCAoPJBNO', 'ndong201', '774200830', NULL, 'activated', 'Ndiogou Ndong', 'Sous-préfét', '777139552', 'Amitié ', 'Aissatou Cissé', 'SG', '777123236', 'Amitié ', 'Mère ', '20110011120000073', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 15:32:54', '2022-06-13 15:32:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'Amidao Marius', 'Mariuss_', '2000-03-29', 'Bégoua( République Centrafricaine)', 'Centre-Africaine ', 'Liberté 4', 'République Centrafricaine ', 'amidaomarius15@gmail.com', '$2a$08$WJhGjljVIQm4g..TMm6F6.iSHsld64nveEHNPdP7TbNFefHcyoWaS', 'AMIdao10', '00221766719634', '766719634', 'activated', 'Amidao Patrick ', 'Commerçant ', '0023672518534', 'Bangui ', 'Toutou Nicole', 'Ménagère ', '0023672028602', 'Bangui ', '00221778821802/00221703034469', 'O00157637', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 15:40:11', '2022-12-22 22:13:50', 'Masculin', '2022M194', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'Fea kpassinambona ', 'Fea', '2002-06-08', 'Bangui ', 'Centre-Africaine ', 'Ouakam', 'Bangui', 'feakpassinambonasemromuald@gmail.com', '$2a$08$AiDG063ZA187girlmYAu8.RNuWSQ0GPl6/PHvoq53etwlh1ROPsPm', 'fea@1.', '778577508', '778577508', 'activated', 'Fea michel', 'Admistrateur civil ', '0023675732246', 'Bangui', 'Fea nadege ', 'Affairiste ', '0023672522265', 'Bangui', '778577508', 'O00174157', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 15:49:06', '2022-06-13 15:49:06', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'BILLIE KAYI Orlane Marthe', 'orlanemarthe', '2000-04-24', 'Cocobeach/Gabon', 'Gabonaise', 'Fasse canal 4', 'Angondjé /Libreville', 'orlanelovael2016@gmail.com', '$2a$08$ZAShF/oeRgko5qlZd9uGT.qu4ZNffT/9H0AL7XP/hnFz4QeMdTwNK', 'arbre06682128', '+221776707622', '+221776707622', 'activated', 'YAMAMBIGHOU Baris', 'Biochimiste ', '077826787', 'Angondjé /Libreville', 'Ndong Paule ', 'Gérante ', '077359101', 'Port gentil', 'YAMAMBIGHOU BARIS', '19GA33687', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 17:35:14', '2022-12-22 22:33:53', 'Feminin', '2022M279', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'Azayeng Nsi Gist-Elsy-Karla', 'azayengnsi@gmail.com', '1997-11-17', 'Libreville (Gabon)', 'Gabonaise', 'Ouakam ', 'Gabon', 'azayengnsi@gmail.com', '$2a$08$8Gu2QzASkQB218juBuy.S.kRY8WTjvVgLyb9v6Ebz3f3YbFeOemkm', 'Mounze123456', '774106637', NULL, 'activated', 'Nsi Mba Joseph', 'Sénateur ', '077469838', '', 'Omomone Essone Yolande ', 'Enseignante ', '074366169', NULL, 'Père ', '20GA34076', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15 18:19:13', '2022-12-22 22:55:26', 'Feminin', '2022M248', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'Gbagba Farida Janice ', 'Janicegbagba', '1997-10-29', 'Bangui', 'Centre-Africaine ', 'Fass rue 07', 'Centrafrique ', 'f.gbagba@yahoo.com', '$2a$08$rcyJHev1wEepVRT38GIUWuDx734yON9yeG5pFcQc2z8sK7cFDB.Um', 'Ph@rmacist2026', '781646346', '781646346', 'activated', 'Gbagba ', 'Médecin ', '0023675505117', 'Bangui RCA ', 'Yambouka ', 'Régisseur ', '0023675057500', 'Bangui RCA ', 'YAMBOUKA Clarisse 0023675057500', 'O00174582', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-16 00:52:29', '2022-06-16 00:52:29', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'Senga Mbakop Grace Brenda ', 'Senga brenda', '2002-07-25', 'Douala', 'Camérounaise ', 'Grand dakar', 'Makepe', 'ortegagracebrenda@icloud.com', '$2a$08$QbGQ2Jr1Pig.PvFNrrMaROoJK.mwFTq53uTJl8juNJxIA3jwBi6LC', 'brenda2002', '786321922', '786321922', 'activated', 'Senga André ', 'Banquier', '+237677307009', 'Makepe', 'Senga Agnès ', 'Commerçante ', '+237677796861', 'Makepe', 'Tinen Romane ', '1238578', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-16 11:40:47', '2022-06-16 11:40:47', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'Keita kalou Aboubacar ', 'Keita kalou', '2000-03-25', 'Yopougon ', 'Ivoirienne', 'P', 'Marcory (côte d'ivoire)', 'kaloukeita2503@gmail.com', '$2a$08$k0.OYyzCWyoOGFJiuA6wEOuZLeqr0mJxrd7qwN7QvOkJvJMk85ioe', 'kaless225003', '0585070044', '0749146195', 'activated', 'Keita Mamby', 'Médecin ', '0707900148', 'Biankouma (côte d'ivoire)', 'Akre owo clarisse', 'Aide soignante ', '0153544926', 'Marcory( Côte d'Ivoire)', '0545334673', 'C1003285820', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-16 14:50:26', '2022-06-16 14:50:26', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'DOGBE DAKE Loïck Odilon', 'Loïck DOGBE', '2000-12-14', 'Lomé-Togo', 'Togolaise', 'Grand Daka 384', 'Pharmacie Sainte Famille Atakpamé-Togo', 'ddoloick@gmail.com', '$2a$08$L/CJqxVVQAfaSS1BFCVe9.MlVD7vIkVtMNtfjDmSHvkjEe7vL6QYG', 'Loickodilon2000', '776225054', '338650927', 'activated', 'DOGBE DAKE Koffi', 'Docteur en pharmacie ', '+22890022048', 'Pharmacie Sainte Famille Atakpamé-Togo', 'LAWSON ATTIKPASSOH Sibi', 'Technicienne de laboratoire ', '+22890082933', 'Pharmacie Sainte Famille Atakpamé-Togo', 'Père ou Mère', '0065-474-6043', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-16 21:54:11', '2022-12-22 23:10:15', 'Masculin', '2022P1141', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` (`id`, `nom`, `username`, `date_naissance`, `lieu_naissance`, `nationalite`, `adresse_senegal`, `adresse_pays_origine`, `email`, `password`, `confirm_password`, `tel_mobile`, `tel_fixe`, `etat`, `Nom_pere`, `Profession_pere`, `Telephone_pere`, `Adresse_pere`, `Nom_mere`, `Profession_mere`, `Telephone_mere`, `Adresse_mere`, `Personne_contact`, `Cin`, `Etablissement_origine`, `Type_contrat`, `Date_recrutement`, `Specialite`, `volume_horaire`, `unite_enseignement`, `createdAt`, `updatedAt`, `sexe`, `Matricule`, `primo`, `diplome`, `fonction`, `grade`, `parentId`, `categorie`, `age`, `elementId`, `filiere`, `level`, `niveau_etude`, `ec`) VALUES
(93, 'Moumini Aïssatou ', 'Raissa ', '2022-06-25', 'Garouy', 'Camérounaise ', 'Niary Tally ', 'Garoua', 'mouminiraissa7@gmail.com', '$2a$08$bfcEUCwC.b5fc84KQmmd/eWKxwXN7Kma.BwA7dFhxkP3zEsuCXKuO', 'boom98!', '+221767291469', NULL, 'activated', 'Moumini ', 'Commerçant', '+237696860698', 'Garoua ', 'Maimounatou ', 'Ménagère ', '+237698062484', 'Garoua ', 'Pere', '20190502992920661', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-17 13:41:05', '2022-12-22 22:54:26', 'Feminin', '2022M267', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'Marie GAYE', 'marie', NULL, NULL, 'Sénégalaise', 'dakar', NULL, 'gayemarie93@gmail.com', '$2a$08$Ut1N/FoSD25HsYI92B/PtupVWXq2ddDP9Pv/jvPp3RJgJvFPrQyVO', 'passer123', '777692677', '777692677', 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-17 14:53:11', '2022-06-17 14:53:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'NGADI Jean Noël', 'jeannoelngadi', '1988-12-01', 'DIVINDE', 'Gabonaise', 'YOFF MBENGUENE', 'CITE OCTRA OWENDO', 'jeannoelussd@gmail.com', '$2a$08$CHrXObcXZ74m2zPGZi/1Ve.fxLQPS9a.0fobFRmr4g7MwkUVLZMoa', 'portailussdjnn', '+221774900774', NULL, 'activated', 'NIONGUI HERVE', '', '+241 66 92 09 92', 'CITE OCTRA OWENDO', 'MANEKE NADEGE', '', '+241 66627501', 'CITE OCTRA OWENDO', 'AMBASSADE DU GABON AU SENEGAL', '18GA34201', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-18 08:46:31', '2022-12-22 22:29:07', 'Masculin', '2022M1129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'Mahdi Ali Boulaleh', 'Mahdi', '1998-05-15', 'Djibouti', 'Djiboutienne ', 'Sicap karack', 'Cité cheikh Osman', 'mahdititan75@gmail.com', '$2a$08$YMIc5fvijVBjTQcuoM7EZO69G2wABkjV90woZe5vfUqS/xy/fMNga', 'Drmahdi123', '708037405', '774684407', 'activated', 'Ali Boulaleh', 'Décédé', NULL, NULL, 'Fatouma Abdourahman', 'Commerçante', '0025377609831', 'Cité cheikh Osman', '786062581', '17RF17750', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 10:19:35', '2022-12-22 22:27:20', 'Masculin', '2022M1127', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'Mensah Sewa Charles', 'Charliie', '1993-12-28', 'Abidjan', 'Ivoiriene', 'Dieuppeul 4', 'Abidjan', 'charliie80@gmail.com', '$2a$08$16sEyVFUhKE0gFh7VlMaE.Bw8TKZAJ.Y0nA.YApsUMe2oMLzUNN4i', 'azerty12', '771691954', NULL, 'activated', 'Mensah Jonas', 'Pharmacien', '+2250707077334', 'Abidjan', 'Nascimento Beatrice', NULL, NULL, 'Abidjan', 'Mensah Jonas', '17AP49115', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-21 22:59:04', '2022-12-22 23:14:33', 'Masculin', '2022P1189', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'ANOUNJOU CHRISTEL ORNELA', 'Christel', '1994-01-02', 'Douala-Cameroun', 'Camérounaise', 'Dieuppel-Derkle', 'Douala', 'christelanounj.21@gmail.com', '$2a$08$Ttp9fQZ3P0f8AKFcRyX9ouq4fjcPHS3mayArE9Qg.Pnc4hpbHprbK', 'Bbariane912', '781537303', '781537303', 'activated', 'Nouni Alain', 'Genis-civil', '+237699790603', 'Douala', 'Tefouet noël', 'commercante', '+237654285219', 'Douala', '+237699790603', '1207341', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-26 19:42:01', '2022-06-26 19:42:01', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'ESSADONE BEYEME PHARECE', 'pharecessandone@gmail.com', '2022-06-02', 'Oyem', 'Gabonaise', 'Liberté 4 ', 'Gabon ', 'pharecessandone@gmail.com', '$2a$08$zoidUokgCWBaKmyQMXpRo.djJ0H4I3ZblHl3wtC3SXntJDrybt.Ki', 'Pessandone02/04/2000', '772976977', '772976977', 'activated', 'BEYEME ESSADONE FAUSTIN', 'Enseignant retraité', '0024177364023', 'Gabon', 'MBELE MENIE JEANNETTE', 'Institutrice', '+24177736773', 'Gabon', '778731298', '19GA27745', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 20:06:17', '2022-12-22 22:03:08', 'Masculin', '2022M159', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'Ababacar MBENGUE', 'ambengue', NULL, NULL, 'Sénégalaise', '5', NULL, 'mbenguerx@yahoo.fr', '$2a$08$Fd16e4HfiHIorS0WaCyoR.3r5h9A9kV9jQfurgvZ8ETA7c5Hy2fw2', '$2a$08$5.SFlOl/7l/J4vv3F7b9ru3C.YpQl2u.dC2lZP3Dchvt7EhHWVUZW', '775668658', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Imagerie médicale', NULL, 'Imagerie Médicale', '2022-06-30 13:21:03', '2023-02-24 12:48:26', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45', NULL, NULL, NULL, NULL, NULL),
(101, 'Abdou NIANG', 'aniang', NULL, NULL, 'Sénégalaise', NULL, NULL, 'abdounian@gmail.com', '$2a$08$lm.yw5TOETunf6YaXnyuweSbY.ZAzHySsXcHHD8sF7Wm5BZ/UIFg2', 'passer123', '775361006', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Néphrologie', NULL, NULL, '2022-06-30 13:23:00', '2022-07-01 12:12:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'Abibatou Sall ', 'asall', NULL, NULL, 'Sénégalaise', 'Hlm Grand Médine', NULL, 'bibasall@yahoo.fr', '$2a$08$RAIf5oUEJL6A6utvx6EWxuHtGbC8VqJ8E6SUhKlukmyCc4HETMfae', 'passer123', '777566006', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20619780926000022', NULL, 'Vacataire', NULL, 'Hématologie biologie', NULL, NULL, '2022-06-30 13:25:21', '2022-06-30 16:23:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'Aboubakry Mody DIALLO', 'amdiallo', NULL, NULL, 'Sénégalaise', NULL, NULL, 'aboumodydiallo@yahoo.fr', '$2a$08$jdLDT1lv/85GI16RPdC3OecXsgJ1Wp7.sw/CxQRPP4.p6Ax1lnP86', 'passer123', '776392724', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Hépato-gastro-entérologie', NULL, NULL, '2022-06-30 13:26:51', '2022-06-30 13:26:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'Adjaratou Dieynabou SOW', 'adsow', NULL, NULL, 'Sénégalaise', NULL, NULL, 'sowads@gmail.com', '$2a$08$jpgh0TEhwhpOtD03R0d8/Oo3fYi/.H8Dezc/BLx0ubG3Ve9iwsLym', 'passer123', '776566864', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Neurologie', NULL, NULL, '2022-06-30 13:28:22', '2022-06-30 13:28:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'Aichetou FALL', 'afall', NULL, NULL, 'Sénégalaise', NULL, NULL, 'aichaa776@yahoo.fr', '$2a$08$FS23gI/jepc03cndjLq8.ejtZT7TLOOzWsBH1BxDn5wfyeg07MbWW', 'passer123', '775497734', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Rhumatologie', NULL, NULL, '2022-06-30 13:29:31', '2022-06-30 13:29:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'Aminata TOURE', 'atoure', NULL, NULL, 'Sénégalaise', 'Hlm Grand Yoff', NULL, 'amitoure@hotmail.comitoure', '$2a$08$KDTNoFEqo.q.Vpn3UcwycuDFUKFGCkWpt1T6RnLhLIo5X/6Op.EYm', 'passer123', '781136665', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20619701101000022', NULL, 'Vacataire', NULL, 'Toxicologie', NULL, NULL, '2022-06-30 13:30:46', '2022-06-30 16:11:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'André Daniel Sané', 'adsane', NULL, NULL, 'Sénégalaise', NULL, NULL, 'danielsane66@gmail.com', '$2a$08$n1Ds9dOB9./Z0BL.R5iMbucaAHQV9ZXeE92oHMThESMbH/53ZsEyS', 'passer123', '776393137', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Orthopédie Traumatologie', NULL, NULL, '2022-06-30 13:32:45', '2022-06-30 13:32:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'Jean Augustin Diégane TINE', 'adtine', NULL, NULL, 'Sénégalaise', 'Guediawaye Sam Sam 3', NULL, 'diegantin@gmail.com', '$2a$08$Bvk7IY7/zZPHbkZPvo/5b.lAUDQPWqxV7puOGtA5OmhRWAABCwiB2', 'passer123', '775423706', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10119830327000100', NULL, 'Vacataire', NULL, 'Méthodologie de la recherche', NULL, NULL, '2022-06-30 13:34:19', '2022-06-30 16:22:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'Babacar DIAO', 'bdiao', NULL, NULL, 'Sénégalaise', NULL, NULL, 'Babacardiao104uro@yahoo.fr', '$2a$08$0l932FVVmTO44ZoTNYLjA.T4..Pjn7Q0BrvDT7Ja8TWuVokvNY6yi', 'passer123', '775384241', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Urologie', NULL, NULL, '2022-06-30 13:35:16', '2022-07-01 11:39:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'Babacar MBENGUE', 'bmbengue', NULL, NULL, 'Sénégalaise', 'Yoff Tonghor', NULL, 'babacar.mbengue@ucad.edu.sn', '$2a$08$i.pJ7ZMujzmiTER3TnNMqe3M07JtTwO2qGfYYhxtlJprAd4LEcpo6', 'passer123', '777375391', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1759197400322', 'UCAD', 'Vacataire', NULL, 'Immunologie', NULL, NULL, '2022-06-30 13:36:33', '2022-06-30 16:20:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'Bakary DANFAKHA', 'bdanfakha', NULL, NULL, 'Sénégalaise', NULL, NULL, 'danfakha606@yahoo.fr', '$2a$08$jO3pAU8pqQziLLtrA65fZuCWvHFOl.0Ag51T5doq.1qjq1aLFJGFW', 'passer123', '776459996', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Secourisme', NULL, NULL, '2022-06-30 13:37:40', '2022-06-30 13:37:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'Baye Karim DIALLO', 'bayekarim-', NULL, NULL, 'Sénégalaise', NULL, NULL, 'baydiallo@yahoo.fr', '$2a$08$cHGIFoz15EwwX9iBa3lhDey95at8LjnWOtTMzvIGA9JixB96wiSkS', 'passer123', '774362175', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'ORL', NULL, NULL, '2022-06-30 13:38:48', '2022-06-30 13:38:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'Cheikh Tidiane CISSE', 'tidiane', NULL, NULL, 'Sénégalaise', NULL, NULL, 'cheikh.cisse@ucad.edu.sn', '$2a$08$pIIUeErevMzfQmFGJl28S.RGPERCtkKjs20Gv5eFg6HeKXPFBdlDm', 'passer123', '775555851', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UCAD', 'Vacataire', NULL, 'Gynécologie- Obstétrique', NULL, NULL, '2022-06-30 13:40:42', '2022-06-30 13:40:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'Cheikhou KA', 'cheikhou', NULL, NULL, 'Sénégalaise', NULL, NULL, 'cheikhouka@gmail.com', '$2a$08$tIA94hSUSHesBybGUO6SvOM7VGG3uvavqNKQ1ZnlEp5KCV.HAfu2G', 'passer123', '771760751', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Informatique', NULL, NULL, '2022-06-30 13:42:36', '2022-06-30 13:42:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'Amadou Gabriel Ciss ', 'agciss', NULL, NULL, 'Sénégalaise', NULL, NULL, 'cissgaby@yahoo.fr', '$2a$08$Q86UjGhPQ4dmOhLRhWrZIeJzzhFkAREr5Zgq4bRWdnw8xy8cD64Mq', 'passer123', '771023352', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Chirurgie Cardio thoracique', NULL, NULL, '2022-06-30 13:44:17', '2022-06-30 13:44:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'Claude MOREIRA', 'cmoreira', NULL, NULL, 'Sénégalaise', NULL, NULL, 'drcmoreira@gmail.com', '$2a$08$Wd1SvTz9Gli/Fu.T.PrxBeTNCAV.u/jCHlCn71dws/v1C4mSfdxrq', 'passer123', '776382957', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Pédiatrie', NULL, NULL, '2022-06-30 14:07:50', '2022-06-30 14:07:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'Demba DIEDHIOU', 'ddiedhiou', NULL, NULL, 'Sénégalaise', 'Sicap', NULL, 'dembadiedhiou1976@gmail.com', '$2a$08$VrcifuyT0BNLIQNJy5PBhOk5MLhMK18n2Q7zK0DtX2SV14zVAozmC', 'passer123', '779641994', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10119760303000553', NULL, 'Vacataire', NULL, NULL, NULL, NULL, '2022-06-30 14:09:11', '2022-06-30 16:03:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'Mamadou DIOP ', 'mdiop', NULL, NULL, 'Sénégalaise', NULL, NULL, 'drmdiop@hotmail.com', '$2a$08$DX/ZHDL7rSLC.B6YTwTmuepz/DlJwIYWBylW18Z09RkhHtTmpv95m', 'passer123', '774503945', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Anatomie', NULL, NULL, '2022-06-30 14:10:29', '2022-06-30 14:10:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'Said Norou DIOP', 'nouroud', NULL, NULL, 'Sénégalaise', '+', NULL, 'saidnorou@yahoo.fr', '$2a$08$uPT3IsSyQYPapDbuIl/WuuxuuYgCgBT9j.fuFT.2UbKzeM.d946xu', 'passer123', '776394330', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1751195200227', 'UCAD', 'Vacataire', NULL, 'Sémiologie médicale', NULL, NULL, '2022-06-30 14:11:41', '2022-07-01 11:40:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'Michel Assane Ndour ', 'michelndour', NULL, NULL, 'Sénégalaise', NULL, NULL, 'michelassanendour@yahoo.fr', '$2a$08$7TsWVW7D9fdOMhoByquzNerDIzKDrI35ZaEcNa0ENDwwPAzr5dpRa', 'passer123', NULL, NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Endocrinologie ', NULL, NULL, '2022-06-30 14:12:54', '2022-06-30 14:12:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'El Hadji Malick NIANG', 'elmalick', NULL, NULL, 'Sénégalaise', '8', NULL, 'elhmniang2000@yahoo.fr', '$2a$08$SJA9QJddj7QTsQ03LuqJxOZjw.vCc5tzWW/7QNGuvTDiSy3TjVHwe', 'passer123', '776360132', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10719741028000011', NULL, 'Vacataire', NULL, 'Anesthésie - Réanimation', NULL, NULL, '2022-06-30 14:14:05', '2022-06-30 15:54:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'Eugène DIEME', 'edieme', NULL, NULL, 'Sénégalaise', NULL, NULL, 'eugdieme@gmail.com', '$2a$08$UmNbK5JGZmDEVsk1NBMbkOxVsrVxD5KHZ9aCIl0yn1voPzYa/n7oW', 'passer123', '776356483', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Sémiologie chirurgicale / Patho chirurgicale digestive', NULL, NULL, '2022-06-30 14:15:09', '2022-06-30 14:15:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'Ibrahima SALL', 'isall', NULL, NULL, 'Sénégalaise', NULL, NULL, 'sall_i17@yahoo.fr', '$2a$08$hkIfmHtqOOHu3k867b9q.evY3DSfObhoOk1dafys3rcFtJecivOrC', 'passer123', '777382200', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Sémiologie chirurgicale / Patho chirurgicale digestive', NULL, NULL, '2022-06-30 14:16:10', '2022-06-30 14:16:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'Lamine NIANG', 'lamine', NULL, NULL, 'Sénégalaise', NULL, NULL, 'lamineniang72@gmail.com', '$2a$08$cIcN/4CKqh.wYDm6AZeKReyQuPvLNDAKb8ewjJN9h9vVAkGG.qqly', 'passer123', '776395844', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Sémiologie urologique', NULL, NULL, '2022-06-30 14:17:26', '2022-06-30 14:17:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'Malick Ngom ', 'drmalick', NULL, NULL, 'Sénégalaise', NULL, NULL, 'ppmalick@hotmail.com', '$2a$08$Rspafe78kEni.BA5xGyUhOS1pZwP7bdClFJGojpTkIEeWfc8tniVK', 'passer123', '774338426', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Sémiologie gynécologique', NULL, NULL, '2022-06-30 14:18:59', '2022-06-30 14:18:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'Ibrahima Cissé DIAKHATE', 'drcissé', NULL, NULL, 'Sénégalaise', NULL, NULL, 'icdiakhate@hotmail.com', '$2a$08$xuFRmcm1eDUTTap8bQ5FgeKge.VK0xVXJRrmLHK/baheCiEw2urPa', 'passer123', '776592240', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Sémiologie radiologique', NULL, NULL, '2022-06-30 14:20:41', '2022-06-30 14:20:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'Aloyse SAGNA', 'draloyse', NULL, NULL, 'Sénégalaise', NULL, NULL, 'alosagna@gmail.com', '$2a$08$xrTtcujnexxtS.0.P6GYYemyAYOOIU4VqbvTIAyVWV7XnacaKgy.u', 'passer123', '777017241', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Sémiologie pediatrique', NULL, NULL, '2022-06-30 14:22:37', '2022-06-30 14:22:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'Madior SY', 'madiorsy', NULL, NULL, 'Sénégalaise', NULL, NULL, 'madiorsy@yahoo.fr', '$2a$08$84fV.AImFaumd0XglHRbaept4L6kpYZnVFdLHM79hsi/gW7Ti.nji', 'passer123', '776450716', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Soins Infirmers', NULL, NULL, '2022-06-30 14:23:53', '2022-06-30 14:23:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'Gisele Woto GAYE', 'giselegaye', NULL, NULL, 'Sénégalaise', NULL, NULL, 'gwotogaye@yahoo.fr', '$2a$08$NvRh68KNscupOJofHrW7OuDVgckkPfhHkTjMhRDOUT7FRvqX.zgd.', 'passer123', '776369181', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Anatomie pathologique', NULL, NULL, '2022-06-30 14:25:27', '2022-06-30 14:25:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'Gora MBAYE', 'drmbaye', NULL, NULL, 'Sénégalaise', NULL, NULL, 'mbaygo@yahoo.fr', '$2a$08$ReDxWR/jlbExoGsaJtc3yOMpcAUNSTYQw8knWoMxPRs9FO6mt.e2e', 'passer123', '705626327', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Physique - Biophysique', NULL, NULL, '2022-06-30 14:27:10', '2022-06-30 14:27:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'Ibrahima SECK', 'drseck', NULL, NULL, 'Sénégalaise', '', NULL, 'riagaye93@gmail.com', '$2a$08$UYACwa.J/clmFqN2EGFI..QgkIdumExhUO1QFKvgRrooUH8C2s/gW', 'passer2021', '776394441', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Méthodologie de la recherche', NULL, NULL, '2022-06-30 14:31:40', '2022-06-30 14:31:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'Jean Pascal Demba DIOP', 'jpdiop', NULL, NULL, 'Sénégalaise', NULL, NULL, 'diopjeanpascaldemba@gmail.com', '$2a$08$HLx62GfQSVAR7aYjpGtPU.nlRP.cGOZJzEQ/2XfGkkukcCH/F6JQq', 'passer123', '772684414', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Génétique', NULL, NULL, '2022-06-30 14:32:51', '2022-06-30 14:32:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'Khadidiatou BA FALL', 'khadiba', NULL, NULL, 'Sénégalaise', NULL, NULL, 'khadybafall@yahoo.fr', '$2a$08$nMTTd6mFpiRI1W7XC2GV.e95wJ2mIc.IVpIjKXf71DGGlEDheYIia', 'passer123', '775194344', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Maladies infectieuses', NULL, NULL, '2022-06-30 14:34:20', '2022-06-30 14:34:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'Lamine SOW', 'drlamine', NULL, NULL, 'Sénégalaise', NULL, NULL, 'lamsow@orange.sn', '$2a$08$zvnGb4zFnpmDFnIUfbf.G.cGoz2kFFX9OvWHe6UKRectC8E0tLM4q', 'passer123', '776394725', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Médecine légale - Médecine', NULL, NULL, '2022-06-30 14:35:21', '2022-06-30 14:35:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'Louis Augustin DIOUF', 'louisdiouf', NULL, NULL, 'Sénégalaise', NULL, NULL, 'louyoguiste@yahoo.fr', '$2a$08$jk4SlYQv3w5DtzEFTP22AuIHnb5fm8LaeFgjM5V1eLemTm9DRPdXG', 'passer123', '705626327', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Mathématiques - Statistiques', NULL, NULL, '2022-06-30 14:37:49', '2022-07-01 12:14:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'Malick DIOUARA ', 'mdiouara', NULL, NULL, 'Sénégalaise', NULL, NULL, 'malick.diouara@ucad.edu.sn', '$2a$08$6DtyXnrPU89wsjTblId9ZeW1Rj2V4/7zrekpAwoT/X5m5CODFLf2a', 'passer123', '775685435', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UCAD', NULL, NULL, 'Biologie moléculaire', NULL, NULL, '2022-06-30 14:39:46', '2022-06-30 14:39:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'Mamadou BALDE', 'mbalde', NULL, NULL, 'Sénégalaise', 'Fass Delorme', NULL, 'mamadou10.balde@ucad.edu.sn', '$2a$08$i5zti/bAbMJzas2YBjbNveFdFf5S23lkyUKibpcaxZ48tk8wNmkS6', '$2a$08$ZM8OO5iBimjxkbnIPRS4beM/4ckRzPqcUUJRtc1LmEwXs/HlGNO..', '774217843', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11019830804000034', 'UCAD', 'Vacataire', NULL, 'Chimie physique', NULL, NULL, '2022-06-30 14:40:50', '2023-02-28 08:58:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'Mamadou BASSENE', 'mbassene', NULL, NULL, 'Sénégalaise', NULL, NULL, 'basse046@gmail.com', '$2a$08$5jhwaG1Ff6K4ngQrBk5L9u6wz7ONP3uJTa6/ZBAuzMvNciZ1ZhTlq', 'passer123', '771671923', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Anglais', NULL, NULL, '2022-06-30 14:44:16', '2022-06-30 14:44:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'Mamadou COUME', 'drcoume', NULL, NULL, 'Sénégalaise', NULL, NULL, 'prcoume@gmail.com', '$2a$08$w3lI1XjnVNcmgFZ7rtnxTu3./qH38NlrAKbwWIJGD3rPk3pmrd2Ki', 'passer123', '775489898', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Gériatrie - Gérontologie', NULL, NULL, '2022-06-30 14:45:31', '2022-06-30 14:45:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'Mamadou Habib THIAM', 'mthiam', NULL, NULL, 'Sénégalaise', NULL, NULL, 'mamadouhabibthiam@gmail.com', '$2a$08$ih8aDk7SbCPT5qrA74mra.15JS7UjP.pAxiCAnDsLALGE48kO7hKy', 'passer123', '776394441', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Sciences humaines et sociales', NULL, NULL, '2022-06-30 14:47:00', '2022-06-30 14:47:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'Mamadou NDIAYE', 'drndiaye', NULL, NULL, 'Sénégalaise', 'Dieuppeul', NULL, 'ndiayem1966@gmail.com', '$2a$08$XSsltWiFeT19CkeTdp.rkeOVZTvthLvMpLOUO84aZQ/M48XW7WuUC', 'passer123', '774117518', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10719660524000090', NULL, 'Vacataire', NULL, 'Pharmacologie', NULL, NULL, '2022-06-30 14:48:07', '2022-06-30 16:00:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'Mame Vénus GUEYE', 'venusgueye', NULL, NULL, 'Sénégalaise', 'Dieuppeul 2', NULL, 'mavenus9@hotmail.com', '$2a$08$CxlJ29ZiRRobeF8vRl.IUOMAJfk.M5JNfg299DO3kcJnvL1RjExq6', 'passer123', '776410416', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20119850219000060', NULL, 'Vacataire', NULL, 'Biologie cellulaire', NULL, NULL, '2022-06-30 14:49:23', '2022-06-30 16:19:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'Mansour NIANG', 'drmansour', NULL, NULL, 'Sénégalaise', NULL, NULL, 'mansniang@hotmail.com', '$2a$08$PnW6kiqbQT2cBH/aDkazse28DdB4Ey8Udxf5k6Uz/IVRNVSF2SQEK', 'passer123', '776566343', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Gynécologie- Obstétrique', NULL, NULL, '2022-06-30 14:51:33', '2022-06-30 14:51:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'Maodo NDIAYE', 'drmaodo', NULL, NULL, 'Sénégalaise', 'Parcelles Assainies', NULL, 'maodo7ndiaye@yahoo.fr', '$2a$08$7PaEWboRNviTSudBiQI1RuXXcSL5XhIsEve/ZhdRCDu67.k.1egSO', 'passer123', '776571023', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '107198000323000057', NULL, NULL, NULL, 'Dermatologie - Vénéréologie', NULL, NULL, '2022-06-30 14:52:23', '2022-06-30 15:58:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'Matar SECK', 'matarseck', NULL, NULL, 'Sénégalaise', NULL, NULL, 'matarsec@yahoo.fr', '$2a$08$A8AFwck/1KSFiwEcuPpKxe.x.BGPwgcq8H8pYkLE/KyXTrb8Nvrju', 'passer123', '775698001', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Chimie organique', NULL, NULL, '2022-06-30 14:58:14', '2022-06-30 14:58:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'Modeste OGOUGBEMY', 'drmodeste', NULL, NULL, 'Sénégalaise', NULL, NULL, 'drmodeste@gmail.com', '$2a$08$JpIOaq0huBvejijpDNcZWePEjg.4qdSoLr0h/rfSYud54uDtwfel6', '$2a$08$rExpwCr6hkX4rohhj72lE.VU0UqI5CSlOJCfGjGq0R/xnpEj2BLqG', '774558920', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Permanent', NULL, 'Sémiologie chirurgicale ', NULL, NULL, '2022-06-30 14:59:30', '2022-08-12 09:54:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'MODOU Oumy KANE', 'drkane', NULL, NULL, 'Sénégalaise', NULL, NULL, 'kanebamba@yahoo.fr', '$2a$08$EPurFIppAeDJDR0HBu4Cy.GRtKUl3jRWzu8f/o4CPAnYsv9j3E3tO', 'passer123', '776551234', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Physiologie', NULL, NULL, '2022-06-30 15:00:54', '2022-06-30 15:00:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'Mouhamadou Lamine DIA', 'drlaminedia', NULL, NULL, 'Sénégalaise', 'Fann Hock', NULL, 'laminedia2004@yahoo.fr', '$2a$08$TC3XyMDToyoY.Q4MnCg4melbOPJk51D5/H9ovoEuOHUE5kZex6yVC', 'passer123', '776575634', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10119780524000215', NULL, 'Vacataire', NULL, 'Bactériologie - Virologie', NULL, NULL, '2022-06-30 15:02:14', '2022-06-30 16:01:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'Mouhamed DIOP', 'diopmouha', NULL, NULL, 'Sénégalaise', 'Saint Louis', NULL, 'mouhamed.diop@esp.sn', '$2a$08$8GbgzC9GGIwmA6ywa6GB7OEhuWQ1iFvC4BisUPpLeAqHCjnpIwara', 'passer123', '773380665', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10419891217000092', NULL, 'Vacataire', NULL, 'Informatique', NULL, NULL, '2022-06-30 15:03:31', '2022-06-30 16:05:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'Moustapha SARR', 'drsarr', NULL, NULL, NULL, NULL, NULL, 'sarrm2337@gmail.com', '$2a$08$Jrn2ZM5ifasN4.a.boTScOhpK0aQky4JT6Xgso3Q/mJpLtG23245a', 'passer123', '775107530', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Cardiologie', NULL, NULL, '2022-06-30 15:04:39', '2022-06-30 15:04:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'Ndèye Absatou DIAW', 'drabsatou', NULL, NULL, 'Sénégalaise', 'Ngor Méridien', NULL, 'absatoudiaw@gmail.com', '$2a$08$dEn1xjdLAbKthR/QUQ2IpeyqE7rrVjvFoHgg5wH35Z5BrVeQmbIou', 'passer123', '773901658', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20119930919000521', NULL, 'Vacataire', NULL, 'Physiologie', NULL, NULL, '2022-06-30 15:05:56', '2022-06-30 16:13:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'Ndèye Ndoumbé GUEYE', 'drndoumbé', NULL, NULL, 'Sénégalaise', NULL, NULL, 'nng67@hotmail.com', '$2a$08$Fj9IVD/HyaCSPskk/Wsma.K0rIiz.03ipZNBi6IZi6UAo1gWcFZhi', 'passer123', '778666620', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Ophtalmologie', NULL, NULL, '2022-06-30 15:07:04', '2022-06-30 15:07:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'Pape Mactar FAYE', 'pmfaye', NULL, NULL, 'Sénégalaise', NULL, NULL, 'fayemakhou@hotmail.com', '$2a$08$sIh0dFJe9AQCdlW3DM0jNuw2LqucmaAE.wR013x3AIb.q98.5mTk2', 'passer123', '776378952', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Pédiatrie', NULL, NULL, '2022-06-30 15:12:52', '2022-06-30 15:12:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'Philomène Lopez SALL', 'drphilo', NULL, NULL, 'Sénégalaise', NULL, NULL, 'plsall@yahoo.fr', '$2a$08$g6IGIOSCAGnbnWPKBvuzw.8bVRfmoohPDuc0XEKW9Yraqu4yTwLiq', 'passer123', '775690646', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Biochimie', NULL, NULL, '2022-06-30 15:14:56', '2022-06-30 15:14:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'Salamata DIALLO', 'drsalamata', NULL, NULL, 'Sénégalaise', NULL, NULL, 'oldou@hotmail.com', '$2a$08$BCQsKVKbfyoOKEcIyXua8ucY8lGpi/Y6KQAH8i6qqU2mcOJ98tYoW', 'passer123', '775514416', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Hépato-gastro-entérologie', NULL, NULL, '2022-06-30 15:16:20', '2022-06-30 15:16:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'Salif BALDE', 'drbalde', NULL, NULL, 'Sénégalaise', '7', NULL, 'zalbalde@hotmail.fr', '$2a$08$rXCCxSJk/ZuAfyssh.VfBeNzZ1.kwi7FskuKMGG3M45vybn2yp222', 'passer123', '775577816', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10219800218000167', NULL, 'Vacataire', NULL, 'Oncologie', NULL, NULL, '2022-06-30 15:17:57', '2022-06-30 15:53:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'Seynabou FALL', 'drnabou', NULL, NULL, 'Sénégalaise', 'Sicap Liberté', NULL, 'seyna29@yahoo.fr', '$2a$08$BNfutHr1EDP9Zuh4VruOuOHjvVjqMmIdQTFx9vwtfRTvHfkOJSv0.', 'passer123', '776308522', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20119710214000213', NULL, 'Vacataire', NULL, 'Hématologie clinque', NULL, NULL, '2022-06-30 15:19:29', '2022-07-01 10:40:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'Silly TOURE', 'drtouré', NULL, NULL, 'Sénégalaise', NULL, NULL, 'touresilly@gmail.com', '$2a$08$HBiE/c4.oToycbLMCTUmXebYY.AQjNYKSJyrFeGi9fNTRHmkdQ056', 'passer123', '776469474', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Stomatologie', NULL, NULL, '2022-06-30 15:24:19', '2022-06-30 15:24:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'Yacine Dia KANE', 'drdiakane', NULL, NULL, 'Sénégalaise', NULL, NULL, 'diakane2002@yahoo.fr', '$2a$08$1YBaWOrntR/2shACcV5OXu45T66fFQb6YVXOddtuwrtenHes3ndd6', 'passer123', '776535862', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Pneumologie', NULL, NULL, '2022-06-30 15:25:44', '2022-06-30 15:25:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'Youssoupha SAKHO', 'drsakho', NULL, NULL, NULL, NULL, NULL, 'yousakho@yahoo.fr', '$2a$08$GauUVadIYtFHvKEB9ORJFeGHR7C96JO3ThuXEs0YAslAUk.QAb0ou', 'passer123', '776390468', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Neurochirurgie', NULL, NULL, '2022-06-30 15:26:48', '2022-06-30 15:26:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'Alassane WELE', 'drwele', NULL, NULL, 'Sénégalaise', NULL, NULL, 'alassanewele@yahoo.fr', '$2a$08$R4OQH.CoXnPnA7x7fmBV7.BqJb1JvgKaVIGI.g0o/0zjPCxLOyUoO', 'passer123', '775747098', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Contrôle et essais physico-chimique des médicaments', NULL, NULL, '2022-06-30 15:29:37', '2022-06-30 15:29:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'Amadou DIOP', 'dramadou', NULL, NULL, 'Sénégalaise', 'Pikine Icotaf', NULL, 'amadou4.diop@ucad.edu.sn', '$2a$08$2PPB7HhMdfrMEVuMxY2aEOCJTrOOlFJ4Qkv4q0ELpqmsMmbRhDMFG', 'passer123', '773787206', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10419770618000053', 'UCAD', 'Vacataire', NULL, 'Chimie analytique', NULL, NULL, '2022-06-30 15:31:56', '2022-06-30 16:08:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'Bamba FALL', 'drbamba', NULL, NULL, 'Sénégalaise', NULL, NULL, 'bambakoueimel@gmail.com', '$2a$08$vjGwOpMAyP7opezWQU0.TOTINjnbhUebCmBzgh2cW2n6yi3TyxDL6', 'passer123', '765041066', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Pharmacie galénique - Biopharmacie', NULL, NULL, '2022-06-30 15:33:08', '2022-07-01 10:42:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'Cheikh DIOP ', 'drcheikh', NULL, NULL, 'Sénégalaise', 'Parcelles Assainies U 8', NULL, 'cheikh4.diop@ucad.edu.sn', '$2a$08$jTzfRC58x6cKamIppxSOvOUa1/bOB0ykyiyEi6YuiF3iH0b7oJa.G', 'passer123', NULL, NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10819780730000024', 'UCAD', 'Vacataire', NULL, 'Hydrologie - Thermalisme', NULL, NULL, '2022-06-30 15:34:07', '2022-06-30 16:10:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'Emmanuel BASSENE', 'ebassene', NULL, NULL, 'Sénégalaise', 'Hann Maristes', NULL, 'aynenut@gmail.com', '$2a$08$RIvIV.CU1jOYnmSIhb8Oh.OjU3.KpAwiW7VNtvoSkocgmf62bQHRq', 'passer123', '776438067', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10219531231000325', 'UCAD', 'Vacataire', NULL, 'Pharmacognosie', NULL, NULL, '2022-06-30 15:35:19', '2022-06-30 16:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'Kady DIATTA', 'drdiatta', NULL, NULL, 'Sénégalaise', 'Nord Foire', NULL, 'khadydiose@yahoo.fr', '$2a$08$q3XodNmyYJV5J46M0SEwIuQM4cMye0JmZiGsZSYW.qVPnO7R4ntry', 'passer123', '775454137', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20219750226000020', NULL, 'Vacataire', NULL, 'Biol. végétale', NULL, NULL, '2022-06-30 15:38:29', '2022-06-30 16:21:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'Makhtar CAMARA', 'drcamara', NULL, NULL, 'Sénégalaise', 'Cité Mixta', NULL, 'camaramakhtar@yahoo.fr', '$2a$08$Wxk6DtTublMqsD45WotfJ.XXYTmUx8TnplH886QQfO6I1UCirNVWO', 'passer123', NULL, NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10119700511000059', NULL, 'Vacataire', NULL, 'Diagnostic biologique  bactériologique', NULL, NULL, '2022-06-30 15:39:38', '2022-06-30 16:06:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'Youssou Ndao', 'yndao', NULL, NULL, 'Sénégalaise', 'Hann Maristes ', NULL, 'ndao.youssou@gmail.com', '$2a$08$DEk1TbVd4Elgk3.MiHk5MeHrJyarMHb7kEIrU9pGqWxV3b0ZIS.3e', 'passer123', '776438775', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '107196110930000032', NULL, 'Vacataire', NULL, 'Législation', NULL, NULL, '2022-06-30 15:42:57', '2022-06-30 16:23:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'William DIATTA', 'wdiatta', NULL, NULL, 'Sénégalaise', NULL, NULL, 'diattaw@yahoo.fr', '$2a$08$X.bMBynniQ8q40uSSMCh2.r4/WECzo4r/sM2fYN6plGl9ZdYDVQ5K', 'passer123', '775447312', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Mycologie générale', NULL, NULL, '2022-06-30 15:44:29', '2022-06-30 15:44:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'Madina TOURE ', 'tourem', NULL, NULL, 'Sénégalaise', NULL, NULL, 'touremadina@yahoo.fr', '$2a$08$SCsiwEyi7jmfRHUko3xDWuQ4mrVhg9Pd2ol7.P.K7b/P7fZQ3BiOO', 'passer123', '775563982', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Recherche documentaire', NULL, NULL, '2022-06-30 15:45:47', '2022-06-30 15:45:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'Serigne Omar SARR', 'sosarr', NULL, NULL, 'Sénégalaise', NULL, NULL, 'sosarr1@yahoo.fr', '$2a$08$zmInxvQKKkGgtVzQgriVqejNGfoEpPv0TXCWAElrxoa1KiXzBjwFO', 'passer123', '+221776494916', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Bromatologie', NULL, NULL, '2022-06-30 15:46:43', '2022-07-02 08:00:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'Oumar THIOUNE', 'drthioune', NULL, NULL, 'Sénégalaise', NULL, NULL, 'oumar.thioune@ucad.edu.sn', '$2a$08$7VwhFSYgwJSjd/JVSWO4CO/NxdQiqfeTThpl.XdWnQk0VOEzmTXPK', 'passer123', '+221775362762', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UCAD', 'Vacataire', NULL, 'Initiation au médicament', NULL, NULL, '2022-06-30 15:47:42', '2022-07-02 08:01:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'KOUMBA  AKEWA MAPELA', 'Grace Gertrude', '2004-03-06', 'Bongolo', 'Gabonaise', 'dakar', 'gabon', 'koumbaakewamapela151@gmail.com', '$2a$08$GvalH1BccwUaz0tn29a3HuhILltzsbd.Uh32kvyr/Wvpzh6ysiYmO', '06032004agamba', '+24174429302', '+24174568933', 'activated', 'MAPELA KOUMICKY', 'Comptable', '+24174429302', 'Gabon', 'edenguiet', 'Aucune', '+24174568933', 'Gabon', 'père', '20GA13993', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-02 21:13:55', '2022-07-02 21:13:55', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 'HAMDOU  NIZAR', 'Nizar', '2005-01-02', 'Khouribga', 'Marocaine', 'Néant ', '42 lotissement kawtar 24000 Eljadida Maroc ', 'nizar.hamdou2005@gmail.com', '$2a$08$/x0o4pC8s5RtywGD0jCBt.uxRPy8izMf0oGznE4ZNkxLh7xEM15Va', 'Admin+123+', '+212766133280', '', 'activated', 'HAMDOU Abdelilah', 'Responsable dans une entreprise multinationale', '+212608881271', '42 lotissement kawtar 24000 Eljadida ', 'EL FANE HOUDA', 'Enseignante paramédicale', '+212600603636', '42 lotissement kawtar 24000 Eljadida Maroc ', 'HAMDOU ABDELILAH', 'M686737', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 20:50:31', '2022-12-22 21:33:11', 'Masculin', '2022P113', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'AMANY Ableyma Ina', 'Khan', '2001-04-19', 'Abidjan', 'Ivoirienne', '9 Rue Diourom, Amitié 2, Dakar, Sénégal', '42 Rue impasse des Italiens, Biétry, Marcory, Abidjan', 'amany3aina@gmail.com', '$2a$08$zWw02.HNZvdYO2Xw/C6mQuqZqk2tDqfQgSMkWmtnNQ1fduYSUI7Ae', 'YuuKacchan3', '78 541 62 85', '33 848 62 45', 'activated', 'AMANY Koffi Albert', 'Pharmacien', '00225 05 06 84 89 77', '42 Rue impasse des Italiens, Biétry, Marcory, Abidjan', 'KONAN épouse AMANY Agathe', 'enseignante(professeur de lycée)', '00225 07 07 54 48 67', '42 Rue impasse des Italiens, Biétry, Marcory, Abidjan', '78 293 29 12 ; 00225 05 06 84 89 77', '19AA156440', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-17 21:33:37', '2022-07-17 21:33:37', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'NDOYI MAHEBA Hilary Trésor', 'Mlle NDOYI', '2000-08-04', 'Libreville Gabon', 'Gabonaise', 'Sacré coeur ', '', 'hilaryndo@gmail.com', '$2a$08$xsx13oSf3hSy6Yaf.V9NN.fv1SHIePvwSTXVY0bbrwzc4kljHuIMW', 'lumière', '074153949', '', 'activated', 'Léonce MAHEBA', 'Retraité', '077770289', NULL, 'BEZONA SANGOYE', 'Entrepreneurs ', '077242051', NULL, '077896547', '20GA26425', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-18 14:09:36', '2022-07-18 14:09:36', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'NDOYI MAHEBA Hilary Trésor ', 'Hilary Trésor', '2000-08-04', 'Libreville ', 'Gabonaise', 'Sacré coeur', '941 ', 'hilarymaheba@gmail.com', '$2a$08$SsXPcRdcBYSh7mYgQYCwAeOvxYvz7hftHFAvbcnFCT6a09vA1Gjzi', 'lumière', '074153949', NULL, 'activated', 'Léonce MAHEBA ', 'Enseignant retraité ', '077770289', NULL, 'Botoumbé Lucy ', NULL, '077896547', NULL, 'Emmanuelle MAHEBA ', 'Passeport ', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-18 14:34:18', '2022-07-18 14:34:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'MARIAME Cissé ', 'MARIAME Cissé ', '2005-04-07', 'Owendo( Gabon)', 'Malienne', 'Aucune ', 'Akournam 1', 'cissemariame975@gmail.com', '$2a$08$01UfOYoOimQLtxGqyXzlU.W1fx4dPV84XpJSY8wNWZhtBkWzKwO62', 'ikciss89', '+241065919927', NULL, 'activated', 'CISSÉ Youssouf ', 'Maçon', '+241077386077', 'Akournam 1 ', 'AÏCHA Kouma', 'Commerçante', '+241065537554', 'Akournam 1 ', 'CISSÉ YOUSSOUF ', 'Aucun', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-22 11:05:31', '2022-07-22 11:05:31', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 'MBENANGOYE Isaac Bogarde Maximilus ', 'mbenangoyeisaac@icloud.com', '2004-06-15', 'Bongolo ', 'Gabonaise', '0', '00', 'mbenangoyeisaac@icloud.com', '$2a$08$UM6.e0tGJl2QpppgJNlxgedNXnBFokwThlzlszYocDCQfyKeA6Hvq', 'Lovelyetmoi4ever', '+24160306286', '060306286', 'activated', 'Biyoghe Ngomo', 'Instituteur ', '+24162401899', '0', 'Mouyeghe MBENANGOYE Mirlaine ', 'Gendarme', '+24162384593', '0', '+24162384593', '0150071620190019', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-24 08:55:38', '2022-07-24 08:55:38', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'ASSANDE PAULE PRISCILLE ', 'PAULE ASSANDE', '2002-01-28', 'ABIDJAN', 'Ivoirienne', 'Rufisque Ouest Route des Emmetteurs Villa 27', 'ABIDJAN COCODY ANGRE SOLEIL3', 'priscilleassande@gmail.com', '$2a$08$VkS.WP8Kk7HZhCHcm/yJyuz4hxHxzNlELbfQllSQ39zz7HqtyGIEa', '28Janvier@', '+33758281005', '2722217591', 'activated', 'ASSANDE', 'GENDARME', '0707112311', 'COCODY ANGRE', 'ASSANDE NÉE COULIBALY', 'CADRE DE BANQUE/ AUDITEUR FINANCIER', '0140651495', 'COODY ANGRE', 'Le père ', '32016002109', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-03 13:50:08', '2022-12-22 21:00:32', 'Feminin', '2022P25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'Malonda Jonathan Schadrak ', 'Malondajonathanschadrak', '2002-10-15', 'Pointe-Noire ', 'Congolaise', 'Rue 8 X19 médina ', '66,Av Félix Eboué ', 'malondajonathanschadrak@gmail.comm', '$2a$08$c08rkAokW0SptLTre6OcYuwYl5fEgrcA9VP9nwxAfPUQM3M7ZxfnG', '$2a$08$H3S6ttLL08qG1mczGjjNv.kIt.1MEQ.RyPKXYovOEWhCu0nJEF3uC', '776813142', NULL, 'activated', 'Malonda Tsonde Joseph ', 'Pharmacien', '+242050229832', '66, Av Félix Eboué ', 'Ngoba Youmou Astride ', 'Commerçante ', '+242068214728', '66, Av Félix Eboué ', 'Malonda Tsonde Joseph ', 'malondajonathanschadrak@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 11:29:46', '2022-12-22 21:59:20', 'Masculin', '2022M136', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'Ismael Brahim Daoud ', 'Ismael Brahim', '1996-06-13', 'Maoyen Chari / Tchad', 'Tchadienne', 'Sicap karack / Amitié 3', 'Ndjari', 'ismaelbrahimdaoud60@gmail.com', '$2a$08$3qHyDSnuN/GX1zUeI2n4uOtP/dCF.4DJ.197vNydOzqppFmUSlqai', 'DjaratNa235', '00221781461814', NULL, 'activated', 'Brahim Daoud', 'Homme d'affaires ', NULL, NULL, 'Haoua Ahmat ', 'Femme d'affaire ', NULL, NULL, 'Mahdi Ali ', 'R0393532', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-09 11:12:56', '2022-08-09 11:12:56', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 'ATSOUGOU BAMANGA AARON BARNEY ', 'AARON BARNEY', '2000-08-13', 'FRANCEVILLE', 'Gabonaise', 'bopp', 'Akonda', 'barneyatsougou13@gmail.com', '$2a$08$4iTKsCBdtg1AVOUaI9LnxuaNIxDa/XnHRzbH8VtCIjViAwKo1Pm4u', '06376050SLAE', '776831726', '776831726', 'activated', 'OKONGO YOUMOU HERBERT', 'DIRECTEUR GENERAL AU MINISTERE DE TRANSPORT', '+241 74 442618', 'akonda', 'BARROT LEONCE', 'SECRETAIRE AUX AFFAIRES ETRANGERS', '+24166376050', 'AKONDA', 'BARROT LEONCE', 'dakar', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-09 11:14:31', '2022-12-22 22:08:47', 'Masculin', '2022M177', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 'OGUENEGUE WAGUE Maryam ', 'Maryam', '1996-05-05', 'Libreville ', 'Gabonaise', 'Amitié zone B ', 'Quartier charbonnage ', 'waguemaryam@gmail.com', '$2a$08$obiP7yXGHclEV5bS1BTLfOBoiBnqW3GZIpyWTYd7w2l2aiS4jXX0K', 'Maryam@1996', '771573635', NULL, 'activated', 'OTSOUNA Lambert ', 'Colonel ', '+24107483775', 'Quartier charbonnage ', 'OSSIBA BEKALE Flavie', 'Secrétaire ', '0024162616418', 'Quartier charbonnage ', '777437452', '16GB02273', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-09 11:22:14', '2022-12-22 22:57:33', 'Feminin', '2022M2157', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 'NDIAYE', 'Mouhammadou Abdou Rakhmane', '2000-04-02', 'Dakar', 'Sénégalaise', 'Hann Mariste Cité Immorama villa 10 bis', 'Hann Mariste Cité Immorama villa 10 bis', 'mrkhalifa56084@gmail.com', '$2a$08$4I.BI9xSN/lcdbH0uPtPReKBMZQ4GZkXuPDF9KRNqBP3cxvjHC2K.', 'Vousmederangez2', '777980475', '338322810', 'activated', 'Mamadou NDIAYE', 'Retraité', '776415644', 'Sangalkam', 'Arame Fall', 'Pharmacienne', '775540472', 'Hann Mariste Cité Immorama villa 10 bis', 'Mère ', '1751 2000 00907', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-09 11:32:56', '2022-08-09 11:32:56', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 'KONÉ Wawogninlin Ulrich Trésor ', 'Dr Wawo ', '2000-06-25', 'NIAKARA', 'Ivoirienne', 'Ouakam cité avion, rue 146, villa 175 bis', 'BP 43 Kani ; Côte d\'ivoire ', 'kwut.veika2@gmail.com', '$2a$08$.4CGsdRjPEjXgpb3Dzbn6etx3iOSnMdFUgfeK48N.JXETO3MkndDK', 'Kwut.veika2@', '779152795', NULL, 'activated', 'KONE Yedamignou Ernest ', 'Pharmacien ', '002250708165055', 'BP 43 Kani ', 'KOUADIO Affoué Amandine ', 'Commerçante ', NULL, NULL, '002250708165055', '18AT00719', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-09 11:33:09', '2022-08-09 11:33:09', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 'Xaviera landrye', 'Mbiya', '2002-09-07', 'Tchibanga', 'Gabonaise', 'Medina ', 'Okala ', 'Xavierambiya@gmail.com', '$2a$08$ATw2v949TcOX/DlJvj2N/uWTAuY0rz7jiCrHG6ftktvO1XBfCezeW', 'xaviera11', '778780230', NULL, 'activated', 'Youba', 'Enseignant ', '+24107683224', 'Okala', 'Pemba', 'Secrétaire ', '.+24102686921', 'Okala', 'Mère ', '19GA46648', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-09 12:03:10', '2022-12-22 22:53:42', 'Feminin', '2022M264', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 'Moulaye abdelmoumene kaber', 'MKaber', '2003-02-02', 'Nouakchott ', 'Mauritanienne', 'Sacre coeur', 'Mauritanie, Nouakchott zrc 262', 'moulayekaber26@gmail.com', '$2a$08$DTymZ8BATdMj1ZvXADLrieKO5Qs0pTCanE5UWQAvZFaiWHz/YlWLy', '!Mk@ber2003', '0022241415930', '0022241415930', 'activated', 'Ahmedou Kaber', 'Gynécologue ', '0022246010102', 'Mauritanie Nouadhibou rebina 5', 'Lala Moulaty Moulaye Abdelmoumene ', 'Médecin ', '0022236616682', 'Mauritanie Nouakchott zrc 262', '778693286', 'B00078255', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-09 14:43:00', '2022-08-09 14:43:00', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 'Fea Kpassinambona', 'sem romuald', '2002-11-08', 'bangui', 'Centre-Africaine', 'ouakam comico', 'bangui', 'semromualdfea@gmail.com', '$2a$08$poMUXCP1GYy4faLyTyStD.jwjjCVQEJRPf0CuZtLGix4S4byjtP0y', 'fea.@', '778577508', '778577508', 'activated', 'Feizoungai xavier prince', 'specteur du trésor public ', '0023672732246', 'bangui', 'fea nadege', 'affairiste', '0023672522265', 'bangui', '777526948', 'o00174157', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-09 16:25:03', '2022-12-22 21:04:44', 'Masculin', '2022M18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` (`id`, `nom`, `username`, `date_naissance`, `lieu_naissance`, `nationalite`, `adresse_senegal`, `adresse_pays_origine`, `email`, `password`, `confirm_password`, `tel_mobile`, `tel_fixe`, `etat`, `Nom_pere`, `Profession_pere`, `Telephone_pere`, `Adresse_pere`, `Nom_mere`, `Profession_mere`, `Telephone_mere`, `Adresse_mere`, `Personne_contact`, `Cin`, `Etablissement_origine`, `Type_contrat`, `Date_recrutement`, `Specialite`, `volume_horaire`, `unite_enseignement`, `createdAt`, `updatedAt`, `sexe`, `Matricule`, `primo`, `diplome`, `fonction`, `grade`, `parentId`, `categorie`, `age`, `elementId`, `filiere`, `level`, `niveau_etude`, `ec`) VALUES
(190, 'Diouf El Hadji Mory', 'elhadjmory33', '2002-01-03', 'Dakar ', 'Sénégalaise', 'Cité I.C.S Mbaye Mbaye Mboro Thies', NULL, 'elhadjmory03@gmail.com', '$2a$08$CW0.L/wG2JbYnzlnMwBXB.m1ufQ/dWMuktJIF2T1FiLMkTy4gP1/m', 'Momodiouf033', '775705546', NULL, 'activated', 'Diouf Bounama', 'Auditeur interne', '776451022', 'Cité I.C.S Mbaye Mbaye Mboro Thies', 'Sidibé Yarame', 'Ingénieur géolocalisation ', '776163359', 'Cité I.C.S Mbaye Mbaye Mboro Thies', 'Mon père ', '1 01 20020103 00015 2', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-09 17:25:40', '2022-12-22 22:10:08', 'Masculin', '2022M182', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 'Eloedjo andjeum Leslie Audrey ', 'Sniper', '1996-06-05', 'Yaoundé ', 'Camérounaise', 'Liberté 5', 'Yaoundé- nkolbisson', 'leloedjo@gmail.com', '$2a$08$hVaqtNZqbdkFoLDZeyPcOOd3s8e69N1Cj/MsXuyfGxBxTiosTWTg6', 'Lachuchu96', '781701764', NULL, 'activated', 'Yomi Gedeon', 'Chercheur', '+237699682661', 'Yaoundé-nkolbisson', 'Andjeum Yvette Léonie', 'Comptable matières ', '+237694258160', 'Yaoundé -nkolbisson', 'Madjiki Orlane', '1013405', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-10 01:50:47', '2022-12-22 22:25:12', 'Feminin', '2022M299', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 'EYONE NKOGUE  Christine ', 'Bijou', '2005-03-13', 'OYEM', 'Gabonaise', 'Dakar ', 'Libreville ', 'itomondobettyfunela@gmail.com', '$2a$08$Tz1n7xLC3LeG4QaMkk2L.eyPpWbgAAA79PpmBWZEoRqqE6nx0v37K', 'Eacesleo1', '066752629', NULL, 'activated', 'NKOGUE ENGUIE Anicet', 'Infirmier assistant ', '077533115', 'OYEM ', 'ITOMONDO Betty Funela', 'Sans emploi', '066752629', 'OYEM', 'Mon père 077533115', '0000', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-10 09:31:32', '2022-08-10 09:31:32', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 'SALE Saïd ', 'Saïdsale', '2005-01-27', 'Malanville ', 'Béninoise', 'Aucune ', 'Agla 1er pont Cotonou ', 'harmlton27@gmail.com', '$2a$08$wevVuZBgEL0MQOewfKD2reycKIbw18kfijt6gvk/OG.vYljQ/5f6m', 'Maman', '61708124', '53191014', 'activated', 'SALE Nourou Dine ', 'Opérateur économique ', '97149694', 'Agla 1er pont Cotonou ', 'KOUNOUDJI Floriane ', 'Commerçante ', '97263941', 'Agla 1er pont Cotonou ', 'Père ', 'Bénin ', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-13 10:13:19', '2022-08-13 10:13:19', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 'GALLEY Ablavi Cathérine', 'Galley Ablavi Cathérine', '1997-03-04', 'Lomé(TOGO)', 'Toglaise', 'Mamelle Cité Mbackiou Faye', 'Agoè-cacaveli(Lomé-TOGO)', 'catherinegalley9@gmail.com', '$2a$08$hgMErSZA3jm4obKGtIagaOwh1.j8Z7br7C2ofEXhnbE0536YR52Gq', '04031997', '773352284', '338601230', 'activated', 'GALLEY Agbéviadé François', 'Ingénieur électrique', '+228 90044892', 'Agoè-cacaveli(Lomé-TOGO)', 'ADJOGBLE Adjo Dodji', 'Commerçante', '+228 90944152', 'Agoè-cacaveli(Lomé-TOGO)', 'GABA Folly Mawulolo(+221 774910855)', '06860976063', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-14 01:19:20', '2022-12-22 21:22:29', 'Feminin', '2022P210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, 'NKOUKA Paule Benette ', 'Benette', '2002-05-12', 'Pointe-Noire ', 'Congolaise', 'Fass Delorme ', 'Ngoyo ', 'nkoukabenette@gmail.com', '$2a$08$7o2c2E0VIfxmXKI0Q7P1eee1B/DumeDxYskTZlNIwccxUILqN11aW', 'aschleey', '773592221', '773592221', 'activated', 'NKOUKA Albert ', 'Pétrolier ', '00242067049177', 'Tchimbamba ', 'KIORI Murielle Josie ', 'Caissière ', '00242055612230', 'Ngoyo ', 'Gabriela ', 'SN012215', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-14 21:49:24', '2022-12-22 22:09:29', 'Feminin', '2022M243', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 'PENN Larrey Paab Camille ', 'penncamille91@gmail.com', '2005-02-12', 'Lomé / TOGO', 'Toglaise', 'Villa n° 30 BIS, Dakar ', '22 BP 200 Lomé 22', 'penncamille91@gmail.com', '$2a$08$TgzHGy8InmVXEU3TQcqetefleP.e5BQjE33DocLIdzVcKfgPr25o2', 'yuyu12!?', '0022890104262', '0022822511849', 'activated', 'PENN Laré Batouth ', 'Enseignant-Chercheur à l\'Université de Lomé', '0022890013090', '22 BP 200 Lomé 22', 'DJANGUENANE Yendoupack Falaman ', 'Assistante Programme protection sociale / PAM', '0022890168038', '22 BP 156 LOME TOGO', 'NASSAKOU Joseph', '0564-269-2064', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 20:10:00', '2022-08-16 20:10:00', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 'M\'BAYI-MATONDO God-Chancely', 'MBAYI', '1987-03-28', 'NKAYI', 'Congolaise', 'Rue 67', '21 Rue Nationale 78520 Limay', 'godfochmbayi@yahoo.fr', '$2a$08$DmpgcFs44sP6PlVrf64vy.h6Citr4NEcnwfJNDG4ZpT97YRtNGYEC', 'Benjamin10M!', '0033764247088', NULL, 'activated', 'MBAYI Benjamin', 'Enseignant', '00242066686920', '20 Rue MPEWOLA ', 'BITEBODI SONGUELA ', 'MENAGERE ', '0764247088', '28 Rue Emile Reaubourg ', 'BENJAMIN', 'AO362659', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-18 19:57:01', '2022-08-18 19:57:01', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 'NAMEKONG Ngningha Veranne ', 'Veranne ', '2002-11-18', 'Douala', 'Camérounaise', 'Aucune', 'Douala', 'veranne.smile@gmail.com', '$2a$08$j6cU0AIWbA2VTTVSDUJuj.2v322zX6cH8LkXk21CDXn2Aus9gPlTq', 'concours', '677108293', '672795144', 'activated', 'Donguia Achille', 'Informaticien', '655721556', 'Douala', 'Aka claudine', 'Esthéticienne ', '677108293', 'Douala', 'Aka claudine ', '/', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-19 06:55:18', '2022-08-19 06:55:18', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 'NGARNAYAL BEN GUIDIM ', 'Ben2filsguidim ', '1998-03-27', 'Abéché ', 'Tchadienne', 'Kounoune villa 146/148', 'Chagoua ', 'ngarnayalbenguidim@gmail.com', '$2a$08$sXMZd5HdVGvvHiPavdQ48OJzFcx1qijZy9vOOfBbKm1fCFr7nD5ja', 'Nassaradoumngar4', '+221778124068', '+23566046999', 'activated', 'MBAIDANA JÉRÉMIE GUIDIM ', 'Secrétaire comptable ', '+23566252015', 'Abéché ', 'HAWAÏ HISSEIN MAHAMAT ', 'Ménagère ', '+23599883035', 'Abéché ', '+221773714066', 'RF3809439', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-24 15:17:44', '2022-08-24 15:17:44', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 'NSANGOU MOPOUA SAMIRA ', 'SAMIRA ', '1994-03-15', 'Yaoundé ', 'Camérounaise', 'Medina dakar', 'Biteng Yaoundé ', 'samnsangou@gmail.com', '$2a$08$aBn3YLoUYBsBxf6K1IamH.tzB.3EzCdt63muWBDgiyUOhlTpA.Sf2', 'ABOUsami', '+237657061566', NULL, 'activated', 'NSANGOU ISSOFA', 'Enseignant', '+237677714870', 'Koutaba', 'MBOUAGOUERE ROUKAYATOU', 'Enseignante', '+237657061566', 'Dschang ', 'ABOUBAKAR SIDIKI PEFOURA ', 'Passeport ', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 14:17:16', '2022-08-31 14:17:16', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, 'DJIGUEMDE Adidjata Marly Souton-Nooma', 'amarly10', '2004-04-10', 'Ouagadougou, Burkina Faso', 'Burkinabaise', 'Néant ', 'Zagtouli, Ouagadougou ', 'amarlydjiguemde@gmail.com', '$2a$08$VhreQlCGYRjJe4eT88Tpnu09bZBrSk/IYhEtWFslh/mvEmQWOtXKO', 'April102004', '+22657681548', NULL, 'activated', 'DJIGUEMDE Abdoulaye', 'Gestionnaire ', '+24174101008', 'Libreville, Gabon ', 'GANOU Balkise', 'Assistante de direction ', '+24177949076', 'Libreville, Gabon', 'ZOURE Oumou +226 70253497', 'B17396096', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 10:39:46', '2022-12-22 21:23:02', 'Feminin', '2022M211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 'LATEDJOU', 'Zakwan Stephie ', '2005-08-18', 'Libreville ', 'Gabonaise', 'Dakar', 'Akebe Pipermet - Libreville ', 'stephielatedjou@gmail.com', '$2a$08$PAFrgnkqhjgMjP.m7qQNuuDCiZ.tzeUN0A.Oh23hfiZ5N4g3/0NTy', 'Stephiel.18', '+241077092432', NULL, 'activated', 'LATEDJOU Mohamed Liamine ', 'Commerçant ', '+241077143939', 'Akebe Pipermet - Libreville ', 'BELLO Nassiatou Gisèle ', 'Commerçante ', '+241077899046', 'Akebe Pipermet - Libreville ', 'Mon père ', '21PP05168', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 07:55:09', '2022-12-22 21:30:47', 'Feminin', '2022P212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, 'Fassa Elhadji malick', 'Malickfassa10', '2000-12-25', 'Dakar', 'Sénégalaise', 'ngor almadies en face musée boribana ', NULL, 'malickfassa73@gmail.com', '$2a$08$Gx3F1YM5mzj/FmTse8bnMe31O/6IYh6lhNcfjquga1Q.Nn77b57Vq', 'Fatoumalick.10', '+221 781936389', NULL, 'activated', 'Amadou tidiane fassa', 'profession liberale', '+221 775692309', 'ngor almadies en face musée boribana ', 'diara seye ', 'pharmacienne', '+221 776398593', 'ngor almadies en face musée boribana ', 'Diara seye', 'A 02101041', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 14:01:27', '2022-09-13 14:01:27', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, 'Eto'o Irvine ', '___iviee', '2004-05-18', 'Yaoundé ', 'Camérounaise', 'Amitié 2', 'Yaoundé ', 'ivie_237@icloud.com', '$2a$08$sth.PfzXs0B7kXJPltKdFuBrRIdGqVAoENau7tta4zd0Eo/w6OwL2', 'Ivie-237', '775878107', NULL, 'activated', 'Mbamba Lazare ', 'Juris consulte ', '+237695239893', 'Yaoundé ', 'Mme Mbamba Odile Virginie ', 'Commissaire de police ', '+237696483334', 'Yaoundé ', 'Mme Mbamba Odile Virginie ', '1156578', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14 09:07:29', '2022-09-14 09:07:29', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'DIABATE N'zié Mohamed Ramadan ', 'Mohamed ', '2005-08-14', 'Abidjan ', 'Gabonaise', 'Dakar', '6486', 'nziediabate@gmail.com', '$2a$08$2ZyWBGx2Joom74p.gaG5AevPsyFduj8gqiCygXMW8R0RtG6VjmU5y', '2019@@Mhd', '+241062153938', NULL, 'activated', 'DIABATE Abdoulaye ', 'Pharmacien ', '+241077498371', '6486', 'SANOGO Maminatou', 'Commerçante ', '+241062066685', '6486', 'Père ', '100445285', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14 10:57:42', '2022-12-22 21:34:05', 'Masculin', '2022P114', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, 'Ntoutoume Essone Bella Danielle ', 'Ntoutoume', '2005-05-15', 'libreville', 'Toglaise', 'medina', 'libreville', 'ntoutoume@gmail.com', '$2a$08$4Mw/U394PtHpLwUhAQL1F.ajsPuyu.GRAOviXBcq3tzuhBOSaX9pi', 'ussd@2023', '782963205', '782963205', 'activated', 'ntoutoume', 'medecin', '782963205', 'libreville', 'ntoutoume', 'medecin', '782963205', 'libreville', 'pere', '15052005', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14 15:21:08', '2022-09-14 15:21:08', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, 'DIENE Mame Fary', 'farydiene', '2003-07-30', 'Dakar', NULL, 'Bargny', 'Sénégal', 'farimata2003@gmail.com', '$2a$08$01CF9AC3H1sd2JYEOOrOTuNXOomfGQgFv6qqZnplUtA4oBw4CiQ6u', '072003', '763753952', '763753952', 'activated', 'diene', NULL, NULL, 'Bargny', 'CAMARA', NULL, '775347654', 'Bargny', 'Ramatoulaye CAMARA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-16 09:59:27', '2022-12-22 21:35:07', 'Feminin', '2022P215', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, 'Diedhiou aissatou mansata', 'Aissatou maty', '1992-10-03', 'Dakar ', 'Sénégalaise', 'Grand dakar ', 'Senegal ', 'aissatoumaty@gmail.com', '$2a$08$Mn7Zl1Zvja3WVlhxiK5F/.exE6lWbHnVcGvRcw32T1LFz9V8SGOTO', 'maty0310', '772218109', '339913369', 'activated', 'Diedhiou', 'Pharmacien ', '772218109', 'Ziguinchor ', 'Diatta', '', NULL, 'Ziguinchor ', 'Père ', '2762199203031', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-18 14:22:23', '2022-09-18 14:22:23', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, 'ANTININKI JOB ', 'ANTININKI ', '1996-07-11', 'LECONI ', 'Gabonaise', 'Almadies ', 'Libreville ', 'stermiaj@gmail.com', '$2a$08$pJ8iF6knQLLh.IXiLhdEpOptGLMfZR3brmCwz1ZK6KB4yLqVjkiNa', '$2a$08$nE3TdJ54v2zwJ2p0aNr1uOL/ZJOI0F90VQa/JvSE6C69iCyZbX/A2', '777970953', NULL, 'activated', 'OMboua Peter ', 'Agent à la SEEG ', '0024166133994', 'Almadies ', 'Laure Moupaya ', 'Sans ', '0024166133994', 'Libreville ', '0024166133994', '19GA32334', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-19 12:20:55', '2022-09-19 12:35:37', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, 'ADEWODU Rukiyatu Adetutu Ayoka', 'radewodu', '2000-07-15', 'Lomé', NULL, 'Ouakam Comico', 'Avepezo Lomé Togo', 'arukiyatu@gmail.com', '$2a$08$VZs4kyx4.SDCeiYg6n8N8.uMSySfFx8I2L1xuWQCa4X2eFZjT3P.6', 'passer123', '227777515506', NULL, 'activated', 'ADEWODU Adegbélé Mansilion', 'Employé de commerce ', NULL, 'Lomé', 'AMOUZOU Dédé', NULL, NULL, 'Lomé', 'Nurathu  ADEWODU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-21 12:19:29', '2022-12-22 21:35:50', 'Feminin', '2022M216', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, 'seydina bilal', 'bikenza', '1989-08-21', 'dakar', 'Sénégalaise', 'Dakar Parcelle assainies', 'senegal', 's.dgf@gmail.com', '$2a$08$5RWthopVlJMa0LVZV7ilHui7Vrw9ZMG0t7em4D9Or.e9VF9n7urYW', 'passer123', '78999', '774584455', 'activated', 'moussa', 'Gendarme', '777180577', 'dakar', 'Fatoumata KEITA', 'Enseignante', '785544', 'dak', 'dfg', '17512555577', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-22 13:28:01', '2022-09-22 13:28:01', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, 'BIKOUTA MAYANGA Richelle Deolvie', 'bikoutadeolovie', '1999-04-30', 'Brazzaville', NULL, 'Fass Paillotte', 'Batignolles 1655 Rue Albert Mampiri', 'deolviebikouta@gmail.com', '$2a$08$xI8kROPwCLuZ6IwdqZ80i.h/mw7YAdtTJVYecNODogGmPZsJhBHDm', 'passer123', '221781459653', NULL, 'activated', 'René BIKOUTA', 'inconnu', NULL, 'Batignolles 1655 Rue Albert Mampiri', NULL, NULL, NULL, NULL, 'Dominique MOUNGUELE', 'OA0384615', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-23 10:49:08', '2022-12-22 21:36:27', 'Feminin', '2022M217', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, 'DIALLO Ousmane Mané', 'manediallo', '2002-11-26', 'Pikine', NULL, 'Niarry tally', 'Sénégal', 'ousmane.manediallo@gmail.com', '$2a$08$LWry/oHRCacmodSdXspN..0AzvoTwuUKpsZwk2sBbqGXBwoU7jKSy', '112002', '773531306', '773531306', 'activated', 'DIALLLO', 'A', 'gent poste', 'Niarry Tally', 'NIANG', NULL, 'Secrétaire', 'Niarry Tally', 'Beugué NIANG', '1934200202196', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-23 11:15:37', '2022-12-22 22:05:12', 'Masculin', '2022M170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, 'AHMEDOU Nana Seyidna Aly', 'ahmedounana', '1997-06-07', 'Mauritanie', NULL, 'Point E', 'Teyarett Nouackchott', 'nanaarby97@gmail.com', '$2a$08$NmrLDXas2/fvMfGx0aHUn.rLLhbYGxIQmPIptnUFiVPE1RcxLTZHi', 'passer123', '784221219', '22226989992', 'activated', 'Ahmedou Seyidna Aly', NULL, '+22222442920', NULL, NULL, NULL, NULL, NULL, 'Moulay KEITA', 'BD0812007', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-23 11:33:52', '2022-12-22 21:36:49', 'Feminin', '2022M218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, 'IMOIZA TAMBOURA Jenabou', 'jenabou', '2004-11-05', 'Mikouyi', NULL, 'Rond Poient JVC', 'Mikouyi', 'tamdoura850@icloud.com', '$2a$08$/yc10gaOorLnzSWGcjfh.eIfCWP/v.1MAevJSNo5G5m5vnykhqqTu', '112004', NULL, NULL, 'activated', 'alpha TAMBOURA', 'Entrepreneur', '062649455', 'Mikouyi', 'LIPOU Lima  Petronie', 'Edicatrice', '066279706', 'Mikouyi', 'oLIVIA kAREL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-26 12:33:22', '2022-12-22 21:39:07', 'Feminin', '2022M220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, 'MINKO TSIOBA Laurette Grace', 'laurette', '2004-09-01', 'Mbeuyi', NULL, 'rOrond Point JVC', 'Owendo', 'lauretteminko19@gmail.com', '$2a$08$pk1zK4cD9fTofqkclHH98.zF53od0jMOMioV4uEY3/pjFMewOftdW', '092004', NULL, NULL, 'activated', 'TSIOBA Edouard', 'Militaire', '077283582', 'owendo', 'MINKO Laurette Françoise', 'Enseignante', '074702165', 'Owendo', 'Olivia Carel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-26 13:06:34', '2022-12-22 21:40:32', 'Feminin', '2022M221', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, 'GUEPINOT MOUSSOUAMI Janvier Jules', 'janvierjules', '1999-02-20', 'Omboué', NULL, NULL, 'Cité Ndaot NTCHENGUE', 'janvierjules16@gmail.com', '$2a$08$etzlaFo7Bt89We0w8eAyyuhIklpuXlMASujPGXH29RxviY5yuIzD2', 'passer123', '777174445', '773573827', 'activated', NULL, NULL, NULL, NULL, 'Dominique FLORE TSOGOU', NULL, NULL, NULL, 'Laurent MOUSSOUAMI', '17GA27976', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-26 15:52:29', '2022-12-22 21:55:39', 'Masculin', '2022M128', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, 'KINGBO DIGONDI Cécilia', 'kcecilia', '2004-05-01', 'Port Gentil', NULL, 'Liberté 6 ', NULL, 'sagara41@gmail.com', '$2a$08$.6pew1R6GBzXFjZ.rPXvIumwEKtUYl5wrgOqiz7ohMeoFUuHS8EoG', 'passer123', '781000008', '+24166459104', 'activated', 'KINGBO Augustin', 'Docteur en médecine', NULL, NULL, 'MOUTOUBA Yolande', 'Infirmiere', NULL, NULL, NULL, '18GA50251', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-26 16:07:17', '2022-12-22 21:55:56', 'Feminin', '2022M229', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, 'Agoh Jean Philippe Anoh', 'Agoh Jean Philippe Anoh', '2001-10-12', 'Abidjan', 'Ivoirienne', 'Zone B', 'Bingerville', 'jeanphilippeagoh@yahoo.fr', '$2a$08$mU71pdKLFCdVVBbV29/9wuV5ePFdI3cy99CeXHNP0MZmm0Bv/Qcui', 'Phil@2001', '+221781705829', '+2250768696885', 'activated', 'Serge Antoine AGOH', 'Professeur Université', '0707798971', '08 BP 325 Abidjan 08', 'Agoh née Bellissan Valentine', 'Infirmière ', '+2250103157877', '08 BP 325 Abidjan 08', 'Prof. Agoh Serge / Gnagne Tressol', '20AF23976', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-27 10:55:05', '2022-09-27 10:55:05', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, 'ADJOU ADEGOUN Rodiyath', 'ADJOU ADEGOUN Rodiyath', '2005-04-18', 'Cotonou ', 'Béninoise', '108 rue mousse diop', 'Abomey calavi Togba ', 'lionel.tonoukouin@gmail.com', '$2a$08$egHwKdf5KHFXs0NvCHTogOJXDXoxwmHUZ3lcig5Qj/hUSrGHg9fmO', 'Adjou@18', '778389578', NULL, 'activated', 'ADJOU ADEGOUN Francis de Paul Cossi', NULL, NULL, NULL, 'TENGUE N'DJAYE SEÏGNENAN Juliette', NULL, NULL, NULL, 'TONOUKOUIN Q. Lionel', '7727814233', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-27 14:54:36', '2022-12-22 22:19:46', 'Feminin', '2022P2155', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, 'Angèle Dalia Gerse BOTHI POUATI MOUISSOU ', 'Angèle Dalia ', '1997-12-12', 'Pointe - Noire ', 'Congolaise', 'Scat urbam ', 'Congo Brazzaville ', 'daliabothi04@gmail.com', '$2a$08$ZOTdopsPMUcM1oiMFtz.OOUcBCF9stD9d3n9E9ZgGr6qW5LBpp./S', 'Maman12', '776705242', NULL, 'activated', 'Crépin BOTHI POUATI ', 'ingénieur ', NULL, 'France ', 'Hortense TCHIMBAKALA ', 'Vétérinaire ', NULL, 'Tchimbamba', 'Assane Sow', 'AO0498676', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 15:39:33', '2022-12-22 22:46:39', 'Feminin', '2022M2128', 'no-primo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, 'NDOUOGHO AKOMA Florus', 'nflorus', '2001-07-05', 'Libreville', NULL, 'Gueule Tapée', NULL, 'ndouoghoakoma10@gmail.com', '$2a$08$ndmPPlzHZvqmrcqiblTJuuGlxlRtGTPc/JiyyOin3wycG0O5Vci5y', 'passer123', '764101033', '+24106238049', 'activated', 'Darus NGOUOGHO NDJELEBO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Simon Gualbert NTEME ELLA', '15GA90055', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-05 10:29:27', '2022-10-05 10:29:27', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, 'Brigitte Cydie MOUGOULA MBEMBO', 'brigitte', '2002-08-16', 'Libreville', NULL, 'Grand Dakar', 'Belle Pointure Libreville', 'cyndimmb842@gmail.com', '$2a$08$z99LpixReGNqY.18EUlH7uMm66kQKw1/FFxidN52OlFenUudiNWJa', 'passer123', '778664359', '+24174391374', 'activated', NULL, NULL, NULL, NULL, 'Julienne MAKESSI', NULL, '+24174391374', NULL, 'Maeva Melina GNALA MPIGA', '20GA09127', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-05 10:47:44', '2022-12-22 21:56:30', 'Feminin', '2022M239', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, 'OYERI ELINGUI Shékina', 'soyeri', '2003-05-14', 'Libreville', NULL, 'Liberté 6 ', NULL, 'shekinaelingui932@gmail.com', '$2a$08$bqOnRaX/BJZbXd0F.rJcEeIqiDrIZAVgL7oyfTmVTbpBhqLJofm2C', 'passer123', '784459562', '+24106236484', 'activated', 'Omer ELINGUI', NULL, '066274129', NULL, NULL, NULL, NULL, NULL, 'Marianne OTALA', '20GA14764', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-05 10:57:37', '2022-12-22 21:56:57', 'Feminin', '2022M240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, 'NDIAYE Ndèye  Anna ', 'anna', '2004-06-15', 'Dakar', NULL, 'Mariste', 'Sénégal', 'annaisbaeeee.0@gmail.com', '$2a$08$lqwfJCkKHPZBlSbvcHs9buJPBh8K1zdCCY/ZmvFRPOJFayKCKY12e', '062004', '773176283', NULL, 'activated', 'Ibrahima NDIAYE', 'Médecin', '776441360', 'Mariste', 'Aïssatou LAYE', 'Pharmaciene', '776508570', 'Mariste', 'Aïssatou LAYE', '2012004000168', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-05 14:29:03', '2022-10-05 14:29:03', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, 'Ndèye Anna NDIAYE', 'ndeye', '2004-06-15', 'Dakar', NULL, 'Mariste', 'Sénégal', 'ndeyeannandiaye04@gmail.com', '$2a$08$FMSwsoqiPwSL8kAAXWj31eAVXgqdSFCm/ss46JbrBqssyH7WTnjwS', '062004', '773176283', NULL, 'activated', 'Ibrahima NDIAYE', 'Médecin', '776441360', 'Mariste', 'Aïssatou LAYE', 'Pharmaciene', '77650857', 'Mariste', 'aïssatou LAYE', '2870200401217', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-05 15:19:25', '2022-12-22 21:59:38', 'Feminin', '2022P244', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, 'Ndèye Anna NDIAYE', 'ndeye', '2004-06-15', 'Dakar', NULL, 'Mariste', 'Sénégal', 'ndeyeannandiaye04@gmail.com', '$2a$08$y3BwZbfSPEJ5NL7iyMQuhOqMwo4jn7iqUNwRwNTB3XBucvDVaciPK', '062004', '773176283', NULL, 'activated', 'Ibrahima NDIAYE', 'Médecin', '776441360', 'Mariste', 'Aïssatou LAYE', 'Pharmaciene', '77650857', 'Mariste', 'aïssatou LAYE', '2870200401217', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-05 15:19:25', '2022-10-05 15:19:25', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 'SUCLE Clara Divine', 'cdivine', '2004-08-11', 'Cotonou', NULL, NULL, '', 'verase4@yahoo.fr', '$2a$08$QhMUdw4uQzfC5.wSVU.VMuCd7SQPP7Jc9deFRFjMm0AnlR2zs4J4K', 'passer123', NULL, '0022997873632', 'activated', NULL, NULL, NULL, NULL, 'GNEGNITO Véronique', NULL, '0022997873632', NULL, 'GNEGNITO Véronique', '21PP17007', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-05 15:38:10', '2022-12-22 22:50:30', 'Feminin', '2022M250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, 'WAMBA NPENKA Orguy Audrey', 'awamba', '2002-08-25', 'Douala', NULL, 'Liberté 6 ', NULL, 'dashfirst8@gmail.com', '$2a$08$7TBOgntOPvBOXVeOfhO7LutK31yxXnvxZgfXNUhFoVqNdtb2dRuBK', 'passer123', '708723998', '077313132', 'activated', 'Georges YOMBA YOMBA', NULL, '+24177313132', 'Mindoubé 2', NULL, NULL, NULL, NULL, 'Urich ASSOGHO', '1054732', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-06 11:05:52', '2022-10-06 11:05:52', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 'MABIKA MBADINGA Yann Reel', 'mabika', '2001-09-07', 'Port-Gentil', NULL, 'Gueule Tapée', NULL, 'mabika@gmail.com', '$2a$08$xCEd1aCTLWIEUrxnqYPRo.H.5eGB9nZZraBu6FeZ4FTrwLRdVaKG.', 'passer123', '774250149', '+24166483685', 'activated', 'Laurent MBIKA MBADINGA', 'chauffeur', '-24166483685', NULL, 'Félicité SOYINA MBOKI', 'Commerçante', '+24177079425', NULL, 'Prince MOUSSAVOU', '16GB26584', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-06 11:56:05', '2022-12-22 22:00:24', 'Masculin', '2022M149', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, ' KOUA Adrimel Méchack Nandha', 'kadrimel', '2004-03-02', 'Komono', NULL, 'Ouakam', 'Komono', 'adrimel@gmail.com', '$2a$08$AfK0x41QYqXWYvQ3AOse6OzNEmTIQRSWQjkleZKZnH/2vlc2TC6qm', 'passer123', '777272353', '0655960649', 'activated', 'Etienne Armels KOUA', NULL, NULL, NULL, 'Adrienne KENGUE MOUKHO', NULL, NULL, NULL, 'LEVY GOMA Luiz Berna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-06 12:37:08', '2022-12-22 22:01:27', 'Masculin', '2022M152', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, 'Pièrre Emmanuelle MOUKAGA', 'emmanuellle', '2004-06-12', 'Libreville', NULL, 'Liberté 6', 'Gabon', 'mpierreemmanuelle@gmail.com', '$2a$08$jV2Zo/J7QlseWemRO4SmLuTK/9qfzgPXc5N2dH5hcYzoUFgViSzUG', '0062004', '784285863', NULL, 'activated', 'Pierre MOUKAGA', 'Retraité', '+241077963029', 'Lescape Orendo', 'YENO Laure Sylviane', 'Retraité', '+241077408467', 'Lescape Orendo', 'MOUKAGA Ifa ', '22PP03275', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-06 13:46:34', '2022-12-22 22:56:05', 'Feminin', '2022M254', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, 'Marie Danielle NTOUTOUME ESSONEE BELLA', 'danielle', '2005-05-15', 'Libreville', NULL, 'Sacré coeur III', 'Gabon', 'ntoutoumebella22@gmail.com', '$2a$08$kdfpBpdGnhFBC99bSSWM.emNKMMqELKgPgTcY.H9Xlq9Vvkyu50JS', '052005', '077496128', NULL, 'activated', 'François NTOUTOUME ESSONE', 'Préfef', '077910721', 'Moanda', 'ANGONE Mba', 'Agent sanirtaire', '077640475', 'Moanda', 'Marie Léoni', '22PP03509', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-11 09:17:20', '2022-12-22 21:57:47', 'Feminin', '2022P255', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, 'OBAME BIYOGHE Michel Jandrel', 'omichel', '2001-12-20', 'Libreville', NULL, 'Médina Rue 13', 'Libreville (Akanda)', 'michelbiyogha@gmail.com', '$2a$08$Zs1Vi08wCUiXuiXPKeIHS.Qwf7lEFKVMdEg84OsRRk5fs368mBdUu', 'PASSER&é\"', '773669677', '24177516181', 'activated', 'Andre-Jean BIYOGHE', NULL, '+24177516181', NULL, NULL, NULL, NULL, NULL, 'Claude OVEGHE', '19GA47211', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-11 13:45:48', '2022-12-22 22:02:25', 'Masculin', '2022M156', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, 'SECK Oulimata', 'seckouly', '2000-12-01', 'Ouakam', NULL, 'Ngor Almadies', 'Ngor Almadies', 'ouliskc01@gmail.com', '$2a$08$W9z37HMv.g7L6gYCcSjRdOVLVq19qNqIhmPY7BZ9wpt8KBuRuS5oC', '$2a$08$IsfrK6tytCGPYhZcLDVhkeWVvbCfYTSZVGhvoSpwm.yAe1qLB0Gpq', '771051232', NULL, 'activated', NULL, NULL, NULL, NULL, 'Sarr Sophie', NULL, '771079026', 'Ngor Almadies', 'SARR Sophie', '20120001201000230', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-11 14:03:53', '2023-02-28 11:29:11', 'Feminin', '2022M257', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, 'OKOUNA LEKOGO Ruth Florence', 'florence', '1997-03-31', 'Franceville', NULL, 'Ouakam Eglise bleue', 'Djamitie', 'okounaruth@gmail.com', '$2a$08$9x53nIILqQlhYiZleJA8Set6arxWBK8IDEagzJ/6VjUVw8qCabiK.', 'passer123', '762626292', '724106651701', 'activated', NULL, NULL, NULL, NULL, 'Jannette NKOUNASSI', NULL, '+24166954596', 'BICIG', 'Patrick OTIGUI', '18GA42961', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-11 14:26:28', '2022-12-22 22:51:04', 'Feminin', '2022M258', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, 'HAMDA Mirgan', 'mhamda', '2002-07-25', 'Djibouti', NULL, 'Fann Hock', 'Caserne de police', 'bakadou98@gmail.com', '$2a$08$ZOjRztTxnBS.Jj5vNvS1xOyTjkKf5IaOtYJM2z4DLhN1E2A9GLFLm', 'passer123', '773921866', NULL, 'activated', 'Mirgan Omar', NULL, '77052378', 'Caserne de police', NULL, NULL, NULL, NULL, 'Ali Mohamed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-11 15:38:44', '2022-12-22 22:51:18', 'Feminin', '2022M260', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, 'KOUADIO Moya Emmanuelle Kongo', 'kouadio', '2000-05-26', 'Cocody', NULL, 'Liberté 3', 'Cocody', 'moyaemmakouadio@gmail.com', '$2a$08$4dQ1m5I5BIAFuRDKJK9rSuWAijldDpRDquHEJkhFFFAQ.FHkYeYcC', 'passer123', '772701163', '+2250789091274', 'activated', NULL, NULL, NULL, NULL, 'Gisele TCHOTCH', NULL, '+2250789091274', 'Bingerville', 'Gisele TCHOTCH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-11 16:19:59', '2022-12-22 22:56:21', 'Feminin', '2022M262', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, 'MAVOUNGOU BADINGA Raphaele Dieu- Le- Veut', 'raphaele', '1999-10-15', 'Brazzaville', NULL, 'Ouakam', 'Cité Urbaine', 'mavdieuleveut3@gmail.com', '$2a$08$MI8.o5YALL4.4mlXG4Xn3e7fq9tsf5JDzJtvc/.YEZi93US12jhhC', 'passer123', '773637671', '+242066659191', 'activated', 'MAVOUNGOU-BADINGA Charles', NULL, '+242066659191', NULL, NULL, NULL, NULL, NULL, 'Licia KIBEKE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-12 10:02:30', '2022-12-22 22:52:14', 'Feminin', '2022M263', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, 'MEYE M\'ASSOUMOU Feeny Noelysa', 'noelysa', '2001-12-31', 'Libreville', NULL, 'Amitié 2 Zone A', 'NZENG-AYONG', 'feenynoelmeye@gmail.com', '$2a$08$digAoWf1gXhyB3fhC640/urPYRtXRC8EGMgNLYEjIL2PFTxsEr0ea', 'passer123', '784505585', '+24162694325', 'activated', NULL, NULL, NULL, NULL, 'Anne Marie OYANE', NULL, '+24162694325', NULL, 'OBE METHOGHO Christiana', '20GA42442', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-12 10:35:36', '2022-12-22 22:53:59', 'Feminin', '2022M265', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, 'MOUIDY KOUKIDY Vincy Maurel', 'maurel', '2000-01-04', 'Libreville', NULL, 'Hlm 5', 'Libreville PK9', 'koukidymaurel@gmail.com', '$2a$08$gqhea9sVxkZyLt6ggEJ77O6kY2NqvoC0yG9D.rq49D7dRKilHdkuy', 'passer123', '774543892', NULL, 'activated', 'KOUKIDY Modeste', NULL, '+24174756054', NULL, NULL, NULL, NULL, NULL, 'Pherole MOUIDY', '20GA33613', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-12 11:14:41', '2022-12-22 22:04:38', 'Masculin', '2022M166', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, 'Charmarke HASSAN SOUGUEH', 'hassan', '2000-11-20', 'Djibouti', NULL, 'Médina', 'Djibouti', 'charmarke.13@gmail.com', '$2a$08$HiaMvq8vouAfbqpbmkGwnuvONkv8FCdQpqlKHPYrtUH.DIVvnsZmW', '112000', '781129486', NULL, 'activated', 'Hassan SOUGUEH ', 'cOMMER9ANT', '025377025613', 'GOBODE', 'Sado Ahmed', 'Ménagère', '025377376844', 'GOBODE', 'HASSAN 781129517', '16RF10085', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-12 13:36:47', '2022-12-22 22:04:01', 'Masculin', '2022P168', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, 'MOUTSINGA ABESSOLO Jilca Syntyche', 'jilcam', '2002-05-22', 'Libreville', NULL, 'Auchan Castor', 'Sotega, Libreville', 'jilcaa7@icloud.com', '$2a$08$SV/izGWPrcvZQQF1IvTbjetjM0ZkCKN5/5oo3y9h2t/ehsjYXB5u2', 'passer123', '772129500', '+24100495022', 'activated', 'Félix ABESSOLO', NULL, '+237671118951', 'Yaoundé Cameroun', NULL, NULL, NULL, NULL, 'Priscilla MBOUMBA', '19GA2634', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 10:15:35', '2022-12-22 22:47:58', 'Feminin', '2022M269', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, 'NDOUNA Frederic-Stephane', 'fndouna', '2000-11-12', 'Libreville', NULL, 'Ouakam', 'Libreville Belle vue 2', 'fredndouna9@gmail.com', '$2a$08$et99DFsInw6W7P3pDNZVkelQ1kGaVB5pCY4d5DTcOaZXSNaKQzqDu', 'passer123', '772739648', NULL, 'activated', 'Francis Yebe NDOUNA', NULL, NULL, NULL, 'Amélie MINDZE', NULL, NULL, NULL, 'Ted NDOUNA', '19GA25295', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 10:28:58', '2022-12-22 22:05:55', 'Masculin', '2022M171', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, 'NDZENG NDZENG Joas Livernaud', 'livernaud', '2001-09-22', 'Libreville', NULL, 'Sicap Baobab', NULL, 'livernaudparker@gmail.com', '$2a$08$jQYF19ZXXRaQk5Ti8uNpi.pD53MG51dVev51qfYy3DsdNcC6YSItW', 'passer123', '773401832', '+241622135', 'activated', 'Simon NDZENG ASSOGHE', 'Contrôleur Sécurité', '', NULL, 'Patiana NZAME MINSO', NULL, NULL, NULL, 'Ruth Germaine NADJINOU', '18GA36018', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 11:07:49', '2022-12-22 22:06:50', 'Masculin', '2022M172', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, 'N\'GATALA-JANYSS Helena An-Vero', 'janyss', '2003-09-09', 'Brazzaville', NULL, 'Grand Dakar', 'Poto Poto 99 Rue Bayas', 'ngatalahelena@icloud.com', '$2a$08$vJ1fuudcy4U0mxRCz3MdHuG0ywIOhPUR6DPX7rtDHMDZWUVDMFzrC', 'passer123', '778777828', '068225282', 'activated', 'Jaques N\'GATALA', NULL, NULL, NULL, 'Annie Yolande BOYESSE', NULL, NULL, NULL, 'Helly Beauvoit N\'GATALA -JANYSS', 'OA0435607', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 11:28:30', '2022-12-22 22:44:30', 'Feminin', '2022M273', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, 'NIEGUITSILA WEGAMANI Julie Darcy', 'darcy', '2000-02-25', 'Libreville', NULL, 'Mermoz Comico', NULL, 'julieokita444@gmail.com', '$2a$08$13IPU5D.9A4Y8KoxWVZrju3SjxKuNjjKE/hbYHdi012f2Ri1pfk.6', 'passer123', '771736715', NULL, 'activated', 'Darry Gildas WEGAMANI', NULL, NULL, NULL, 'Juliette MAYENGA', NULL, NULL, NULL, 'Karelle ABONDO', '19GA26873', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 11:41:35', '2022-12-22 22:44:46', 'Feminin', '2022M274', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, 'AHYI Yann Luc Aurele', 'yannluc', '2001-11-17', 'Bénin', NULL, 'Hôtel Novotel', '07231, Cotonou', 'ahyiyann66@gmail.com', '$2a$08$CVvU4o3Bx0uGEeTzZL3TneOIpu8eBM8hQw3ylc/ZG0fuXmzVZZ.8K', 'passer123', '781325720', '97257472', 'activated', 'Virgile AHYI', NULL, '+22997681689', '07 231  Cotonou', NULL, NULL, NULL, NULL, NULL, '20DD91362', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 12:03:32', '2022-12-22 22:07:21', 'Masculin', '2022M175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, 'AITCHEDJI Mahugnon Ronald Rubinel', 'mrubinel', '2002-06-20', 'Cotonou', NULL, 'Sacré coeur 3 Boulangerie Jaune', 'Abomey Calavi', 'ronaldaitchedji@gmail.com', '$2a$08$vlUkbG.M.7mC6WEEY2D4aeuA6rx1R5ejpO8k6jkMjczFUPNxyyAKO', 'passer123', '775977929', '+2295053887', 'activated', 'Cedjo Casimir AITCHEDJI', 'Consultant en économie', NULL, NULL, 'Tatiane Hortense Mahugnon SISSINTO', NULL, '+22967272340', NULL, 'Ines SAVI DETOVE', 'BO781788', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 12:38:39', '2022-12-22 22:07:56', 'Masculin', '2022M176', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, 'BESSEGHE PASCY NANG Djemila Soulia Joyce Delwami', 'soulia', '1999-09-11', 'Libreville', NULL, 'Cices Foire Cité Magistrat', 'Libreville', 'souliadelwami@gmail.com', '$2a$08$6arZ/K6676YfcPvFAvGdEeHzgOzBU0pXMRDe/oam72sQSe/FUMivO', 'passer123', '778715491', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Indiana AKHASCY Delwami', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 13:48:29', '2022-12-22 22:45:03', 'Feminin', '2022M278', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, 'CAMARA Christelle Marianette', 'marianette1', '2001-02-12', 'Dakar', NULL, 'Yoff Virage lot n°57', 'Yoff Virage lot n°57', 'christelle122001@gmail.com', '$2a$08$yHr0.M5pQF1tEThxv65nPeM8ENMU6uwzOYy9yt3.f2VBJWZCTxg8S', 'passer123', '783049703', NULL, 'activated', 'Jérome Pascal CAMARA', NULL, NULL, 'Yoff Virage lot n°57', 'Evelyne TAVAREZ', NULL, '774426813', 'Yoff Virage lot n°57', 'Evelyne TAVAREZ', '2756200100316', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 15:46:14', '2022-12-22 22:28:51', 'Feminin', '2022M280', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, 'DIA Fatou Bintou', 'fbintou', '2003-04-18', 'Sassari (Italie)', NULL, 'Hann Marinas', '', 'bintou@gmail.com', '$2a$08$5K7CaPaQjoLqgl3kSwdpCurVZbQxDT92ho1c2em/Ia8H6QBlgn7U.', 'passer123', '772162500', NULL, 'activated', 'Mamadou DIA', NULL, NULL, 'Hann Marinas', 'Ndeye Amy THIAM', NULL, NULL, 'Hann Marinas', 'Ndeye Amy  THIAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 16:14:59', '2022-12-22 22:27:39', 'Feminin', '2022M281', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, 'DIONE Alassane', 'alassane', '1992-10-12', 'Dakar', NULL, 'Rufisque', NULL, 'alassanej783@gmail.com', '$2a$08$H5bjqHxiucZua/EPLdLVb.IXxpwoS8TXty49FeWpOHG1TP.KGBJHi', 'passer123', '773002010', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-14 10:48:35', '2022-12-22 22:11:35', 'Masculin', '2022M183', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, 'ELLA LAURENT Chérrie Volonté', 'elaurent', '2000-08-17', 'Libreville', NULL, 'Médina Rue 23 x 20', 'Libreville, Montalier', 'cherievonlote@gmail.com', '$2a$08$GRlKz1xuoFiQdSHfUGUj1ORNXolKgCeAGG.kDkNL0QAGpcCmGcH5e', 'passer123', '773886094', NULL, 'activated', 'Laurent ELLA ABAGHA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Laurent ELLA ABAGHA', '20GA06701', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-14 11:09:38', '2022-12-22 22:27:53', 'Feminin', '2022M284', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, 'AGONDJO Sylvano Roméo Vincy', 'agondjo', '1995-03-24', 'Libreville', NULL, 'Jet d\'eau', 'pk19 Essassa', 'romeoagondjo@gmail.com', '$2a$08$Kc9fb08AxB6Uc0PTogiogODpTZotQqp.rY4ZIYv7Ka/iuj1sfh6em', 'passer123', '765621785', '+24166893705', 'activated', 'Sylvestre AGONDJO', NULL, NULL, NULL, 'Lydie NZIENGUI', NULL, NULL, NULL, 'AGONDJO BIFFOT François De Paul ', '19GA46989', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-14 12:02:26', '2022-12-22 22:10:48', 'Masculin', '2022M185', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, 'MADJIKI HOINTCHOU Orlane Pascaline', 'pascaline', '2000-06-11', 'Abong- Mbang (Cameroun)', NULL, 'Gueule Tapée', NULL, 'madjikiorlane@gmail.com', '$2a$08$oxdGBB4.sHaHdF1yGhEZD.srLxdjHA8RPxuVH5ipl4RVUa.Yx52Hu', 'passer123', '778830921', NULL, 'activated', NULL, NULL, NULL, NULL, 'Juilenne Laure MENDO', NULL, '694744013', 'Yaoundé', 'Juilenne Laure MENDO', '0910076', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-14 12:37:17', '2022-12-22 22:26:45', 'Feminin', '2022M287', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, 'MOBOULA MONDZO Alicia Gervais ', 'gervais', '1996-01-17', 'Brazzaville', NULL, 'Médina Rue 33 x 16', '8 Rue des vainqueurs Congo-Chine', 'moboulaalicia33@gmail.com', '$2a$08$gA0KLJ7xSO5N8BY0sy0znuHKgYbvG8uPbW4PLWR9Jgqg8rsli5e0u', 'passer123', '778628667', '00242066298092', 'activated', 'Gervais Francis MOBOULA', NULL, '00242066298092', NULL, NULL, NULL, NULL, NULL, 'Gervais Francis MOBOULA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-14 13:53:44', '2022-12-22 22:24:59', 'Feminin', '2022M289', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, 'MONKALA TCHOUMOU Lyse Oliviers', 'monkala', '1996-01-03', 'Brazzaville', NULL, 'Fass', 'Centre ville Camp', 'lmonkala@gmail.com', '$2a$08$QjPKH7ZB6sqSeQBWYI4n2uAExD.iSgV4Ga.k.gaNMN7HXOLfi/LoG', 'passer123', NULL, NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sacré Massamba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-14 15:34:14', '2022-12-22 22:26:06', 'Feminin', '2022M291', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, 'Dia Ndeye Astou', 'Ndeye Astou Dia', '0003-10-11', 'Dakar', 'Sénégalaise', 'Almadies', 'Almadies', 'diandeyeastou729@gmail.com', '$2a$08$JvPDPunnJ3zM9Vk0zdiH2On9Ulc/ftUYwNbT3LDoD/hrO8hMu5VXi', 'Ast123di', '772333346', NULL, 'activated', 'Serigne Abdou Dia', 'Entrepreneur', '774506001', 'Almadies', 'Khady Dia', 'Commercante', '775650369', 'Almadies', 'Serigne Abdou Dia', '20120031011000010', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-17 15:19:49', '2022-10-17 15:19:49', 'Feminin', NULL, 'no-primo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, 'BEDIE Jean Marc Mahoussetche', 'jeanmarc', '2001-05-13', 'Libreville', NULL, 'Médina Rue 29x20', 'Libreville', 'bedjejeanmarc@gmail.com', '$2a$08$vrDnqBb3LV7w01IpJlv3pewDehFURMWhN1bwjh55EqCXX3g9eKKHu', 'passer123', '773988067', '+24107294636', 'activated', 'Saturnin BEDIE', 'Technicien', '+241077294636', 'Owendo', 'Bernadette Dédé MADOSSI', 'Ménagere', NULL, NULL, 'Abibael HOUENOU', 'B0720288', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-17 15:31:31', '2022-12-22 22:14:26', 'Masculin', '2022M195', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, 'TOUNGOUYASSET', 'levismorez', '1995-10-06', 'BANGUI', NULL, 'Sicap Amitié Plateau Rue 10', 'Ouango Bangui', 'mltoungouyasset@gmail.com', '$2a$08$MhPUIVIbqQwwSDx4T5u/6ex1daESkqHytNHQex.VR.1zbPX18emSe', 'passer123', '784208838', NULL, 'activated', 'Honoré TOUNGOUYASSET', 'Etudiant', NULL, NULL, 'Jeanne Béatrice DEPLOUMON', 'Ménagère', NULL, NULL, 'Monique NTEMO', '000093666', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-17 16:51:54', '2022-12-22 22:17:09', 'Masculin', '2022M197', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, 'ANGUEKO-EGOMAYIGUE Georges', 'ageorges', '1995-12-17', 'Port-Gentil', NULL, 'Ouakam', NULL, 'anguekogeorges@gmail.com', '$2a$08$XRT7XnwtIPxkEoMU/GIb1eSUzZVQFzkfypY.DF1rcWujjFFvkHFqG', 'passer123', '770818586', NULL, 'activated', 'Samuel ANGUEKO-EGOMAYIGUE ', 'Agent de fabrication', NULL, NULL, 'Julie MENEST', 'Ménagère', NULL, NULL, 'Loicka MOUBOUASSI MASSALI', '19GA15213', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-17 17:11:43', '2022-10-18 09:34:57', 'Masculin', '2022198', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, 'ZOGBEMA Jervis Junior', 'jervis', '2001-08-07', 'Lomé', NULL, 'Fass Delorme', 'Lomé', 'zjervisjunior@gmail.com', '$2a$08$kFG6LaHVP1uGQANpg1rYZO0OvB6m8LvOf4E1t3GqimuyEjD4TPHSi', 'passer123', '763136588', NULL, 'activated', 'ZOGBEMA Jervis Komlan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pascal DAUGBEY', 'EB361771', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-18 11:33:34', '2022-12-22 22:18:46', 'Masculin', '2022M1101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, 'KAMGANG NGAMSEU Ingrid Browndah', 'ingrid', '1996-05-19', 'Bafoussam', NULL, 'Médina Rue 23 x 4', 'Douala Cameroun (Kotto-village)', 'ngamseuingrid@gmail.com', '$2a$08$PIcvOxXhEaT8HK/zZWN0su.ln74KN9ZQXfgtGZy3o4Nbuy7KKodKa', '$2a$08$AZDpzwm4Q0IEpiPuLpOvmeEy1a1slLiiIIHehu5xE8sjPH2YG.DQ6', '784787887', '+237691561141', 'activated', NULL, NULL, NULL, NULL, 'Charlie Zoe NKUNGNI CHELAYOU', NULL, NULL, NULL, '', '0324030', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-18 12:54:28', '2023-02-28 23:53:19', 'Feminin', '2022M2102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, 'OBOUA Marrion Dorel', 'marrion ', '1994-11-21', 'Ngabé', NULL, 'Dieuppeul II', '129 Rue MVOULA', 'marrionoboua@gmail.com', '$2a$08$Vz36saMqPfK3fQODEPDqoOgYUUjK69SlJKv.AdYWeNcjnMnF67lpO', 'passer123', '785982362', NULL, 'activated', 'David OBOUA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OA0289143', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-18 14:02:32', '2022-12-22 22:19:46', 'Masculin', '2022M1103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, 'NGREMANGOU Marthe Nanella Chapelaine', 'nchapelaine', '1999-04-19', 'BANGUI', NULL, 'Sacré coeur 2', 'Gobongo', 'negremagou.m@gmail.com', '$2a$08$UWwa5rybIX2ZN3IitHUgkehekFHM9L0w1rqziS.7Z5uMy.6FxpRQK', 'passer123', '786007661', '0023672202060', 'activated', 'Martial NGAIBONA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Martial NGAIBONA', '000108356', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 10:04:05', '2022-12-22 22:38:42', 'Feminin', '2022M2104', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, 'NDOMOU BAKITA Sephora Jeofavia', 'nbakita', '1997-12-27', 'Libreville', NULL, NULL, 'Agondji', 'jephyndoumou@gmail.com', '$2a$08$fMRkc23A6/Q.INmPPLm8/.YkUIMLkaJ2NoRvvdLD8Klikpx7xWX/K', 'passer123', '784683665', '+24166779063', 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18GA24271', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 10:31:31', '2022-12-22 22:31:17', 'Feminin', '2022M2108', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, 'Naomie Loris MINTSA MBIRI', 'loris', '2002-08-14', 'Libreville', NULL, 'Niary Tally', 'Libreville', 'naomiemintsa91@gmail.com', '$2a$08$DrpcvHbHCVgDnk/9a4d4/.RrQXUTfR7AmfQXsAkPV71zE6WLnxcn2', '082002', '776891723', NULL, 'activated', 'Pierre MINTSA', NULL, '066720368', 'Libreville', 'OSSIYI Princilia', 'Policière', '066720368', 'Libreville', 'NPEMBA OPAH', '22PP09610', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 10:36:10', '2022-12-22 22:31:04', 'Feminin', '2022M2106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, 'Kink-Karl Chalome Sessi DJIMADJA', 'chalome', '2000-05-09', 'Cotonou', NULL, 'HLM Grand Yoff', 'Cotonou', 'kingkarldjimadja@gmail.com', '$2a$08$0dasATi9kECQ1ss5mDolpO7Tt/1bI4yzrp.rw5SpJj13cagaxBcJ6', '052000', '771000931', NULL, 'activated', 'Charles DJIMADJA', 'Cef d\'entreprise', '64131010', 'Cotonou', 'OGOU Armande-Noêlie', 'Ménagere', '+22966560098', 'Cotonou', 'Djimadja Charles', '22PP61441', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 10:56:19', '2022-12-22 22:21:49', 'Masculin', '2022M1107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, 'MAHANGA Angélique Sylviane Priscille', 'mpriscille', '1996-05-02', 'Libreville', NULL, 'Niary Tally', NULL, 'sylviane.koumba@gmail.com', '$2a$08$uI9wUacrmoT53GfcjjQ9peKKi4kxPvRNi5b5D.AEdaSkB.gbHlw0O', '$2a$08$hhp.THJFxonF0OdjmY26ee/n1N7/2deNfKx7U8a6TGyHlXxjOERUu', '776622770', '07891299', 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1578/18', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 12:13:24', '2023-02-24 16:48:00', 'Feminin', '2022M2112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, 'Karl Antoine Léon OGNALAGHA MBA', 'antoine', '1986-02-02', 'Libreville', NULL, 'ouakam', 'Libreville', 'karlognalaghamba684@gmail.com', '$2a$08$8JBi721.GbYhnwlbgX6L.ef3tWZIhuLge2WbYBcxDJJssdDq5MYmK', '021986', '773572647', NULL, 'activated', 'Antoine OGNANAGHA', 'Pilote', '', 'Libreville', 'MBIE Béatrice', 'Infirmière d\'Etat', '+241066261889', 'Libreville', 'Mouboiassi Mamfoumbi', '20GA27336', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 14:23:25', '2022-12-22 22:22:33', 'Masculin', '2022P1109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, 'DJIDDA OUMAR Haoua', 'djidda', '1997-07-27', 'N\'Djamena', NULL, 'Grand Dakar', NULL, 'djiddaoumarhawa@gmail.com', '$2a$08$bPc2kBnQh62JuprHlQPq9OR5Wg/Xkwbm6mSM80aETLtxsP0XW6ie.', 'passer123', '775933913', '0023766288683', 'activated', NULL, NULL, NULL, NULL, 'Fatime MAIKATA', NULL, NULL, NULL, NULL, 'RF8319982', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 15:42:37', '2022-12-22 22:31:33', 'Feminin', '2022M2110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, 'KOUMOU INGOBA Cuerbie Belfride', 'ikoumou', '1996-02-10', 'Oyo', NULL, 'Sacré coeur 33', NULL, 'belfridek@gmail.com', '$2a$08$AC5hTnM1JlPAn147nn3uvuKpB.v2HBeKNce3B.In1XL4ZtCsNlTk6', 'passer123', '781361709', '00242064158756', 'activated', 'Marien Abel KOUMOU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Marien Abel KOUMOU', 'OA0307595', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 16:07:22', '2022-12-22 22:34:16', 'Feminin', '2022M2111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, 'Penielle Exaucée SAMBA', 'penielle', '2005-02-12', 'Brazzavillle', NULL, 'Derkle', 'Congo', 'penielleexaucees@gmail.com', '$2a$08$kOz2esXTqB.L8MJiLsegjOr3BhhfFJcrfzf5toM9PANfZnr6Mohgu', '022005', NULL, NULL, 'activated', 'SAMBA Baudoin', 'Enseignant', '+242069754360', 'Brazzaville', 'Babakissa nélly', 'Enseignant', '+242066338630', 'Brazzaville', 'Christe Samba', '0A05344707', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-20 12:59:32', '2022-12-22 22:34:51', 'Feminin', '2022M2113', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, 'Penielle Exaucée SAMBA', 'penielle', '2005-02-12', 'Brazzavillle', NULL, 'Derkle', 'Congo', 'penielleexaucees@gmail.com', '$2a$08$fYbLn8M4sizFneA7HoZPteqwrbPpFGlQaK9aRPAKv2DUBn8YFOCNa', '022005', NULL, NULL, 'activated', 'SAMBA Baudoin', 'Enseignant', '+242069754360', 'Brazzaville', 'Babakissa nélly', 'Enseignant', '+242066338630', 'Brazzaville', 'Christe Samba', '0A05344707', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-20 12:59:32', '2022-10-20 12:59:32', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, 'Bénicia Joséana Jessica NAMZAKA', 'bénicia', '2003-01-21', 'Bangui', NULL, 'Sacré coeurIII', 'Damala', 'beniciajessicanamzoka@gmail.com', '$2a$08$eaZ6XYVACT05snYunUAjyuc7uCl5AjmHqVSYe670mW4HgefjBiThK', '012003', '784629464', NULL, 'activated', 'NAMZOKA Orofeï', 'Géomètre', '023672196512', 'Damala', 'Yourouba NATACHA', 'Ménagère', '+23672552232', 'Damala', 'Chapeline ', '2010301019141580', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 10:43:16', '2022-12-22 22:30:17', 'Feminin', '2022M2114', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` (`id`, `nom`, `username`, `date_naissance`, `lieu_naissance`, `nationalite`, `adresse_senegal`, `adresse_pays_origine`, `email`, `password`, `confirm_password`, `tel_mobile`, `tel_fixe`, `etat`, `Nom_pere`, `Profession_pere`, `Telephone_pere`, `Adresse_pere`, `Nom_mere`, `Profession_mere`, `Telephone_mere`, `Adresse_mere`, `Personne_contact`, `Cin`, `Etablissement_origine`, `Type_contrat`, `Date_recrutement`, `Specialite`, `volume_horaire`, `unite_enseignement`, `createdAt`, `updatedAt`, `sexe`, `Matricule`, `primo`, `diplome`, `fonction`, `grade`, `parentId`, `categorie`, `age`, `elementId`, `filiere`, `level`, `niveau_etude`, `ec`) VALUES
(277, 'Ahou Théodora Ange Michele LECADOU', 'michele', '2001-09-16', 'Treichvielle', NULL, 'Liberté', 'Abidjan', 'lecadoutheodoraahou@gmail.com', '$2a$08$QgNSPjCXZxB4cbdAPaI4He5/HReOELKm2lSRfuIfASEFxR.hpqq42', '092001', '772905899', NULL, 'activated', 'Blaise LECADOU', 'Comptable', '+2250707165782', 'Abidjan', 'Gisele LECADOU', 'Pharmacienne', '+2250707448485', 'Abdjan', 'Sagesse KOUAME 777876005', '19AA30355', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-24 08:54:07', '2022-12-22 22:23:35', 'Feminin', '2022P2115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, 'Anné  Kéren-Happouk Eliora KOUADIO', 'eliora', '2005-03-10', 'Plateua /Abidjan', NULL, 'Geultappé', 'Grand-Bassam', 'annekereneliora@gmail.com', '$2a$08$.rLComyAHAZK7vdC0s/u5uH5rULwpWMhOqw4rp7.ALE9elnC58g46', '032005', '786063069', NULL, 'activated', 'ANNé  KOUADIO', 'pharmacien', '+2250768466365', 'Drand-Bassam', NULL, NULL, NULL, NULL, 'Jémima anne KOUADIO', '15AH84310', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-24 10:17:10', '2022-12-22 22:35:41', 'Feminin', '2022M2116', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, 'Aisshatu JUMAT', 'aishatu', '2003-12-01', 'Conakry', NULL, 'Ouakam', 'Douala', 'aichajumat2003@gmail.com', '$2a$08$I00lR435LYWuCyKGQRprvuDtHuYyOrs5wS18V.xxyYpYwOa20KUeu', '122003', NULL, NULL, 'activated', 'Abdou Rahim JUMAT', 'Ingénieur', '+2', NULL, NULL, NULL, NULL, NULL, 'Kadiatou DIALLO 781227430', 'B01228803', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-24 10:49:58', '2022-12-22 22:42:41', 'Feminin', '2022M2117', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, 'MOUNIENDA-KOUMBA Jeanne Sara', 'jeannesara', '1996-04-24', 'Port-Gentil', NULL, 'Castor', 'Libreville', 'saramounienda@gmail.com', '$2a$08$48ote3F69FqQp0J1f9La0elYx6A8OzwT7YiVZ.9F8xtY8raruU4lO', 'passer123', '773966799', '+24177183432', 'activated', 'Guy Roger KOUMBA', NULL, '+24177183432', NULL, 'Marie Laurence FAUSTILLE', NULL, NULL, NULL, 'Ezechiel GBOUGNAGNA', '16GB10721', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-26 11:33:28', '2022-12-22 22:42:00', 'Feminin', '2022M2118', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, 'MOULAYE Ismail Abdarrahmane', 'mismail', '1998-09-28', 'Nouakchott', NULL, 'Fann Hock', 'Tevragh Zeina', 'ismailmoulaye@gmail.com', '$2a$08$mKLfvyQkkPgDMOAxeEgdEuc9XYSCzRKJQpT9YLtBf4InyNT5rXgma', 'passer123', '778693286', '0022234441019', 'activated', 'Hassane MOULAYE', NULL, NULL, NULL, 'Souad MOULAYE Abdarrahmane', NULL, NULL, NULL, 'Hassane MOULAYE', '2817961454', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-26 12:05:09', '2022-12-22 22:24:48', 'Masculin', '2022M1119', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, 'GASSAMA Aminata Cissé', 'aminata', '1999-09-02', 'Dakar', NULL, 'Nord Foire', 'Nord Foire', 'aminatacissegassama@gmail.com', '$2a$08$cVjifYb00dp6iHQ7aOnOZeVb4Q86n5Rz3/S1m8B2fmGDWKea.YqNC', 'passer123', '775141410', NULL, 'activated', 'Mohamed Lamine GASSAMA', NULL, '775468233', 'Nord Foire', 'Oumou Kalsoum Absa NDIAYE', NULL, NULL, NULL, 'Mohamed Lamine GASSAMA', '2751200501408', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-26 12:34:49', '2022-12-22 22:45:30', 'Feminin', '2022M2120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, 'BAMBI IKIA Olivia Rosy', 'ilivioa', '2000-04-28', 'Pointe Noire', NULL, 'Sacré coeur 1', NULL, 'olivia.ikia@gmail.com', '$2a$08$QC9M5CqKEOsQjkMZD6j7Fe8sqDHYp21iHPhI0uNiVNmhPEnYT0aXq', '$2a$08$D4eC8ahuDe.QlP.HIsfViem7x7f.rbQGqWS5A.qjq7eo1xv1A1Q.m', '765643702', NULL, 'activated', 'Georges Emmanuel BAMBI', 'Agent Air Afrique', NULL, 'Pointe Noire', 'Marie Beatrice OKO', 'Commerçante', '+242055590099', 'Pointe Noire', 'BAMBI OKO', 'OA0207657', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-26 14:10:03', '2023-02-24 23:21:42', 'Feminin', '2022M2123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, 'DIAGNE Adji Mareme', 'dmareme', '1996-12-13', 'Dakar', NULL, 'Maristes ', 'Maristes  Immeuble Lionnes', 'adjilamareme96@gmail.com', '$2a$08$uXzLeNblOGm71nbwygTmb.2G.VjbSiJ6He2H2z4hjVitUn6o.jQqi', 'passer123', '771125708', '338226893', 'activated', 'Amadou Raby DIAGNE', NULL, NULL, NULL, 'Ndeye Maguette SAMB ', NULL, NULL, NULL, 'Ndeye Maguette SAMB ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-27 09:37:13', '2022-12-22 22:46:22', 'Feminin', '2022M2125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, 'NDIAYE Marieme', 'marieme', '1996-04-04', 'Dakar', NULL, 'Parcelles Assainies', 'Parcelles Assainies', 'mariemendiaye04@gmail.com', '$2a$08$VvHTcziFveMFY94Z5btUjONDcSsaB1r2Kuc7nNFtEB80LN59zAppi', 'passer123', '776821445', NULL, 'activated', 'Saliou NDIAYE', NULL, NULL, NULL, 'Mame Anta NIANG', NULL, NULL, NULL, 'Saliou NDIAYE', '2765199602532', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-27 10:56:24', '2022-12-22 22:59:26', 'Feminin', '2022M2126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, 'Bénie-Jeancia ONDIALA', 'bénie', '2004-12-18', 'Pointe Noire', NULL, 'Grand Yoff', 'Tchiali', 'jeanciaondiala@gmail.com', '$2a$08$b4WnQ1cKmfkCRkXmRwPI8OrYc15ICZIwStrba5NysWEdGhJ.cKA8i', '122004', '781258361', NULL, 'activated', 'ONDIALA Jean pierrez', 'Electricien', '064748282', 'Tchiali', 'TATY-TATY Laetitia', 'Secrétaire', '050575252', 'Tchiali', 'MIERANGALI Jessica 780193845', 'OA0564513', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-29 10:10:29', '2022-12-22 22:46:56', 'Feminin', '2022M2130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, 'DIYANI Ismail', 'idiyani', '2000-11-30', 'Marrakech', NULL, 'Sicap Baobab', 'Quartier Riad', 'ismaildiami18@gmail.com', '$2a$08$o7bRjpxTKo5sLUsKbCAOFeVJ0Wu6NXNIfpaPHX.tSJMDn8yFsOiPS', 'passer123', '706804097', NULL, 'activated', 'Bouzekri  DIYANI', NULL, '21267699473', NULL, 'Ghizlaine', NULL, NULL, NULL, 'Jad SALHI', 'yB6016576', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31 11:57:44', '2022-12-22 22:30:12', 'Masculin', '2022P1131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, 'Rêve  Exaucée BOUEYA DAMBA', 'exaucée', '2000-10-12', 'Brazzaville', NULL, 'Médina', 'Congo', 'exauceeboueya9@gmail.com', '$2a$08$sdZnIGu0B1mc9NRiRdtple1NgdvJz56nSWBap7RfLSgfpH.VwyzlO', '102000', '065202686', NULL, 'activated', 'BOUEYA BAMBA Essaîe', NULL, NULL, 'Brazzaville', 'NZOUZI Rosine', 'Comptable', '066342310', 'Brazzaville', 'Mavougou Jonatah  780190578', 'OA0248291', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31 12:10:21', '2022-12-22 22:22:40', 'Feminin', '2022P2133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, 'ABAKARI-TONDO Guisma', 'guismatondo', '2003-03-10', 'Pointe Noire', NULL, 'Grand Dakar', 'Marché central Pointe Noire', 'guisma@gmail.com', '$2a$08$qUD6aq6n8wwOjml2g/qDDe9umU43lByd9OThj.jJTdssoq3UsYsX2', 'passer123', '066655414', '+242056602159', 'activated', 'Abou ALI ABAKARI', 'electro technicien ', '066645414', 'Marché central Pointe Noire', 'Hawa Bireme MAHAMAT', 'Ménagere', NULL, 'Marché central Pointe Noire', 'Falmata CHETIMA-TONDO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31 12:13:19', '2022-12-22 22:22:56', 'Feminin', '2022P2132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, 'BA Mamadou Saidou ', 'smamadou', '2001-05-04', 'Malem Hodar', NULL, 'Mbao', NULL, 'baseydoumamadouanow@gmail.com', '$2a$08$6etfwXhEWYmdrE6iwyJbF.spz1lPsnnIPE/0A1tfmZiqcTbp7S5Mi', 'passer123', '772307975', NULL, 'activated', 'Abdou BA', NULL, NULL, NULL, 'Fatoumata DIALLO', NULL, '779691763', 'Mbao', 'Moussa Korka BA ', '11220010504000017', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31 12:30:18', '2022-12-22 23:09:53', 'Masculin', '2022P1134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, 'SANLE Agni Flore Emmanuella ', 'emmanuella', '1999-08-12', 'Abidjan (Cote d\'ivoire)', NULL, 'Médinna Rue 25', NULL, 'agnisanle@icloud.com', '$2a$08$oEBCAWAftLHsXH/yrnEbQOsyRxuALI8Waxan9j4/bDqBqrJGoI376', 'passer123', '781082990', '+22507638868', 'activated', 'Jean Crésort SANLE ', NULL, NULL, NULL, 'Yvonne Ello BOMBO', NULL, NULL, NULL, 'Anuarité KOUASSI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31 12:46:48', '2022-12-22 22:21:45', 'Feminin', '2022P2135', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, 'MAKELE-LEKOUMOU Lydwine Merveille', 'lmerveille', '2004-07-28', 'Makokou (Gabon)', NULL, 'Point E', 'Nkok', 'lydwinemakele@gmail.com', '$2a$08$OglR0GrM1cfLBaBMt0NAzOuvYJopFFIAxFsz9XXBpmP4ziJgyDPl6', 'passer123', '784471811', '+24177084843', 'activated', 'Hyacynthe Babissa LEKOUMOU', NULL, '+24177084843', 'Nkok', NULL, NULL, NULL, 'Nkok', 'Hyacynthe Babissa LEKOUMOU', '20GA45196', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31 13:01:42', '2022-12-22 22:21:31', 'Feminin', '2022P2136', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, 'KEITA Bourehima', 'kbourehima', '2003-07-15', 'Dakar', NULL, NULL, 'Cocody', 'Zaaria324@gmzil.com', '$2a$08$5i/9k.xUiEmAokSr.XplqusZiwFbaQdBXQqJf9W6QlQT3mF.jcl06', 'passer123', '777508461', '0758706088', 'activated', NULL, NULL, NULL, NULL, 'Bintou Alamako KEITA', NULL, '0709667186', NULL, 'Ismaila Diakhaté', '18AV02040', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31 13:12:19', '2022-12-22 23:09:28', 'Masculin', '2022M1137', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, 'KINI Ablagan Dzidula Clever', 'kiniclever', '2000-07-18', 'Lomé', NULL, 'Médina Rue 25', NULL, 'kiniclever18@gmail.com', '$2a$08$gcMVipdvUhsabv22H2ROKOE.D9eoCjFKiSA9QwVtbKhKoOWx2DNi2', 'passer123', '783121067', NULL, 'activated', 'Bessan Ephrem KINI', NULL, NULL, NULL, 'Mignanou MARIE', NULL, NULL, NULL, 'Bessan Ephrem KINI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31 13:37:56', '2022-12-22 22:21:19', 'Feminin', '2022P2138', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, 'NGOUA Chelsea-Vedrine', 'cvedrine', '2000-11-23', 'Libreville', NULL, 'Hlm 96', 'Plaine-Oreby', 'vedrneclelsea@gmail.com', '$2a$08$l6l2LdTkRdubd3Uc31rpeOoQ6AKeDnIeny0eycZxoaov/GgaGHqym', 'passer123', '765646224', '066942201', 'activated', 'René Jocelyne NGOUA', NULL, NULL, NULL, 'Clarisse LOMBAL', NULL, '+241074219421', NULL, 'Minael BOUSSOYI MABENDE', '19GA25512', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31 15:12:58', '2022-12-22 22:21:05', 'Feminin', '2022P2139', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, 'Weindy Wesly DIPOMBO', 'wesly', '2001-08-21', 'Koulamoutou', NULL, 'Liberté 6', 'Libreville', 'weindydipombo638@gmail.com', '$2a$08$1taGmkTlWKLe864yTlrqauyMa3WXmkJ7zZc159YtOKsp6tw4g/yx2', '082001', '781161065', NULL, 'activated', 'Alian DIPOMBO', 'Conteur Poid Lourd', '+24106843287', 'Moanda-Gabon', 'Tsongo Diane', 'Ménagère', '', 'Moanda Gabon', 'Fety Ma Yombo', '20GA32381', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 11:13:03', '2022-12-22 23:11:49', 'Masculin', '2022M1149', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, 'Weindy Wesly DIPOMBO', 'wesly', '2001-08-21', 'Koulamoutou', NULL, 'Liberté 6', 'Libreville', 'weindydipombo638@gmail.com', '$2a$08$t5ki2aY7d6nBLzkJ2280i.TGBStcBPQ.Mj6AOMNMp2n53itT0gHTK', '082001', '781161065', NULL, 'activated', 'Alian DIPOMBO', 'Conteur Poid Lourd', '+24106843287', 'Moanda-Gabon', 'Tsongo Diane', 'Ménagère', '', 'Moanda Gabon', 'Fety Ma Yombo', '20GA32381', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 11:13:03', '2022-11-02 11:13:03', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, 'Oulimata BADJI', 'oulimata', '2004-02-11', 'Fatick', NULL, 'Ouakam', 'Sénégal', 'oulimatabadji0112@gmail.com', '$2a$08$w5JNjTX/1S54nvqO5GSLRunSU/Jhqt3ZOXi6mjrMu6v9n/YKIybZ6', '122004', '775240966', NULL, 'activated', 'Mamadou Lamine BADJI ', 'Pharmacien', '776467184', 'Fatick', 'Aissataou Jlkliba ', 'Enseignante', '775418005', 'Fatick', 'Lansana BADJI 776553949', '2425200500030', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 13:06:08', '2022-11-02 13:06:08', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, 'NNANG NANDA Stan Osvaldo Benjamin', 'nosvaldo', '2003-01-21', 'OYEM(Gabon)', NULL, 'Fass', 'Libreville', 'stannnang23@gmail.com', '$2a$08$RUw3hwm3DfywyxIN4Xz7ou9KHzVVS0ANG1YYGDnsd9nXz2G0J3oGC', '$2a$08$j7yxeEoFNr9l23Ci8voCt.eRyQz/hVLDNqqHDtcp.FY2Z.OxAn6uS', '772488326', '+24162980298', 'activated', 'Nanda Dieudonné', 'Chef de gare', NULL, 'Libreville', 'Essola Ondo Sophie', 'Agent d\'exploitation', '+24162980298', 'Libreville', 'Ulrich ASSOGHO', '20GA07865', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 16:16:19', '2023-02-24 13:17:58', 'Masculin', '2022M1150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, 'MAVOUNGOU Narcia Claire', 'narcia', '2002-04-02', 'Pointe Noire', NULL, 'Liberté 6 Extension', NULL, 'mavoungou@gmail.com', '$2a$08$m7.GJOhxYER5jSobu5yFPeIBC5.j3x.3GE0BO9sKa8/HPqb4R6npS', 'passer123', '781322795', '+242066282014', 'activated', 'Narcisse MAVOUNGOU ', NULL, NULL, NULL, 'Assibouya Blanche Hussein', NULL, NULL, NULL, 'Narcisse MAVOUNGOU ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 16:33:43', '2022-12-22 22:48:24', 'Feminin', '2022M2151', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, 'MOMBO Sobouratou Modoukpé Hosana', 'hosana', '2002-09-05', 'Lomé', NULL, 'Grand Dakar', 'Lomé', 'hosannamombo@gmail.com', '$2a$08$freFFz.NoX4a036GxSFwaegzJJ7AMTrwzvS3nA2emRRmRMJiUitnu', 'passer123', '781583450', '+22891525657', 'activated', 'Brice Aimé MOMBO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Esther MOMBO', 'EB512947', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 17:36:14', '2022-12-22 22:48:40', 'Feminin', '2022M2152', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, 'REMADJI BETELEM Gloria', 'betelemgloria', '2004-09-17', 'Ndjaména', NULL, NULL, NULL, 'remadji@gmail.com', '$2a$08$K.9wru2MpzwWFMLa7Ea1V.tw0a2nNxw1yOyOxkQPKClSP5PJhMXf.', 'passer123', NULL, NULL, 'activated', 'Ranaud BETELEM', 'Enseignant', NULL, NULL, 'Belemgoto Noudjilar', 'Enseignante', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 18:14:47', '2022-12-22 22:48:53', 'Feminin', '2022M2153', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, 'NIKINIKI WIliiams Pearce', 'nikiniki', '2002-06-06', 'Pointe Noire', NULL, NULL, 'Derriere aéroport', 'williamsnikiniki@gmail.com', '$2a$08$aYlkoA9yJ9fjJ04fNXgel.l2AAQCkWdzK41fYuToGTbCnBzGTyRnK', 'passer123', '774276437', '+242055495159', 'activated', 'NIKINIKI WIliiams ROGER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0A0396108', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 18:22:53', '2022-12-22 23:17:48', 'Masculin', '2022M1154', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, 'ADJOU ADEGOUN Radiyath Jessy Dégnon', 'adjou', '2005-04-18', 'COTONOU', 'Béninoise', 'Amitié', 'Calavi Bénin', 'adjou.debnon@gmail.com', '$2a$08$KF/7TshtaTqZHTu1nPoHpOMqLicypFirDs5PVtg2JrhugQr9mGKVK', '042005', '778389587', NULL, 'activated', 'ADJOU Francise', 'Informaticien', '0022997927070', 'Calavi', 'Tegue  Juliette', 'Opticiene', '0022997403172', 'Calavi Bénin', 'Lionel TONOUKOUIN', '100048023', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-04 09:22:18', '2022-11-04 09:22:18', 'Feminin', NULL, 'primo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, 'Ruth Alvine DIBALA KIAAAALA ', 'alvine', '2005-09-16', 'Brazzaville', 'Congolaise', 'Face', 'Congo', 'ruthalvinedibalakiassala@gmail.com', '$2a$08$A3mFiX.DdCjwpBqR/2b8ju46lc8wKUnRmr1GX7yAuZfOrGhrIM.J6', '092005', '773558472', NULL, 'activated', 'DIBALA Bernard', 'Ingénieur Infortique', '069225778', 'Chateau eau', 'ZOUALI Stevy Lethicia Claude', 'Comptable', '+244069225778', 'Chateau d\'Eau', 'Oboua Marion Dorel  785982362', 'OA0535090', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-07 08:37:30', '2022-12-22 22:58:29', 'Feminin', '2022M2166', 'primo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, 'MINKUE MI OBIANG Grace Maixence', 'mobiang', '1996-10-23', 'Libreville', NULL, 'Ouakam Cité ', NULL, 'g.maixence@gmail.com', '$2a$08$sisKpOmOr//Svu4XJOkm/ezLbt2AYYw10FRMNP2Tt2PIHHUycWXs2', 'passer123', '774060489', '+24107368055', 'activated', 'OBIANG NGOUA ', NULL, NULL, NULL, 'Clauhilde MENGUE MINTHO\'O', NULL, NULL, NULL, 'Noé OSTAGOMBARI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-07 11:09:56', '2023-02-12 19:37:47', 'Feminin', '2022167', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, 'MATHU KUETCHE Brinell Soyinka', 'bsoyinka', '2002-03-03', 'Yaoundé', NULL, 'Ouest Foire', NULL, 'brinellsoyinka@gmail.3com', '$2a$08$89ljTDwnPZOc/FIvmzkFLuq1wdB1xVBfIiPxjPDQCm33zoe/qurvG', 'passer123', '776172335', '658278665', 'activated', ' KUETCHE Jean Pierre', 'Commerçant', NULL, NULL, 'FANKEUY Tagni Lidonie', 'Coiffeuse', NULL, NULL, NULL, '1051218', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-07 12:35:42', '2022-12-22 22:19:32', 'Feminin', '2022P2168', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, 'FOFANA Wélénaman Farida Jaxime', 'faridajaxime', '1999-09-02', 'Niémene', NULL, 'Ouakam Cité Assemblée', 'Yopougon', 'faridafofana135@gmail.com', '$2a$08$VDCuU.kRBoUE1rzGf1wZXOg7sSbNA3s0B9Q2Iw8PZQY37ssjpOXNe', 'passer123', '775376279', '0788448459', 'activated', 'FOFANA  Soungari', NULL, NULL, NULL, 'Karidioula BALABORO', NULL, NULL, NULL, 'Justine DOSSA', '220ACO2341', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-07 12:53:52', '2022-12-22 22:19:19', 'Feminin', '2022P2169', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, 'DJIBRILLA MALIKI Aboubacar', 'djibrilla ', '1998-09-14', 'Cinkassé', NULL, 'Médina Rue 37x20', NULL, 'aboubacarmlki@gmail.com', '$2a$08$9uSwD1BlKs3R432A7MIre.JbSL6wrkBpPwRBZq.9TZgHcDjWyP9U6', 'passer123', '786024161', '+228900001645', 'activated', 'DJIBRILLA MALIKI', 'Commerçant', NULL, NULL, 'Balkissa DJOGOU', NULL, NULL, NULL, 'DJIBRILLA MALIKI Hamza', '10PC37926', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-07 14:34:21', '2022-12-22 23:12:46', 'Masculin', '2022P1170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, 'AZAGOH-KOUADIO Ahissan Flora Audrey', 'ahissanaudrey', '1984-02-23', 'Bouaké', NULL, 'Liberté 5', NULL, 'ahissanaudrey1@gmail.com', '$2a$08$5Hp50Q6I7kzBQe/IHidJCuTLtGGnjBoXLLDEEmFd19B16PfJvW9KC', 'passer123', '771535725', '+22507167191', 'activated', 'Aime KADIO Louis', 'Médecin des armées', NULL, NULL, 'Marie Antoinette Eliane DIMBOUR', 'Pharmacienne', NULL, NULL, 'AZAGOH-KOUADIO  Edouard', '19AA71874', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-07 15:26:47', '2022-12-22 22:18:42', 'Feminin', '2022P2171', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, 'SEIDOU ISSAKA Nazifatou ', 'nazifatou', '2001-09-11', 'Niamey', NULL, 'Fass', NULL, 'nazifatouseidou@gmail.com', '$2a$08$WrZf2/YLuctWVkyIhEnCYu7Ti8lxbgFoXvdBC4w1DBxcsvaHitLeC', 'passer123', '773132541', NULL, 'activated', 'SEIDOU ISSAKA', NULL, NULL, NULL, 'OUMOU HAMADOU', 'infimiere', NULL, NULL, NULL, '11PC11601', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-08 09:32:21', '2022-12-22 22:17:42', 'Feminin', '2022P2172', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, 'Juste Gordège  MANKITA DONGUI', 'juste', '2002-08-19', 'Brazzaville', NULL, 'Fasse', 'Makazou', 'gordegemankita@gmail.com', '$2a$08$3RDZX0v09TfkhD0QkfNmwOHRS088fd9vcXIppPhvHTCHnAoHclO8C', '082002', NULL, NULL, 'activated', 'MANKITA André', 'Enseigant', '066769821', 'Diatta', 'MIAKOUKILA Bienvenue', 'Enseignante', '069501882', 'Mankazou', 'Ruth thesya  MASSEKIDILA 78133 02 59', 'OA0568131', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-08 10:57:58', '2022-12-22 23:00:38', 'Feminin', '2022M2178', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, 'DOKOULA TABITA Catherine', 'catherinetabita', '2000-09-18', 'BANGUI', NULL, 'Liberté 6 Extension', NULL, 'tabitadokoula18@gmail.com', '$2a$08$Fz2e.N./gSAT1BMMjce1AuJzwUL11QiDgSqtY7Fq36HUjJX2sF0s.', 'passer123', '778184684', NULL, 'activated', 'DOKOULA Théophile', 'Agent de banque ', NULL, 'Efoulan', 'MBOMI Olgat Elise', 'Commerçante', '+23793730544', 'Efoulan', 'Jennifer Colette MBOMI', 'D00006273', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-08 12:48:58', '2022-12-22 22:14:29', 'Feminin', '2022P2182', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, 'THIAM Sokhna Maimouna', 'maimounasokhna', '1999-11-03', 'Dakar', NULL, 'Diamalaye', 'Diamalaye', 'maimounasokhna1999@gmail.com', '$2a$08$aIz8MUmYkuxgTtYLchOoJO3bnR0NZSRPEtYrXsEZyKzXk8EASmGEK', 'passer123', '778149022', NULL, 'activated', 'Aboubacry THIAM', NULL, '778341504', 'Diamalaye', 'Sokhna DIOUCK', NULL, NULL, 'Diamalaye', 'Aboubacry THIAM', '20119991103000237', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-08 13:04:01', '2022-11-08 13:04:01', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, 'TAH Kobenan Franck Xavier ', 'franckxavier ', '2002-01-22', 'Abidjan (Cote d\'ivoire)', NULL, 'Grand Dakar', NULL, 'kobeananfranck85@gmail.com', '$2a$08$D6FQo0v0JouykOAOeeh9MeSvp.nAFQUAKxsFpjDhMnMWDN/TulvoW', 'passer123', '775464993', '05569680', 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20AC85299', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-08 13:58:30', '2022-11-08 13:58:30', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, 'TAH Kobenan Franck Xavier ', 'kobeananfranck', '2002-01-22', 'Abidjan (Cote d\'ivoire)', NULL, 'Grand Dakar', 'Bingerville', 'fkobeananfranck85@gmail.com', '$2a$08$q13LAFKl6jRB3X6dQ1gkfeXIe8H48ga4ILkCtaVFAlAlEXngcsCHi', 'passer123', '775464993', '+22505569680', 'activated', 'TAH Kobenan Assoundjari', NULL, NULL, NULL, 'Ahou Viviane BROU', NULL, '+22505569680', NULL, 'Ahou Viviane BROU', '20AC85299', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-08 14:04:24', '2022-11-10 08:16:59', 'Masculin', '20221183', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, 'SOUHO Anido', 'souhoanido', '2000-06-03', 'Togo', NULL, 'Gueule Tapée', NULL, 'souhoi-reine@gmail.com', '$2a$08$IA5JV2umQ4lsQHf8TuIaBeFMN4imIa0PNPRqckBWBKACXvheoL2NC', 'passer123', '766128540', NULL, 'activated', 'Koufaltou SOUHO', NULL, '+22898097279', NULL, NULL, NULL, NULL, NULL, 'Koufaltou SOUHO', 'EB329272', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-08 14:26:52', '2022-12-22 22:14:04', 'Feminin', '2022P2184', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, 'IDOHOU Fadhile', ' fadhile', '1994-02-03', 'Cotonou', NULL, NULL, 'Al Mansheya', 'fadhila3294@hotmail.fr', '$2a$08$9fIU21bAIdNxdaYC/Vi83ub6mwYMo6rcDyf.o2wsjAQbXqsaVq1dm', 'passer123', '761922194', NULL, 'activated', 'IDOHOU Saka', NULL, '01003672011', NULL, 'Zarath Maliky', NULL, NULL, NULL, NULL, '1000090675', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-08 14:46:30', '2022-12-22 22:13:49', 'Feminin', '2022P2185', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, 'GHORAYEB Nayef', 'nayefghorayeb', '2000-07-05', 'Dakar', NULL, '11, Rue Fleurus', NULL, 'naghorayeb5@gmail.com', '$2a$08$UWJ68QFbvaFNxJxSdgEy7eDqFDkjquAHjrypBCv.paur7OGkLJoea', '$2a$08$LfOs0ERxVga0C.zhtVmXn.tq0XNV6h1LsPPaaZAJjSG/5P29HMO/u', NULL, NULL, 'activated', 'Reda GHORAYEB ', NULL, '776394803', '11, Rue Fleurus', 'Simon Elias LAHOUD', NULL, NULL, NULL, NULL, '1870200001280', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-08 16:41:20', '2023-03-01 08:55:52', 'Masculin', '2022P1186', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, 'DOUCOURE Sirandou', 'sirandou', '2000-07-19', 'Dakar', NULL, 'Keur Massar', NULL, 'syra307@gmail.com', '$2a$08$.9/ZmDas5vww5Gy1zQsgGeZDohANTn0KjWf9pih13Nn5vIqhlSm12', 'passer123', '778861387', NULL, 'activated', 'Mouhamadou DOUCOURE', NULL, NULL, NULL, 'Malouma DIARISSO', NULL, NULL, NULL, NULL, '20120000719000093', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-08 17:13:12', '2022-12-22 22:13:28', 'Feminin', '2022P2187', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, 'KOUAME Norgil Russell Mc Cain', 'norgilkouame', '2001-04-10', 'Abidjan (Cote d\'ivoire)', NULL, 'Ouakam Cité Avion', 'Divo (Cote d\'ivoire)', 'koffiflavien@yahoo.fr', '$2a$08$6aOewaOLh/YYrkVGZVf4OO8wzEdcykQ30dba.gPBv9HyH4c3fZ3ti', 'passer123', '777876028', '+22508188055', 'activated', 'Koffi Flavien KOUAME ', 'Pharmacien', '+22508188055', NULL, 'Angele Emilienne Assiéhué AMON', 'Couturière', NULL, NULL, 'Koffi Flavien KOUAME ', '18AX35704', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 10:18:30', '2022-12-22 23:14:17', 'Masculin', '2022P1188', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, 'MENSAH Sewa Charles - Auguste', 'mensahcharles', '1993-12-28', 'Abidjan (Cote d\'ivoire)', NULL, 'Sicap Liberté 3', NULL, 'charliie.m@live.fr', '$2a$08$Yrccm.wYpap2QtRaqjMpQ.G0PrjSM6IKyJNYbkqIst8z36K.iZ1mq', 'passer123', '771691954', NULL, 'activated', 'MENSAH Lassey Jonas', NULL, '+22507077334', NULL, 'NASCIMENTO Béatrice Julienne', NULL, NULL, NULL, NULL, 'C0120543193', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 16:21:28', '2022-11-09 16:21:28', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, 'DANO Guy Constant ', 'constantdano', '1996-06-15', 'Gagnoa( Côte d\'ivoire)', NULL, 'Sacré coeur ', NULL, 'constantdano08@gmail.com', '$2a$08$nnVnq2Da2tz2U2K0J3QDOOBjNX7N4kiasEtkUrZuOemhKyIKxaihG', 'passer123', '773558230', NULL, 'activated', 'Gérard DANO', NULL, NULL, NULL, 'Christine SOKOURI', NULL, NULL, NULL, 'Sébastien DANO', '18AT25012', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-11 11:52:28', '2022-12-22 23:14:46', 'Masculin', '2022P1190', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, 'DIEDHIOU Maimouna', 'diedhiouaimouna', '1997-11-24', 'Rhode Island (USA)', NULL, 'Parcelles Assaines u7', NULL, 'mamita2411@icloud.com', '$2a$08$9du62qCvpdRgLH63IYe50ukikZdiuaMiQwMn0QwfEcCubQKVnDIhS', 'passer123', '783767981', NULL, 'activated', 'Moussa DIEDHIOU ', NULL, NULL, NULL, 'Fatou DIATTA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-11 12:21:13', '2022-12-22 22:12:47', 'Feminin', '2022P2191', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, 'NDIAYE Mouhammadou Abdou Rakhmane', ' abdourakhmane', '2000-04-02', 'Dakar', NULL, 'Hann Maristes', NULL, 'mouhama02@gmail.com', '$2a$08$I5ysLHrojWgzOy3t7lgo.O8UkLKy872myzJw5M7T5236zvV.xWKvi', 'passer123', '777980475', NULL, 'activated', 'Mamadou NDIAYE', NULL, NULL, NULL, 'Arame FALL', NULL, '775540472', NULL, NULL, '1751200000907', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-11 12:51:28', '2022-12-22 23:15:17', 'Masculin', '2022P1192', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, 'MBINDZA Harryca', 'mbindzaharryca', '1998-03-20', 'Mounana (Gabon)', NULL, 'Liberté 6 ', NULL, 'mbindzaharryca@gmail.com', '$2a$08$UPFhzZvhxrTrEoaPFLYXkeXcUG6C77q3falZef.sralrDFRnrGJpi', 'passer123', '709784951', '+24162939979', 'activated', 'Gérard KOUYA MAKEGHELE', NULL, NULL, NULL, 'Koyo MAYOMBO FARIE', NULL, NULL, NULL, 'Angélica SEPHORA', '17GA14176', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-11 13:40:21', '2022-12-22 22:12:28', 'Feminin', '2022P2193', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, 'MANE Marie Héléne', 'mariehelene', '1996-04-27', 'Dakar', NULL, 'Fass DELORME', NULL, 'manemariehelene@gmail.com', '$2a$08$6Ej3kMhC4DZGMAOvl0o./OQbNWYEMfiJxZnWAk3KB2o9bwO/qWvgS', 'passer123', '779079046', NULL, 'activated', 'Badiane MANE', NULL, '774494790', 'Fass DELORME', 'Fanta MANE', NULL, NULL, 'Fass DELORME', 'Badiane MANE', '20119960427000047', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-11 13:54:08', '2022-12-22 22:12:14', 'Feminin', '2022P2194', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, 'KEITA Felematou Rahim', 'felematourahim', '2000-07-18', 'Mandiana (Guinée)', NULL, 'Gueule Tapée', NULL, 'felematourahimkeita@gmail.com', '$2a$08$AJDI7aY9oOr7gyMuqicxSe3l8UZCIBvrVH7h8Mw2CvDMaUD.DCIpK', 'passer123', '781163294', '+224625701262', 'activated', 'Damou RAHIM KEITA', 'SAVE FOR CHILDREN ', '+224622580550', NULL, 'Nognouma KONDE ', 'Couturière', NULL, NULL, 'Damou RAHIM', 'O00562095', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-11 14:34:52', '2022-12-22 22:11:59', 'Feminin', '2022P2195', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, 'ABONG Julienne-Axelle Antoufoue', 'abongjulienne', '1997-03-06', 'Abidjan (Cote d\'ivoire)', NULL, 'Abidjan', '', 'julieaxelle1@gmail.com', '$2a$08$4Ht.oiZRzcdZhRFn/A1uwe5W6ItNhfAInAGeG8WXkU/BIa3cDu20O', 'passer123', '785249475', '+22577168375', 'activated', NULL, NULL, NULL, NULL, 'Thérese EHOUNOUD ABONG ', NULL, '+22547392115', NULL, 'Thérèse EHOUNOUD ABONG ', 'C0105367190', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-11 15:03:40', '2022-12-22 22:11:25', 'Feminin', '2022P2196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, 'MAKOUNDOU MAMPOLO Ange Chrisphat', 'angechrisphat', '1994-12-12', 'Brazzaville', NULL, 'Liberté 6 ', NULL, 'angemampolo2@gmail.com', '$2a$08$pwpycaWz6U3DRBl5zelE6e8Ct54TuOwcCFgRTVtmmX9TOE3kIE52K', 'passer123', '701019876', '+2420686198', 'activated', 'Joseph NTCHAMIO MAKOUNDOU', NULL, NULL, NULL, 'Christine MABOUNDOU', NULL, '+242068686198', NULL, 'Christine MABOUNDOU', 'OA02446604', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-11 16:04:41', '2022-11-11 16:04:41', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, 'KOUADIO Jémima Anne', 'kouadioanne', '2000-08-15', 'Yopougon', NULL, NULL, NULL, 'annejemimaloisanelouk@gmail.com', '$2a$08$ppYajDkwySOQjalWYFDynOk0TgKNv7IRZEvGIj2jkkXB.3fPqy1Au', 'passer123', '786063069', '06300583', 'activated', 'KOUADIO Anne Faustin', NULL, '+22568466365', NULL, 'Annick Rose KONAN', NULL, NULL, NULL, NULL, '15AA83341', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-11 16:47:53', '2022-12-22 22:11:09', 'Feminin', '2022P2198', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, 'KOMI-AYEH Kokuvi', 'komikokuvi', '1983-04-06', 'Lomé', NULL, 'Fass Delorme', NULL, 'olivierkomiayeh06@gmail.com', '$2a$08$q5zbXpej7C3ztod6BrIuk.q1ZFTLPfX83bnPTc8zPW0RjR/up5/pS', 'passer123', '778630721', '+2289026628', 'activated', 'Komla KOMI', NULL, NULL, NULL, 'Domesto KAFUW', NULL, NULL, NULL, 'Afi Enyoo KOMI-AYEH', 'EB309677', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-11 17:23:54', '2022-11-11 17:23:54', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, 'PRUDENCIO Danielle Mercédes', 'danielleprudencio', '1998-06-16', 'Cotonou', NULL, 'Point E Rue Kaolack', 'Adechina Cotonou Bénin ', 'd-mercedesprudencio@gmail.com', '$2a$08$Gyp6s91RthIh5SbZs3BdA.9AUGQITWy7HpDUCZDAFIKC6idyK2Kb2', 'passer123', '783731373', '+22995065847', 'activated', 'Edgard PRUDENCIO', 'Pharmacien', '+22997981671', NULL, 'Isabelle ATTALE', NULL, NULL, NULL, 'Edgard PRUDENCIO', '2603199801190', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-15 10:00:17', '2022-12-22 22:10:55', 'Feminin', '2022P2200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, 'LEYE Nogaye ', 'nogayeleye', '1996-07-31', 'Ouakam', NULL, 'Cité Djily Mbaye Yoff', 'Cité Djily Mbaye Yoff', 'nogleye@gmail.com', '$2a$08$yRDrDXEHPGie8ehbHNRgf.mROixIEwPWpQm2Xlh713dxves9SLUt6', 'passer123', '774677582', NULL, 'activated', 'Moussa LEYE', NULL, NULL, 'Cité Djily Mbaye Yoff', 'Fatou Kane Mbengue', NULL, '783042710', 'Cité Djily Mbaye Yoff', 'Fatou Kane Mbengue', '2759199700542', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-15 10:30:03', '2022-12-22 22:10:42', 'Feminin', '2022P2201', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, 'NTANDOU TSIKA Dany Guisan', 'danyguisan', '1998-01-02', 'Brazzaville', NULL, 'Mermoz VDN', NULL, 'guisanntandou@gmail.com', '$2a$08$1/UbI7fEYCu6xOc4.xGhVOAyvoeDtaarApHfK0.EY5vITOEO0dXw6', 'passer123', '777986026', NULL, 'activated', 'Gaston TSIKA', NULL, NULL, NULL, 'Batsoua Sandra NTANDOU', NULL, NULL, NULL, 'Batsoua Sandra NTANDOU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-15 10:46:26', '2022-12-22 23:15:50', 'Masculin', '2022P1202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, 'MANFOUMBI-MBOUYI Lorna-Marjolaine ', 'Lornambouyi@gmail.com ', '2003-01-22', 'Lambaréné ', 'Gabonaise', 'Zone de captage ', 'Gabon ', 'Lornambouyi@gmail.com', '$2a$08$d23rQhuvCcu3qBmFu0diR.jXnTItIH6.aorjSXLWSElex1K.eCJhq', 'Laure2404', '772665459', NULL, 'activated', 'MBOUYI Ghyslain', 'Audit', '04180118', 'Libreville ', 'KOGHE Maryse Laure', 'Commerçante', '+241 02 30 03 32', 'Libreville ', 'NGUEBA Dalya ', '20GA15485 ', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-16 00:53:29', '2022-12-22 23:04:43', 'Feminin', '2022M2207', 'primo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, 'GOUDJINOU Dodji Audrey', 'dodjiaudrey', '1994-12-03', 'Cotonou', NULL, 'Gueule Tapée', NULL, 'goudjinouaudrey@gmail.com', '$2a$08$QJdMivYXhGkMkVjpIag4J.Y6X3attqB/TNL9hipl8tKloEFXTk9fG', 'passer123', '778945641', NULL, 'activated', 'Yaovi Raphael GOUDJINOU', 'Medecin', NULL, NULL, 'Germaine HOUETO', NULL, NULL, NULL, 'Karell Eva GOUDJINOU', '201479240', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-16 10:06:22', '2022-12-22 22:10:24', 'Feminin', '2022P2203', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, 'EWAGNIGNON Aaron Emmanuel Tarek', 'aaronemmanuel', '1999-10-11', 'Paris', NULL, 'Médina Rue 11x 4', NULL, 'aaronewa@hotmail.com', '$2a$08$CqtnwZHEZZ/lPslJRDDTIeA.42wvrX2rtAjM6U2CkllIf.ZkDG13S', 'passer123', '781152852', '+22994942865', 'activated', NULL, NULL, NULL, NULL, 'Raima Raymonde MALICK', NULL, '+22967304715', NULL, 'Aurore Samira EWAGNIGNON', '2017P1015', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-16 10:41:37', '2022-12-22 23:16:06', 'Masculin', '2022P1204', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, 'BAMPOKY Donatien Junior', 'donatiejunior', '1998-12-12', 'Ziguinchor (Sénégal)', NULL, 'Liberté 5', NULL, 'juniorbampoky@gmail.com', '$2a$08$0hkdKJiv2Egz2LoFetA2quqdvGZhLFMolZW/aDGwlDca.vZR2RRya', 'passer123', '783821177', NULL, 'activated', 'Emile BAMPOKY', NULL, NULL, NULL, 'Antoinette DIOMPY', NULL, NULL, NULL, 'Alexis François Seck', '10219981212000114', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-16 10:54:06', '2022-12-22 23:16:21', 'Masculin', '2022P1205', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, 'MBOUMBA MBINI Razia Claude Noria', 'noria', '2004-04-13', 'Libreville', 'Gabonaise', 'Zone de captaze', 'Libreville', 'mboumbaclaude120@gmail.com', '$2a$08$LkD5QLS4uSW5mfuIAy8YDOgXRQoGmk99KxDXjcIZAmdAmNkPw3nvu', '042004', '77 477 01 98', NULL, 'activated', 'MBINI Manfoumbe Jean Claude', 'Médecin', '', NULL, 'PAMBOU Ireine', 'Comptable', '+24107536479', 'Libreville', 'Jisca OGOULA', '22PP11895', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-16 11:44:52', '2022-12-22 23:04:28', 'Feminin', '2022M2206', 'primo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, 'MBOUMBA MBINI Razia Claude Noria', 'noria', '2004-04-13', 'Libreville', 'Gabonaise', 'Zone de captaze', 'Libreville', 'mboumbaclaude120@gmail.com', '$2a$08$5QpOBtLsxA.d4BA72olWuuLB6M.4WHJL6sfu9198ZO1TLMF5l1UHS', '042004', '77 477 01 98', NULL, 'activated', 'MBINI Manfoumbe Jean Claude', 'Médecin', '', NULL, 'PAMBOU Ireine', 'Comptable', '+24107536479', 'Libreville', 'Jisca OGOULA', '22PP11895', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-16 11:44:52', '2022-11-16 11:44:52', 'Feminin', NULL, 'primo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, 'DIOP Anta', 'antadiop', '1998-11-30', 'Dakar', NULL, 'Hlm Hann Maristes', NULL, 'ana301198@hotmail.fr', '$2a$08$dPLeTSP6RIfhMG9vcBPqW.QycowjtNO6ASmSnhvOJzGcZIvEUYUUi', 'passer123', '774928942', NULL, 'activated', 'Madiop DIOP', NULL, NULL, NULL, 'Ndeye Fatou NDAO', NULL, '775324553', NULL, 'Ndeye Fatou Ndao', '2756199801784', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-16 16:11:59', '2022-12-22 22:02:58', 'Feminin', '2022P2208', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, 'Diallo Fatoumata Diariou ', 'diarioudiall044@gmail.com', '2002-05-03', 'Conakry', 'Guinéenne', 'Grand Dakar ', 'Sonfonia ', 'diarioudiall044@gmail.com', '$2a$08$/zD5EhT5kylfAY1QWaScsu/R1H.nnx92ESIfIZFWw75uMn3aRSsri', '272515', '771718723', NULL, 'activated', 'Thierno sadou', 'Commerçant ', '627898752', 'Sonfonia rails', 'Aicha barry', 'Commerçante', '629685470', 'Sonfonia raild', 'Ma mere ', '2002', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-17 01:07:00', '2022-11-17 01:07:00', 'Feminin', NULL, 'primo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, 'Ali ANDA ZAKARIA', 'ali', '1999-05-16', 'à Ndjaména', 'Tchadienne', 'Liberté III', 'Farcha', 'anday.zak@gmail.com', '$2a$08$c68Gw368E1JpVr/iH5QAPuXeUViIr9yNdevFjDivM/di55yAM3z32', '051999', '777493358', NULL, 'activated', 'ZAKARIA Ali', 'Eleveur', NULL, 'Farcha', 'Fatimie DAOUSSA', 'Ménagère', '+23565202120', 'Farcha', 'Hissein 775339210', 'R15134153', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 09:27:41', '2022-11-18 09:27:41', 'Feminin', NULL, 'primo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, 'Glen Juvance NZOVI MOULENGUI', 'juvance', '2002-09-30', 'Port-Gentil', NULL, 'ben Tally', 'Gabon', 'glennbac2021@gmail.com', '$2a$08$NIflQZ4dDmcBDDIbh3pQ..AqgETYwUWdrGW.BJqYjI9UdTMZY0cmW', '0920002', '772940730', NULL, 'activated', 'NZOVI MOULENGUI Gervais', 'Opérzateur  Consol', '+241074135090', 'PK8', 'NZOVI Espérance', 'Inffirmière', '0241066042041', 'PK', 'Merlance Moughola 78 125 75 07', '20GA41896', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-21 11:50:06', '2022-12-22 22:21:04', 'Masculin', '2022M1210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, 'AICHA GNAGNA SAGNA', 'SAGNA', '2001-08-24', 'DAKAR', 'Sénégalaise', 'dakar', 'senegal', 'angasaicha@gmail.com', '$2a$08$AH/NJpsISSITJPXKQq/T/OW9YAPWLc1QQ.yaNZWKLO5zfQOSJJ0iS', 'OGSHASHA47', '782186856', NULL, 'activated', 'MAMADOU SAGNA', 'JURISTE CONSEILLE', '776153939', 'QUARTIER MAKHFOUSS BADJI DAROU SALAM6', 'AMINATA BADJI', 'MENAGERE', '775742464', 'QUARTIER MAKHFOUSS BADJI DAROU SALAM6', 'MAMADOU SAGNA', '20120010824000093', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-21 22:37:21', '2022-11-21 22:37:21', 'Feminin', NULL, 'no-primo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, 'MABIALA MISSATOU Prince Lovel', 'prince', '2004-05-16', 'Brazzaville', 'Congolaise', 'Fass Canal 4', 'point Noire', 'mabialaprincelovel@gmail.com', '$2a$08$5NPl0OWljo5cu3CEWQ9dOu51IdWUgyC6fbC5o9SaA5n78Bo0WtGSu', '052004', '771835530', NULL, 'activated', 'MABIALA Lyberlin', 'Uisé de jistice', '+69835836', 'Mbota', 'NZIKOU NZOUMBA Natacha Asmed', 'Fonctionaire', '+242066117580', 'Base Pointe noire', 'KIVOUELE GRACENEY 78 1932552', 'AO0514168', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-23 13:31:21', '2022-11-23 13:31:21', 'Masculin', NULL, 'primo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, 'MALLO Marco Silvère Hyppolite', 'MALLO Marco', '2004-08-13', 'BABOUA', 'Centre-Africaine', 'Ouakam Mboul, côté garage mécanicien, cité El Hadji Malik', 'Boy- Rabe, Quartier Kaimba', 'mallomarcosylver@gmail.com', '$2a$08$KVyxvQsUrHNkX/nEkG97WOWDvMFvuieoRV.W381joV42ut5WVbNNu', '13082004', '78 633 08 22', NULL, 'activated', 'MALLO Benjamin ', 'Commissaire Divisionnaire de la police, Directeur Général de la sécurité publique ', '00 236 75 50 74 32, 00236 72 51 93 45', 'Bangui', 'NGANARE Philomène Gina', 'Ménagère ', '00 236 75 01 57 31', 'Bangui', 'MALO Dominique: 00 236 75 04 28 68, 00 236 70 04 28 68', '000261174', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-23 16:17:31', '2022-11-23 16:17:31', 'Masculin', NULL, 'primo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(349, 'BANA  Ketsia Maria Bernadette', 'bkm', '1997-04-13', 'Pointe Noire', NULL, 'Médina', 'Congo brazzaville', 'mariaketsiab@gmail.com', '$2a$08$kpblOuEGHesmQLVdrOH9zexQWB4cPT7wjgxQYRXU/UZ8EoCd.dykO', '3460', '775138440', NULL, 'activated', 'BANA Robert', 'Inspecteur impot en domaine', '+242066633460', 'Siafoumou', 'BANA Odilia', 'Ménagère', '+242068141990', 'Siafoumou', 'Boussali Naomi 776216456', 'SN014112', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-24 13:43:00', '2022-11-24 13:43:00', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, 'SYLLA SHA Fatim', 'fatim', '1999-05-25', 'Bouaké', NULL, 'Fass', 'Côte d\'Ivoire', 'syllashafatim@gmail.com', '$2a$08$1LCVhKGiHpVCx.Wcnv4SB.0.SjUukCArazhWsJP2S4gBUa/z9JCa.', 'f2021', '774795910', NULL, 'activated', 'SYLLA Adama', 'Commerçant', '+2250747791892', 'bouaké', 'SYLLA Fanta', 'Commerçante', '+2250768691775', 'Bouaké', 'Makasso Michel 778301262', '20AD91215', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-28 12:04:45', '2022-12-22 23:05:37', 'Feminin', '2022M2209', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, 'BOUNANG MENGUESSE Cynthia Paule', 'paule', '2001-11-27', 'Bafoussan', NULL, 'amitié', 'Cameroun', 'bcynthiapaule@yahoo.fr', '$2a$08$DAs1VpSw4sSfoQIGGsB/AeFwSOHwq8MqBJNe.ohotd7gwMUYS0o.i', 'menguesse66', '778681123', NULL, 'activated', 'Jean Samule simon', 'Cadre Commercial', '+237675762907', 'Koto Bloc L', 'BOUNANG MENGUESSE Mabie Claire', 'Dr Gynécologue', '+237656324785', 'KOTTO BLOC l', '66Cameroun', '0878433', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-28 13:21:22', '2022-12-22 23:08:10', 'Feminin', '2022M2211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, 'Aminata Wade', 'Aminata Wade', NULL, NULL, 'Sénégalaise', NULL, NULL, 'tatayaye@yahoo.fr', '$2a$08$hSXTyQO1U2zvfRnYWBZL6OmOanMy1HnEyr7XoSOGXJK8VrdRWTtvS', 'passer', NULL, NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-06 13:33:43', '2022-12-06 13:33:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, 'Marie GAYE', 'mariegaye', NULL, NULL, NULL, 'Al Mansheya', NULL, 'marie.gaye.2019@alumni-usenghor.org', '$2a$08$oetHSzYd28TyA6qtpohJvu.VQWNmgC49wm1.75G3DNdogcU5bnj0a', '02ussd2902', NULL, '01003672011', 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-06 14:09:14', '2022-12-06 14:09:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, 'HANTO Pharès Ebénézer Sourou', 'sourou', '2002-03-25', 'Cotonou', NULL, 'Mariste', 'gla Cotonou', 'pharese@icloud.com', '$2a$08$GQee1ArEMhwnZjV5AoxH9u8rzZaCI54.tqatkkYAWRtL.pz5/hyK6', '032002', NULL, NULL, 'activated', 'HANTO Franck', 'Commercant', '+22997074276', 'agla ', 'Tanadaho Séverine Saurelle', 'Caissière', '+22997183628', 'agla', 'AZANDOSSESSI 77 814 42 02', '201790489', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-12 12:52:29', '2023-02-12 19:44:21', 'Masculin', '2022212', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, 'DIALLO Aïssatou', 'aicha', '2001-11-03', 'Dakar', NULL, 'Keur Massar', NULL, 'dadprincessse@gmail.com', '$2a$08$/d9DG/qSxkuw8Hj/lh4Sa.pCciFcOC4MhH0e9zBIaIi1JfhpM0zBu', '112001', '765673151/776851300', NULL, 'activated', 'Mamadou Saidou DIALLO', 'Agent SENELEC', '77 6406298', 'kEUR mASSAR', 'Kadé BOYE', 'Ménagère', '776851300', 'kEUR mASSAR', 'aïssatou AIDARA  776671054', '287020012182', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-13 13:13:23', '2022-12-13 13:48:55', 'Feminin', NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, 'TAHIR Oumar Salim', 'oumar', '2003-01-27', 'Bahaï', NULL, 'Fass', 'Klemat', 'salimtahiroumar@gmail.com', '$2a$08$lNhQydKQ0U86Vvva96a.vej5FRQz3Ln8YQagRe7Opx9quZqECJMLi', '012003', '772788705', NULL, 'activated', 'Oumar Salim', 'Commerçant', '+23566270068', 'Abéché', 'ïcha DJAROUA', 'Ménagère', '+23560292101', 'Abéché', 'Mouhamed YAYA 778845437', '9234274968', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-16 11:16:28', '2022-12-16 11:16:28', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(358, 'KAFUNDA MUBI-MUNDA WA KANTOLE Denis Samuel Juniororor', 'junior', '2005-11-16', 'Daoula', NULL, 'Médina', 'Rue Toyota bonapriso Doyala', 'skafunda2@gmail.com', '$2a$08$cTiQis6x5v8CbX4KSJ/U9.q6zPWzsXfOEOMQOOAfx7C/BkU0K6LQy', '112005', '770667030', NULL, 'activated', 'KAFUNDA MUBI-MUNDA KANTOLE Denis Samuel ', 'Médecin', '+2337699980883', 'Rue Toyota bonapriso Doyala', 'Arlette  Danielle', 'GESTIONNAIRE HOSPITALIARE', '+237698901918', 'Rue Toyota bonapriso Doyala', 'MOUHAMADOU mboup  77 5639376', '0939299', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-16 11:46:24', '2022-12-22 21:57:34', 'Masculin', '2022M1216', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, 'MOUSSAVOU MBOUROU DIAWARA Elzy Cleeford', 'elzy', '1999-07-27', 'Libreville', NULL, 'Mbop', 'Gabon', 'elzymoussavoumourou@gmail.com', '$2a$08$NGiCoyxceU/OGsvCBdLd7.lsX7hjZmjFFPwW3OPI.KUmL67YnJ6.a', '907199', NULL, NULL, 'activated', 'MANDA MAX Kevin', 'Producteur de pétrole', '077294626', 'Moto Cross', 'MASTANGA DISSY Emelyne Eps', 'Secrétaire de direction', '077424887', 'Moto Cross', 'OUBALA KOUMBA Edweera 784328968', '20GA22625', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-19 11:52:13', '2023-01-03 09:24:20', 'Feminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, 'ABHI Alrys Tiphaine', 'alima', '1997-06-05', 'Libreville', 'Gabonaise', 'Mermoz', 'SNI Owendo', 'alrystiphoine@gmail.com', '$2a$08$CfKzAUoszLASZuv98PtWreTUamAi1Lvr1UVbcCnQtgrbhtUpiWtfq', '5555', '770974479', NULL, 'activated', 'BIBALOI ange', 'agent de l\'Etat', NULL, 'Angondje', 'MOUGUIAMA Nicole Zella', 'Secrétaire', '+241174199020', 'SNI Owendo', 'MAGANGA Passy 78 102 90 15', '16GB32548', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-20 13:23:16', '2022-12-20 13:23:16', 'Feminin', NULL, 'no-primo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(361, 'AVEME MBEMBOU  Dan Ckarlly', 'dan ckarlly', '1995-10-23', 'Port -Gentil', NULL, 'Liberté 6', 'Côte d\'Azure', 'avedan95@gmail.com', '$2a$08$gl1bzvWR3TvddHSMOGfj7.Kq1W9MZRKEA1foKPjX7IuCl9u1qbu4.', '995', '773729416', NULL, 'activated', 'MBEMBOU Bruno', 'Opérateur en production ', '+241077852782', 'Côte d\'Azure', 'Béatrice BISSOUE', 'Infirmière', '+241077457750', 'Côte d\'Azure', 'Tsangou mbembou France Brunelle 77 0916439', '20GA01201', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-22 15:04:36', '2022-12-22 15:04:36', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(362, 'NDJOUNINGA OLOGUI Reecca Carmina', 'carmina', '1997-09-09', 'Aboumi', 'Gabonais', 'Sacré Coeur 3', 'Nzengayong', 'rebeccacarmina4@gmail.com', '$2a$08$6jnNz89kY0h4wEyKzl7SLuGkpr4AuTtOVAj0BnXBQ1nfvhonP0A2m', '091997', '775064544', NULL, 'activated', 'MIKIELA Ulrich', 'Géomètre', '+24166246480', 'NZENG-AYONG', 'OMBOUMODIGA Annette', 'Géomètre', '+24165931706', 'NZENG-AYONG', 'MBAMA LAVHY Gwaldys', '22PP08676', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-23 15:15:57', '2022-12-23 15:15:57', 'Feminin', NULL, 'primo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, 'Theureau Martial', 'Martial', '2003-08-13', 'Libreville ', 'Gabonais', 'Derkle', 'Gabon', 'martialtheureau@gmail.com', '$2a$08$aAd55QiUxeh6D3Ecl74EwumLabZ1Byeurl2wCSqdWQt8b/GmRGJ1S', 'Martial30', '776939338', NULL, 'activated', 'Theureau Jean Christophe', 'Coordinateur du commerce international ', NULL, 'Paris, France', 'Ndouvue Martine', 'Inspecteur central des impôts ', '+24162165130', 'Libreville, Gabon', 'Nzie Daniel', '22PP06908', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-12 13:20:09', '2023-01-12 13:20:09', 'Masculin', NULL, 'primo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, 'NOTOUOM TALA Hermand', 'hermand', '2002-04-14', 'Bandjoun', NULL, 'Fass', 'Cameroun', 'hermandnotouom@gmail.com', '$2a$08$X2k/wGVK3VBbpwWoYt6Q8uPW12JwqpwhAHZQcZBlSh34tBFrZv4u.', 'unotouom14', '767330350', NULL, 'activated', 'TALA Tague Raphael', 'Entrepreneur', '+237670196190', 'Bafoussam', 'Kegne Julienne', 'Ménagère', '+237694543159', 'Bafoussam', 'Abo Kella Junior 777589659', 'AA125158', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-13 11:00:17', '2023-01-13 11:00:17', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` (`id`, `nom`, `username`, `date_naissance`, `lieu_naissance`, `nationalite`, `adresse_senegal`, `adresse_pays_origine`, `email`, `password`, `confirm_password`, `tel_mobile`, `tel_fixe`, `etat`, `Nom_pere`, `Profession_pere`, `Telephone_pere`, `Adresse_pere`, `Nom_mere`, `Profession_mere`, `Telephone_mere`, `Adresse_mere`, `Personne_contact`, `Cin`, `Etablissement_origine`, `Type_contrat`, `Date_recrutement`, `Specialite`, `volume_horaire`, `unite_enseignement`, `createdAt`, `updatedAt`, `sexe`, `Matricule`, `primo`, `diplome`, `fonction`, `grade`, `parentId`, `categorie`, `age`, `elementId`, `filiere`, `level`, `niveau_etude`, `ec`) VALUES
(366, 'M\'FOUO Larry Khan Ruben', 'larry', '2003-05-30', 'Francevillle', NULL, 'Ouakam', 'Angondjé', 'larrymfouo@gmail.com', '$2a$08$WEI.jgwWgJDZyefgrcGQ2efuTSAauhUTcaDrRMRLl1sc.PGuVu6eW', 'khan5', '778822564', NULL, 'activated', 'MFOUO Francellin Dimitri', NULL, '+24166276697', 'Angondjé', 'Moupko Tatiana Doris', 'Institutrice', '+24166672153', 'Angondjé', 'Ossinba LEKIA 774389698', '22PP04488', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-13 13:07:45', '2023-01-13 13:07:45', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, 'FENIAN ANAYO OBASI Fortune Chikadibia', 'itzmacfort', '2004-05-27', 'Libreville', NULL, 'Béne Tally', 'Avéa', 'etheldaobasi97@gmail.com', '$2a$08$JtP4aEyJpxN5lY.5KiGBOuubZpXxiegolEEkFu7kEzmmsUAHzDdf.', 'chikabac2022', NULL, NULL, 'activated', 'FENIAN Anayo OBASI ', 'Homme d\'Affaire', '+24177945478', 'Avéa', 'ETHELDA Oasi', 'Enseignante', '+2417646962', 'Avéa', 'Ondia olendhe 77 251 45 68', 'O1537950', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-19 14:55:22', '2023-01-19 14:55:22', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, 'FENIAN ANAYO OBASI Fortune Chikadibia', 'itzmacfort', '2004-05-27', 'Libreville', NULL, 'Béne Tally', 'Avéa', 'etheldaobasi97@gmail.com', '$2a$08$WjKxJZn8NreHfv1ym.55H.C86AP/tY/kmoAq.hvBNJJG/1XDucP/m', 'chikabac2022', NULL, NULL, 'activated', 'FENIAN Anayo OBASI ', 'Homme d\'Affaire', '+24177945478', 'Avéa', 'ETHELDA Oasi', 'Enseignante', '+24176462962', 'Avéa', 'Ondia olendhe 77 251 45 68', 'O1537950', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-19 14:55:22', '2023-01-19 14:55:22', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, 'FENIAN ANAYO OBASI Fortune Chikadibia', 'itzmacfort', '2004-05-27', 'Libreville', NULL, 'Béne Tally', 'Avéa', 'etheldaobasi97@gmail.com', '$2a$08$UR3Hn3ngw6pox70Z8Yf6seRx4crf9tRX18nWeaJfkQ5jJtUt/6ZuO', 'chikabac2022', NULL, NULL, 'activated', 'FENIAN Anayo OBASI ', 'Homme d\'Affaire', '+24177945478', 'Avéa', 'ETHELDA Oasi', 'Enseignante', '+24176462962', 'Avéa', 'Ondia olendhe 77 251 45 68', 'O1537950', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-19 14:55:22', '2023-01-19 14:55:22', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, 'Oumar', 'Ndir', '1950-11-30', 'Dakar', 'Sénégalais', 'Cité Comico Ouakam', 'Cité Comico Ouakam', 'oumar.ndir@universitesciencesante.com', '$2a$08$BwBkA9CQcM0sVcMMosixteff1koCHbDXKigecsCD9MmuElNmBNN4q', 'Oumar1950', '0775697010', NULL, 'activated', 'Babacar NDIR', 'Magistrat', '07 75 69 70 10', 'Cité Comico Ouakam', 'Fatou Ndiaye', 'Ménagère', '07 75 69 70 10', 'Cité Comico Ouakam', 'Babacar NDIR', '175119996745', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-27 11:28:40', '2023-02-27 11:28:40', 'Masculin', NULL, 'no-primo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, 'ASSOUMOU  SERENA PAULA ', 'aserenapaula', '2003-05-30', 'Libreville ', 'Gabonais', 'Liberté 6 extension ', NULL, 'aserenapaola@gmail.com', '$2a$08$.fVMik065soVlHHoX9/V8O4vk7MEHix/WUpSlW4HoiueSAuu4ELXG', 'Jordan@30', '+221772059082', NULL, 'activated', 'ASSOUMOU ESSONO PAUL', 'Douanier ', '+24177535075', 'Plaine orety', 'Françoise de Paule DISSOUVA', 'Ingénieur en informatique ', '+24166953507', 'Pk11', 'Mère ', 'Passeport ', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-27 15:12:04', '2023-02-27 15:12:04', 'Feminin', NULL, 'primo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, 'François Malick DIOUF', 'malickdiouf', NULL, NULL, 'Sénégalais', 'Dakar, Sénégal', NULL, 'francoismalick.diouf@ucad.edu.sn', '$2a$08$wKfHnEZVMBW2uIkcghSpW.VmkGlrvhbi7vl2bbH.ltkHO2CCZN8jK', 'passer123', ' 776579110', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, ' Recherche documentaire', NULL, 'Recherche documentaire', '2023-03-02 15:58:46', '2023-03-02 15:58:46', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, 'Seydi Abdoul BA', 'sabdoul', NULL, NULL, 'Sénégalais', NULL, NULL, 'banourrou@gmail.com', '$2a$08$5mhpXp49R8tSR2.nTHF9zOO76.fU9.zLN6NHCAC7/kvgzPCSqHy6C', 'PASSER123', '706483984', NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Génétique', NULL, 'Génétique', '2023-03-02 16:00:30', '2023-03-02 16:00:30', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(374, 'El Hadj DIEYE 775020570,', 'eldieye', NULL, NULL, 'Sénégalais', 'Dakar, Sénégal', NULL, 'elhadji.dieye@ucad.edu.sn', '$2a$08$PncomddoTMDewJv6vQza8OdApZoZqx258ao.SmkzKDWiUTXe8OK7C', 'PASSER123', NULL, NULL, 'activated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vacataire', NULL, 'Wolof', NULL, 'Wolof', '2023-03-02 16:02:43', '2023-03-02 16:02:43', 'Masculin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int NOT NULL,
  `userId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('2022-02-23 20:59:48', '2022-02-23 20:59:48', 1, 1),
('2022-02-24 11:41:15', '2022-02-24 11:41:15', 1, 3),
('2022-02-24 11:47:59', '2022-02-24 11:47:59', 1, 4),
('2022-02-24 11:51:48', '2022-02-24 11:51:48', 1, 5),
('2022-04-14 14:01:15', '2022-04-14 14:01:15', 1, 13),
('2022-04-14 14:15:22', '2022-04-14 14:15:22', 1, 14),
('2022-06-08 10:02:23', '2022-06-08 10:02:23', 1, 58),
('2022-06-17 14:53:11', '2022-06-17 14:53:11', 1, 94),
('2022-06-30 14:59:30', '2022-06-30 14:59:30', 1, 146),
('2022-12-06 13:33:43', '2022-12-06 13:33:43', 1, 353),
('2022-12-06 14:09:14', '2022-12-06 14:09:14', 1, 354),
('2022-06-30 13:21:03', '2022-06-30 13:21:03', 2, 100),
('2022-06-30 13:23:00', '2022-06-30 13:23:00', 2, 101),
('2022-06-30 13:25:21', '2022-06-30 13:25:21', 2, 102),
('2022-06-30 13:26:51', '2022-06-30 13:26:51', 2, 103),
('2022-06-30 13:28:22', '2022-06-30 13:28:22', 2, 104),
('2022-06-30 13:29:31', '2022-06-30 13:29:31', 2, 105),
('2022-06-30 13:30:46', '2022-06-30 13:30:46', 2, 106),
('2022-06-30 13:32:45', '2022-06-30 13:32:45', 2, 107),
('2022-06-30 13:34:19', '2022-06-30 13:34:19', 2, 108),
('2022-06-30 13:35:16', '2022-06-30 13:35:16', 2, 109),
('2022-06-30 13:36:33', '2022-06-30 13:36:33', 2, 110),
('2022-06-30 13:37:40', '2022-06-30 13:37:40', 2, 111),
('2022-06-30 13:38:48', '2022-06-30 13:38:48', 2, 112),
('2022-06-30 13:40:42', '2022-06-30 13:40:42', 2, 113),
('2022-06-30 13:42:36', '2022-06-30 13:42:36', 2, 114),
('2022-06-30 13:44:17', '2022-06-30 13:44:17', 2, 115),
('2022-06-30 14:07:50', '2022-06-30 14:07:50', 2, 116),
('2022-06-30 14:09:11', '2022-06-30 14:09:11', 2, 117),
('2022-06-30 14:10:29', '2022-06-30 14:10:29', 2, 118),
('2022-06-30 14:11:41', '2022-06-30 14:11:41', 2, 119),
('2022-06-30 14:12:54', '2022-06-30 14:12:54', 2, 120),
('2022-06-30 14:14:05', '2022-06-30 14:14:05', 2, 121),
('2022-06-30 14:15:09', '2022-06-30 14:15:09', 2, 122),
('2022-06-30 14:16:10', '2022-06-30 14:16:10', 2, 123),
('2022-06-30 14:17:26', '2022-06-30 14:17:26', 2, 124),
('2022-06-30 14:18:59', '2022-06-30 14:18:59', 2, 125),
('2022-06-30 14:20:41', '2022-06-30 14:20:41', 2, 126),
('2022-06-30 14:22:37', '2022-06-30 14:22:37', 2, 127),
('2022-06-30 14:23:53', '2022-06-30 14:23:53', 2, 128),
('2022-06-30 14:25:27', '2022-06-30 14:25:27', 2, 129),
('2022-06-30 14:27:10', '2022-06-30 14:27:10', 2, 130),
('2022-06-30 14:31:40', '2022-06-30 14:31:40', 2, 131),
('2022-06-30 14:32:51', '2022-06-30 14:32:51', 2, 132),
('2022-06-30 14:34:20', '2022-06-30 14:34:20', 2, 133),
('2022-06-30 14:35:21', '2022-06-30 14:35:21', 2, 134),
('2022-06-30 14:37:49', '2022-06-30 14:37:49', 2, 135),
('2022-06-30 14:39:46', '2022-06-30 14:39:46', 2, 136),
('2022-06-30 14:40:50', '2022-06-30 14:40:50', 2, 137),
('2022-06-30 14:44:16', '2022-06-30 14:44:16', 2, 138),
('2022-06-30 14:45:32', '2022-06-30 14:45:32', 2, 139),
('2022-06-30 14:47:00', '2022-06-30 14:47:00', 2, 140),
('2022-06-30 14:48:07', '2022-06-30 14:48:07', 2, 141),
('2022-06-30 14:49:23', '2022-06-30 14:49:23', 2, 142),
('2022-06-30 14:51:33', '2022-06-30 14:51:33', 2, 143),
('2022-06-30 14:52:23', '2022-06-30 14:52:23', 2, 144),
('2022-06-30 14:58:14', '2022-06-30 14:58:14', 2, 145),
('2022-06-30 15:00:54', '2022-06-30 15:00:54', 2, 147),
('2022-06-30 15:02:14', '2022-06-30 15:02:14', 2, 148),
('2022-06-30 15:03:31', '2022-06-30 15:03:31', 2, 149),
('2022-06-30 15:04:39', '2022-06-30 15:04:39', 2, 150),
('2022-06-30 15:05:56', '2022-06-30 15:05:56', 2, 151),
('2022-06-30 15:07:04', '2022-06-30 15:07:04', 2, 152),
('2022-06-30 15:12:52', '2022-06-30 15:12:52', 2, 153),
('2022-06-30 15:14:56', '2022-06-30 15:14:56', 2, 154),
('2022-06-30 15:16:20', '2022-06-30 15:16:20', 2, 155),
('2022-06-30 15:17:57', '2022-06-30 15:17:57', 2, 156),
('2022-06-30 15:19:29', '2022-06-30 15:19:29', 2, 157),
('2022-06-30 15:24:19', '2022-06-30 15:24:19', 2, 158),
('2022-06-30 15:25:44', '2022-06-30 15:25:44', 2, 159),
('2022-06-30 15:26:48', '2022-06-30 15:26:48', 2, 160),
('2022-06-30 15:29:37', '2022-06-30 15:29:37', 2, 161),
('2022-06-30 15:31:56', '2022-06-30 15:31:56', 2, 162),
('2022-06-30 15:33:08', '2022-06-30 15:33:08', 2, 163),
('2022-06-30 15:34:07', '2022-06-30 15:34:07', 2, 164),
('2022-06-30 15:35:19', '2022-06-30 15:35:19', 2, 165),
('2022-06-30 15:38:29', '2022-06-30 15:38:29', 2, 166),
('2022-06-30 15:39:38', '2022-06-30 15:39:38', 2, 167),
('2022-06-30 15:42:57', '2022-06-30 15:42:57', 2, 168),
('2022-06-30 15:44:29', '2022-06-30 15:44:29', 2, 169),
('2022-06-30 15:45:47', '2022-06-30 15:45:47', 2, 170),
('2022-06-30 15:46:43', '2022-06-30 15:46:43', 2, 171),
('2022-06-30 15:47:42', '2022-06-30 15:47:42', 2, 172),
('2023-03-02 15:58:46', '2023-03-02 15:58:46', 2, 372),
('2023-03-02 16:00:30', '2023-03-02 16:00:30', 2, 373),
('2023-03-02 16:02:43', '2023-03-02 16:02:43', 2, 374),
('2022-02-24 13:54:44', '2022-02-24 13:54:44', 3, 6),
('2022-02-24 17:29:03', '2022-02-24 17:29:03', 3, 7),
('2022-02-27 20:47:39', '2022-02-27 20:47:39', 3, 8),
('2022-02-28 12:11:11', '2022-02-28 12:11:11', 3, 10),
('2022-03-04 11:55:51', '2022-03-04 11:55:51', 3, 11),
('2022-05-04 17:16:07', '2022-05-04 17:16:07', 3, 17),
('2022-05-04 17:55:58', '2022-05-04 17:55:58', 3, 18),
('2022-05-04 18:06:41', '2022-05-04 18:06:41', 3, 19),
('2022-05-04 18:13:14', '2022-05-04 18:13:14', 3, 20),
('2022-05-04 19:04:37', '2022-05-04 19:04:37', 3, 21),
('2022-05-04 19:38:59', '2022-05-04 19:38:59', 3, 22),
('2022-05-04 22:24:18', '2022-05-04 22:24:18', 3, 23),
('2022-05-04 23:07:20', '2022-05-04 23:07:20', 3, 24),
('2022-05-05 14:47:47', '2022-05-05 14:47:47', 3, 25),
('2022-05-05 14:57:41', '2022-05-05 14:57:41', 3, 26),
('2022-05-05 15:06:00', '2022-05-05 15:06:00', 3, 27),
('2022-05-05 15:49:12', '2022-05-05 15:49:12', 3, 28),
('2022-05-05 19:49:04', '2022-05-05 19:49:04', 3, 29),
('2022-05-06 13:06:19', '2022-05-06 13:06:19', 3, 30),
('2022-05-09 13:26:17', '2022-05-09 13:26:17', 3, 31),
('2022-05-09 13:34:08', '2022-05-09 13:34:08', 3, 32),
('2022-05-09 13:42:32', '2022-05-09 13:42:32', 3, 33),
('2022-05-09 13:47:28', '2022-05-09 13:47:28', 3, 34),
('2022-05-09 13:56:26', '2022-05-09 13:56:26', 3, 35),
('2022-05-10 13:08:16', '2022-05-10 13:08:16', 3, 36),
('2022-05-10 13:10:38', '2022-05-10 13:10:38', 3, 37),
('2022-05-10 13:58:32', '2022-05-10 13:58:32', 3, 38),
('2022-05-10 15:48:25', '2022-05-10 15:48:25', 3, 39),
('2022-05-10 16:04:45', '2022-05-10 16:04:45', 3, 40),
('2022-06-07 14:28:26', '2022-06-07 14:28:26', 3, 42),
('2022-06-07 15:29:06', '2022-06-07 15:29:06', 3, 43),
('2022-06-07 15:35:22', '2022-06-07 15:35:22', 3, 44),
('2022-06-07 15:40:42', '2022-06-07 15:40:42', 3, 45),
('2022-06-07 15:41:45', '2022-06-07 15:41:45', 3, 46),
('2022-06-07 15:43:28', '2022-06-07 15:43:28', 3, 47),
('2022-06-07 15:44:48', '2022-06-07 15:44:48', 3, 48),
('2022-06-07 15:45:28', '2022-06-07 15:45:28', 3, 49),
('2022-06-07 15:52:40', '2022-06-07 15:52:40', 3, 50),
('2022-06-07 16:38:03', '2022-06-07 16:38:03', 3, 51),
('2022-06-07 17:51:45', '2022-06-07 17:51:45', 3, 52),
('2022-06-07 18:49:36', '2022-06-07 18:49:36', 3, 53),
('2022-06-07 20:32:30', '2022-06-07 20:32:30', 3, 54),
('2022-06-07 20:37:02', '2022-06-07 20:37:02', 3, 55),
('2022-06-07 23:39:14', '2022-06-07 23:39:14', 3, 56),
('2022-06-08 01:21:43', '2022-06-08 01:21:43', 3, 57),
('2022-06-08 10:35:22', '2022-06-08 10:35:22', 3, 59),
('2022-06-08 11:39:33', '2022-06-08 11:39:33', 3, 60),
('2022-06-08 18:48:12', '2022-06-08 18:48:12', 3, 61),
('2022-06-11 22:31:24', '2022-06-11 22:31:24', 3, 66),
('2022-06-13 14:46:22', '2022-06-13 14:46:22', 3, 67),
('2022-06-13 14:49:38', '2022-06-13 14:49:38', 3, 68),
('2022-06-13 15:02:42', '2022-06-13 15:02:42', 3, 69),
('2022-06-13 15:13:26', '2022-06-13 15:13:26', 3, 70),
('2022-06-13 15:14:02', '2022-06-13 15:14:02', 3, 71),
('2022-06-13 15:14:11', '2022-06-13 15:14:11', 3, 72),
('2022-06-13 15:16:22', '2022-06-13 15:16:22', 3, 75),
('2022-06-13 15:17:42', '2022-06-13 15:17:42', 3, 76),
('2022-06-13 15:18:21', '2022-06-13 15:18:21', 3, 77),
('2022-06-13 15:19:12', '2022-06-13 15:19:12', 3, 78),
('2022-06-13 15:20:29', '2022-06-13 15:20:29', 3, 79),
('2022-06-13 15:21:32', '2022-06-13 15:21:32', 3, 80),
('2022-06-13 15:24:10', '2022-06-13 15:24:10', 3, 81),
('2022-06-13 15:28:22', '2022-06-13 15:28:22', 3, 82),
('2022-06-13 15:32:54', '2022-06-13 15:32:54', 3, 83),
('2022-06-13 15:40:11', '2022-06-13 15:40:11', 3, 84),
('2022-06-13 15:49:06', '2022-06-13 15:49:06', 3, 85),
('2022-06-13 17:35:14', '2022-06-13 17:35:14', 3, 86),
('2022-06-15 18:19:13', '2022-06-15 18:19:13', 3, 87),
('2022-06-16 00:52:30', '2022-06-16 00:52:30', 3, 88),
('2022-06-16 11:40:47', '2022-06-16 11:40:47', 3, 89),
('2022-06-16 14:50:26', '2022-06-16 14:50:26', 3, 90),
('2022-06-16 21:54:11', '2022-06-16 21:54:11', 3, 91),
('2022-06-17 13:41:05', '2022-06-17 13:41:05', 3, 93),
('2022-06-18 08:46:32', '2022-06-18 08:46:32', 3, 95),
('2022-06-20 10:19:35', '2022-06-20 10:19:35', 3, 96),
('2022-06-21 22:59:04', '2022-06-21 22:59:04', 3, 97),
('2022-06-26 19:42:01', '2022-06-26 19:42:01', 3, 98),
('2022-06-27 20:06:17', '2022-06-27 20:06:17', 3, 99),
('2022-07-02 21:13:55', '2022-07-02 21:13:55', 3, 173),
('2022-07-13 20:50:31', '2022-07-13 20:50:31', 3, 174),
('2022-07-17 21:33:37', '2022-07-17 21:33:37', 3, 175),
('2022-07-18 14:09:36', '2022-07-18 14:09:36', 3, 176),
('2022-07-18 14:34:18', '2022-07-18 14:34:18', 3, 177),
('2022-07-22 11:05:31', '2022-07-22 11:05:31', 3, 178),
('2022-07-24 08:55:38', '2022-07-24 08:55:38', 3, 179),
('2022-08-03 13:50:08', '2022-08-03 13:50:08', 3, 180),
('2022-08-08 11:29:46', '2022-08-08 11:29:46', 3, 181),
('2022-08-09 11:12:56', '2022-08-09 11:12:56', 3, 182),
('2022-08-09 11:14:31', '2022-08-09 11:14:31', 3, 183),
('2022-08-09 11:22:14', '2022-08-09 11:22:14', 3, 184),
('2022-08-09 11:32:56', '2022-08-09 11:32:56', 3, 185),
('2022-08-09 11:33:09', '2022-08-09 11:33:09', 3, 186),
('2022-08-09 12:03:10', '2022-08-09 12:03:10', 3, 187),
('2022-08-09 14:43:00', '2022-08-09 14:43:00', 3, 188),
('2022-08-09 16:25:03', '2022-08-09 16:25:03', 3, 189),
('2022-08-09 17:25:40', '2022-08-09 17:25:40', 3, 190),
('2022-08-10 01:50:47', '2022-08-10 01:50:47', 3, 191),
('2022-08-10 09:31:32', '2022-08-10 09:31:32', 3, 192),
('2022-08-13 10:13:19', '2022-08-13 10:13:19', 3, 193),
('2022-08-14 01:19:20', '2022-08-14 01:19:20', 3, 194),
('2022-08-14 21:49:24', '2022-08-14 21:49:24', 3, 195),
('2022-08-16 20:10:01', '2022-08-16 20:10:01', 3, 196),
('2022-08-18 19:57:01', '2022-08-18 19:57:01', 3, 197),
('2022-08-19 06:55:18', '2022-08-19 06:55:18', 3, 198),
('2022-08-24 15:17:44', '2022-08-24 15:17:44', 3, 199),
('2022-08-31 14:17:17', '2022-08-31 14:17:17', 3, 200),
('2022-09-01 10:39:46', '2022-09-01 10:39:46', 3, 201),
('2022-09-13 07:55:09', '2022-09-13 07:55:09', 3, 202),
('2022-09-13 14:01:27', '2022-09-13 14:01:27', 3, 203),
('2022-09-14 09:07:30', '2022-09-14 09:07:30', 3, 204),
('2022-09-14 10:57:42', '2022-09-14 10:57:42', 3, 205),
('2022-09-14 15:21:08', '2022-09-14 15:21:08', 3, 206),
('2022-09-16 09:59:27', '2022-09-16 09:59:27', 3, 207),
('2022-09-18 14:22:23', '2022-09-18 14:22:23', 3, 208),
('2022-09-19 12:20:55', '2022-09-19 12:20:55', 3, 209),
('2022-09-21 12:19:29', '2022-09-21 12:19:29', 3, 210),
('2022-09-22 13:28:01', '2022-09-22 13:28:01', 3, 211),
('2022-09-23 10:49:08', '2022-09-23 10:49:08', 3, 212),
('2022-09-23 11:15:37', '2022-09-23 11:15:37', 3, 213),
('2022-09-23 11:33:52', '2022-09-23 11:33:52', 3, 214),
('2022-09-26 12:33:22', '2022-09-26 12:33:22', 3, 215),
('2022-09-26 13:06:34', '2022-09-26 13:06:34', 3, 216),
('2022-09-26 15:52:29', '2022-09-26 15:52:29', 3, 217),
('2022-09-26 16:07:17', '2022-09-26 16:07:17', 3, 218),
('2022-09-27 10:55:05', '2022-09-27 10:55:05', 3, 219),
('2022-09-27 14:54:36', '2022-09-27 14:54:36', 3, 220),
('2022-10-04 15:39:33', '2022-10-04 15:39:33', 3, 221),
('2022-10-05 10:29:27', '2022-10-05 10:29:27', 3, 222),
('2022-10-05 10:47:44', '2022-10-05 10:47:44', 3, 223),
('2022-10-05 10:57:37', '2022-10-05 10:57:37', 3, 224),
('2022-10-05 14:29:03', '2022-10-05 14:29:03', 3, 225),
('2022-10-05 15:19:25', '2022-10-05 15:19:25', 3, 226),
('2022-10-05 15:19:25', '2022-10-05 15:19:25', 3, 227),
('2022-10-05 15:38:10', '2022-10-05 15:38:10', 3, 228),
('2022-10-06 11:05:52', '2022-10-06 11:05:52', 3, 229),
('2022-10-06 11:56:05', '2022-10-06 11:56:05', 3, 230),
('2022-10-06 12:37:08', '2022-10-06 12:37:08', 3, 231),
('2022-10-06 13:46:34', '2022-10-06 13:46:34', 3, 232),
('2022-10-11 09:17:20', '2022-10-11 09:17:20', 3, 233),
('2022-10-11 13:45:48', '2022-10-11 13:45:48', 3, 234),
('2022-10-11 14:03:53', '2022-10-11 14:03:53', 3, 235),
('2022-10-11 14:26:28', '2022-10-11 14:26:28', 3, 236),
('2022-10-11 15:38:44', '2022-10-11 15:38:44', 3, 237),
('2022-10-11 16:20:00', '2022-10-11 16:20:00', 3, 238),
('2022-10-12 10:02:30', '2022-10-12 10:02:30', 3, 239),
('2022-10-12 10:35:36', '2022-10-12 10:35:36', 3, 240),
('2022-10-12 11:14:41', '2022-10-12 11:14:41', 3, 241),
('2022-10-12 13:36:47', '2022-10-12 13:36:47', 3, 242),
('2022-10-13 10:15:35', '2022-10-13 10:15:35', 3, 243),
('2022-10-13 10:28:59', '2022-10-13 10:28:59', 3, 244),
('2022-10-13 11:07:49', '2022-10-13 11:07:49', 3, 245),
('2022-10-13 11:28:30', '2022-10-13 11:28:30', 3, 246),
('2022-10-13 11:41:36', '2022-10-13 11:41:36', 3, 247),
('2022-10-13 12:03:32', '2022-10-13 12:03:32', 3, 248),
('2022-10-13 12:38:39', '2022-10-13 12:38:39', 3, 249),
('2022-10-13 13:48:29', '2022-10-13 13:48:29', 3, 250),
('2022-10-13 15:46:14', '2022-10-13 15:46:14', 3, 251),
('2022-10-13 16:14:59', '2022-10-13 16:14:59', 3, 252),
('2022-10-14 10:48:35', '2022-10-14 10:48:35', 3, 253),
('2022-10-14 11:09:38', '2022-10-14 11:09:38', 3, 254),
('2022-10-14 12:02:26', '2022-10-14 12:02:26', 3, 255),
('2022-10-14 12:37:17', '2022-10-14 12:37:17', 3, 256),
('2022-10-14 13:53:44', '2022-10-14 13:53:44', 3, 257),
('2022-10-14 15:34:14', '2022-10-14 15:34:14', 3, 258),
('2022-10-17 15:19:49', '2022-10-17 15:19:49', 3, 259),
('2022-10-17 15:31:31', '2022-10-17 15:31:31', 3, 260),
('2022-10-17 16:51:55', '2022-10-17 16:51:55', 3, 261),
('2022-10-17 17:11:43', '2022-10-17 17:11:43', 3, 262),
('2022-10-18 11:33:34', '2022-10-18 11:33:34', 3, 263),
('2022-10-18 12:54:28', '2022-10-18 12:54:28', 3, 264),
('2022-10-18 14:02:32', '2022-10-18 14:02:32', 3, 265),
('2022-10-19 10:04:05', '2022-10-19 10:04:05', 3, 266),
('2022-10-19 10:31:31', '2022-10-19 10:31:31', 3, 267),
('2022-10-19 10:36:10', '2022-10-19 10:36:10', 3, 268),
('2022-10-19 10:56:19', '2022-10-19 10:56:19', 3, 269),
('2022-10-19 12:13:24', '2022-10-19 12:13:24', 3, 270),
('2022-10-19 14:23:25', '2022-10-19 14:23:25', 3, 271),
('2022-10-19 15:42:37', '2022-10-19 15:42:37', 3, 272),
('2022-10-19 16:07:22', '2022-10-19 16:07:22', 3, 273),
('2022-10-20 12:59:32', '2022-10-20 12:59:32', 3, 274),
('2022-10-20 12:59:32', '2022-10-20 12:59:32', 3, 275),
('2022-10-21 10:43:16', '2022-10-21 10:43:16', 3, 276),
('2022-10-24 08:54:07', '2022-10-24 08:54:07', 3, 277),
('2022-10-24 10:17:10', '2022-10-24 10:17:10', 3, 278),
('2022-10-24 10:49:58', '2022-10-24 10:49:58', 3, 279),
('2022-10-26 11:33:28', '2022-10-26 11:33:28', 3, 280),
('2022-10-26 12:05:09', '2022-10-26 12:05:09', 3, 281),
('2022-10-26 12:34:49', '2022-10-26 12:34:49', 3, 282),
('2022-10-26 14:10:03', '2022-10-26 14:10:03', 3, 283),
('2022-10-27 09:37:13', '2022-10-27 09:37:13', 3, 284),
('2022-10-27 10:56:24', '2022-10-27 10:56:24', 3, 285),
('2022-10-29 10:10:29', '2022-10-29 10:10:29', 3, 286),
('2022-10-31 11:57:44', '2022-10-31 11:57:44', 3, 287),
('2022-10-31 12:10:21', '2022-10-31 12:10:21', 3, 288),
('2022-10-31 12:13:19', '2022-10-31 12:13:19', 3, 289),
('2022-10-31 12:30:19', '2022-10-31 12:30:19', 3, 290),
('2022-10-31 12:46:48', '2022-10-31 12:46:48', 3, 291),
('2022-10-31 13:01:42', '2022-10-31 13:01:42', 3, 292),
('2022-10-31 13:12:19', '2022-10-31 13:12:19', 3, 293),
('2022-10-31 13:37:56', '2022-10-31 13:37:56', 3, 294),
('2022-10-31 15:12:58', '2022-10-31 15:12:58', 3, 295),
('2022-11-02 11:13:03', '2022-11-02 11:13:03', 3, 296),
('2022-11-02 11:13:03', '2022-11-02 11:13:03', 3, 297),
('2022-11-02 13:06:08', '2022-11-02 13:06:08', 3, 298),
('2022-11-03 16:16:19', '2022-11-03 16:16:19', 3, 299),
('2022-11-03 16:33:43', '2022-11-03 16:33:43', 3, 300),
('2022-11-03 17:36:14', '2022-11-03 17:36:14', 3, 301),
('2022-11-03 18:14:47', '2022-11-03 18:14:47', 3, 302),
('2022-11-03 18:22:53', '2022-11-03 18:22:53', 3, 303),
('2022-11-04 09:22:19', '2022-11-04 09:22:19', 3, 304),
('2022-11-07 08:37:30', '2022-11-07 08:37:30', 3, 305),
('2022-11-07 11:09:56', '2022-11-07 11:09:56', 3, 306),
('2022-11-07 12:35:42', '2022-11-07 12:35:42', 3, 307),
('2022-11-07 12:53:52', '2022-11-07 12:53:52', 3, 308),
('2022-11-07 14:34:21', '2022-11-07 14:34:21', 3, 309),
('2022-11-07 15:26:48', '2022-11-07 15:26:48', 3, 310),
('2022-11-08 09:32:21', '2022-11-08 09:32:21', 3, 311),
('2022-11-08 10:57:58', '2022-11-08 10:57:58', 3, 312),
('2022-11-08 12:48:58', '2022-11-08 12:48:58', 3, 313),
('2022-11-08 13:04:01', '2022-11-08 13:04:01', 3, 314),
('2022-11-08 13:58:31', '2022-11-08 13:58:31', 3, 315),
('2022-11-08 14:04:24', '2022-11-08 14:04:24', 3, 316),
('2022-11-08 14:26:53', '2022-11-08 14:26:53', 3, 317),
('2022-11-08 14:46:30', '2022-11-08 14:46:30', 3, 318),
('2022-11-08 16:41:20', '2022-11-08 16:41:20', 3, 319),
('2022-11-08 17:13:12', '2022-11-08 17:13:12', 3, 320),
('2022-11-09 10:18:31', '2022-11-09 10:18:31', 3, 321),
('2022-11-09 16:21:29', '2022-11-09 16:21:29', 3, 322),
('2022-11-11 11:52:28', '2022-11-11 11:52:28', 3, 323),
('2022-11-11 12:21:13', '2022-11-11 12:21:13', 3, 324),
('2022-11-11 12:51:28', '2022-11-11 12:51:28', 3, 325),
('2022-11-11 13:40:21', '2022-11-11 13:40:21', 3, 326),
('2022-11-11 13:54:08', '2022-11-11 13:54:08', 3, 327),
('2022-11-11 14:34:52', '2022-11-11 14:34:52', 3, 328),
('2022-11-11 15:03:40', '2022-11-11 15:03:40', 3, 329),
('2022-11-11 16:04:41', '2022-11-11 16:04:41', 3, 330),
('2022-11-11 16:47:53', '2022-11-11 16:47:53', 3, 331),
('2022-11-11 17:23:54', '2022-11-11 17:23:54', 3, 332),
('2022-11-15 10:00:17', '2022-11-15 10:00:17', 3, 333),
('2022-11-15 10:30:03', '2022-11-15 10:30:03', 3, 334),
('2022-11-15 10:46:26', '2022-11-15 10:46:26', 3, 335),
('2022-11-16 00:53:29', '2022-11-16 00:53:29', 3, 336),
('2022-11-16 10:06:22', '2022-11-16 10:06:22', 3, 337),
('2022-11-16 10:41:37', '2022-11-16 10:41:37', 3, 338),
('2022-11-16 10:54:06', '2022-11-16 10:54:06', 3, 339),
('2022-11-16 11:44:52', '2022-11-16 11:44:52', 3, 340),
('2022-11-16 11:44:52', '2022-11-16 11:44:52', 3, 341),
('2022-11-16 16:12:00', '2022-11-16 16:12:00', 3, 342),
('2022-11-17 01:07:00', '2022-11-17 01:07:00', 3, 343),
('2022-11-18 09:27:41', '2022-11-18 09:27:41', 3, 344),
('2022-11-21 11:50:06', '2022-11-21 11:50:06', 3, 345),
('2022-11-21 22:37:21', '2022-11-21 22:37:21', 3, 346),
('2022-11-23 13:31:21', '2022-11-23 13:31:21', 3, 347),
('2022-11-23 16:17:31', '2022-11-23 16:17:31', 3, 348),
('2022-11-24 13:43:00', '2022-11-24 13:43:00', 3, 349),
('2022-11-28 12:04:46', '2022-11-28 12:04:46', 3, 350),
('2022-11-28 13:21:22', '2022-11-28 13:21:22', 3, 351),
('2022-12-12 12:52:29', '2022-12-12 12:52:29', 3, 355),
('2022-12-13 13:13:23', '2022-12-13 13:13:23', 3, 356),
('2022-12-16 11:16:28', '2022-12-16 11:16:28', 3, 357),
('2022-12-16 11:46:24', '2022-12-16 11:46:24', 3, 358),
('2022-12-19 11:52:13', '2022-12-19 11:52:13', 3, 359),
('2022-12-20 13:23:16', '2022-12-20 13:23:16', 3, 360),
('2022-12-22 15:04:37', '2022-12-22 15:04:37', 3, 361),
('2022-12-23 15:15:58', '2022-12-23 15:15:58', 3, 362),
('2023-01-13 11:00:17', '2023-01-13 11:00:17', 3, 365),
('2023-01-13 13:07:45', '2023-01-13 13:07:45', 3, 366),
('2023-01-19 14:55:22', '2023-01-19 14:55:22', 3, 367),
('2023-01-19 14:55:22', '2023-01-19 14:55:22', 3, 368),
('2023-01-19 14:55:22', '2023-01-19 14:55:22', 3, 369),
('2023-02-27 11:28:40', '2023-02-27 11:28:40', 3, 370),
('2023-02-27 15:12:04', '2023-02-27 15:12:04', 3, 371);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `academies`
--
ALTER TABLE `academies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Index pour la table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `classprofId` (`classprofId`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `classprofs`
--
ALTER TABLE `classprofs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classprofId` (`classprofId`),
  ADD KEY `semestreId` (`semestreId`);

--
-- Index pour la table `departements`
--
ALTER TABLE `departements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Index pour la table `depenses`
--
ALTER TABLE `depenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Index pour la table `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matiereId` (`matiereId`);

--
-- Index pour la table `matieres`
--
ALTER TABLE `matieres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `semestreId` (`semestreId`);

--
-- Index pour la table `niveauxes`
--
ALTER TABLE `niveauxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Index pour la table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matiereId` (`matiereId`),
  ADD KEY `elementId` (`elementId`),
  ADD KEY `userId` (`userId`),
  ADD KEY `classprofId` (`classprofId`),
  ADD KEY `semestreId` (`semestreId`);

--
-- Index pour la table `notifiations`
--
ALTER TABLE `notifiations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Index pour la table `paiements`
--
ALTER TABLE `paiements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `admissionId` (`admissionId`);

--
-- Index pour la table `paiement_tarif`
--
ALTER TABLE `paiement_tarif`
  ADD PRIMARY KEY (`paiementId`,`tarificationId`),
  ADD KEY `tarificationId` (`tarificationId`);

--
-- Index pour la table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `parent_roles`
--
ALTER TABLE `parent_roles`
  ADD PRIMARY KEY (`roleId`,`parentId`),
  ADD KEY `parentId` (`parentId`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `schedulers`
--
ALTER TABLE `schedulers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classprofId` (`classprofId`),
  ADD KEY `matiereId` (`matiereId`);

--
-- Index pour la table `semestres`
--
ALTER TABLE `semestres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tarifications`
--
ALTER TABLE `tarifications`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `temps`
--
ALTER TABLE `temps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classprofId` (`classprofId`),
  ADD KEY `semestreId` (`semestreId`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentId` (`parentId`),
  ADD KEY `elementId` (`elementId`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `academies`
--
ALTER TABLE `academies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `admissions`
--
ALTER TABLE `admissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `classprofs`
--
ALTER TABLE `classprofs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `departements`
--
ALTER TABLE `departements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `depenses`
--
ALTER TABLE `depenses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `elements`
--
ALTER TABLE `elements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT pour la table `matieres`
--
ALTER TABLE `matieres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT pour la table `niveauxes`
--
ALTER TABLE `niveauxes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `notifiations`
--
ALTER TABLE `notifiations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `paiements`
--
ALTER TABLE `paiements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT pour la table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `schedulers`
--
ALTER TABLE `schedulers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `semestres`
--
ALTER TABLE `semestres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `tarifications`
--
ALTER TABLE `tarifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `temps`
--
ALTER TABLE `temps`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `academies`
--
ALTER TABLE `academies`
  ADD CONSTRAINT `academies_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `admissions`
--
ALTER TABLE `admissions`
  ADD CONSTRAINT `admissions_ibfk_845` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `admissions_ibfk_846` FOREIGN KEY (`classprofId`) REFERENCES `classprofs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `classprofs`
--
ALTER TABLE `classprofs`
  ADD CONSTRAINT `classprofs_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `cours_ibfk_457` FOREIGN KEY (`classprofId`) REFERENCES `classprofs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `cours_ibfk_458` FOREIGN KEY (`semestreId`) REFERENCES `semestres` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `departements`
--
ALTER TABLE `departements`
  ADD CONSTRAINT `departements_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `depenses`
--
ALTER TABLE `depenses`
  ADD CONSTRAINT `depenses_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `elements`
--
ALTER TABLE `elements`
  ADD CONSTRAINT `elements_ibfk_1` FOREIGN KEY (`matiereId`) REFERENCES `matieres` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `matieres`
--
ALTER TABLE `matieres`
  ADD CONSTRAINT `matieres_ibfk_1` FOREIGN KEY (`semestreId`) REFERENCES `semestres` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `niveauxes`
--
ALTER TABLE `niveauxes`
  ADD CONSTRAINT `niveauxes_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_ibfk_1860` FOREIGN KEY (`matiereId`) REFERENCES `matieres` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `notes_ibfk_1861` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `notes_ibfk_1862` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `notes_ibfk_1863` FOREIGN KEY (`classprofId`) REFERENCES `classprofs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `notes_ibfk_1864` FOREIGN KEY (`semestreId`) REFERENCES `semestres` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `notifiations`
--
ALTER TABLE `notifiations`
  ADD CONSTRAINT `notifiations_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `paiements`
--
ALTER TABLE `paiements`
  ADD CONSTRAINT `paiements_ibfk_845` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `paiements_ibfk_846` FOREIGN KEY (`admissionId`) REFERENCES `admissions` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `paiement_tarif`
--
ALTER TABLE `paiement_tarif`
  ADD CONSTRAINT `paiement_tarif_ibfk_1` FOREIGN KEY (`paiementId`) REFERENCES `paiements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `paiement_tarif_ibfk_2` FOREIGN KEY (`tarificationId`) REFERENCES `tarifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `parent_roles`
--
ALTER TABLE `parent_roles`
  ADD CONSTRAINT `parent_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `parent_roles_ibfk_2` FOREIGN KEY (`parentId`) REFERENCES `parents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `schedulers`
--
ALTER TABLE `schedulers`
  ADD CONSTRAINT `schedulers_ibfk_839` FOREIGN KEY (`classprofId`) REFERENCES `classprofs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `schedulers_ibfk_840` FOREIGN KEY (`matiereId`) REFERENCES `matieres` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `temps`
--
ALTER TABLE `temps`
  ADD CONSTRAINT `temps_ibfk_785` FOREIGN KEY (`classprofId`) REFERENCES `classprofs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `temps_ibfk_786` FOREIGN KEY (`semestreId`) REFERENCES `semestres` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_597` FOREIGN KEY (`parentId`) REFERENCES `parents` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_598` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
