-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 25, 2020 at 02:12 PM
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
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `day_id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `day_id`, `nom`, `lien`) VALUES
(1, 1, 'How to Pronounce NO, NOSE, KNOW, KNOWS - American English Pronunciation Lesson', 'https://www.youtube.com/watch?v=WUzz22Xwa2M&list=PLcrs0K-HejHG8DXjz1963QDezNzJnLlms&index=2&t=0s'),
(2, 1, 'How to Pronounce SOCIAL & SOCIETY - American English Pronunciation Lesson', 'https://www.youtube.com/watch?v=P7Ty6fTDwEE&list=PLcrs0K-HejHG8DXjz1963QDezNzJnLlms&index=3&t=0s'),
(3, 1, 'How to Pronounce WHOSE & WHO\'S - American English Homophone Pronunciation Lesson', 'https://www.youtube.com/watch?v=K1tJL5xSojg&list=PLcrs0K-HejHG8DXjz1963QDezNzJnLlms&index=3'),
(4, 1, 'How to Pronounce NEW & KNEW - American English Pronunciation Lesson', 'https://www.youtube.com/watch?v=vMP25SMibZg&list=PLcrs0K-HejHG8DXjz1963QDezNzJnLlms&index=4'),
(5, 1, 'How to Pronounce WHERE, WEAR, WARE - American Homophone English Pronunciation Lesson', 'https://www.youtube.com/watch?v=Nb-Bibnu4TM&list=PLcrs0K-HejHG8DXjz1963QDezNzJnLlms&index=5'),
(6, 1, 'How to Pronounce GROAN & GROWN - English Pronunciation Lesson', 'https://www.youtube.com/watch?v=PycvnYDPcpo&list=PLcrs0K-HejHG8DXjz1963QDezNzJnLlms&index=6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_7CC7DA2CA532B4B5` (`lien`),
  ADD KEY `IDX_7CC7DA2C9C24126` (`day_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `FK_7CC7DA2C9C24126` FOREIGN KEY (`day_id`) REFERENCES `day` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
