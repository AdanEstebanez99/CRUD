-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-03-2018 a las 20:27:20
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `motos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `ID_MAR` int(11) NOT NULL,
  `NomMar` varchar(20) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`ID_MAR`, `NomMar`) VALUES
(1, 'GAS GAS'),
(2, 'HONDA'),
(3, 'YAMAHA'),
(4, 'SUZUKI'),
(5, 'KTM'),
(6, 'HUSQVARNA'),
(7, 'KAWASAKI'),
(8, 'BMW'),
(9, 'DUCATI'),
(10, 'SHERCO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modalidad`
--

CREATE TABLE `modalidad` (
  `NomMod` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `COD_MOD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `modalidad`
--

INSERT INTO `modalidad` (`NomMod`, `COD_MOD`) VALUES
('SCOOTER', 1),
('NAKED', 2),
('SPORT', 3),
('SUPER SPORT', 4),
('TRIAL', 5),
('MOTOCROSS', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `ID_MAR` int(15) DEFAULT NULL,
  `ID_MOD` int(11) DEFAULT NULL,
  `NomPro` varchar(35) COLLATE utf8_spanish2_ci NOT NULL,
  `ColPro` text COLLATE utf8_spanish2_ci NOT NULL,
  `CilPro` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`ID_MAR`, `ID_MOD`, `NomPro`, `ColPro`, `CilPro`) VALUES
(2, 2, 'CB 650F', 'Rojo', 650),
(2, 1, 'SH 300i', 'Negro', 300),
(2, 6, 'CRF 450R', 'Rojo', 450),
(2, 1, 'INTEGRA', 'Gris', 750),
(2, 5, 'MONTESA COTA 300RR', 'Negro', 300),
(3, 2, 'MT-09', 'Gris', 847),
(3, 1, 'AEROX R', 'Blanco', 50),
(3, 3, 'YZF-R1', 'Azul', 998),
(4, 6, 'RMZ 450', 'Amarillo', 450),
(4, 2, 'GSX-S1000', 'Azul', 1000),
(4, 3, 'GSX250R', 'Azul', 250),
(4, 1, 'ADDRESS', 'Azul', 110),
(5, 2, '790 DUKE', 'Naranja', 790),
(5, 6, '125 SX', 'Naranja', 125),
(6, 6, 'FC 250', 'Blanco', 250),
(6, 6, 'TE 300i', 'Blanco', 300),
(7, 2, 'Z900', 'Negro', 900),
(7, 3, 'Ninja ZX-10R', 'Verde', 1000),
(7, 6, 'KX250F', 'Verde', 250),
(8, 3, 'S 1000 RR', 'Blanco', 1000),
(9, 4, 'PANIGALE V4 SPECIALE', 'Rojo', 1299),
(10, 5, '250ST FACTORY', 'Azul', 250),
(1, 5, 'TXT 300 RACING', 'Rojo', 300);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`ID_MAR`);

--
-- Indices de la tabla `modalidad`
--
ALTER TABLE `modalidad`
  ADD PRIMARY KEY (`COD_MOD`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD KEY `codigo` (`ID_MAR`),
  ADD KEY `codigo2` (`ID_MOD`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `ID_MAR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `modalidad`
--
ALTER TABLE `modalidad`
  MODIFY `COD_MOD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `codigo2` FOREIGN KEY (`ID_MOD`) REFERENCES `modalidad` (`COD_MOD`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`ID_MAR`) REFERENCES `marca` (`ID_MAR`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
