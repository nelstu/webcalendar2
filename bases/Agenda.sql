-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 04-06-2021 a las 23:57:31
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Agenda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `desde` varchar(5) DEFAULT NULL,
  `hasta` varchar(5) DEFAULT NULL,
  `duracionh` varchar(2) DEFAULT NULL,
  `duracionm` varchar(2) DEFAULT NULL,
  `sala` varchar(10) DEFAULT NULL,
  `rut` varchar(12) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `edad` varchar(5) DEFAULT NULL,
  `equipo` varchar(100) DEFAULT NULL,
  `cirugia` varchar(100) DEFAULT NULL,
  `prevision` varchar(100) DEFAULT NULL,
  `anestesista` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `agenda`
--

INSERT INTO `agenda` (`id`, `fecha`, `desde`, `hasta`, `duracionh`, `duracionm`, `sala`, `rut`, `nombre`, `edad`, `equipo`, `cirugia`, `prevision`, `anestesista`) VALUES(17, '2021-05-28', '08:00', '08:20', '1', '10', 'sala1', '10629933-1', 'Nelson Stuardo', '49', 'equipo 111', 'cirugia 111', 'prevision 111', 'anestesista 111');
INSERT INTO `agenda` (`id`, `fecha`, `desde`, `hasta`, `duracionh`, `duracionm`, `sala`, `rut`, `nombre`, `edad`, `equipo`, `cirugia`, `prevision`, `anestesista`) VALUES(21, '2021-05-28', '08:20', '08:40', '0', '10', 'sala2', '10629933-1', 'Nombre 5555', '55', 'equipo 55', 'cirugia 55', 'prevision 55', 'anestesista 55');
INSERT INTO `agenda` (`id`, `fecha`, `desde`, `hasta`, `duracionh`, `duracionm`, `sala`, `rut`, `nombre`, `edad`, `equipo`, `cirugia`, `prevision`, `anestesista`) VALUES(23, '2021-05-28', '09:00', '09:35', '', '25', 'sala3', '222222', 'nombre 222', '56', 'eq', 'ci', 'ban', 'aneste');
INSERT INTO `agenda` (`id`, `fecha`, `desde`, `hasta`, `duracionh`, `duracionm`, `sala`, `rut`, `nombre`, `edad`, `equipo`, `cirugia`, `prevision`, `anestesista`) VALUES(24, '2021-05-28', '08:55', '09:05', '', '45', 'sala1', '2323232323', 'nombre 2323232', '33', 'ewww', 'croc', 'cruzblanca', 'anestesista');
INSERT INTO `agenda` (`id`, `fecha`, `desde`, `hasta`, `duracionh`, `duracionm`, `sala`, `rut`, `nombre`, `edad`, `equipo`, `cirugia`, `prevision`, `anestesista`) VALUES(25, '2021-05-28', '08:30', '10:00', NULL, NULL, 'sala4', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matriz`
--

CREATE TABLE `matriz` (
  `id` int(11) NOT NULL,
  `hora` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `matriz`
--

INSERT INTO `matriz` (`id`, `hora`) VALUES(1, '08:00');
INSERT INTO `matriz` (`id`, `hora`) VALUES(2, '08:05');
INSERT INTO `matriz` (`id`, `hora`) VALUES(3, '08:10');
INSERT INTO `matriz` (`id`, `hora`) VALUES(4, '08:15');
INSERT INTO `matriz` (`id`, `hora`) VALUES(5, '08:20');
INSERT INTO `matriz` (`id`, `hora`) VALUES(6, '08:25');
INSERT INTO `matriz` (`id`, `hora`) VALUES(7, '08:30');
INSERT INTO `matriz` (`id`, `hora`) VALUES(8, '08:35');
INSERT INTO `matriz` (`id`, `hora`) VALUES(9, '08:40');
INSERT INTO `matriz` (`id`, `hora`) VALUES(10, '08:45');
INSERT INTO `matriz` (`id`, `hora`) VALUES(11, '08:50');
INSERT INTO `matriz` (`id`, `hora`) VALUES(12, '08:55');
INSERT INTO `matriz` (`id`, `hora`) VALUES(13, '09:00');
INSERT INTO `matriz` (`id`, `hora`) VALUES(14, '09:05');
INSERT INTO `matriz` (`id`, `hora`) VALUES(15, '09:10');
INSERT INTO `matriz` (`id`, `hora`) VALUES(16, '09:15');
INSERT INTO `matriz` (`id`, `hora`) VALUES(17, '09:20');
INSERT INTO `matriz` (`id`, `hora`) VALUES(18, '09:25');
INSERT INTO `matriz` (`id`, `hora`) VALUES(19, '09:30');
INSERT INTO `matriz` (`id`, `hora`) VALUES(20, '09:35');
INSERT INTO `matriz` (`id`, `hora`) VALUES(21, '09:40');
INSERT INTO `matriz` (`id`, `hora`) VALUES(22, '09:45');
INSERT INTO `matriz` (`id`, `hora`) VALUES(23, '09:50');
INSERT INTO `matriz` (`id`, `hora`) VALUES(36, '09:55');
INSERT INTO `matriz` (`id`, `hora`) VALUES(37, '10:00');
INSERT INTO `matriz` (`id`, `hora`) VALUES(38, '10:05');
INSERT INTO `matriz` (`id`, `hora`) VALUES(39, '10:10');
INSERT INTO `matriz` (`id`, `hora`) VALUES(40, '10:15');
INSERT INTO `matriz` (`id`, `hora`) VALUES(41, '10:20');
INSERT INTO `matriz` (`id`, `hora`) VALUES(42, '10:25');
INSERT INTO `matriz` (`id`, `hora`) VALUES(43, '10:30');
INSERT INTO `matriz` (`id`, `hora`) VALUES(44, '10:35');
INSERT INTO `matriz` (`id`, `hora`) VALUES(45, '10:40');
INSERT INTO `matriz` (`id`, `hora`) VALUES(46, '10:45');
INSERT INTO `matriz` (`id`, `hora`) VALUES(47, '10:50');
INSERT INTO `matriz` (`id`, `hora`) VALUES(48, '11:00');
INSERT INTO `matriz` (`id`, `hora`) VALUES(49, '11:05');
INSERT INTO `matriz` (`id`, `hora`) VALUES(50, '11:10');
INSERT INTO `matriz` (`id`, `hora`) VALUES(51, '11:15');
INSERT INTO `matriz` (`id`, `hora`) VALUES(52, '11:20');
INSERT INTO `matriz` (`id`, `hora`) VALUES(53, '11:25');
INSERT INTO `matriz` (`id`, `hora`) VALUES(54, '11:30');
INSERT INTO `matriz` (`id`, `hora`) VALUES(55, '11:35');
INSERT INTO `matriz` (`id`, `hora`) VALUES(56, '11:40');
INSERT INTO `matriz` (`id`, `hora`) VALUES(57, '11:45');
INSERT INTO `matriz` (`id`, `hora`) VALUES(58, '11:50');
INSERT INTO `matriz` (`id`, `hora`) VALUES(59, '11:55');
INSERT INTO `matriz` (`id`, `hora`) VALUES(60, '12:00');
INSERT INTO `matriz` (`id`, `hora`) VALUES(61, '12:05');
INSERT INTO `matriz` (`id`, `hora`) VALUES(62, '12:10');
INSERT INTO `matriz` (`id`, `hora`) VALUES(63, '12:15');
INSERT INTO `matriz` (`id`, `hora`) VALUES(64, '12:20');
INSERT INTO `matriz` (`id`, `hora`) VALUES(65, '12:25');
INSERT INTO `matriz` (`id`, `hora`) VALUES(66, '12:30');
INSERT INTO `matriz` (`id`, `hora`) VALUES(67, '12:35');
INSERT INTO `matriz` (`id`, `hora`) VALUES(68, '12:40');
INSERT INTO `matriz` (`id`, `hora`) VALUES(69, '12:45');
INSERT INTO `matriz` (`id`, `hora`) VALUES(70, '12:50');
INSERT INTO `matriz` (`id`, `hora`) VALUES(71, '12:55');
INSERT INTO `matriz` (`id`, `hora`) VALUES(72, '13:00');
INSERT INTO `matriz` (`id`, `hora`) VALUES(73, '13:05');
INSERT INTO `matriz` (`id`, `hora`) VALUES(74, '13:10');
INSERT INTO `matriz` (`id`, `hora`) VALUES(75, '13:15');
INSERT INTO `matriz` (`id`, `hora`) VALUES(76, '13:20');
INSERT INTO `matriz` (`id`, `hora`) VALUES(77, '13:25');
INSERT INTO `matriz` (`id`, `hora`) VALUES(78, '13:30');
INSERT INTO `matriz` (`id`, `hora`) VALUES(79, '13:35');
INSERT INTO `matriz` (`id`, `hora`) VALUES(80, '13:40');
INSERT INTO `matriz` (`id`, `hora`) VALUES(81, '13:45');
INSERT INTO `matriz` (`id`, `hora`) VALUES(82, '13:50');
INSERT INTO `matriz` (`id`, `hora`) VALUES(83, '13:55');
INSERT INTO `matriz` (`id`, `hora`) VALUES(84, '14:00');
INSERT INTO `matriz` (`id`, `hora`) VALUES(85, '14:05');
INSERT INTO `matriz` (`id`, `hora`) VALUES(86, '14:10');
INSERT INTO `matriz` (`id`, `hora`) VALUES(87, '14:15');
INSERT INTO `matriz` (`id`, `hora`) VALUES(88, '14:20');
INSERT INTO `matriz` (`id`, `hora`) VALUES(89, '14:25');
INSERT INTO `matriz` (`id`, `hora`) VALUES(90, '14:30');
INSERT INTO `matriz` (`id`, `hora`) VALUES(91, '14:35');
INSERT INTO `matriz` (`id`, `hora`) VALUES(92, '14:40');
INSERT INTO `matriz` (`id`, `hora`) VALUES(93, '14:45');
INSERT INTO `matriz` (`id`, `hora`) VALUES(94, '14:50');
INSERT INTO `matriz` (`id`, `hora`) VALUES(95, '14:55');
INSERT INTO `matriz` (`id`, `hora`) VALUES(96, '15:00');
INSERT INTO `matriz` (`id`, `hora`) VALUES(97, '15:05');
INSERT INTO `matriz` (`id`, `hora`) VALUES(98, '15:10');
INSERT INTO `matriz` (`id`, `hora`) VALUES(99, '15:15');
INSERT INTO `matriz` (`id`, `hora`) VALUES(100, '15:20');
INSERT INTO `matriz` (`id`, `hora`) VALUES(101, '15:25');
INSERT INTO `matriz` (`id`, `hora`) VALUES(102, '15:30');
INSERT INTO `matriz` (`id`, `hora`) VALUES(103, '15:35');
INSERT INTO `matriz` (`id`, `hora`) VALUES(104, '15:40');
INSERT INTO `matriz` (`id`, `hora`) VALUES(105, '15:45');
INSERT INTO `matriz` (`id`, `hora`) VALUES(106, '15:50');
INSERT INTO `matriz` (`id`, `hora`) VALUES(107, '15:55');
INSERT INTO `matriz` (`id`, `hora`) VALUES(108, '16:00');
INSERT INTO `matriz` (`id`, `hora`) VALUES(109, '16:05');
INSERT INTO `matriz` (`id`, `hora`) VALUES(110, '16:10');
INSERT INTO `matriz` (`id`, `hora`) VALUES(111, '16:15');
INSERT INTO `matriz` (`id`, `hora`) VALUES(112, '16:20');
INSERT INTO `matriz` (`id`, `hora`) VALUES(113, '16:25');
INSERT INTO `matriz` (`id`, `hora`) VALUES(114, '16:30');
INSERT INTO `matriz` (`id`, `hora`) VALUES(115, '16:35');
INSERT INTO `matriz` (`id`, `hora`) VALUES(116, '16:40');
INSERT INTO `matriz` (`id`, `hora`) VALUES(117, '16:45');
INSERT INTO `matriz` (`id`, `hora`) VALUES(118, '16:50');
INSERT INTO `matriz` (`id`, `hora`) VALUES(119, '16:55');
INSERT INTO `matriz` (`id`, `hora`) VALUES(120, '17:00');
INSERT INTO `matriz` (`id`, `hora`) VALUES(121, '17:05');
INSERT INTO `matriz` (`id`, `hora`) VALUES(122, '17:10');
INSERT INTO `matriz` (`id`, `hora`) VALUES(123, '17:15');
INSERT INTO `matriz` (`id`, `hora`) VALUES(124, '17:20');
INSERT INTO `matriz` (`id`, `hora`) VALUES(125, '17:25');
INSERT INTO `matriz` (`id`, `hora`) VALUES(126, '17:30');
INSERT INTO `matriz` (`id`, `hora`) VALUES(127, '17:35');
INSERT INTO `matriz` (`id`, `hora`) VALUES(128, '17:40');
INSERT INTO `matriz` (`id`, `hora`) VALUES(129, '17:45');
INSERT INTO `matriz` (`id`, `hora`) VALUES(130, '17:50');
INSERT INTO `matriz` (`id`, `hora`) VALUES(131, '17:55');
INSERT INTO `matriz` (`id`, `hora`) VALUES(132, '18:00');
INSERT INTO `matriz` (`id`, `hora`) VALUES(133, '18:05');
INSERT INTO `matriz` (`id`, `hora`) VALUES(134, '18:10');
INSERT INTO `matriz` (`id`, `hora`) VALUES(135, '18:15');
INSERT INTO `matriz` (`id`, `hora`) VALUES(136, '18:20');
INSERT INTO `matriz` (`id`, `hora`) VALUES(137, '18:25');
INSERT INTO `matriz` (`id`, `hora`) VALUES(138, '18:30');
INSERT INTO `matriz` (`id`, `hora`) VALUES(139, '18:35');
INSERT INTO `matriz` (`id`, `hora`) VALUES(140, '18:40');
INSERT INTO `matriz` (`id`, `hora`) VALUES(141, '18:45');
INSERT INTO `matriz` (`id`, `hora`) VALUES(142, '18:50');
INSERT INTO `matriz` (`id`, `hora`) VALUES(143, '18:55');
INSERT INTO `matriz` (`id`, `hora`) VALUES(144, '19:00');
INSERT INTO `matriz` (`id`, `hora`) VALUES(145, '19:05');
INSERT INTO `matriz` (`id`, `hora`) VALUES(146, '19:10');
INSERT INTO `matriz` (`id`, `hora`) VALUES(147, '19:15');
INSERT INTO `matriz` (`id`, `hora`) VALUES(148, '19:20');
INSERT INTO `matriz` (`id`, `hora`) VALUES(149, '19:25');
INSERT INTO `matriz` (`id`, `hora`) VALUES(150, '19:30');
INSERT INTO `matriz` (`id`, `hora`) VALUES(151, '19:35');
INSERT INTO `matriz` (`id`, `hora`) VALUES(152, '19:40');
INSERT INTO `matriz` (`id`, `hora`) VALUES(153, '19:45');
INSERT INTO `matriz` (`id`, `hora`) VALUES(154, '19:50');
INSERT INTO `matriz` (`id`, `hora`) VALUES(155, '19:55');
INSERT INTO `matriz` (`id`, `hora`) VALUES(156, '20:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `matriz`
--
ALTER TABLE `matriz`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `matriz`
--
ALTER TABLE `matriz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
