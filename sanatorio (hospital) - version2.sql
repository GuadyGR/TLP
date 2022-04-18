-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-04-2022 a las 15:29:42
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
-- Base de datos: `sanatorio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--

CREATE TABLE `medicos` (
  `codigo del doctor` int(5) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `especialidad` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `telefono` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medicos`
--

INSERT INTO `medicos` (`codigo del doctor`, `nombre`, `especialidad`, `direccion`, `telefono`) VALUES
(1, 'Dra. Sanz', 'Internista', 'Calle 4 # 23 - 12', 8234567),
(2, 'Dr. Perez', 'Traumatologo', 'Cra 3 # 7 - 98', 8210987),
(3, 'Dr. Fernandez', 'Internista', 'Calle 56 # 98 - 76', 8240975),
(4, 'Dr. Alonso', 'Cardiologo', 'Cra 25 # 45 - 19', 8309865),
(5, 'Dr. Garcia', 'Hepatologia', 'Cía 71 # 7 - 93', 8317543),
(6, 'Dr. Nuñez', 'Neurologia', 'Calle 32 # 90 - 21', 8205489),
(8, 'Dra. Quiroga', 'Pediatria', 'Cra 78 # 3 - 45', 8300078),
(9, 'Dr. Latorre', 'Pediatria', 'Calle 74 4 24 - 56', 8213456),
(10, 'Dr. Lopez', 'Ginecologia', 'Cra 21 # 70 - 94', 8327654),
(11, 'Dra. Campo', 'Opstetra', 'Calle 20 # 49 - 51', 8320943);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas`
--

CREATE TABLE `visitas` (
  `Codigo de visita` int(5) NOT NULL,
  `Diagnostico` varchar(30) NOT NULL,
  `Fecha de visita` date NOT NULL,
  `Tratamientos` varchar(30) NOT NULL,
  `Codigo de doctor` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `visitas`
--

INSERT INTO `visitas` (`Codigo de visita`, `Diagnostico`, `Fecha de visita`, `Tratamientos`, `Codigo de doctor`) VALUES
(5, 'Apendicitis', '2008-12-06', 'Cirugia', 1),
(28, 'Artritis', '2009-01-07', 'Cirugia', 2),
(4, 'Diabetes', '2009-02-09', 'Dieta Baja en azucar', 4),
(12, 'Gripe', '2009-02-10', 'Acetaminofen', 5),
(62, 'Sarampion', '2009-02-11', 'Sinus', 6),
(45, 'Sinusitis', '2009-03-12', 'Acetaminofen', 7),
(23, 'Cirrosis', '2009-03-13', 'Clamoxil', 8),
(12, 'Amigdalitis', '2009-03-14', 'Clamoxil', 9),
(6, 'Anemia', '2009-04-15', 'Purgante', 10),
(13, 'Migraña', '2009-04-16', 'Acetaminofen', 11);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`codigo del doctor`);

--
-- Indices de la tabla `visitas`
--
ALTER TABLE `visitas`
  ADD PRIMARY KEY (`Codigo de doctor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `medicos`
--
ALTER TABLE `medicos`
  MODIFY `codigo del doctor` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `visitas`
--
ALTER TABLE `visitas`
  MODIFY `Codigo de doctor` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
