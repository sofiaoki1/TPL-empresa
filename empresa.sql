-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2022 a las 19:33:20
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductores`
--

CREATE TABLE `conductores` (
  `id_codC` varchar(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `localidad` varchar(30) NOT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `conductores`
--

INSERT INTO `conductores` (`id_codC`, `nombre`, `localidad`, `categoria`) VALUES
('C01', 'jose sanchez ', 'arganda', 18),
('C02', 'manuel diaz ', 'arganda', 15),
('C03', 'juan perez', 'rivas', 20),
('C04', 'luis ortiz', 'arganda', 18),
('C05', 'javier mantin ', 'loeches', 12),
('C06', 'carmen perez', 'rivas', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maquinas`
--

CREATE TABLE `maquinas` (
  `id_codM` varchar(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `preciohora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `maquinas`
--

INSERT INTO `maquinas` (`id_codM`, `nombre`, `preciohora`) VALUES
('M01', 'excavadora', 15000),
('M02', 'hormigonero', 10000),
('M03', 'volquete', 11000),
('M04', 'apisonadora', 18000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id_codP` varchar(11) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `localidad` varchar(30) NOT NULL,
  `cliente` varchar(30) NOT NULL,
  `telefono` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id_codP`, `descripcion`, `localidad`, `cliente`, `telefono`) VALUES
('P01', 'garaje', 'argenda', 'felipe sol', 600111111),
('P02', 'solado', 'rivas', 'jose perez', 666999666),
('P03', 'garaje', 'arganda', 'rosa lopez', 666999666),
('P04', 'techado', 'loeches', 'jose perez', 913333333),
('P05', 'buhardilla', 'rivas', 'ann botijo', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajos`
--

CREATE TABLE `trabajos` (
  `codC` varchar(11) NOT NULL,
  `codM` varchar(30) NOT NULL,
  `codP` varchar(11) NOT NULL,
  `fecha` date NOT NULL,
  `tiempo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trabajos`
--

INSERT INTO `trabajos` (`codC`, `codM`, `codP`, `fecha`, `tiempo`) VALUES
('C02', 'M03', 'P01', '2002-09-10', 100),
('C03', 'M01', 'P02', '2002-09-10', 200),
('C05', 'M03', 'P02', '2002-09-10', 150),
('C04', 'M03', 'P02', '2002-09-10', 90),
('C01', 'M02', 'P02', '2002-09-12', 120),
('C02', 'M03', 'P03', '2002-09-13', 30),
('C02', 'M03', 'P02', '2002-09-15', NULL),
('C01', 'M03', 'P04', '2002-09-15', 180),
('C05', 'M03', 'P04', '2002-09-15', 90),
('C01', 'M02', 'P04', '2002-09-17', NULL),
('C02', 'M03', 'P01', '2002-09-18', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD PRIMARY KEY (`id_codC`);

--
-- Indices de la tabla `maquinas`
--
ALTER TABLE `maquinas`
  ADD PRIMARY KEY (`id_codM`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id_codP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
