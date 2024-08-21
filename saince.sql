-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-04-2024 a las 02:38:43
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
-- Base de datos: `saince`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Postre de frutas', '2024-04-07 22:24:05'),
(2, 'Postre a base de Lacteos', '2023-11-11 22:22:52'),
(3, 'Postres de huevos', '2024-04-07 22:24:21'),
(4, 'Postres light', '2024-04-07 22:24:27'),
(6, 'Otros', '2024-04-07 22:24:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text NOT NULL,
  `telefono` text NOT NULL,
  `direccion` text NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(2, 'Maria Amortegui', 56789, 'maria@gmail.com', '(302) 462-6330', 'Diagonal 14d', '1999-01-04', 8, '2024-04-07 14:31:59', '2024-04-07 19:31:59'),
(5, 'Andres Silva', 1092913672, 'andres@gmail.com', '(312) 898-7654', 'calle 15', '2004-03-21', 3, '2023-11-23 18:39:02', '2023-11-23 23:39:02'),
(6, 'Juan Carlos Perez', 821459083, 'juancperez@hotmail.com', '(310) 567-8910', ' Carrera 45 #10-23', '1985-07-12', 0, NULL, '2024-04-08 00:00:25'),
(7, 'Laura Rojas Ramirez', 706382941, 'laurarojasr@gmail.com', '(315) 432-7659', 'Calle 20 #5-45', '1990-03-28', 2, '2024-04-07 19:20:23', '2024-04-08 00:20:23'),
(8, 'Andres Salazar', 950174368, 'andressalazar@yahoo.com', '(300) 876-5432', 'Avenida 3 Este #12-67', '1982-11-05', 7, '2024-04-07 19:21:18', '2024-04-08 00:21:18'),
(9, 'Carolina Gomez', 524389017, 'carogomez@gmail.com', '(318) 765-4321', 'Calle 25 #8-91', '1977-09-20', 3, '2024-04-07 19:22:20', '2024-04-08 00:22:20'),
(10, 'Daniel Garcia', 237810945, 'danielgarcia@hotmail.com', '(317) 678-1234', 'Diagonal 18B #7-32', '1995-05-15', 6, '2024-04-07 19:14:06', '2024-04-08 00:14:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(16, 1, '102', 'Merengon tropical', 'vistas/img/productos/102/969.png', 94, 0, 9800, 19, '2024-04-08 00:21:18'),
(17, 1, '103', 'Merengon Mixto', 'vistas/img/productos/103/432.png', 97, 0, 9800, 5, '2024-04-07 22:17:55'),
(18, 1, '104', 'Merengon guanabana', 'vistas/img/productos/104/407.png', 102, 0, 9800, 0, '2024-04-07 22:18:03'),
(19, 1, '105', 'Vaso de gelatina', 'vistas/img/productos/105/208.png', 22, 0, 4500, 0, '2023-11-23 22:47:03'),
(20, 1, '106', 'Merengon frutos rojos', 'vistas/img/productos/106/160.png', 99, 0, 9800, 1, '2024-04-07 22:18:15'),
(21, 1, '107', 'Merengon fresa', 'vistas/img/productos/107/255.png', 100, 0, 9800, 0, '2024-04-07 22:18:23'),
(22, 1, '108', 'Merengon arequipe', 'vistas/img/productos/201/107.png', 99, 0, 9800, 2, '2024-04-08 00:14:06'),
(23, 2, '201', 'Carnaval de gelatinas', 'vistas/img/productos/202/716.png', 20, 0, 8800, 0, '2024-04-07 22:19:57'),
(24, 2, '202', 'Cheesecake frutos rojos', 'vistas/img/productos/203/380.png', 25, 0, 8800, 0, '2024-04-07 22:20:04'),
(25, 2, '203', 'Arroz con leche', 'vistas/img/productos/204/929.png', 50, 0, 3500, 0, '2024-04-07 22:20:11'),
(26, 2, '204', 'Cheesecake guanabana', 'vistas/img/productos/205/932.png', 25, 0, 8800, 0, '2024-04-07 22:20:15'),
(27, 2, '205', 'Cheesecake limon', 'vistas/img/productos/206/820.png', 25, 0, 8800, 0, '2024-04-07 22:20:21'),
(28, 2, '206', 'Cheesecake maracuya', 'vistas/img/productos/207/273.png', 25, 0, 8800, 0, '2024-04-07 22:20:25'),
(29, 2, '207', 'Cheesecake oreo', 'vistas/img/productos/208/184.png', 24, 0, 8800, 1, '2024-04-08 00:22:20'),
(30, 2, '208', 'Pannacotta', 'vistas/img/productos/209/244.png', 19, 7654, 10715.6, 1, '2024-04-08 00:21:18'),
(31, 2, '209', 'Postre de las tres leches', 'vistas/img/productos/210/344.png', 19, 6788, 9503.2, 2, '2024-04-08 00:14:06'),
(33, 2, '210', 'Postre de natas', 'vistas/img/productos/212/649.png', 19, 5678, 7949.2, 1, '2024-04-08 00:21:18'),
(34, 2, '211', 'Vaso de mielmesabe', 'vistas/img/productos/213/678.png', 19, 4568, 6395.2, 1, '2024-04-08 00:22:20'),
(36, 3, '301', 'Leche asada', 'vistas/img/productos/301/795.png', 18, 4567, 6393.8, 2, '2024-04-08 00:22:20'),
(37, 3, '302', 'Torta de chocolate', 'vistas/img/productos/302/927.png', 20, 4568, 6395.2, 0, '2024-04-07 22:21:59'),
(38, 3, '303', 'Torta de queso', 'vistas/img/productos/303/284.png', 20, 3456, 4838.4, 0, '2024-04-07 22:22:06'),
(39, 3, '304', 'Torta de manzana', 'vistas/img/productos/304/107.png', 19, 4567, 6393.8, 1, '2024-04-08 00:20:23'),
(40, 4, '401', 'Postre maracuya light', 'vistas/img/productos/401/544.png', 18, 5678, 7949.2, 3, '2024-04-08 00:14:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `usuario` text NOT NULL,
  `password` text NOT NULL,
  `perfil` text NOT NULL,
  `foto` text NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Usuario admin', 'admin', '$2a$07$asxx54ahjppf45sd87a5aunxs9bkpyGmGE/.vekdjFg83yRec789S', 'Administrador', '', 1, '2024-04-07 19:36:42', '2024-04-08 00:36:42'),
(13, 'Andres Silva ', 'Andres', '$2a$07$asxx54ahjppf45sd87a5aunxs9bkpyGmGE/.vekdjFg83yRec789S', 'Vendedor', 'vistas/img/usuarios/Andres/668.png', 1, '2023-11-21 10:36:39', '2024-04-08 00:04:39'),
(14, 'Maria Amortegui', 'Maria', '$2a$07$asxx54ahjppf45sd87a5au/styESZTpqxpFPzgJF99YaIo877LNdy', 'Vendedor', 'vistas/img/usuarios/Maria/688.png', 1, '2023-11-16 22:53:16', '2023-11-17 03:53:16'),
(15, 'Heidy Vega', 'Heidy', '$2a$07$asxx54ahjppf45sd87a5auKcD9pqhvaDdy6vjHWin9Lt4BVJPdCoC', 'Vendedor', 'vistas/img/usuarios/Heidy/320.png', 1, '2023-11-24 12:00:34', '2023-11-24 17:00:34'),
(16, 'Natascha Machuca', 'Natascha', '$2a$07$asxx54ahjppf45sd87a5au5A3lDypfmsKOTGpzuy5XtDIqehPdYte', 'Vendedor', 'vistas/img/usuarios/Natascha/977.png', 1, '2023-11-20 11:27:41', '2023-11-20 16:27:41'),
(17, 'Julio Fernandez', 'Julio', '$2a$07$asxx54ahjppf45sd87a5aunxs9bkpyGmGE/.vekdjFg83yRec789S', 'Especial', 'vistas/img/usuarios/Julio/627.png', 1, '2023-11-24 12:01:25', '2024-04-08 00:05:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(9, 10001, 2, 1, '[{\"id\":\"16\",\"descripcion\":\"Merengon tropical\",\"cantidad\":\"1\",\"stock\":\"101\",\"precio\":\"9800\",\"total\":\"9800\"},{\"id\":\"17\",\"descripcion\":\"Merengon Mixto\",\"cantidad\":\"1\",\"stock\":\"99\",\"precio\":\"9800\",\"total\":\"9800\"}]', 1960, 19600, 21560, 'Efectivo', '2023-10-31 22:25:42'),
(10, 10002, 2, 1, '[{\"id\":\"20\",\"descripcion\":\"Merengon frutos rojos\",\"cantidad\":\"1\",\"stock\":\"99\",\"precio\":\"9800\",\"total\":\"9800\"},{\"id\":\"21\",\"descripcion\":\"Merengon fresa\",\"cantidad\":\"1\",\"stock\":\"99\",\"precio\":\"9800\",\"total\":\"9800\"}]', 1960, 19600, 21560, 'Efectivo', '2023-11-15 22:26:00'),
(12, 10003, 5, 1, '[{\"id\":\"16\",\"descripcion\":\"Merengon tropical\",\"cantidad\":\"1\",\"stock\":\"99\",\"precio\":\"9800\",\"total\":\"9800\"},{\"id\":\"17\",\"descripcion\":\"Merengon Mixto\",\"cantidad\":\"1\",\"stock\":\"97\",\"precio\":\"9800\",\"total\":\"9800\"},{\"id\":\"20\",\"descripcion\":\"Merengon frutos rojos\",\"cantidad\":\"1\",\"stock\":\"99\",\"precio\":\"9800\",\"total\":\"9800\"}]', 2940, 29400, 32340, 'Efectivo', '2023-11-23 22:27:27'),
(13, 10004, 2, 1, '[{\"id\":\"40\",\"descripcion\":\"Postre maracuya light\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"7949.2\",\"total\":\"7949.2\"}]', 0, 7949.2, 7949.2, 'Efectivo', '2023-12-14 22:26:23'),
(14, 10005, 10, 1, '[{\"id\":\"40\",\"descripcion\":\"Postre maracuya light\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"7949.2\",\"total\":\"7949.2\"},{\"id\":\"31\",\"descripcion\":\"Postre de las tres leches\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"9503.2\",\"total\":\"9503.2\"},{\"id\":\"22\",\"descripcion\":\"Merengon arequipe\",\"cantidad\":\"1\",\"stock\":\"99\",\"precio\":\"9800\",\"total\":\"9800\"}]', 0, 27252.4, 27252.4, 'Efectivo', '2023-12-20 00:13:18'),
(16, 10006, 7, 1, '[{\"id\":\"39\",\"descripcion\":\"Torta de manzana\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"6393.8\",\"total\":\"6393.8\"},{\"id\":\"36\",\"descripcion\":\"Leche asada\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"6393.8\",\"total\":\"6393.8\"}]', 1278.76, 12787.6, 14066.4, 'Efectivo', '2024-01-11 00:20:23'),
(17, 10007, 8, 1, '[{\"id\":\"33\",\"descripcion\":\"Postre de natas\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"7949.2\",\"total\":\"7949.2\"},{\"id\":\"30\",\"descripcion\":\"Pannacotta\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"10715.6\",\"total\":\"10715.6\"},{\"id\":\"16\",\"descripcion\":\"Merengon tropical\",\"cantidad\":\"5\",\"stock\":\"94\",\"precio\":\"9800\",\"total\":\"49000\"}]', 6766.48, 67664.8, 74431.3, 'TC-10405032', '2024-01-19 00:21:18'),
(18, 10008, 9, 1, '[{\"id\":\"29\",\"descripcion\":\"Cheesecake oreo\",\"cantidad\":\"1\",\"stock\":\"24\",\"precio\":\"8800\",\"total\":\"8800\"},{\"id\":\"34\",\"descripcion\":\"Vaso de mielmesabe\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"6395.2\",\"total\":\"6395.2\"},{\"id\":\"36\",\"descripcion\":\"Leche asada\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"6393.8\",\"total\":\"6393.8\"}]', 2158.9, 21589, 23747.9, 'Efectivo', '2024-01-31 00:22:20'),
(19, 10009, 2, 1, '[{\"id\":\"16\",\"descripcion\":\"Merengon tropical\",\"cantidad\":\"1\",\"stock\":\"101\",\"precio\":\"9800\",\"total\":\"9800\"},{\"id\":\"17\",\"descripcion\":\"Merengon Mixto\",\"cantidad\":\"1\",\"stock\":\"99\",\"precio\":\"9800\",\"total\":\"9800\"}]', 1960, 19600, 21560, 'Efectivo', '2024-02-10 03:25:42'),
(20, 10010, 2, 1, '[{\"id\":\"20\",\"descripcion\":\"Merengon frutos rojos\",\"cantidad\":\"1\",\"stock\":\"99\",\"precio\":\"9800\",\"total\":\"9800\"},{\"id\":\"21\",\"descripcion\":\"Merengon fresa\",\"cantidad\":\"1\",\"stock\":\"99\",\"precio\":\"9800\",\"total\":\"9800\"}]', 1960, 19600, 21560, 'Efectivo', '2024-02-18 03:26:00'),
(21, 10011, 5, 1, '[{\"id\":\"16\",\"descripcion\":\"Merengon tropical\",\"cantidad\":\"1\",\"stock\":\"99\",\"precio\":\"9800\",\"total\":\"9800\"},{\"id\":\"17\",\"descripcion\":\"Merengon Mixto\",\"cantidad\":\"1\",\"stock\":\"97\",\"precio\":\"9800\",\"total\":\"9800\"},{\"id\":\"20\",\"descripcion\":\"Merengon frutos rojos\",\"cantidad\":\"1\",\"stock\":\"99\",\"precio\":\"9800\",\"total\":\"9800\"}]', 2940, 29400, 32340, 'Efectivo', '2024-02-21 03:27:27'),
(22, 10012, 2, 1, '[{\"id\":\"40\",\"descripcion\":\"Postre maracuya light\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"7949.2\",\"total\":\"7949.2\"}]', 0, 7949.2, 7949.2, 'Efectivo', '2024-03-09 03:26:23'),
(23, 10013, 10, 1, '[{\"id\":\"40\",\"descripcion\":\"Postre maracuya light\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"7949.2\",\"total\":\"7949.2\"},{\"id\":\"31\",\"descripcion\":\"Postre de las tres leches\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"9503.2\",\"total\":\"9503.2\"},{\"id\":\"22\",\"descripcion\":\"Merengon arequipe\",\"cantidad\":\"1\",\"stock\":\"99\",\"precio\":\"9800\",\"total\":\"9800\"}]', 0, 27252.4, 27252.4, 'Efectivo', '2024-03-13 05:13:18'),
(24, 10014, 7, 1, '[{\"id\":\"39\",\"descripcion\":\"Torta de manzana\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"6393.8\",\"total\":\"6393.8\"},{\"id\":\"36\",\"descripcion\":\"Leche asada\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"6393.8\",\"total\":\"6393.8\"}]', 1278.76, 12787.6, 14066.4, 'Efectivo', '2024-04-02 05:20:23'),
(25, 10015, 8, 1, '[{\"id\":\"33\",\"descripcion\":\"Postre de natas\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"7949.2\",\"total\":\"7949.2\"},{\"id\":\"30\",\"descripcion\":\"Pannacotta\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"10715.6\",\"total\":\"10715.6\"},{\"id\":\"16\",\"descripcion\":\"Merengon tropical\",\"cantidad\":\"5\",\"stock\":\"94\",\"precio\":\"9800\",\"total\":\"49000\"}]', 6766.48, 67664.8, 74431.3, 'TC-10405032', '2024-04-05 05:21:18'),
(26, 10016, 9, 1, '[{\"id\":\"29\",\"descripcion\":\"Cheesecake oreo\",\"cantidad\":\"1\",\"stock\":\"24\",\"precio\":\"8800\",\"total\":\"8800\"},{\"id\":\"34\",\"descripcion\":\"Vaso de mielmesabe\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"6395.2\",\"total\":\"6395.2\"},{\"id\":\"36\",\"descripcion\":\"Leche asada\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"6393.8\",\"total\":\"6393.8\"}]', 2158.9, 21589, 23747.9, 'Efectivo', '2024-04-08 05:22:20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_vendedor` (`id_vendedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_vendedor`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
