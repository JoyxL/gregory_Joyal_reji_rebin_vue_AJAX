-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 11, 2025 at 01:14 AM
-- Server version: 8.0.40
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `playstation`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `image_url` text,
  `genre_id` int DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `title`, `image_url`, `genre_id`, `description`) VALUES
(1, 'God of War', 'images/God_of_War_4_cover.jpg', 1, 'Kratos battles Norse gods with his son Atreus.'),
(2, 'Final Fantasy VII Remake', 'images/Final_Fantasy_VII_Remake_box_art.png', 3, 'A reimagining of the classic RPG adventure.'),
(3, 'Gran Turismo 7', 'images/Gran_Turismo_7_cover_art.jpg', 5, 'High-performance racing simulation.'),
(4, 'Uncharted 4: A Thief\'s End', 'images/Uncharted_4_box_artwork.jpg', 2, 'Nathan Drake goes on his last treasure hunt.'),
(5, 'Street Fighter V', 'images/Street_Fighter_V_box_artwork.png', 4, 'Classic fighting game with new mechanics.'),
(6, 'NBA 2K24', 'images/NBA_2K24_cover_art.jpg', 7, 'Realistic basketball action with your favorite teams.'),
(7, 'Call of Duty: Modern Warfare II', 'images/Call_of_Duty-_Modern_Warfare_II.jpg', 8, 'Tactical shooter set in modern conflict zones.'),
(8, 'LittleBigPlanet 3', 'images/LittleBigPlanet_3_boxart.jpg', 9, 'Creative platformer where you build and play.'),
(9, 'Tetris Effect', 'images/Tetris_Effect_cover.jpg', 6, 'Classic puzzle game with mind-bending visuals.');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'RPG'),
(4, 'Fighting'),
(5, 'Racing'),
(6, 'Puzzle'),
(7, 'Sports'),
(8, 'Shooter'),
(9, 'Platformer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
