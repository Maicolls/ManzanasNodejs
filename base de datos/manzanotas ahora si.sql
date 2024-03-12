-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-02-2024 a las 16:21:47
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `manzanotas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manzanas`
--

CREATE TABLE `manzanas` (
  `id_m` int(11) NOT NULL,
  `nombre_manzana` varchar(100) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `manzanas`
--

INSERT INTO `manzanas` (`id_m`, `nombre_manzana`, `direccion`) VALUES
(1, 'chapi', 'wasa wasa'),
(2, 'bosa', 'dubai'),
(3, 'suba', 'cuarto piso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m_s`
--

CREATE TABLE `m_s` (
  `id_m1` int(11) NOT NULL,
  `id_s1` int(11) NOT NULL,
  `Fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `m_s`
--

INSERT INTO `m_s` (`id_m1`, `id_s1`, `Fecha`) VALUES
(1, 6, NULL),
(1, 1, NULL),
(1, 2, NULL),
(1, 3, NULL),
(1, 4, NULL),
(1, 5, NULL),
(2, 6, NULL),
(2, 4, NULL),
(2, 5, NULL),
(2, 7, NULL),
(3, 6, NULL),
(3, 3, NULL),
(3, 8, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `ud_servicios` int(11) NOT NULL,
  `nombre_servicios` varchar(100) NOT NULL,
  `tipo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`ud_servicios`, `nombre_servicios`, `tipo`) VALUES
(1, 'clases b', 'entretenimiento'),
(2, 'cine', 'Entretenimiento'),
(3, 'piscina', 'deporte'),
(4, 'GYM', 'deporte'),
(5, 'cocina', 'Gastronomia'),
(6, 'lavanderia', 'Aseo'),
(7, 'coser', 'maquinaria'),
(8, 'Yoga', 'Deporte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `id_solicitud` int(10) NOT NULL,
  `solicitudes_usuarios` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `codigoS` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`id_solicitud`, `solicitudes_usuarios`, `fecha`, `codigoS`) VALUES
(22, 3, '2024-02-19 11:19:00', 6),
(23, 3, '2024-02-21 11:35:00', 6),
(24, 1, '2024-02-20 12:10:00', 1),
(25, 1, '2024-02-20 12:10:00', 1),
(26, 1, '2024-02-21 12:13:00', 2),
(27, 1, '2024-02-21 12:13:00', 2),
(28, 1, '2024-02-21 12:17:00', 4),
(29, 1, '2024-02-23 12:17:00', 1),
(30, 1, '2024-02-20 12:29:00', 3),
(31, 1, '2024-02-21 10:23:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `nombre_usuarios` varchar(150) NOT NULL,
  `tipo_documento` varchar(100) NOT NULL,
  `documento` int(15) NOT NULL,
  `rol` varchar(100) NOT NULL,
  `id_m2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `nombre_usuarios`, `tipo_documento`, `documento`, `rol`, `id_m2`) VALUES
(1, 'Hector', 'TI', 1028662738, '', 1),
(2, 'maicol', 'CC\r\n', 123456, '', 2),
(3, 'Mateo', 'CC', 98765, '', 3),
(5, 'Nicolas', 'TI', 111, '', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `manzanas`
--
ALTER TABLE `manzanas`
  ADD PRIMARY KEY (`id_m`);

--
-- Indices de la tabla `m_s`
--
ALTER TABLE `m_s`
  ADD KEY `fk_id2` (`id_m1`),
  ADD KEY `fk_id3` (`id_s1`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`ud_servicios`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`id_solicitud`),
  ADD KEY `fk_id5` (`solicitudes_usuarios`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`),
  ADD UNIQUE KEY `documento` (`documento`),
  ADD KEY `fk_id1` (`id_m2`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `manzanas`
--
ALTER TABLE `manzanas`
  MODIFY `id_m` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `ud_servicios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `id_solicitud` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `m_s`
--
ALTER TABLE `m_s`
  ADD CONSTRAINT `fk_id2` FOREIGN KEY (`id_m1`) REFERENCES `manzanas` (`id_m`),
  ADD CONSTRAINT `fk_id3` FOREIGN KEY (`id_s1`) REFERENCES `servicios` (`ud_servicios`);

--
-- Filtros para la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD CONSTRAINT `fk_id5` FOREIGN KEY (`solicitudes_usuarios`) REFERENCES `usuarios` (`id_usuarios`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_id1` FOREIGN KEY (`id_m2`) REFERENCES `manzanas` (`id_m`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
