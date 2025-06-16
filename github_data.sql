-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2025 at 08:25 PM
-- Server version: 11.1.2-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `github_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` int(11) NOT NULL,
  `login` varchar(255) DEFAULT NULL,
  `html_url` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `login`, `html_url`, `owner`) VALUES
(7435463, 'tinobreg', 'https://github.com/tinobreg', 'jjcblanco'),
(58627821, 'nholuongut', 'https://github.com/nholuongut', 'jjcblanco'),
(67303611, 'EmilianoCorvalan', 'https://github.com/EmilianoCorvalan', 'jjcblanco'),
(83768234, 'JeanET26', 'https://github.com/JeanET26', 'jjcblanco'),
(110321221, 'JoseContrerasDev', 'https://github.com/JoseContrerasDev', 'jjcblanco'),
(135669488, 'chounaaaa', 'https://github.com/chounaaaa', 'jjcblanco'),
(136649829, 'Walterzq', 'https://github.com/Walterzq', 'jjcblanco'),
(163360357, 'yetsyy', 'https://github.com/yetsyy', 'jjcblanco'),
(166510178, 'ernesg23', 'https://github.com/ernesg23', 'jjcblanco');

-- --------------------------------------------------------

--
-- Table structure for table `repositorios`
--

CREATE TABLE `repositorios` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `html_url` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `repositorios`
--

INSERT INTO `repositorios` (`id`, `name`, `html_url`, `description`, `owner`) VALUES
(18826208, 'entrenador', 'https://github.com/jjcblanco/entrenador', NULL, 'jjcblanco'),
(51492848, 'androidblue', 'https://github.com/jjcblanco/androidblue', NULL, 'jjcblanco'),
(51562290, 'Bluetoothv2', 'https://github.com/jjcblanco/Bluetoothv2', NULL, 'jjcblanco'),
(432316158, 'sensores-android', 'https://github.com/jjcblanco/sensores-android', 'ejemplo sensores android', 'jjcblanco'),
(453571061, 'language-courses', 'https://github.com/StefiVergini/language-courses', NULL, 'stefiVergini'),
(473787051, 'ProyectoNutrite', 'https://github.com/StefiVergini/ProyectoNutrite', 'Proyecto Nutrite es mi presentación del examen final del Trayecto Programador de CFP 31 dónde aprendí a Programar con Java. Se basa en una aplicación de escritorio, en la cual los nutricionistas pueden ir cargando la historia clínica de sus pacientes, crearles un usuario, dar de alta, bajas y generar modificaciones de los mismos.', 'stefiVergini'),
(485451717, 'pywhatrw', 'https://github.com/jjcblanco/pywhatrw', NULL, 'jjcblanco'),
(498948179, 'javaclientchat', 'https://github.com/jjcblanco/javaclientchat', NULL, 'jjcblanco'),
(498948459, 'socketclientchat', 'https://github.com/jjcblanco/socketclientchat', NULL, 'jjcblanco'),
(498948986, 'socketServerchat', 'https://github.com/jjcblanco/socketServerchat', NULL, 'jjcblanco'),
(509583010, 'notifications', 'https://github.com/jjcblanco/notifications', 'notificaciones android', 'jjcblanco'),
(593854629, 'alura-git', 'https://github.com/StefiVergini/alura-git', 'Lista de cursos para controlar con Git', 'stefiVergini'),
(600230427, 'bluetoothv1', 'https://github.com/jjcblanco/bluetoothv1', NULL, 'jjcblanco'),
(603041481, 'ControlAuto', 'https://github.com/jjcblanco/ControlAuto', NULL, 'jjcblanco'),
(603041630, 'baldosasv1', 'https://github.com/jjcblanco/baldosasv1', NULL, 'jjcblanco'),
(616252700, 'btarduino', 'https://github.com/jjcblanco/btarduino', NULL, 'jjcblanco'),
(617735095, 'controlautobt1', 'https://github.com/jjcblanco/controlautobt1', NULL, 'jjcblanco'),
(654767005, 'apiejemplo', 'https://github.com/jjcblanco/apiejemplo', NULL, 'jjcblanco'),
(656926048, 'testing', 'https://github.com/jjcblanco/testing', 'Este repositorio es de pruebas del curso de App Testing', 'jjcblanco'),
(657633383, 'asyncesp32webserver', 'https://github.com/jjcblanco/asyncesp32webserver', NULL, 'jjcblanco'),
(660633507, 'asyncwebserver', 'https://github.com/jjcblanco/asyncwebserver', NULL, 'jjcblanco'),
(683893432, 'sockets', 'https://github.com/jjcblanco/sockets', NULL, 'jjcblanco'),
(691284670, 'cursotesting1', 'https://github.com/jjcblanco/cursotesting1', NULL, 'jjcblanco'),
(691289679, 'ejemplocurso', 'https://github.com/jjcblanco/ejemplocurso', NULL, 'jjcblanco'),
(770906908, 'loginvanilla', 'https://github.com/jjcblanco/loginvanilla', NULL, 'jjcblanco'),
(778020458, 'testingweb2024', 'https://github.com/jjcblanco/testingweb2024', NULL, 'jjcblanco'),
(828035663, 'app1', 'https://github.com/jjcblanco/app1', NULL, 'jjcblanco'),
(844774634, 'testingprueba', 'https://github.com/jjcblanco/testingprueba', 'Repositorio de prueba para el curso de testing', 'jjcblanco'),
(845762325, 'temporal', 'https://github.com/jjcblanco/temporal', NULL, 'jjcblanco'),
(862021132, 'muestrarepo', 'https://github.com/jjcblanco/muestrarepo', NULL, 'jjcblanco'),
(885882020, 'proyectoElReparador', 'https://github.com/StefiVergini/proyectoElReparador', NULL, 'stefiVergini'),
(934857077, 'djangohtmxtailwind', 'https://github.com/jjcblanco/djangohtmxtailwind', NULL, 'jjcblanco'),
(965809967, 'mi_proyecto', 'https://github.com/StefiVergini/mi_proyecto', NULL, 'stefiVergini'),
(966838510, 'deploywebtesting', 'https://github.com/jjcblanco/deploywebtesting', 'deploywebtesting', 'jjcblanco'),
(1001747896, 'Ejemplo-basico', 'https://github.com/jjcblanco/Ejemplo-basico', NULL, 'jjcblanco');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `repositorios`
--
ALTER TABLE `repositorios`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
