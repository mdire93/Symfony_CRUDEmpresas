-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-09-2021 a las 11:57:29
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdd_empresas`
--
CREATE DATABASE IF NOT EXISTS `bdd_empresas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdd_empresas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `id_sector` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `nombre`, `email`, `id_sector`) VALUES
(1, 'La cueva ', 'lacue@gmail.com', 1),
(2, 'La casa di Mama', 'lacasadimama@gmail.com', 1),
(4, 'La parada de Juan', 'juanbar@email.com', 1),
(5, 'Fitness Master', 'firmast@email.com', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monedas`
--

CREATE TABLE `monedas` (
  `id` int(11) NOT NULL,
  `moneda` varchar(500) NOT NULL,
  `valor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `monedas`
--

INSERT INTO `monedas` (`id`, `moneda`, `valor`) VALUES
(1, 'AED', 4.259623),
(2, 'AFN', 101.932082),
(3, 'ALL', 120.77785),
(4, 'AMD', 560.678522),
(5, 'ANG', 2.081812),
(6, 'AOA', 695.909193),
(7, 'ARS', 114.470972),
(8, 'AUD', 1.615696),
(9, 'AWG', 2.087949),
(10, 'AZN', 1.9682),
(11, 'BAM', 1.945562),
(12, 'BBD', 2.341741),
(13, 'BDT', 99.366657),
(14, 'BGN', 1.94362),
(15, 'BHD', 0.437198),
(16, 'BIF', 2314.660463),
(17, 'BMD', 1.15965),
(18, 'BND', 1.574318),
(19, 'BOB', 8.008433),
(20, 'BRL', 6.312905),
(21, 'BSD', 1.159779),
(22, 'BTC', 0.000028110077),
(23, 'BTN', 86.022386),
(24, 'BWP', 13.120054),
(25, 'BYN', 2.902879),
(26, 'BYR', 22729.130802),
(27, 'BZD', 2.337861),
(28, 'CAD', 1.480925),
(29, 'CDF', 2323.938045),
(30, 'CHF', 1.084533),
(31, 'CLF', 0.034103),
(32, 'CLP', 940.997605),
(33, 'CNY', 7.503975),
(34, 'COP', 4450.618934),
(35, 'CRC', 725.530749),
(36, 'CUC', 1.15965),
(37, 'CUP', 30.730713),
(38, 'CVE', 109.993068),
(39, 'CZK', 25.507675),
(40, 'DJF', 206.09298),
(41, 'DKK', 7.435788),
(42, 'DOP', 65.346275),
(43, 'DZD', 159.379873),
(44, 'EGP', 18.213757),
(45, 'ERN', 17.400488),
(46, 'ETB', 53.488823),
(47, 'EUR', 1),
(48, 'FJD', 2.429475),
(49, 'FKP', 0.837824),
(50, 'GBP', 0.863794),
(51, 'GEL', 3.606642),
(52, 'GGP', 0.837824),
(53, 'GHS', 6.969616),
(54, 'GIP', 0.837824),
(55, 'GMD', 59.721035),
(56, 'GNF', 11323.977703),
(57, 'GTQ', 8.974036),
(58, 'GYD', 242.430486),
(59, 'HKD', 9.02775),
(60, 'HNL', 27.976569),
(61, 'HRK', 7.495855),
(62, 'HTG', 113.661112),
(63, 'HUF', 360.326584),
(64, 'IDR', 16612.385405),
(65, 'ILS', 3.732436),
(66, 'IMP', 0.837824),
(67, 'INR', 86.241338),
(68, 'IQD', 1692.50849),
(69, 'IRR', 48925.613996),
(70, 'ISK', 150.905426),
(71, 'JEP', 0.837823),
(72, 'JMD', 172.103661),
(73, 'JOD', 0.822193),
(74, 'JPY', 129.894084),
(75, 'KES', 128.162458),
(76, 'KGS', 98.327498),
(77, 'KHR', 4747.605566),
(78, 'KMF', 488.914441),
(79, 'KPW', 1043.684594),
(80, 'KRW', 1378.15647),
(81, 'KWD', 0.349576),
(82, 'KYD', 0.966598),
(83, 'KZT', 493.555085),
(84, 'LAK', 11480.530463),
(85, 'LBP', 1771.944678),
(86, 'LKR', 231.671769),
(87, 'LRD', 198.358023),
(88, 'LSL', 17.499551),
(89, 'LTL', 3.424143),
(90, 'LVL', 0.701461),
(91, 'LYD', 5.259061),
(92, 'MAD', 10.4525),
(93, 'MDL', 20.470659),
(94, 'MGA', 4598.010296),
(95, 'MKD', 61.306433),
(96, 'MMK', 2170.584456),
(97, 'MNT', 3292.520766),
(98, 'MOP', 9.298723),
(99, 'MRO', 413.994683),
(100, 'MUR', 49.717973),
(101, 'MVR', 17.916916),
(102, 'MWK', 945.113834),
(103, 'MXN', 23.921132),
(104, 'MYR', 4.852898),
(105, 'MZN', 74.019978),
(106, 'NAD', 17.499026),
(107, 'NGN', 475.178368),
(108, 'NIO', 40.773077),
(109, 'NOK', 10.174696),
(110, 'NPR', 137.635579),
(111, 'NZD', 1.68961),
(112, 'OMR', 0.446427),
(113, 'PAB', 1.159878),
(114, 'PEN', 4.786454),
(115, 'PGK', 4.099358),
(116, 'PHP', 59.08759),
(117, 'PKR', 196.96682),
(118, 'PLN', 4.632138),
(119, 'PYG', 7987.642332),
(120, 'QAR', 4.199073),
(121, 'RON', 4.947641),
(122, 'RSD', 116.982582),
(123, 'RUB', 84.539026),
(124, 'RWF', 1156.750407),
(125, 'SAR', 4.349516),
(126, 'SBD', 9.348281),
(127, 'SCR', 16.914898),
(128, 'SDG', 511.958591),
(129, 'SEK', 10.215294),
(130, 'SGD', 1.579408),
(131, 'SHP', 1.597298),
(132, 'SLL', 12263.29384),
(133, 'SOS', 678.395078),
(134, 'SRD', 24.797934),
(135, 'STD', 24002.403963),
(136, 'SVC', 10.149433),
(137, 'SYP', 1458.187641),
(138, 'SZL', 17.499373),
(139, 'THB', 39.428497),
(140, 'TJS', 13.146415),
(141, 'TMT', 4.058773),
(142, 'TND', 3.258038),
(143, 'TOP', 2.628172),
(144, 'TRY', 10.363022),
(145, 'TTD', 7.872351),
(146, 'TWD', 32.253914),
(147, 'TZS', 2678.790608),
(148, 'UAH', 30.841025),
(149, 'UGX', 4102.2489),
(150, 'USD', 1.15965),
(151, 'UYU', 49.52959),
(152, 'UZS', 12390.855298),
(153, 'VEF', 247968116987.85),
(154, 'VND', 26388.404896),
(155, 'VUV', 129.453686),
(156, 'WST', 2.969073),
(157, 'XAF', 652.524321),
(158, 'XAG', 0.053946),
(159, 'XAU', 0.000673),
(160, 'XCD', 3.13401),
(161, 'XDR', 0.819489),
(162, 'XOF', 651.147985),
(163, 'XPF', 118.805935),
(164, 'YER', 14750.683797),
(165, 'ZAR', 17.639371),
(166, 'ZMK', 10438.234853),
(167, 'ZMW', 19.40936),
(168, 'ZWL', 373.406676);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peticion`
--

CREATE TABLE `peticion` (
  `id` int(11) NOT NULL,
  `consulta` varchar(500) NOT NULL,
  `respuesta` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `peticion`
--

INSERT INTO `peticion` (`id`, `consulta`, `respuesta`) VALUES
(3, 'EUR,USD,30,2021-09-29', '30 EUR son: 34.7895 USD'),
(4, 'EUR,USD,30,2021-09-30', '30 EUR son: 34.7895 USD'),
(5, 'USD,EUR,30,2021-09-22', '30 USD son: 25.869874531109 EUR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sectores`
--

CREATE TABLE `sectores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sectores`
--

INSERT INTO `sectores` (`id`, `nombre`) VALUES
(1, 'Hostelería y gastronomía'),
(2, 'Salud y bienestar'),
(8, 'Diseño gráfico / Web');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(500) NOT NULL,
  `apellidos` varchar(500) NOT NULL,
  `usuario` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `pass` varchar(500) NOT NULL,
  `rol` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `usuario`, `email`, `pass`, `rol`) VALUES
(1, 'Míriam', 'Díaz', 'mdire', 'memail@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin'),
(2, 'Pepe', 'Rubio Montes', 'peper', 'pepe@pepe.com', '202cb962ac59075b964b07152d234b70', 'cliente'),
(3, 'Sara', 'Mena', 'sasa', 'sara@email.com', '202cb962ac59075b964b07152d234b70', 'cliente'),
(7, 'Admin', 'admin admin', 'admin', 'admin@admin.com', '202cb962ac59075b964b07152d234b70', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariossectores`
--

CREATE TABLE `usuariossectores` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_sector` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuariossectores`
--

INSERT INTO `usuariossectores` (`id`, `id_usuario`, `id_sector`) VALUES
(3, 3, 2),
(7, 2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sector` (`id_sector`),
  ADD KEY `id_sector_2` (`id_sector`);

--
-- Indices de la tabla `monedas`
--
ALTER TABLE `monedas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peticion`
--
ALTER TABLE `peticion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sectores`
--
ALTER TABLE `sectores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuariossectores`
--
ALTER TABLE `usuariossectores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_sector` (`id_sector`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `monedas`
--
ALTER TABLE `monedas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT de la tabla `peticion`
--
ALTER TABLE `peticion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `sectores`
--
ALTER TABLE `sectores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuariossectores`
--
ALTER TABLE `usuariossectores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD CONSTRAINT `empresas_ibfk_1` FOREIGN KEY (`id_sector`) REFERENCES `sectores` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuariossectores`
--
ALTER TABLE `usuariossectores`
  ADD CONSTRAINT `usuariossectores_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuariossectores_ibfk_2` FOREIGN KEY (`id_sector`) REFERENCES `sectores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
