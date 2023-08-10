-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-08-2023 a las 21:43:52
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pf_00`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `classes`
--

CREATE TABLE `classes` (
  `id_class` int(11) NOT NULL,
  `name_class` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `classes`
--

INSERT INTO `classes` (`id_class`, `name_class`) VALUES
(15, '12 monos'),
(7, 'Algebra'),
(14, 'Aritmética'),
(13, 'Artistica'),
(1, 'Biología'),
(2, 'Biomedicina'),
(8, 'Ciencia de materiales'),
(9, 'Ciencias Ambientales'),
(10, 'Ciencias Básicas'),
(11, 'Ciencias de la tierra'),
(5, 'Geometria'),
(3, 'Guarani'),
(16, 'Quiropractia'),
(6, 'Trigonometría');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info`
--

CREATE TABLE `info` (
  `id_info` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `birthday` date DEFAULT NULL,
  `teacher_class` int(5) DEFAULT NULL,
  `state` tinyint(1) NOT NULL,
  `DNI` int(20) DEFAULT NULL,
  `id_rol` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `info`
--

INSERT INTO `info` (`id_info`, `name`, `lastname`, `email`, `password`, `address`, `birthday`, `teacher_class`, `state`, `DNI`, `id_rol`) VALUES
(1, 'admin', 'admon', 'admin@gmail.com', '123', '', '0000-00-00', NULL, 1, 72375285, 1),
(2, 'profesor', '4', 'profe@gmail.com', '123', 'Calle los profesores', '2013-04-10', 1, 1, 79999985, 2),
(3, 'alumno01', '', 'alumno01@gmail.com', '111', '', '2023-08-01', NULL, 1, 9998965, 3),
(4, 'Roberto Rojas', 'Gomez Bolaños', 'alumno02@gmail.com', '123', 'Calle del 844', '2023-07-19', NULL, 1, 7237117, 3),
(5, 'alumno03', 'Juan', 'alumno03@gmail.com', '123', 'Calle 03', '2013-05-02', NULL, 1, 7288285, 3),
(9, 'Alexander', 'Morales', 'alexmorales196@gmail.com', '', 'Calle los Laureles', '1999-06-16', NULL, 1, NULL, 2),
(11, 'profe02', 'sor', 'profesor02@gmail.com', '', 'los colifores', '0000-00-00', 2, 1, NULL, 2),
(30, 'Jorge', 'Soto', 'profesor03daada@gmail.com', '123', '', '0000-00-00', NULL, 1, NULL, 2),
(31, 'Profesor Sin asig', 'pipipi', 'sinasign@gmail.com', '', '', '0000-00-00', 15, 1, NULL, 2),
(32, 'Profesor05', 'Prueba05', 'nuevosin@gmail.com', 'nuevo2', '', '0000-00-00', NULL, 1, NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_classes`
--

CREATE TABLE `info_classes` (
  `id_info_fk` int(11) NOT NULL,
  `id_class_fk` int(11) NOT NULL,
  `grade` int(4) DEFAULT NULL,
  `messages` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `info_classes`
--

INSERT INTO `info_classes` (`id_info_fk`, `id_class_fk`, `grade`, `messages`) VALUES
(5, 1, 50, NULL),
(3, 13, NULL, NULL),
(3, 2, NULL, NULL),
(3, 8, NULL, NULL),
(3, 9, NULL, NULL),
(3, 10, NULL, NULL),
(3, 11, NULL, NULL),
(3, 6, NULL, NULL),
(3, 5, NULL, NULL),
(3, 3, NULL, NULL),
(3, 1, NULL, 'Se revisara mañana'),
(3, 14, NULL, NULL),
(4, 8, NULL, NULL),
(4, 9, NULL, NULL),
(4, 10, NULL, NULL),
(4, 11, NULL, NULL),
(4, 5, NULL, NULL),
(4, 3, NULL, NULL),
(4, 6, NULL, NULL),
(4, 14, NULL, NULL),
(4, 7, NULL, NULL),
(4, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `nombre_rol`) VALUES
(1, 'ADMIN'),
(3, 'ALUMNO'),
(2, 'MAESTRO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id_class`),
  ADD UNIQUE KEY `UNIQUE_name_class` (`name_class`) USING BTREE;

--
-- Indices de la tabla `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id_info`),
  ADD UNIQUE KEY `UNIQUE_email` (`email`) USING BTREE,
  ADD UNIQUE KEY `UNIQUE_DNI` (`DNI`) USING BTREE,
  ADD KEY `FK_info_id_rol` (`id_rol`),
  ADD KEY `FK_teacher_class` (`teacher_class`);

--
-- Indices de la tabla `info_classes`
--
ALTER TABLE `info_classes`
  ADD KEY `FK_info` (`id_info_fk`),
  ADD KEY `FK_class` (`id_class_fk`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`),
  ADD UNIQUE KEY `nombre_rol` (`nombre_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `classes`
--
ALTER TABLE `classes`
  MODIFY `id_class` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `info`
--
ALTER TABLE `info`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `info`
--
ALTER TABLE `info`
  ADD CONSTRAINT `FK_info_id_rol` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`),
  ADD CONSTRAINT `FK_teacher_class` FOREIGN KEY (`teacher_class`) REFERENCES `classes` (`id_class`),
  ADD CONSTRAINT `FK_teacher_class_id_class` FOREIGN KEY (`teacher_class`) REFERENCES `classes` (`id_class`);

--
-- Filtros para la tabla `info_classes`
--
ALTER TABLE `info_classes`
  ADD CONSTRAINT `FK_class` FOREIGN KEY (`id_class_fk`) REFERENCES `classes` (`id_class`),
  ADD CONSTRAINT `FK_info` FOREIGN KEY (`id_info_fk`) REFERENCES `info` (`id_info`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
