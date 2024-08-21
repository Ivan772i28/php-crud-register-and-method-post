-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-08-2024 a las 04:06:36
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mini supeerfn`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `CLAVE_EMPLEADO` int(11) NOT NULL,
  `NOMBRE` text DEFAULT NULL,
  `APPAT` text DEFAULT NULL,
  `APMAT` text DEFAULT NULL,
  `TELEFONO` int(11) DEFAULT NULL,
  `DOMICILIO` text DEFAULT NULL,
  `SUELDO_SEMANAL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enlatados`
--

CREATE TABLE `enlatados` (
  `CODIGO` int(11) NOT NULL,
  `DESCRIPCION` text DEFAULT NULL,
  `MARCA` text DEFAULT NULL,
  `PRESENTACION` text DEFAULT NULL,
  `EXISTENCIA` int(11) DEFAULT NULL,
  `PRECIO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perecederos`
--

CREATE TABLE `perecederos` (
  `CODIGO` int(11) NOT NULL,
  `DESCRIPCION` text DEFAULT NULL,
  `TIPO` text DEFAULT NULL,
  `MARCA` text DEFAULT NULL,
  `CONTENIDO` text DEFAULT NULL,
  `EXISTENCIA` int(11) DEFAULT NULL,
  `PRECIO` int(11) DEFAULT NULL,
  `FECHA_EXPIRACION` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `perecederos`
--

INSERT INTO `perecederos` (`CODIGO`, `DESCRIPCION`, `TIPO`, `MARCA`, `CONTENIDO`, `EXISTENCIA`, `PRECIO`, `FECHA_EXPIRACION`) VALUES
(20320, 'papas fritas', 'barcel', 'baecel', '123', 1415, 13, '2024-05-01'),
(20355, '083848', '', 'kgjffjllalljwwqqq', 'hgfhghhgh', 48788, 143, '0000-00-00'),
(203203, 'dsfds', 'sdds', 'dsfd', 'sdfd', 969, 2, '2024-05-16'),
(2035599897, '08384898', '', 'kgjffjllalljwwq', 'hgfhghhg', 487880899, 143, '2024-07-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventaas`
--

CREATE TABLE `ventaas` (
  `FOLIO` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `HORA` time NOT NULL,
  `CLAVE_EMPLEADO` int(11) NOT NULL,
  `CODIGO` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `FOLIO` int(11) NOT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA` time DEFAULT NULL,
  `CLAVE_EMPLEADO` int(11) DEFAULT NULL,
  `CODIGO_PERECEDERO` int(11) DEFAULT NULL,
  `CODIGO_ENLATADO` int(11) DEFAULT NULL,
  `CANTIDAD_ENLATADO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vntas`
--

CREATE TABLE `vntas` (
  `folio` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `claveEm` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vntas`
--

INSERT INTO `vntas` (`folio`, `fecha`, `hora`, `claveEm`, `codigo`, `cantidad`) VALUES
(89779, '2024-05-15', '17:36:00', 7968865, 546, 7547),
(9879879, '2024-05-16', '07:00:00', 8686, 797988, 886678);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`CLAVE_EMPLEADO`);

--
-- Indices de la tabla `enlatados`
--
ALTER TABLE `enlatados`
  ADD PRIMARY KEY (`CODIGO`);

--
-- Indices de la tabla `perecederos`
--
ALTER TABLE `perecederos`
  ADD PRIMARY KEY (`CODIGO`);

--
-- Indices de la tabla `ventaas`
--
ALTER TABLE `ventaas`
  ADD PRIMARY KEY (`FOLIO`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`FOLIO`),
  ADD KEY `CLAVE_EMPLEADO` (`CLAVE_EMPLEADO`),
  ADD KEY `CODIGO_ENLATADO` (`CODIGO_ENLATADO`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`CLAVE_EMPLEADO`) REFERENCES `empleados` (`CLAVE_EMPLEADO`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`CODIGO_PERECEDERO`) REFERENCES `perecederos` (`CODIGO`),
  ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`CODIGO_ENLATADO`) REFERENCES `enlatados` (`CODIGO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
