-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-09-2023 a las 17:41:37
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
-- Base de datos: `productoslacteos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lacteos`
--

CREATE TABLE `lacteos` (
  `codigo` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `cantidad_disponible` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lacteos`
--

INSERT INTO `lacteos` (`codigo`, `nombre`, `tipo`, `cantidad_disponible`) VALUES
('abc123', 'yogurt', 'lacteo', 10),
('cba321', 'leche', 'lacteo', 15),
('def456', 'quesillo', 'lacteo', 40),
('fed654', 'crema de leche', 'lacteo', 25);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lacteos`
--
ALTER TABLE `lacteos`
  ADD PRIMARY KEY (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
