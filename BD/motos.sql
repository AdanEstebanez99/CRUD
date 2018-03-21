-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2018 a las 01:17:53
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
  `ID_PROD` int(11) NOT NULL,
  `ID_MAR` int(15) DEFAULT NULL,
  `ID_MOD` int(11) DEFAULT NULL,
  `NomPro` varchar(35) COLLATE utf8_spanish2_ci NOT NULL,
  `ColPro` text COLLATE utf8_spanish2_ci NOT NULL,
  `CilPro` int(4) NOT NULL,
  `IMG_PRO` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`ID_PROD`, `ID_MAR`, `ID_MOD`, `NomPro`, `ColPro`, `CilPro`, `IMG_PRO`) VALUES
(1, 2, 2, 'CB 650F', 'Rojo', 650, 'http://www.honda.es/content/dam/central/motorcycles/street/cb650f-2017/Honda-CB650F-Overview10-16x9.jpg/_jcr_content/renditions/c3.jpg'),
(2, 2, 1, 'SH 300i', 'Negro', 300, 'http://www.ridocciperformance.com/wp-content/uploads/2017/06/SH300i-2017-Blanco.jpg'),
(3, 2, 6, 'CRF 450R', 'Rojo', 450, 'https://powersports.honda.com/assets/models/2018_CRF450R_600x400_Red_trans.png'),
(4, 2, 1, 'INTEGRA', 'Gris', 750, 'http://www.honda.es/content/dam/central/motorcycles/scooters/integra/Integra-2016/honda-bikes-2016-scooter-integra-004-16x9.jpg/_jcr_content/renditions/c4.jpg'),
(5, 2, 5, 'MONTESA COTA 300RR', 'Negro', 300, 'http://www.honda.es/content/dam/central/motorcycles/colour-picker/off-road/cota300rr_2017/cota300rr_2017_nv/ered/cota300_RR_ered2.png/_jcr_content/renditions/c4.png'),
(6, 3, 2, 'MT-09', 'Gris', 847, 'https://cdn.yamaha-motor.eu/product_assets/2018/MT09/950-75/2018-Yamaha-MT-09-EU-Yamaha-Blue-Studio-002.jpg'),
(7, 3, 1, 'AEROX R', 'Blanco', 50, 'http://stopandgomotos.es/wp-content/uploads/2017/02/2016-Yamaha-Aerox-R-EU-Race-Blu-Studio-002.jpg'),
(8, 3, 3, 'YZF-R1', 'Azul', 998, 'http://www.arpem.com/imagenes/ficha/5/7/7/8/lateral.2285778.jpg'),
(9, 4, 6, 'RMZ 450', 'Amarillo', 450, 'http://www.suzukicycles.com/~/media/403EE5D8E7CF418880DD4447443A0906.ashx?h=344'),
(10, 4, 2, 'GSX-S1000', 'Azul', 1000, 'https://moto.suzuki.es/images/colores/ficha/GSX-S1000AL8_KEL_Right.jpg'),
(11, 4, 3, 'GSX250R', 'Azul', 250, 'https://s3.amazonaws.com/suzuki-motos/bikes/features/slides/foreground/ee98a30b23e9b6686de95b4449267698b26d2fbc.png'),
(12, 4, 1, 'ADDRESS', 'Azul', 110, 'https://moto.suzuki.es/images/colores/ficha/UK110NEL5_YUH_Right.jpg'),
(13, 5, 2, '790 DUKE', 'Naranja', 790, 'https://i.ytimg.com/vi/NBkz5PgEpoo/maxresdefault.jpg'),
(14, 5, 6, '125 SX', 'Naranja', 125, 'http://www.arpem.com/imagenes/ficha/0/8/1/8/lateral-derecho.1970818.jpg'),
(15, 6, 6, 'FC 250', 'Blanco', 250, 'https://www.motofichas.com/images/cache/3696-medium-01-husqvarna-fc-250-2018.jpg'),
(16, 6, 6, 'TE 300i', 'Blanco', 300, 'http://www.canariasenmoto.com/motos/nuevas/images/moto_1539.jpg'),
(17, 7, 2, 'Z900', 'Negro', 900, 'https://storage.kawasaki.eu/public/kawasaki.eu/en-EU/model/17ZR900B_44SGY1DRS00D_C.jpg'),
(18, 7, 3, 'Ninja ZX-10R', 'Verde', 1000, 'https://storage.kawasaki.eu/public/kawasaki.eu/en-EU/model/17ZX1000S_40RGN1DRS2CG_C.jpg'),
(19, 7, 6, 'KX250F', 'Verde', 250, 'https://storage.kawasaki.eu/public/kawasaki.eu/en-EU/model/18KX252A_201GN1DRS1CG_A.png'),
(20, 8, 3, 'S 1000 RR', 'Blanco', 1000, 'https://media.zigcdn.com/media/model/2017/Dec/bmw-s1000rr-right-view_600x300.jpg'),
(21, 9, 4, 'PANIGALE V4 SPECIALE', 'Rojo', 1299, 'http://www.motociclismo.es/media/cache/recorte_basico/upload/images/paragrapharticle/30919/paragrapharticle-72813-5a006c3e5478b.jpg'),
(22, 10, 5, '250ST FACTORY', 'Azul', 250, 'https://www.trialworld.es/wp-content/uploads/2017/01/sherco-factory-2107-trial.jpg'),
(23, 1, 5, 'TXT 300 RACING', 'Rojo', 300, 'http://www.gasgasmotos.es/image/motos/txt_300_racing_2012_021.jpg');

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
  ADD PRIMARY KEY (`ID_PROD`),
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
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `ID_PROD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
