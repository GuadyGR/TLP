-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2022 a las 14:18:12
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
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_legajo` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `DNI` int(11) NOT NULL,
  `telefono` int(11) DEFAULT NULL,
  `domicilio` varchar(50) NOT NULL,
  `edad` int(11) DEFAULT NULL,
  `fecha_nac` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_legajo`, `nombre`, `apellido`, `DNI`, `telefono`, `domicilio`, `edad`, `fecha_nac`) VALUES
(1, 'Harry', 'Styles', 30622753, 15154847, 'Londres', 28, '1994-02-01'),
(2, 'Louis', 'Tomlinson', 30654789, 15423687, 'LA', 30, '1991-12-24'),
(3, 'Liam', 'Payne', 30122365, 15489657, 'España', 28, '1993-08-29'),
(4, 'Zayn', 'Malik', 30559846, 15513698, 'EEUU', 29, '1993-01-12'),
(5, 'Niall', 'Horan', 30336598, 15125781, 'Irlanda', 28, '1993-09-13'),
(6, 'Louis', 'Partidge', 45789123, 15254858, 'Londres', 18, '2004-03-03'),
(7, 'Millie', 'Bobby Brown ', 46258369, 15369784, 'California', 18, '0000-00-00'),
(8, 'Louis', 'Partidge', 45789123, 15254858, 'Londres', 18, '2004-03-03'),
(9, 'Millie', 'Bobby Brown ', 46258369, 15369784, 'California', 18, '0000-00-00'),
(10, 'Harry ', 'Shum jr', 30825936, 15368945, 'Asia', 39, '0000-00-00'),
(11, 'Faustino', 'Mohn', 46174236, 15369789, 'Córdoba', 17, '2005-05-07'),
(12, 'Harry ', 'Shum jr', 30825936, 15368945, 'Asia', 39, '0000-00-00'),
(13, 'Faustino', 'Mohn', 46174236, 15369789, 'Córdoba', 17, '0000-00-00'),
(14, 'Juan', 'Atencio', 45584962, 15547491, 'Córdoba Capital', 17, '2004-09-02'),
(15, 'Lourdes', 'Rodriguez', 45147258, 15564798, 'Suardi', 17, '2004-12-15'),
(16, 'Agus', 'Gonzalez', 45595933, 15489756, 'SantaRosa', 17, '2004-12-07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_legajo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_legajo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
