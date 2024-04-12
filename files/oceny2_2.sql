-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 16, 2023 at 11:08 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oceny`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasy`
--

CREATE TABLE `klasy` (
  `id_klasy` int(11) NOT NULL,
  `klasa` varchar(5) DEFAULT NULL,
  `szkola` int(11) DEFAULT NULL,
  `wychowawca` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `klasy`
--

INSERT INTO `klasy` (`id_klasy`, `klasa`, `szkola`, `wychowawca`) VALUES
(1, '1ALP', 1, 1),
(2, '1BLP', 1, 2),
(3, '1CLP', 1, 3),
(4, '1AT', 2, 4),
(5, '1BT', 2, 5),
(6, '2AT', 2, 6),
(7, '2BT', 2, 7),
(8, '1aZ', 3, 8),
(9, '2aZ', 3, 9),
(10, '3aZ', 3, 10),
(11, '3AT', 2, 11),
(12, '3BT', 2, 12),
(13, '1aLP', 4, 21),
(14, '1bLP', 4, 22),
(15, '1cLP', 4, 23);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nauczyciele`
--

CREATE TABLE `nauczyciele` (
  `id_nauczyciela` int(11) NOT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `imie` varchar(30) DEFAULT NULL,
  `przedmiot` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nauczyciele`
--

INSERT INTO `nauczyciele` (`id_nauczyciela`, `nazwisko`, `imie`, `przedmiot`) VALUES
(1, 'Las', 'Jan', 5),
(2, 'Moc', 'Ewa', 2),
(3, 'Noc', 'Adam', 3),
(4, 'Bąk', 'Olga', 8),
(5, 'Mak', 'Andrzej', 4),
(6, 'Jeż', 'Harry', 2),
(7, 'Koc', 'Edward', 7),
(8, 'Koń', 'Ryszard', 6),
(9, 'Kot', 'Jarosław', 1),
(10, 'Buła', 'Zbigniew', 1),
(11, 'Górny', 'Renata', 6),
(12, 'Walczak', 'Jan', 5),
(13, 'Zimny', 'Ewa', 2),
(14, 'Wolny', 'Karol', 7),
(15, 'Bosak', 'Ewa', 11),
(16, 'Dara', 'Karolina', 7),
(17, 'Ciapko', 'Jan', 6),
(18, 'Wolny', 'Ewelina', 3),
(19, 'Zieliński', 'Jan', 10),
(20, 'Duda', 'Janusz', 4),
(21, 'Tenor', 'Robert', 1),
(22, 'Tawerna', 'Anna', 9),
(23, 'Gugała', 'Witold', 7);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oceny`
--

CREATE TABLE `oceny` (
  `id_oceny` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `uczen` int(11) DEFAULT NULL,
  `przedmiot` int(11) DEFAULT NULL,
  `nauczyciel` int(11) DEFAULT NULL,
  `ocena` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oceny`
--

INSERT INTO `oceny` (`id_oceny`, `data`, `uczen`, `przedmiot`, `nauczyciel`, `ocena`) VALUES
(1, '2004-04-12', 2, 3, 3, 5),
(2, '2004-04-12', 38, 5, 1, 3),
(3, '2004-04-12', 31, 6, 8, 2),
(4, '2004-04-12', 8, 2, 2, 4),
(5, '2004-04-12', 59, 2, 2, 1),
(6, '2004-04-12', 22, 2, 2, 1),
(7, '2004-04-12', 27, 5, 1, 4),
(8, '2004-04-12', 4, 5, 1, 1),
(9, '2004-04-12', 71, 5, 1, 1),
(10, '2004-04-12', 28, 5, 1, 1),
(11, '2004-04-12', 2, 1, 10, 4),
(12, '2004-04-12', 38, 10, 19, 4),
(13, '2004-04-12', 79, 4, 5, 6),
(14, '2004-04-12', 24, 2, 6, 6),
(15, '2004-04-12', 55, 3, 9, 3),
(16, '2004-04-12', 75, 11, 15, 6),
(17, '2004-04-13', 40, 5, 1, 5),
(18, '2004-04-13', 83, 6, 8, 3),
(19, '2004-04-13', 10, 3, 3, 5),
(20, '2004-04-13', 63, 1, 10, 1),
(21, '2004-04-13', 24, 3, 3, 2),
(22, '2004-04-13', 31, 2, 2, 3),
(23, '2004-04-13', 5, 5, 12, 1),
(24, '2004-04-13', 59, 5, 1, 4),
(25, '2004-04-13', 4, 8, 4, 4),
(26, '2004-04-13', 75, 2, 2, 2),
(27, '2004-04-13', 4, 7, 7, 5),
(28, '2004-04-13', 26, 8, 4, 3),
(29, '2004-04-13', 79, 2, 6, 4),
(30, '2004-04-13', 40, 2, 2, 2),
(31, '2004-04-13', 30, 2, 2, 1),
(32, '2004-04-13', 35, 1, 9, 1),
(33, '2004-04-15', 32, 5, 1, 2),
(34, '2004-04-15', 20, 6, 8, 5),
(35, '2004-04-15', 46, 6, 8, 6),
(36, '2004-04-15', 10, 4, 9, 2),
(37, '2004-04-15', 2, 5, 1, 2),
(38, '2004-04-15', 43, 7, 7, 2),
(39, '2004-04-15', 3, 5, 1, 3),
(40, '2004-04-15', 14, 4, 5, 6),
(41, '2004-04-15', 4, 2, 2, 2),
(42, '2004-04-15', 26, 8, 4, 2),
(43, '2004-04-15', 67, 5, 1, 4),
(44, '2004-04-15', 12, 11, 15, 1),
(45, '2004-04-15', 20, 3, 3, 3),
(46, '2004-04-15', 39, 1, 10, 4),
(47, '2004-04-15', 2, 2, 2, 2),
(48, '2004-04-16', 2, 7, 7, 4),
(49, '2004-04-16', 12, 8, 4, 5),
(50, '2004-04-16', 39, 7, 16, 1),
(51, '2004-04-16', 18, 5, 7, 2),
(52, '2004-04-16', 44, 4, 7, 4),
(53, '2004-04-16', 8, 6, 8, 1),
(54, '2004-04-16', 18, 2, 2, 2),
(55, '2004-04-16', 1, 10, 19, 3),
(56, '2004-04-16', 30, 2, 2, 1),
(57, '2004-04-16', 2, 5, 1, 3),
(58, '2004-04-16', 24, 11, 15, 1),
(59, '2004-04-16', 63, 2, 2, 5),
(60, '2004-04-16', 10, 3, 3, 1),
(61, '2004-04-16', 35, 1, 10, 5),
(62, '2004-04-16', 87, 2, 2, 3),
(63, '2004-04-19', 5, 1, 9, 3),
(64, '2004-04-19', 10, 3, 3, 4),
(65, '2004-04-19', 35, 4, 5, 1),
(66, '2004-04-19', 16, 2, 6, 1),
(67, '2004-04-19', 42, 7, 16, 3),
(68, '2004-04-19', 83, 4, 5, 4),
(69, '2004-04-19', 55, 1, 10, 5),
(70, '2004-04-19', 28, 5, 1, 1),
(71, '2004-04-19', 87, 7, 7, 4),
(72, '2004-04-19', 22, 2, 2, 1),
(73, '2004-04-19', 59, 2, 13, 4),
(74, '2004-04-19', 8, 3, 3, 2),
(75, '2004-04-19', 31, 1, 10, 6),
(76, '2004-04-19', 6, 7, 7, 1),
(77, '2004-04-20', 30, 3, 6, 4),
(78, '2004-04-20', 8, 2, 6, 4),
(79, '2004-04-20', 75, 5, 1, 1),
(80, '2004-04-20', 59, 8, 4, 2),
(81, '2004-04-20', 87, 10, 19, 1),
(82, '2004-04-20', 43, 7, 7, 3),
(83, '2004-04-20', 22, 2, 2, 4),
(84, '2004-04-20', 42, 2, 6, 3),
(85, '2004-04-20', 24, 5, 1, 1),
(86, '2004-04-20', 39, 4, 5, 3),
(87, '2004-04-20', 12, 2, 6, 5),
(88, '2004-04-20', 20, 7, 16, 3),
(89, '2004-04-20', 75, 8, 4, 4),
(90, '2004-04-20', 30, 8, 4, 1),
(91, '2004-04-20', 63, 2, 13, 3),
(92, '2004-04-20', 14, 7, 17, 5),
(93, '2004-04-21', 67, 8, 4, 4),
(94, '2004-04-21', 43, 7, 16, 4),
(95, '2004-04-21', 26, 2, 2, 2),
(96, '2004-04-21', 32, 2, 6, 1),
(97, '2004-04-21', 79, 2, 6, 3),
(98, '2004-04-21', 14, 1, 7, 4),
(99, '2004-04-21', 1, 7, 7, 6),
(100, '2004-04-21', 44, 7, 7, 3),
(101, '2004-04-21', 32, 7, 7, 5),
(102, '2004-04-21', 22, 7, 7, 3),
(103, '2004-04-21', 79, 2, 2, 2),
(104, '2004-04-21', 16, 6, 8, 4),
(105, '2004-04-21', 63, 2, 6, 3),
(106, '2004-04-21', 24, 3, 3, 3),
(107, '2004-04-21', 2, 3, 3, 1),
(108, '2004-04-21', 47, 6, 8, 3),
(109, '2004-04-22', 2, 6, 8, 3),
(110, '2004-04-22', 4, 2, 6, 2),
(111, '2004-04-22', 83, 6, 11, 3),
(112, '2004-04-22', 26, 8, 4, 3),
(113, '2004-04-22', 51, 1, 9, 2),
(114, '2004-04-22', 18, 8, 9, 3),
(115, '2004-04-22', 46, 6, 8, 2),
(116, '2004-04-22', 34, 6, 8, 4),
(117, '2004-04-22', 20, 3, 3, 3),
(118, '2004-04-22', 16, 2, 8, 3),
(119, '2004-04-22', 24, 2, 8, 2),
(120, '2004-04-22', 83, 7, 14, 2),
(121, '2004-04-22', 34, 7, 7, 2),
(122, '2004-04-22', 71, 2, 6, 5),
(123, '2004-04-22', 67, 7, 7, 4),
(124, '2004-04-22', 47, 7, 7, 3),
(125, '2004-04-23', 51, 6, 8, 2),
(126, '2004-04-23', 48, 10, 19, 3),
(127, '2004-04-23', 20, 5, 1, 2),
(128, '2004-04-23', 55, 5, 1, 2),
(129, '2004-04-23', 27, 4, 5, 2),
(130, '2004-04-23', 67, 1, 9, 2),
(131, '2004-04-23', 71, 6, 8, 5),
(132, '2004-04-23', 6, 5, 1, 3),
(133, '2004-04-23', 87, 4, 5, 3),
(134, '2004-04-23', 36, 6, 8, 3),
(135, '2004-04-23', 75, 8, 4, 4),
(136, '2004-04-23', 22, 8, 4, 4),
(137, '2004-04-23', 36, 1, 9, 6),
(138, '2004-04-23', 87, 2, 2, 4),
(139, '2004-04-23', 26, 1, 9, 2),
(140, '2004-04-23', 3, 1, 9, 2),
(141, '2004-04-26', 6, 4, 5, 3),
(142, '2004-04-26', 35, 3, 3, 2),
(143, '2004-04-26', 26, 8, 4, 3),
(144, '2004-04-26', 67, 1, 10, 3),
(145, '2004-04-26', 12, 7, 14, 4),
(146, '2004-04-26', 39, 6, 8, 1),
(147, '2004-04-26', 42, 3, 3, 1),
(148, '2004-04-26', 63, 2, 2, 5),
(149, '2004-04-26', 79, 3, 3, 3),
(150, '2004-04-26', 83, 2, 6, 3),
(151, '2004-04-26', 32, 5, 1, 2),
(152, '2004-04-26', 6, 5, 1, 6),
(153, '2004-04-26', 42, 2, 2, 4),
(154, '2004-04-26', 87, 1, 9, 3),
(155, '2004-04-26', 28, 11, 15, 2),
(156, '2004-04-26', 6, 3, 3, 2),
(157, '2004-04-27', 39, 8, 4, 3),
(158, '2004-04-27', 30, 2, 2, 1),
(159, '2004-04-27', 2, 5, 1, 4),
(160, '2004-04-27', 44, 5, 1, 3),
(161, '2004-04-27', 8, 5, 12, 5),
(162, '2004-04-27', 34, 2, 2, 3),
(163, '2004-04-27', 83, 8, 4, 4),
(164, '2004-04-27', 7, 8, 4, 3),
(165, '2004-04-27', 20, 2, 6, 4),
(166, '2004-04-27', 71, 2, 6, 5),
(167, '2004-04-27', 14, 4, 5, 3),
(168, '2004-04-27', 43, 7, 7, 2),
(169, '2004-04-27', 87, 4, 5, 3),
(170, '2004-04-27', 44, 3, 3, 2),
(171, '2004-04-27', 8, 2, 6, 3),
(172, '2004-04-27', 67, 3, 3, 4),
(173, '2004-04-28', 10, 3, 3, 4),
(174, '2004-04-28', 8, 2, 6, 4),
(175, '2004-04-28', 32, 5, 1, 1),
(176, '2004-04-28', 46, 2, 2, 3),
(177, '2004-04-28', 36, 3, 3, 4),
(178, '2004-04-28', 87, 2, 6, 6),
(179, '2004-04-28', 71, 7, 14, 6),
(180, '2004-04-28', 46, 3, 3, 3),
(181, '2004-04-28', 22, 7, 7, 6),
(182, '2004-04-28', 75, 8, 4, 4),
(183, '2004-04-28', 16, 2, 2, 3),
(184, '2004-04-28', 47, 2, 6, 3),
(185, '2004-04-28', 10, 4, 7, 2),
(186, '2004-04-28', 2, 4, 5, 4),
(187, '2004-04-28', 43, 2, 6, 4),
(188, '2004-04-28', 4, 2, 2, 3),
(189, '2004-04-29', 75, 2, 6, 3),
(190, '2004-04-29', 2, 8, 4, 3),
(191, '2004-04-29', 12, 2, 4, 3),
(192, '2004-04-29', 4, 7, 7, 5),
(193, '2004-04-29', 34, 2, 6, 2),
(194, '2004-04-29', 38, 8, 4, 3),
(195, '2004-04-29', 6, 5, 1, 2),
(196, '2004-04-29', 12, 6, 8, 2),
(197, '2004-04-29', 24, 6, 8, 3),
(198, '2004-04-29', 79, 3, 3, 3),
(199, '2004-04-29', 18, 6, 11, 2),
(200, '2004-04-29', 51, 4, 5, 2),
(201, '2004-04-29', 4, 8, 4, 6),
(202, '2004-04-29', 48, 3, 3, 4),
(203, '2004-04-29', 48, 3, 3, 2),
(204, '2004-04-29', 47, 8, 4, 5),
(205, '2004-04-30', 31, 7, 7, 4),
(206, '2004-04-30', 27, 2, 6, 5),
(207, '2004-04-30', 15, 3, 3, 4),
(208, '2004-04-30', 19, 8, 4, 5),
(209, '2004-04-30', 35, 8, 8, 3),
(210, '2004-04-30', 7, 2, 1, 2),
(211, '2004-04-30', 59, 2, 6, 6),
(212, '2004-04-30', 11, 2, 2, 3),
(213, '2004-04-30', 39, 1, 9, 2),
(214, '2004-04-30', 43, 5, 1, 1),
(215, '2004-04-30', 47, 5, 2, 2),
(216, '2004-04-30', 55, 8, 4, 4),
(217, '2004-04-30', 63, 7, 7, 3),
(218, '2004-04-30', 67, 5, 8, 2),
(219, '2004-04-30', 71, 1, 9, 1),
(220, '2004-04-30', 3, 7, 7, 3),
(221, '2004-04-30', 51, 3, 3, 3),
(222, '2004-04-30', 83, 1, 10, 3),
(223, '2004-04-30', 2, 1, 10, 4),
(224, '2004-04-30', 14, 1, 9, 1),
(225, '2004-04-30', 27, 2, 13, 5),
(226, '2004-04-30', 6, 3, 3, 3),
(227, '2004-04-30', 20, 5, 1, 2),
(228, '2004-04-30', 26, 1, 9, 2),
(229, '2004-04-30', 51, 4, 5, 6),
(230, '2004-04-30', 2, 6, 8, 4),
(231, '2004-04-30', 23, 4, 5, 6),
(232, '2004-04-30', 55, 8, 4, 3),
(233, '2004-04-30', 8, 2, 2, 3),
(234, '2004-04-30', 79, 8, 4, 3),
(235, '2004-04-30', 27, 7, 14, 2),
(236, '2004-04-30', 14, 4, 5, 2),
(237, '2004-04-30', 40, 4, 5, 2),
(238, '2004-04-30', 4, 4, 5, 2),
(239, '2004-04-30', 6, 2, 2, 3),
(240, '2004-05-04', 3, 5, 1, 2),
(241, '2004-05-04', 43, 1, 10, 3),
(242, '2004-05-04', 16, 2, 6, 5),
(243, '2004-05-04', 47, 3, 8, 3),
(244, '2004-05-04', 22, 1, 9, 4),
(245, '2004-05-04', 48, 1, 9, 4),
(246, '2004-05-04', 12, 5, 1, 3),
(247, '2004-05-04', 4, 2, 2, 3),
(248, '2004-05-04', 22, 2, 4, 4),
(249, '2004-05-04', 34, 2, 2, 3),
(250, '2004-05-04', 6, 2, 3, 3),
(251, '2004-05-04', 27, 2, 6, 3),
(252, '2004-05-04', 14, 5, 1, 2),
(253, '2004-05-04', 4, 2, 2, 2),
(254, '2004-05-04', 16, 5, 1, 1),
(255, '2004-05-04', 71, 3, 3, 3),
(256, '2004-05-05', 18, 5, 7, 4),
(257, '2004-05-05', 6, 3, 3, 4),
(258, '2004-05-05', 14, 2, 2, 4),
(259, '2004-05-05', 27, 2, 1, 6),
(260, '2004-05-05', 51, 1, 9, 4),
(261, '2004-05-05', 31, 8, 4, 4),
(262, '2004-05-05', 4, 2, 2, 1),
(263, '2004-05-05', 24, 2, 1, 6),
(264, '2004-05-05', 8, 8, 4, 4),
(265, '2004-05-05', 75, 8, 4, 3),
(266, '2004-05-05', 16, 2, 1, 3),
(267, '2004-05-05', 47, 1, 10, 2),
(268, '2004-05-05', 24, 5, 6, 3),
(269, '2004-05-05', 36, 2, 3, 4),
(270, '2004-05-05', 5, 3, 3, 1),
(271, '2004-05-06', 16, 3, 3, 5),
(272, '2004-05-06', 20, 6, 8, 3),
(273, '2004-05-06', 55, 2, 1, 3),
(274, '2004-05-06', 67, 2, 2, 3),
(275, '2004-05-06', 8, 8, 4, 5),
(276, '2004-05-06', 5, 3, 3, 1),
(277, '2004-05-06', 6, 8, 4, 2),
(278, '2004-05-06', 10, 4, 5, 5),
(279, '2004-05-06', 35, 4, 5, 5),
(280, '2004-05-06', 79, 3, 5, 2),
(281, '2004-05-06', 18, 1, 10, 4),
(282, '2004-05-06', 51, 2, 1, 1),
(283, '2004-05-06', 26, 8, 4, 2),
(284, '2004-05-06', 38, 8, 4, 5),
(285, '2004-05-06', 26, 2, 2, 3),
(286, '2004-05-07', 20, 1, 10, 5),
(287, '2004-05-07', 59, 2, 2, 2),
(288, '2004-05-07', 28, 3, 3, 2),
(289, '2004-05-07', 71, 3, 3, 3),
(290, '2004-05-07', 18, 8, 4, 5),
(291, '2004-05-07', 10, 2, 5, 6),
(292, '2004-05-07', 35, 4, 4, 2),
(293, '2004-05-07', 7, 4, 5, 3),
(294, '2004-05-07', 40, 4, 5, 4),
(295, '2004-05-07', 12, 2, 6, 6),
(296, '2004-05-07', 83, 6, 8, 2),
(297, '2004-05-07', 55, 2, 2, 1),
(298, '2004-05-07', 28, 4, 5, 3),
(299, '2004-05-07', 22, 1, 9, 2),
(300, '2004-05-07', 39, 2, 6, 4),
(301, '2003-09-06', 101, 1, 21, 2),
(302, '2003-12-12', 101, 2, 2, 5),
(303, '2004-02-05', 101, 11, 15, 4),
(304, '2003-12-19', 102, 5, 1, 3),
(305, '2004-04-02', 102, 8, 4, 5),
(306, '2004-06-01', 102, 4, 5, 6),
(307, '2003-10-02', 103, 3, 3, 2),
(308, '2003-12-05', 103, 7, 7, 4),
(309, '2004-04-04', 103, 10, 19, 4),
(310, '2004-01-05', 104, 9, 22, 5),
(311, '2004-03-03', 104, 6, 11, 3),
(312, '2004-05-06', 104, 5, 1, 5),
(313, '2003-11-11', 105, 2, 2, 4),
(314, '2003-12-01', 105, 3, 3, 6),
(315, '2004-02-07', 105, 6, 11, 3),
(316, '2003-09-20', 106, 1, 21, 5),
(317, '2003-12-17', 106, 7, 7, 4),
(318, '2004-02-12', 106, 2, 2, 1),
(319, '2003-12-01', 107, 9, 22, 5),
(320, '2004-02-23', 107, 5, 1, 3),
(321, '2004-06-06', 107, 8, 4, 1),
(322, '2003-09-09', 108, 3, 3, 2),
(323, '2003-11-23', 108, 10, 19, 1),
(324, '2003-12-08', 108, 6, 11, 3),
(325, '2004-02-28', 109, 1, 21, 4),
(326, '2004-04-25', 109, 4, 5, 4),
(327, '2004-05-26', 109, 11, 15, 3),
(328, '2003-10-19', 110, 7, 7, 4),
(329, '2004-01-10', 110, 9, 22, 5),
(330, '2004-02-15', 110, 3, 3, 2),
(331, '2003-10-11', 111, 10, 19, 2),
(332, '2003-12-11', 111, 4, 5, 1),
(333, '2004-03-23', 111, 1, 21, 4),
(334, '2003-12-01', 112, 11, 15, 2),
(335, '2004-02-23', 112, 6, 11, 5),
(336, '2004-03-13', 112, 4, 5, 2),
(337, '2003-12-02', 113, 5, 1, 3),
(338, '2003-12-04', 113, 6, 11, 6),
(339, '2004-02-02', 113, 7, 7, 3),
(340, '2003-09-08', 114, 8, 4, 5),
(341, '2003-11-11', 114, 3, 3, 4),
(342, '2004-01-02', 114, 10, 19, 1),
(343, '2003-10-16', 115, 11, 15, 3),
(344, '2003-12-03', 115, 1, 21, 5),
(345, '2004-05-23', 115, 6, 11, 4),
(346, '2003-11-16', 116, 3, 3, 4),
(347, '2003-12-04', 116, 5, 1, 6),
(348, '2004-02-21', 116, 8, 4, 1),
(349, '2003-09-03', 117, 1, 21, 1),
(350, '2003-10-20', 117, 2, 2, 3),
(351, '2003-12-19', 117, 6, 11, 6),
(352, '2004-01-04', 118, 7, 7, 3),
(353, '2004-02-03', 118, 3, 3, 2),
(354, '2004-05-02', 118, 5, 1, 5),
(355, '2003-11-06', 119, 9, 22, 3),
(356, '2003-12-04', 119, 10, 19, 1),
(357, '2004-04-09', 119, 3, 3, 1),
(358, '2003-09-21', 120, 6, 11, 3),
(359, '2003-11-07', 120, 4, 5, 2),
(360, '2004-03-21', 120, 8, 4, 1),
(361, '2003-11-06', 121, 2, 2, 6),
(362, '2003-12-07', 121, 1, 21, 5),
(363, '2004-03-25', 121, 4, 5, 4),
(364, '2003-12-05', 122, 7, 7, 3),
(365, '2004-02-03', 122, 3, 3, 4),
(366, '2004-04-04', 122, 8, 4, 2),
(367, '2003-09-03', 123, 9, 22, 2),
(368, '2003-10-13', 123, 1, 21, 4),
(369, '2004-03-12', 123, 3, 3, 3),
(370, '2003-11-03', 124, 6, 11, 2),
(371, '2003-12-12', 124, 3, 3, 1),
(372, '2004-03-03', 124, 2, 2, 2),
(373, '2003-10-02', 125, 5, 1, 4),
(374, '2003-11-12', 125, 4, 5, 6),
(375, '2004-02-06', 125, 7, 7, 4),
(376, '2003-12-16', 126, 4, 5, 1),
(377, '2004-01-12', 126, 7, 7, 3),
(378, '2004-05-12', 126, 2, 2, 1),
(379, '2003-11-14', 127, 9, 22, 5),
(380, '2003-11-16', 127, 1, 21, 4),
(381, '2004-04-12', 127, 4, 5, 2),
(382, '2003-09-10', 128, 8, 4, 6),
(383, '2003-10-10', 128, 6, 11, 2),
(384, '2004-02-12', 128, 3, 3, 1),
(385, '2003-12-15', 129, 6, 11, 5),
(386, '2004-02-16', 129, 8, 4, 2),
(387, '2004-05-01', 129, 4, 5, 2),
(389, '2003-09-14', 130, 3, 3, 2),
(390, '2003-10-02', 130, 1, 21, 4),
(391, '2003-12-13', 130, 7, 7, 4),
(392, '2004-01-12', 131, 5, 12, 3),
(393, '2004-03-06', 131, 7, 14, 2),
(394, '2004-04-05', 131, 2, 13, 2),
(395, '2003-09-04', 132, 6, 8, 6),
(396, '2003-10-13', 132, 3, 18, 5),
(397, '2004-05-04', 132, 8, 4, 4),
(398, '2003-12-15', 133, 9, 22, 3),
(399, '2004-02-13', 133, 2, 13, 2),
(400, '2004-06-04', 133, 10, 19, 1),
(401, '2003-10-02', 134, 11, 15, 6),
(402, '2003-11-02', 134, 4, 20, 3),
(403, '2004-03-15', 134, 6, 8, 4),
(404, '2003-11-18', 135, 7, 14, 5),
(405, '2004-04-16', 135, 9, 22, 4),
(406, '2004-02-01', 135, 2, 13, 2),
(407, '2003-10-03', 136, 8, 4, 6),
(408, '2003-10-20', 136, 1, 10, 4),
(409, '2004-05-02', 136, 7, 14, 2),
(410, '2003-09-17', 137, 4, 20, 4),
(411, '2003-10-23', 137, 6, 8, 5),
(412, '2004-02-25', 137, 8, 4, 2),
(413, '2003-10-21', 138, 2, 13, 5),
(414, '2004-06-01', 138, 1, 10, 6),
(415, '2004-06-02', 138, 10, 19, 4),
(416, '2003-09-07', 139, 11, 15, 3),
(417, '2003-10-23', 139, 4, 20, 6),
(418, '2004-06-08', 139, 2, 13, 6),
(419, '2003-12-02', 140, 6, 8, 4),
(420, '2004-02-09', 140, 8, 4, 6),
(421, '2004-05-07', 140, 3, 18, 2),
(422, '2003-11-05', 141, 9, 22, 6),
(423, '2003-11-16', 141, 5, 12, 1),
(424, '2004-06-05', 141, 7, 14, 1),
(425, '2003-09-24', 142, 2, 13, 2),
(426, '2003-10-25', 142, 8, 4, 2),
(427, '2004-05-21', 142, 2, 13, 5),
(428, '2003-10-08', 143, 9, 22, 4),
(429, '2004-06-06', 143, 10, 19, 3),
(430, '2004-06-12', 143, 11, 15, 2),
(431, '2003-11-23', 144, 3, 18, 5),
(432, '2003-12-20', 144, 6, 8, 4),
(433, '2004-02-12', 144, 4, 20, 3),
(434, '2003-09-24', 145, 7, 14, 2),
(435, '2003-12-10', 145, 2, 13, 1),
(436, '2004-02-23', 145, 6, 8, 2),
(437, '2003-12-16', 146, 10, 19, 6),
(438, '2004-01-23', 146, 11, 15, 4),
(439, '2004-05-27', 146, 3, 18, 2),
(440, '2003-09-19', 147, 7, 14, 4),
(441, '2003-11-01', 147, 4, 20, 3),
(442, '2004-05-01', 147, 8, 4, 6),
(443, '2003-10-21', 148, 2, 13, 4),
(444, '2003-11-03', 148, 10, 19, 4),
(445, '2004-04-01', 148, 5, 12, 4),
(446, '2003-12-04', 149, 6, 8, 5),
(447, '2004-02-12', 149, 7, 14, 4),
(448, '2004-05-23', 149, 1, 10, 1),
(449, '2003-10-22', 150, 6, 8, 3),
(450, '2003-12-03', 150, 10, 19, 2),
(451, '2004-02-26', 150, 11, 15, 2),
(452, '2003-12-18', 151, 2, 13, 3),
(453, '2004-01-02', 151, 5, 12, 4),
(454, '2004-04-26', 151, 7, 14, 2),
(455, '2003-10-01', 152, 4, 20, 6),
(456, '2003-12-04', 152, 6, 8, 4),
(457, '2004-02-01', 152, 1, 10, 1),
(458, '2003-09-13', 153, 9, 22, 3),
(459, '2004-01-05', 153, 3, 18, 2),
(460, '2004-02-15', 153, 4, 20, 2),
(461, '2003-09-27', 154, 1, 10, 5),
(462, '2003-10-02', 154, 6, 8, 3),
(463, '2004-04-25', 154, 8, 4, 5),
(464, '2003-12-15', 155, 7, 14, 6),
(465, '2004-04-01', 155, 9, 22, 4),
(466, '2004-06-02', 155, 1, 10, 2),
(467, '2003-10-21', 156, 5, 12, 4),
(468, '2003-11-20', 156, 2, 13, 4),
(469, '2004-02-01', 156, 8, 4, 5),
(470, '2003-09-10', 157, 4, 20, 3),
(471, '2003-12-01', 157, 9, 22, 5),
(472, '2004-02-02', 157, 10, 19, 2),
(473, '2003-10-01', 158, 2, 13, 5),
(474, '2004-01-10', 158, 7, 14, 5),
(475, '2004-06-20', 158, 1, 10, 1),
(476, '2003-09-28', 159, 8, 4, 6),
(477, '2003-12-05', 159, 9, 22, 4),
(478, '2004-05-03', 159, 10, 19, 2),
(480, '2003-09-23', 160, 2, 13, 2),
(481, '2003-10-02', 160, 6, 8, 6),
(482, '2004-02-05', 160, 8, 14, 2),
(483, '2003-09-02', 161, 3, 3, 2),
(484, '2004-02-24', 161, 7, 23, 6),
(485, '2004-04-06', 161, 8, 4, 5),
(486, '2003-10-08', 162, 2, 6, 4),
(487, '2003-11-02', 162, 9, 22, 4),
(488, '2004-06-21', 162, 5, 1, 2),
(489, '2003-09-15', 163, 10, 19, 6),
(490, '2004-03-02', 163, 11, 15, 4),
(491, '2004-05-03', 163, 1, 9, 3),
(492, '2003-11-23', 164, 7, 23, 2),
(493, '2003-12-03', 164, 3, 3, 5),
(494, '2004-02-02', 164, 8, 4, 5),
(495, '2003-11-16', 165, 9, 22, 5),
(496, '2004-01-04', 165, 5, 1, 1),
(497, '2004-03-02', 165, 7, 23, 2),
(498, '2003-11-06', 166, 2, 6, 6),
(499, '2003-12-02', 166, 9, 22, 4),
(500, '2004-03-12', 166, 1, 9, 6),
(501, '2003-12-07', 167, 6, 17, 4),
(502, '2004-01-06', 167, 4, 20, 1),
(503, '2004-06-01', 167, 8, 4, 2),
(504, '2003-09-23', 168, 2, 6, 5),
(505, '2003-10-08', 168, 3, 3, 4),
(506, '2004-06-09', 168, 7, 23, 1),
(507, '2003-10-09', 169, 1, 9, 2),
(508, '2004-01-26', 169, 5, 1, 6),
(509, '2004-02-24', 169, 6, 17, 3),
(510, '2003-12-15', 170, 9, 22, 5),
(511, '2003-12-17', 170, 10, 19, 6),
(512, '2004-01-27', 170, 6, 17, 5),
(513, '2003-12-02', 171, 8, 4, 2),
(514, '2004-04-01', 171, 10, 19, 3),
(515, '2004-05-02', 171, 2, 6, 5),
(516, '2003-09-15', 172, 8, 4, 6),
(517, '2003-12-04', 172, 1, 9, 3),
(518, '2004-02-25', 172, 3, 3, 3),
(519, '2003-10-26', 173, 7, 23, 6),
(520, '2003-11-27', 173, 3, 3, 5),
(521, '2004-05-25', 173, 7, 23, 2),
(522, '2003-09-24', 174, 1, 9, 4),
(523, '2004-02-21', 174, 4, 20, 5),
(524, '2004-06-02', 174, 8, 4, 2),
(525, '2003-09-28', 175, 1, 9, 5),
(526, '2003-09-29', 175, 5, 1, 3),
(527, '2004-05-01', 175, 3, 3, 1),
(528, '2003-10-25', 176, 4, 20, 5),
(529, '2003-12-02', 176, 5, 1, 2),
(530, '2004-05-24', 176, 2, 6, 6),
(531, '2003-12-11', 177, 9, 22, 2),
(532, '2004-02-25', 177, 10, 19, 5),
(533, '2004-02-28', 177, 1, 9, 5),
(534, '2003-04-26', 178, 11, 15, 3),
(535, '2003-09-25', 178, 2, 6, 2),
(536, '2004-02-15', 178, 4, 20, 5),
(537, '2003-11-25', 179, 5, 1, 6),
(538, '2004-02-24', 179, 9, 22, 1),
(539, '2004-06-04', 179, 1, 9, 5),
(540, '2003-09-03', 180, 7, 23, 6),
(541, '2003-10-01', 180, 8, 4, 2),
(542, '2004-01-05', 180, 9, 22, 2),
(543, '2003-10-02', 181, 2, 6, 5),
(544, '2004-02-05', 181, 5, 1, 5),
(545, '2004-05-03', 181, 1, 9, 2),
(546, '2003-11-07', 182, 9, 22, 5),
(547, '2003-12-12', 182, 2, 6, 1),
(548, '2004-02-02', 182, 10, 19, 1),
(549, '2003-11-08', 183, 11, 15, 4),
(550, '2004-01-02', 183, 1, 9, 5),
(551, '2004-06-02', 183, 8, 4, 2),
(552, '2003-10-01', 184, 3, 3, 4),
(553, '2003-11-01', 184, 7, 23, 1),
(554, '2004-05-02', 184, 8, 4, 6),
(555, '2003-11-27', 185, 5, 1, 5),
(556, '2004-02-27', 185, 7, 23, 4),
(557, '2004-06-02', 185, 6, 17, 4),
(558, '2003-09-29', 186, 2, 6, 2),
(559, '2003-10-07', 186, 9, 22, 6),
(560, '2004-04-02', 186, 11, 15, 5),
(561, '2003-09-06', 187, 10, 19, 4),
(562, '2004-06-06', 187, 6, 17, 2),
(563, '2004-06-25', 187, 1, 9, 2),
(564, '2003-10-27', 188, 8, 4, 1),
(565, '2003-11-06', 188, 11, 15, 5),
(566, '2004-05-01', 188, 10, 19, 5),
(567, '2003-12-12', 189, 5, 1, 1),
(568, '2004-02-27', 189, 1, 9, 4),
(569, '2004-04-09', 189, 7, 23, 3),
(570, '2003-09-24', 190, 4, 20, 5),
(571, '2003-09-28', 190, 7, 23, 2),
(573, '2004-06-03', 190, 5, 1, 6);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmioty`
--

CREATE TABLE `przedmioty` (
  `id_przedmiotu` int(11) NOT NULL,
  `przedmiot` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `przedmioty`
--

INSERT INTO `przedmioty` (`id_przedmiotu`, `przedmiot`) VALUES
(1, 'J. polski'),
(2, 'J. angielski'),
(3, 'J. niemiecki'),
(4, 'Matematyka'),
(5, 'Historia'),
(6, 'Geografia'),
(7, 'Biologia'),
(8, 'WOS'),
(9, 'PO'),
(10, 'Fizyka'),
(11, 'W-F');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `szkoly`
--

CREATE TABLE `szkoly` (
  `id_szkoly` int(11) NOT NULL,
  `szkola` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `szkoly`
--

INSERT INTO `szkoly` (`id_szkoly`, `szkola`) VALUES
(1, 'Liceum Profilowane'),
(2, 'Technikum Samochodowe'),
(3, 'Zasadnicza Szkoła Zawodowa'),
(4, 'Liceum Plastyczne');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczen`
--

CREATE TABLE `uczen` (
  `id_ucznia` int(11) NOT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `imie` varchar(30) DEFAULT NULL,
  `klasa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `uczen`
--

INSERT INTO `uczen` (`id_ucznia`, `nazwisko`, `imie`, `klasa`) VALUES
(1, 'Kowalski', 'Jan', 1),
(2, 'Ryksza', 'Janusz', 1),
(3, 'Ruta', 'Dariusz', 2),
(4, 'Sowa', 'Witold', 2),
(5, 'Ryksza', 'Weronika', 1),
(6, 'Kowalski', 'Dariusz', 7),
(7, 'Ruta', 'Jan', 3),
(8, 'Ruta', 'Dariusz', 2),
(9, 'Lisek', 'Rita', 3),
(10, 'Kula', 'Franciszek', 3),
(11, 'Serak', 'Daniel', 4),
(12, 'Adams', 'Renata', 4),
(13, 'Kilka', 'Ewa', 5),
(14, 'Cichy', 'Leon', 6),
(15, 'Cichy', 'Leokadia', 8),
(16, 'Lech', 'Adam', 7),
(17, 'Kossa', 'Edwald', 2),
(18, 'Kosa', 'Wiktor', 3),
(19, 'Rysa', 'Ewa', 3),
(20, 'Kosa', 'Ruta', 4),
(21, 'Kula', 'Ewa', 4),
(22, 'Sylek', 'Sylwia', 4),
(23, 'Kosa', 'Ewa', 5),
(24, 'Kula', 'Adam', 5),
(25, 'Kowalski', 'Ewa', 5),
(26, 'Adams', 'Tadeusz', 5),
(27, 'Kula', 'Sylwia', 6),
(28, 'Kosa', 'Ewa', 6),
(29, 'Adams', 'Renata', 6),
(30, 'Kosa', 'Adam', 6),
(31, 'Kosa', 'Adam', 7),
(32, 'Kula', 'Ewa', 7),
(33, 'Cichy', 'Adam', 7),
(34, 'Kula', 'Adam', 8),
(35, 'Cichy', 'Ewa', 8),
(36, 'Kula', 'Ewa', 8),
(37, 'Kosa', 'Adam', 8),
(38, 'Kosa', 'Leokadia', 9),
(39, 'Cichy', 'Ewa', 9),
(40, 'Kowalski', 'Adam', 9),
(41, 'Kosa', 'Ewa', 9),
(42, 'Kula', 'Adam', 9),
(43, 'Gabriel', 'Adam', 9),
(44, 'Brania', 'Dariusz', 9),
(45, 'Anc ', 'Jacek', 9),
(46, 'Dokurno', 'Łukasz', 9),
(47, 'Krzykowski', 'Tomasz', 9),
(48, 'Krubner', 'Adam', 8),
(49, 'Pawlak', 'Aleksander', 8),
(50, 'Seif ', 'Artur', 8),
(51, 'Wójcik', 'Fabian', 7),
(52, 'Król', 'Grzegorz', 7),
(53, 'Bigielmajer', 'Grzegorz', 7),
(54, 'Szoblik', 'Jacek', 7),
(55, 'Mincer', 'Łukasz', 6),
(56, 'Moś', 'Łukasz', 6),
(57, 'Rutkowski', 'Marcin', 6),
(58, 'Mamzerowski', 'Michał', 6),
(59, 'Bartnik', 'Michał', 5),
(60, 'Nowak', 'Paweł', 5),
(61, 'Skiba', 'Piotr', 5),
(62, 'Szudok', 'Sebastian', 4),
(63, 'Binkowski', 'Sławomir', 4),
(64, 'Pająk', 'Adam', 4),
(65, 'Zaremba', 'Adam', 3),
(66, 'Rurański', 'Adrian', 3),
(67, 'Delegiewicz', 'Adrian', 3),
(68, 'Salbert', 'Arkadiusz', 2),
(69, 'Kosakowski', 'Artur', 2),
(70, 'Matusik ', 'Artur', 2),
(71, 'Nowotnik', 'Artur', 2),
(72, 'Owsiany', 'Artur', 1),
(73, 'Kokot', 'Damian', 1),
(74, 'Cabaj', 'Damian', 1),
(75, 'Wołos', 'Damian', 1),
(76, 'Chojnacki', 'Dariusz', 1),
(77, 'Piela', 'Grzegorz', 2),
(78, 'Różycki', 'Kajetan', 2),
(79, 'Dudarew', 'Krystian', 3),
(80, 'Labus', 'Krystian', 4),
(81, 'Wojciechowski', 'Krzysztof', 3),
(82, 'Musik', 'Lukasz', 4),
(83, 'Więzik', 'Łukasz', 4),
(84, 'Magdziarek', 'Łukasz', 5),
(85, 'Bartos', 'Marcin', 5),
(86, 'Mikołajczyk', 'Marcin', 5),
(87, 'Bibel', 'Marcin', 5),
(88, 'Czajka', 'Mariusz', 6),
(89, 'Dudek', 'Mariusz', 6),
(90, 'Kubowicz', 'Mariusz', 6),
(91, 'Urban', 'Mariusz', 6),
(92, 'Krasa', 'Michał', 7),
(93, 'Kurzawski', 'Rafał', 8),
(94, 'Wójcik', 'Rafał', 9),
(95, 'Brauer', 'Robert', 8),
(96, 'Majewski', 'Robert', 7),
(97, 'Stępień', 'Robert', 6),
(98, 'Barsta', 'Tomasz', 5),
(99, 'Walczak', 'Tomasz', 4),
(100, 'Pawliczak', 'Tomasz', 3),
(101, 'Wołomia', 'Piotr', 13),
(102, 'Kawał', 'Anna', 13),
(103, 'Mokry', 'Stefan', 13),
(104, 'Pion', 'Tomasz', 13),
(105, 'Nowicki', 'Adam', 13),
(106, 'Cor', 'Bartek', 13),
(107, 'Nerw', 'Magda', 13),
(108, 'Tytoń', 'Przemysław', 13),
(109, 'Remba', 'Martyna', 13),
(110, 'Karma', 'Oliwia', 13),
(111, 'Patyk', 'Roman', 13),
(112, 'Truskawka', 'Emilia', 13),
(113, 'Wołomia', 'Piotr', 13),
(114, 'Agrest', 'Monika', 13),
(115, 'Tyran', 'Kamil', 13),
(116, 'Kreda', 'Marianna', 13),
(117, 'Polewa', 'Robert', 13),
(118, 'Niska', 'Agata', 13),
(119, 'Udko', 'Łukasz', 13),
(120, 'Brom', 'Patryk', 13),
(121, 'Retro', 'Adrian', 13),
(122, 'Nora', 'Patrycja', 13),
(123, 'Frytka', 'Stefan', 13),
(124, 'Rudy', 'Adam', 13),
(125, 'Kujawska', 'Agata', 13),
(126, 'Metal', 'Mateusz', 13),
(127, 'Banan', 'Julia', 13),
(128, 'Figura', 'Wiktoria', 13),
(129, 'Dąb', 'Piotr', 13),
(130, 'Cicha', 'Dorota', 13),
(131, 'Jajko', 'Kamila', 14),
(132, 'Koc', 'Robert', 14),
(133, 'Hrupa', 'Michał', 14),
(134, 'Nicpoń', 'Ola', 14),
(135, 'Kromka', 'Stefan', 14),
(136, 'Komora', 'Marek', 14),
(137, 'Foka', 'Aleksander', 14),
(138, 'Pole', 'Nikola', 14),
(139, 'Litr', 'Kamil', 14),
(140, 'Trik', 'Miłosz', 14),
(141, 'Armata', 'Karol', 14),
(142, 'Podolski', 'Janusz', 14),
(143, 'Cwany', 'Jacek', 14),
(144, 'Sikora', 'Martyna', 14),
(145, 'Lampa', 'Kamila', 14),
(146, 'Pięknioch', 'Zosia', 14),
(147, 'Martawa', 'Patrycja', 14),
(148, 'Środa', 'Adam', 14),
(149, 'Biurko', 'Paweł', 14),
(150, 'Karton', 'Julia', 14),
(151, 'Sęp', 'Mikołaj', 14),
(152, 'Plakat', 'Alicja', 14),
(153, 'Tenor', 'Henryk', 14),
(154, 'Okno', 'Ryszard', 14),
(155, 'Wok', 'Martyna', 14),
(156, 'Jama', 'Filip', 14),
(157, 'Stos', 'Karolina', 14),
(158, 'Kropla', 'Wiktoria', 14),
(159, 'Zamkowski', 'Tomasz', 14),
(160, 'Kopytko', 'Rafał', 14),
(161, 'Kula', 'Ewa', 15),
(162, 'Kij', 'Patryk', 15),
(163, 'Limo', 'Magda', 15),
(164, 'Rak', 'Adam', 15),
(165, 'Góra', 'Robert', 15),
(166, 'Pionek', 'Krystyna', 15),
(167, 'Narta', 'Kamila', 15),
(168, 'Ser', 'Wiktor', 15),
(169, 'Ciepły', 'Iwona', 15),
(170, 'Szpik', 'Roman', 15),
(171, 'Komar', 'Anna', 15),
(172, 'Bialy', 'Stefan', 15),
(173, 'Figa', 'Monika', 15),
(174, 'Lipa', 'Karol', 15),
(175, 'Drin', 'Mirosław', 15),
(176, 'Mentor', 'Agata', 15),
(177, 'Polot', 'Piotr', 15),
(178, 'Urban', 'Kamil', 15),
(179, 'Pilot', 'Karol', 15),
(180, 'Celnik', 'Nikola', 15),
(181, 'Opos', 'Daniel', 15),
(182, 'Indor', 'Igor', 15),
(183, 'Rosły', 'Witold', 15),
(184, 'Ryba', 'Anastazja', 15),
(185, 'Grosz', 'Ryszard', 15),
(186, 'Kiszka', 'Andrzej', 15),
(187, 'Najman', 'Dawid', 15),
(188, 'Dzika', 'Ewa', 15),
(189, 'Jeleń', 'Kamila', 15),
(190, 'Kminek', 'Borys', 15);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klasy`
--
ALTER TABLE `klasy`
  ADD PRIMARY KEY (`id_klasy`),
  ADD KEY `szkola` (`szkola`),
  ADD KEY `wychowawca` (`wychowawca`);

--
-- Indeksy dla tabeli `nauczyciele`
--
ALTER TABLE `nauczyciele`
  ADD PRIMARY KEY (`id_nauczyciela`),
  ADD KEY `przedmiot` (`przedmiot`);

--
-- Indeksy dla tabeli `oceny`
--
ALTER TABLE `oceny`
  ADD PRIMARY KEY (`id_oceny`),
  ADD KEY `uczen` (`uczen`),
  ADD KEY `przedmiot` (`przedmiot`),
  ADD KEY `nauczyciel` (`nauczyciel`);

--
-- Indeksy dla tabeli `przedmioty`
--
ALTER TABLE `przedmioty`
  ADD PRIMARY KEY (`id_przedmiotu`);

--
-- Indeksy dla tabeli `szkoly`
--
ALTER TABLE `szkoly`
  ADD PRIMARY KEY (`id_szkoly`);

--
-- Indeksy dla tabeli `uczen`
--
ALTER TABLE `uczen`
  ADD PRIMARY KEY (`id_ucznia`),
  ADD KEY `klasa` (`klasa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klasy`
--
ALTER TABLE `klasy`
  MODIFY `id_klasy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nauczyciele`
--
ALTER TABLE `nauczyciele`
  MODIFY `id_nauczyciela` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `oceny`
--
ALTER TABLE `oceny`
  MODIFY `id_oceny` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574;

--
-- AUTO_INCREMENT for table `przedmioty`
--
ALTER TABLE `przedmioty`
  MODIFY `id_przedmiotu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `szkoly`
--
ALTER TABLE `szkoly`
  MODIFY `id_szkoly` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uczen`
--
ALTER TABLE `uczen`
  MODIFY `id_ucznia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `klasy`
--
ALTER TABLE `klasy`
  ADD CONSTRAINT `klasy_ibfk_1` FOREIGN KEY (`szkola`) REFERENCES `szkoly` (`id_szkoly`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nauczyciele`
--
ALTER TABLE `nauczyciele`
  ADD CONSTRAINT `nauczyciele_ibfk_1` FOREIGN KEY (`przedmiot`) REFERENCES `przedmioty` (`id_przedmiotu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `oceny`
--
ALTER TABLE `oceny`
  ADD CONSTRAINT `oceny_ibfk_1` FOREIGN KEY (`uczen`) REFERENCES `uczen` (`id_ucznia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `oceny_ibfk_2` FOREIGN KEY (`nauczyciel`) REFERENCES `nauczyciele` (`id_nauczyciela`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `oceny_ibfk_3` FOREIGN KEY (`przedmiot`) REFERENCES `przedmioty` (`id_przedmiotu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uczen`
--
ALTER TABLE `uczen`
  ADD CONSTRAINT `uczen_ibfk_1` FOREIGN KEY (`klasa`) REFERENCES `klasy` (`id_klasy`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
