-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 23, 2020 at 12:45 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `english_timetable_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `nom`, `auteur`, `lien`) VALUES
(1, 'Esio Trot', 'Roald Dahl', 'Roald_Dahl_Esio_Trot.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `cours`
--

CREATE TABLE `cours` (
  `id` int(11) NOT NULL,
  `day_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cours`
--

INSERT INTO `cours` (`id`, `day_id`, `nom`, `lien`) VALUES
(1, 1, 'Present simple form', 'https://www.perfect-english-grammar.com/present-simple.html'),
(2, 1, 'Present Simple Use', 'https://www.perfect-english-grammar.com/present-simple-use.html'),
(3, 2, ' Present Continuous Form', 'https://www.perfect-english-grammar.com/present-continuous.html'),
(4, 2, 'Present Continuous Use', 'https://www.perfect-english-grammar.com/present-continuous-use.html'),
(5, 3, 'Present Perfect Simple Form', 'https://www.perfect-english-grammar.com/present-perfect.html'),
(6, 3, 'Present Perfect Simple Use', 'https://www.perfect-english-grammar.com/present-perfect-use.html');

-- --------------------------------------------------------

--
-- Table structure for table `day`
--

CREATE TABLE `day` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `book_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `day`
--

INSERT INTO `day` (`id`, `date`, `book_id`) VALUES
(1, '2020-06-22', 1),
(2, '2020-06-23', 1),
(3, '2020-06-24', 1),
(4, '2020-06-25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200621161041', '2020-06-21 18:11:15', 160),
('DoctrineMigrations\\Version20200621162327', '2020-06-21 18:23:34', 16),
('DoctrineMigrations\\Version20200621162449', '2020-06-21 18:24:52', 17),
('DoctrineMigrations\\Version20200621163313', '2020-06-21 18:33:16', 46),
('DoctrineMigrations\\Version20200621163725', '2020-06-21 18:37:30', 22),
('DoctrineMigrations\\Version20200621220003', '2020-06-22 00:00:14', 87),
('DoctrineMigrations\\Version20200621222058', '2020-06-22 00:21:22', 48),
('DoctrineMigrations\\Version20200621233459', '2020-06-22 16:15:29', 42),
('DoctrineMigrations\\Version20200622142121', '2020-06-22 16:21:24', 15);

-- --------------------------------------------------------

--
-- Table structure for table `exercice`
--

CREATE TABLE `exercice` (
  `id` int(11) NOT NULL,
  `periode_id` int(11) NOT NULL,
  `day_id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exercice`
--

INSERT INTO `exercice` (`id`, `periode_id`, `day_id`, `nom`, `lien`) VALUES
(1, 2, 1, 'Present Simple Positive with \'be\'', 'https://www.perfect-english-grammar.com/present-simple-exercise-11.html'),
(2, 2, 1, 'Present Simple Negative with \'be\'', 'https://www.perfect-english-grammar.com/present-simple-exercise-10.html'),
(3, 2, 1, 'Present Simple Yes / No Questions with \'be\'', 'https://www.perfect-english-grammar.com/present-simple-exercise-12.html'),
(4, 2, 1, 'Present Simple \'Wh\' Questions with \'be\'', 'https://www.perfect-english-grammar.com/present-simple-exercise-13.html'),
(5, 2, 1, 'Present Simple Mixed Exercise 1 with \'be\'', 'https://www.perfect-english-grammar.com/present-simple-exercise-14.html'),
(6, 2, 1, 'Present Simple Mixed Exercise 2 with \'be\'', 'https://www.perfect-english-grammar.com/present-simple-exercise-15.html'),
(7, 4, 1, 'Present Simple Positive 1', 'https://www.perfect-english-grammar.com/present-simple-exercise-1.html'),
(8, 4, 1, 'Present Simple Positive 2', 'https://www.perfect-english-grammar.com/present-simple-exercise-2.html'),
(9, 4, 1, 'Present Simple Negative 1', 'https://www.perfect-english-grammar.com/present-simple-exercise-3.html'),
(10, 4, 1, 'Present Simple Negative 2', 'https://www.perfect-english-grammar.com/present-simple-exercise-4.html'),
(11, 4, 1, 'Present Simple Yes / No Questions', 'https://www.perfect-english-grammar.com/present-simple-exercise-5.html'),
(12, 4, 1, 'Present Simple \'Wh\' Questions', 'https://www.perfect-english-grammar.com/present-simple-exercise-6.html'),
(13, 2, 2, 'Present Continuous Positive and Negative 1', 'https://www.perfect-english-grammar.com/present-continuous-exercise-1.html'),
(14, 2, 2, 'Present Continuous Positive and Negative 2', 'https://www.perfect-english-grammar.com/present-continuous-exercise-2.html'),
(15, 2, 2, 'Present Continuous \'Wh\' and \'Yes / No\' Questions 1', 'https://www.perfect-english-grammar.com/present-continuous-exercise-3.html'),
(16, 2, 2, 'Present Continuous \'Wh\' and \'Yes / No\' Questions 2', 'https://www.perfect-english-grammar.com/present-continuous-exercise-4.html'),
(17, 4, 2, 'Present Continuous Mixed Exercise 1', 'https://www.perfect-english-grammar.com/present-continuous-exercise-5.html'),
(18, 4, 2, 'Present Continuous Mixed Exercise 2', 'https://www.perfect-english-grammar.com/present-continuous-exercise-6.html'),
(19, 4, 2, 'Present Continuous Mixed Exercise 3', 'https://www.perfect-english-grammar.com/present-continuous-exercise-7.html'),
(20, 1, 3, 'Choose the Present Simple or Present Continuous Exercise 1', 'https://www.perfect-english-grammar.com/present-simple-present-continuous-1.html'),
(21, 1, 3, 'Choose the Present Simple or Present Continuous Exercise 2', 'https://www.perfect-english-grammar.com/present-simple-present-continuous-2.html'),
(22, 1, 3, 'Choose the Present Simple or Present Continuous Exercise 3', 'https://www.perfect-english-grammar.com/present-simple-present-continuous-3.html');

-- --------------------------------------------------------

--
-- Table structure for table `periode`
--

CREATE TABLE `periode` (
  `id` int(11) NOT NULL,
  `date` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `periode`
--

INSERT INTO `periode` (`id`, `date`) VALUES
(1, '07:30:00'),
(2, '08:30:00'),
(3, '09:30:00'),
(4, '18:30:00'),
(5, '19:30:00'),
(6, '20:30:00'),
(7, '21:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FDCA8C9C9C24126` (`day_id`);

--
-- Indexes for table `day`
--
ALTER TABLE `day`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E5A0299016A2B381` (`book_id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `exercice`
--
ALTER TABLE `exercice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E418C74DF384C1CF` (`periode_id`),
  ADD KEY `IDX_E418C74D9C24126` (`day_id`);

--
-- Indexes for table `periode`
--
ALTER TABLE `periode`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `day`
--
ALTER TABLE `day`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exercice`
--
ALTER TABLE `exercice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `periode`
--
ALTER TABLE `periode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `FK_FDCA8C9C9C24126` FOREIGN KEY (`day_id`) REFERENCES `day` (`id`);

--
-- Constraints for table `day`
--
ALTER TABLE `day`
  ADD CONSTRAINT `FK_E5A0299016A2B381` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`);

--
-- Constraints for table `exercice`
--
ALTER TABLE `exercice`
  ADD CONSTRAINT `FK_E418C74D9C24126` FOREIGN KEY (`day_id`) REFERENCES `day` (`id`),
  ADD CONSTRAINT `FK_E418C74DF384C1CF` FOREIGN KEY (`periode_id`) REFERENCES `periode` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
