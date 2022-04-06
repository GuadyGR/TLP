-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-04-2022 a las 19:59:18
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
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `T#` varchar(2) NOT NULL,
  `TNombre` varchar(30) NOT NULL,
  `Ciudad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`T#`, `TNombre`, `Ciudad`) VALUES
('T1', 'Clasificadora', 'Madrid'),
('T2', 'Perforadora', 'Malaga'),
('T3', 'Lectora', 'Caceres'),
('T4', 'Consola', 'Caceres'),
('T4', 'Mezcladora', 'Sevilla'),
('T5', 'Terminal', 'Barcelona'),
('T6', 'Terminal', 'Barcelona'),
('T7', 'Cinta', 'Sevilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentes`
--

CREATE TABLE `componentes` (
  `C#` varchar(2) NOT NULL,
  `CNombre` varchar(3) NOT NULL,
  `Color` varchar(30) NOT NULL,
  `Peso` int(11) NOT NULL,
  `Ciudad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `componentes`
--

INSERT INTO `componentes` (`C#`, `CNombre`, `Color`, `Peso`, `Ciudad`) VALUES
('C1', 'X3A', 'Rojo', 12, 'Sevilla'),
('C2', 'B85', 'Verde', 17, 'Madrid'),
('C3', 'C4B', 'Azul', 17, 'Malaga'),
('C4', 'C4B', 'Rojo', 14, 'Sevilla'),
('C5', 'VT8', 'Azul', 12, 'Madrid'),
('C6', 'C30', 'Rojo', 19, 'Sevilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `P#` varchar(2) NOT NULL,
  `C#` varchar(2) NOT NULL,
  `T#` varchar(2) NOT NULL,
  `Cantidad` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`P#`, `C#`, `T#`, `Cantidad`) VALUES
('P1', 'C1', 'T1', 200),
('P1', 'C1', 'T4', 700),
('P2', 'C3', 'T1', 400),
('P2', 'C3', 'T2', 200),
('P2', 'C3', 'T3', 200),
('P2', 'C3', 'T4', 500),
('P2', 'C3', 'T5', 600),
('P2', 'C3', 'T6', 400),
('P2', 'C3', 'T7', 800),
('P2', 'C5', 'T2', 100),
('P3', 'C3', 'T1', 200),
('P3', 'C3', 'T1', 200),
('P3', 'C4', 'T2', 500),
('P4', 'C6', 'T3', 300),
('P5', 'C2', 'T2', 200),
('P5', 'C2', 'T4', 100),
('P5', 'C5', 'T4', 500),
('P5', 'C5', 'T7', 100),
('P5', 'C6', 'T2', 200),
('P5', 'C1', 'T4', 100),
('P5', 'C3', 'T4', 200),
('P5', 'C4', 'T4', 800),
('P5', 'C5', 'T5', 400),
('P5', 'C6', 'T4', 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provedores`
--

CREATE TABLE `provedores` (
  `P#` varchar(2) NOT NULL,
  `PNombre` varchar(30) NOT NULL,
  `Categoría` int(11) NOT NULL,
  `Ciudad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provedores`
--

INSERT INTO `provedores` (`P#`, `PNombre`, `Categoría`, `Ciudad`) VALUES
('P1', 'Carlos', 20, 'Sevilla'),
('P2', 'Juan', 10, 'Madrid'),
('P3', 'Jose', 30, 'Sevilla'),
('P4', 'Inma', 20, 'Sevilla'),
('P5', 'Eva', 30, 'Caceres');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
