-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-11-2022 a las 01:34:07
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gastos_semanales`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dinero`
--

CREATE TABLE `dinero` (
  `id` int(11) NOT NULL,
  `cantidad` float(8,2) NOT NULL,
  `categoría` varchar(50) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `descripción` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dinero`
--

INSERT INTO `dinero` (`id`, `cantidad`, `categoría`, `fecha`, `descripción`) VALUES
(12, 150.00, '2', '2022-11-12 19:29:08', 'luz'),
(13, 10.00, '3', '2022-11-12 19:29:17', 'torta'),
(14, 20.00, '2', '2022-11-12 19:29:35', 'recarga'),
(15, 200.00, '2', '2022-11-12 19:29:47', 'internet'),
(19, 12.00, '5', '2022-11-12 22:50:03', 'Paleta'),
(22, 21.00, '3', '2022-11-14 20:52:26', 'comida'),
(23, 22.00, '3', '2022-11-14 20:52:45', 'burrito'),
(24, 200.00, '3', '2022-11-14 22:41:18', 'comida china');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos_categorias`
--

CREATE TABLE `gastos_categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `gastos_categorias`
--

INSERT INTO `gastos_categorias` (`id`, `nombre`) VALUES
(1, 'Sin Nada'),
(2, 'Servicios'),
(3, 'Comida'),
(4, 'Ropa'),
(5, 'Dulces');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `correo`, `password`, `telefono`, `nombre`, `status`) VALUES
(1, 'gagnaj@hotmail.com', 'banga/078', '9984190961', 'Gael', 0),
(2, 'gagnaj@outlook.com', '123456', '9984190961', 'Gael', 1),
(3, 'gaelcarrot@outlook.com', '123456', '9984190961', 'Gael', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dinero`
--
ALTER TABLE `dinero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gastos_categorias`
--
ALTER TABLE `gastos_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dinero`
--
ALTER TABLE `dinero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `gastos_categorias`
--
ALTER TABLE `gastos_categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
