-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-07-2023 a las 22:04:37
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
-- Base de datos: `reservadb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `codigo_reserva` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `origen` varchar(100) NOT NULL,
  `destino` varchar(100) NOT NULL,
  `fecha_vuelo` datetime NOT NULL,
  `asiento_numero` int(11) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp(),
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `codigo_reserva`, `nombre`, `apellido`, `origen`, `destino`, `fecha_vuelo`, `asiento_numero`, `telefono`, `email`, `estado`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, '651516156115', 'Roger', 'Federer', 'Paris', 'Londres', '2023-07-06 00:00:00', 12, '351987456', 'rogerpro@gmail.com', 1, '2023-07-05 15:04:06', '2023-07-05 15:04:06', NULL),
(2, '1688581303126', 'Guillermo', 'Coria', 'Mendoza', 'Madrid', '2023-07-08 00:00:00', 15, '35198744556', 'gaudiomata@gmail.com', 0, '2023-07-05 18:21:43', '2023-07-05 18:27:03', NULL),
(3, '1688585031183', 'Paul', 'Fernandez', 'Formosa', 'Asuncion', '2023-07-08 21:25:00', 9, '3513390507', 'bocaoca@gmail.com', 0, '2023-07-05 19:23:51', '2023-07-05 19:38:22', NULL),
(4, '1688585239044', 'Ricardo', 'Gareca', 'Capital Federal', 'Lima', '2023-07-21 21:27:00', 7, '5651651651', 'sacalamano@gmail.com', 1, '2023-07-05 19:27:19', '2023-07-05 19:27:19', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo_reserva` (`codigo_reserva`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
