-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2026 at 03:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog14f`
--
CREATE DATABASE IF NOT EXISTS `blog14f` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE `blog14f`;

-- --------------------------------------------------------

--
-- Table structure for table `blogger`
--

CREATE TABLE `blogger` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Age` int(3) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Password` text NOT NULL,
  `RegistrationTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `blogger`
--

INSERT INTO `blogger` (`Id`, `Name`, `Age`, `Email`, `Password`, `RegistrationTime`) VALUES
(1, 'Kovacs Bela', 34, 'kovacs.bela@gmail.com', 'jelszo123', '2021-03-14 09:12:00'),
(2, 'Nagy Aniko', 28, 'nagy.aniko@freemail.hu', 'Titok2021', '2021-04-02 14:35:10'),
(3, 'Aragorn', 44, 'aragorn@lotr.hu', 'GandalfGollum', '2021-04-18 08:05:45'),
(4, 'Toth Erika', 41, 'toth.erika@citromail.hu', 'erika41', '2021-05-09 19:22:30'),
(5, 'Horvath Gabor', 63, 'horvath.gabor@gmail.com', 'GaborBacsi', '2021-05-27 11:47:12'),
(6, 'Varga Julia', 23, 'varga.julia@indamail.hu', 'julcsi23', '2021-06-11 16:03:55'),
(7, 'Kiss Laszlo', 37, 'kiss.laszlo@gmail.com', 'Laci1988', '2021-06-30 07:58:20'),
(8, 'Molnar Zsofia', 19, 'molnar.zsofia@gmail.com', 'zsofi2005', '2021-07-15 21:14:05'),
(9, 'Nemeth Tamas', 45, 'nemeth.tamas@freemail.hu', 'TamasN45', '2021-08-01 10:26:38'),
(10, 'Farkas Andrea', 56, 'farkas.andrea@gmail.com', 'Andi1966', '2021-08-22 13:41:09'),
(11, 'Balogh Istvan', 68, 'balogh.istvan@citromail.hu', 'Pista68x', '2021-09-05 09:33:17'),
(12, 'Papp Katalin', 31, 'papp.katalin@gmail.com', 'Kati0931', '2021-09-19 18:07:44'),
(13, 'Takacs Roland', 26, 'takacs.roland@gmail.com', 'Roli2606', '2021-10-03 12:19:51'),
(14, 'Juhasz Marta', 49, 'juhasz.marta@indamail.hu', 'MartaJ49', '2021-10-25 15:55:02'),
(15, 'Lakatos Zoltan', 38, 'lakatos.zoltan@gmail.com', 'Zoli38', '2021-11-07 08:44:26'),
(16, 'Meszaros Eva', 59, 'meszaros.eva@freemail.hu', 'EvaM1963', '2021-11-28 20:31:13'),
(17, 'Olah Sandor', 71, 'olah.sandor@gmail.com', 'Sanyi71', '2021-12-12 10:02:47'),
(18, 'Simon Reka', 22, 'simon.reka@gmail.com', 'Reka2002', '2021-12-30 23:18:35'),
(19, 'Racz Kristof', 33, 'racz.kristof@citromail.hu', 'Kris3312', '2022-01-14 07:26:09'),
(20, 'Fekete Nikolett', 27, 'fekete.niki@gmail.com', 'Niki2795', '2022-01-29 17:40:22'),
(21, 'Szilagyi Adam', 44, 'szilagyi.adam@gmail.com', 'AdamSz44', '2022-02-11 11:11:11'),
(22, 'Torok Beatrix', 36, 'torok.bea@freemail.hu', 'Bea3610', '2022-02-27 14:53:48'),
(23, 'Fabian Denes', 55, 'fabian.denes@gmail.com', 'Denes55x', '2022-03-16 09:07:30'),
(24, 'Gal Veronika', 30, 'gal.veronika@indamail.hu', 'Vera3003', '2022-04-04 18:22:16'),
(25, 'Sipos Gergely', 21, 'sipos.gergely@gmail.com', 'Gergo21', '2022-04-21 22:35:59'),
(26, 'Boros Melinda', 47, 'boros.melinda@gmail.com', 'Meli4711', '2022-05-08 06:49:24'),
(27, 'Orosz Attila', 62, 'orosz.attila@citromail.hu', 'Atika62', '2022-05-25 13:14:37'),
(28, 'Halasz Dora', 25, 'halasz.dora@gmail.com', 'Dorka25', '2022-06-10 16:28:03'),
(29, 'Balazs Norbert', 39, 'balazs.norbert@gmail.com', 'Norbi39x', '2022-06-27 10:41:55'),
(30, 'Somogyi Timea', 53, 'somogyi.timea@freemail.hu', 'Timi53', '2022-07-13 19:56:12'),
(31, 'Bogdan Mate', 20, 'bogdan.mate@gmail.com', 'Mate2004', '2022-07-30 08:33:41'),
(32, 'Hegedus Klara', 66, 'hegedus.klara@gmail.com', 'Klari66', '2022-08-17 12:05:28'),
(33, 'Kelemen Viktor', 42, 'kelemen.viktor@indamail.hu', 'Viki4280', '2022-09-02 15:19:07'),
(34, 'Bognar Renata', 29, 'bognar.renata@gmail.com', 'Reni2993', '2022-09-20 20:44:50'),
(35, 'Fulop Csaba', 50, 'fulop.csaba@gmail.com', 'Csabi50', '2022-10-06 07:12:33'),
(36, 'Vincze Agnes', 35, 'vincze.agnes@citromail.hu', 'Agi3587', '2022-10-23 17:38:19'),
(37, 'Szucs Levente', 24, 'szucs.levente@gmail.com', 'Leve24', '2022-11-09 11:50:44'),
(38, 'Deak Petra', 46, 'deak.petra@gmail.com', 'Petra46', '2022-11-26 09:04:57'),
(39, 'Illes Barnabas', 58, 'illes.barnabas@freemail.hu', 'Barni58', '2022-12-14 21:27:15'),
(40, 'Katona Eszter', 32, 'katona.eszter@gmail.com', 'Eszti32', '2023-01-03 13:43:02'),
(41, 'Fodor Marcell', 18, 'fodor.marcell@gmail.com', 'Marci2006', '2023-01-21 18:59:38'),
(42, 'Pinter Szilvia', 61, 'pinter.szilvia@indamail.hu', 'Szilvi61', '2023-02-08 08:15:26'),
(43, 'Hajdu Krisztian', 40, 'hajdu.krisztian@gmail.com', 'Kriszti40', '2023-02-25 10:37:49'),
(44, 'Magyar Emese', 54, 'magyar.emese@gmail.com', 'Emese54x', '2023-03-15 16:02:11'),
(45, 'Balint Robert', 48, 'balint.robert@citromail.hu', 'Robi4875', '2023-04-01 19:24:36'),
(46, 'Veres Alexandra', 26, 'veres.alexandra@gmail.com', 'Szandi26', '2023-04-19 07:48:53'),
(47, 'Antal Zsolt', 43, 'antal.zsolt@gmail.com', 'Zsolti43', '2023-05-06 14:11:29'),
(48, 'Bakos Vivien', 27, 'bakos.vivien@freemail.hu', 'Vivi2796', '2023-05-24 22:06:41'),
(49, 'Gulyas Akos', 57, 'gulyas.akos@gmail.com', 'AkosG57', '2023-06-11 09:29:18'),
(50, 'Kozma Diana', 21, 'kozma.diana@gmail.com', 'Didi2103', '2023-06-29 12:52:07'),
(51, 'Sebestyen Tibor', 73, 'sebestyen.tibor@indamail.hu', 'Tibi73x', '2023-07-17 15:16:44'),
(52, 'Vass Henrietta', 37, 'vass.henrietta@gmail.com', 'Heni3786', '2023-08-04 20:39:22'),
(53, 'Baranyi Daniel', 30, 'baranyi.daniel@gmail.com', 'Dani3093', '2023-08-23 08:53:10'),
(54, 'Csonka Boglarka', 51, 'csonka.boglarka@gmail.com', 'Bogi51', '2023-09-10 17:07:35'),
(55, 'Doman Ferenc', 64, 'doman.ferenc@citromail.hu', 'Feri64x', '2023-09-28 11:31:58'),
(58, 'Papp Zoltán Gábor', 50, 'pappzoltangabor@gmail.com', 'Alma@Korte', '2026-09-22 18:20:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogger`
--
ALTER TABLE `blogger`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogger`
--
ALTER TABLE `blogger`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
