-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-04-2020 a las 17:13:46
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `smc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `Cod_Cliente` int(50) NOT NULL DEFAULT '0',
  `Nombre` varchar(20) DEFAULT NULL,
  `Apellidos` varchar(25) DEFAULT NULL,
  `DNI` varchar(9) DEFAULT NULL,
  `TLF` varchar(9) DEFAULT NULL,
  `Direccion` varchar(20) DEFAULT NULL,
  `Poblacion` varchar(15) DEFAULT NULL,
  `Cod_Seguro` int(30) DEFAULT NULL,
  `Cod_Incidencia` int(30) DEFAULT NULL,
  `Cod_Empleado` int(7) DEFAULT NULL,
  PRIMARY KEY (`Cod_Cliente`),
  KEY `Cod_Seguro` (`Cod_Seguro`),
  KEY `Cod_Incidencia` (`Cod_Incidencia`),
  KEY `Cod_Empleado` (`Cod_Empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`Cod_Cliente`, `Nombre`, `Apellidos`, `DNI`, `TLF`, `Direccion`, `Poblacion`, `Cod_Seguro`, `Cod_Incidencia`, `Cod_Empleado`) VALUES
(1, 'Rafael', 'Gomez Zorrilla', '78468559J', '656998002', 'Calle 13', 'Torrelavega', 1, 1, 1),
(2, 'Dakota', 'Carter', '75499668Q', '758540020', 'Barrio San Pedro', 'Rumoroso', 1, 2, 2),
(3, 'Alejandro', 'Lopez Camus', '13975228F', '785880016', 'Calle la Esperanza', 'Polientes', 1, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE IF NOT EXISTS `detalle` (
  `Cod_Detalle` int(20) NOT NULL DEFAULT '0',
  `Cantidad` int(50) DEFAULT NULL,
  `Cod_Pedido` int(50) DEFAULT NULL,
  `Cod_Producto` int(20) DEFAULT NULL,
  PRIMARY KEY (`Cod_Detalle`),
  KEY `Cod_Pedido` (`Cod_Pedido`),
  KEY `Cod_Producto` (`Cod_Producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`Cod_Detalle`, `Cantidad`, `Cod_Pedido`, `Cod_Producto`) VALUES
(1, 1, 1, 2),
(2, 1, 2, 4),
(3, 1, 3, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE IF NOT EXISTS `empleado` (
  `Cod_Empleado` int(7) NOT NULL DEFAULT '0',
  `Nombre` varchar(20) DEFAULT NULL,
  `Apellidos` varchar(25) DEFAULT NULL,
  `E_Mail` varchar(30) DEFAULT NULL,
  `Puesto` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Cod_Empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`Cod_Empleado`, `Nombre`, `Apellidos`, `E_Mail`, `Puesto`) VALUES
(1, 'Diego', 'Castilla Sanchez', 'pain_diegopaleos@gmail.com', 'Desarrollador'),
(2, 'Victor Jose', 'Contreras', 'contreras@yahoo.com', 'Desarrollador'),
(3, 'Juan Felipe', 'Pino', 'juanfe@gmail.com', 'Tecnico informatico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gama`
--

CREATE TABLE IF NOT EXISTS `gama` (
  `Cod_Gama` int(4) NOT NULL DEFAULT '0',
  `Descripcion` varchar(50) DEFAULT NULL,
  `Gama` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Cod_Gama`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gama`
--

INSERT INTO `gama` (`Cod_Gama`, `Descripcion`, `Gama`) VALUES
(1, 'TV Box Sunnzo x96 mini', 'Baja'),
(2, 'TV Box Xiaomi mi', 'Media'),
(3, 'Nvidia Shield TV Pro', 'Alta'),
(4, 'Modelo 3 B', 'Raspberry'),
(5, 'Modelo 4 4GB', 'Raspberry');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencia`
--

CREATE TABLE IF NOT EXISTS `incidencia` (
  `Cod_Incidencia` int(30) NOT NULL DEFAULT '0',
  `Fecha_Alta` varchar(10) DEFAULT NULL,
  `Fecha_Fin` varchar(10) DEFAULT NULL,
  `Descripcion` varchar(50) DEFAULT NULL,
  `Empleado_Resuelve` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Cod_Incidencia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `incidencia`
--

INSERT INTO `incidencia` (`Cod_Incidencia`, `Fecha_Alta`, `Fecha_Fin`, `Descripcion`, `Empleado_Resuelve`) VALUES
(1, '25/04/2020', '26/04/2020', 'Fallo de red, no conecta wifi', 'Diego Castilla'),
(2, '28/04/2020', '29/04/2020', 'No se inicia Kodi', 'Victor Jose Contrera'),
(3, '30/04/2020', '01/05/2020', 'Fallo de actualización de addon', 'Juan Felipe Pino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jefe`
--

CREATE TABLE IF NOT EXISTS `jefe` (
  `Cod_Jefe` int(1) NOT NULL DEFAULT '0',
  `Descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_Jefe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `jefe`
--

INSERT INTO `jefe` (`Cod_Jefe`, `Descripcion`) VALUES
(1, 'Raúl Lavín Martínez'),
(2, 'Rubén Sosa Iglesias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficina`
--

CREATE TABLE IF NOT EXISTS `oficina` (
  `Cod_Oficina` int(4) DEFAULT NULL,
  `Cod_Empleado` int(7) DEFAULT NULL,
  `Cod_Jefe` int(1) DEFAULT NULL,
  `Telefono` varchar(9) NOT NULL DEFAULT '',
  PRIMARY KEY (`Telefono`),
  KEY `Cod_Empleado` (`Cod_Empleado`),
  KEY `Cod_Jefe` (`Cod_Jefe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `oficina`
--

INSERT INTO `oficina` (`Cod_Oficina`, `Cod_Empleado`, `Cod_Jefe`, `Telefono`) VALUES
(1, NULL, 1, '622334166'),
(1, 2, NULL, '642643776'),
(1, NULL, 2, '677876744'),
(1, 3, NULL, '688999001'),
(1, 1, NULL, '690345069');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE IF NOT EXISTS `pago` (
  `Cod_Pago` int(50) NOT NULL DEFAULT '0',
  `Forma` varchar(20) DEFAULT NULL,
  `Fecha` varchar(10) DEFAULT NULL,
  `Total` varchar(10) DEFAULT NULL,
  `Cod_Cliente` int(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_Pago`),
  KEY `Cod_Cliente` (`Cod_Cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`Cod_Pago`, `Forma`, `Fecha`, `Total`, `Cod_Cliente`) VALUES
(1, 'Tarjeta', '20/04/2020', '95', 1),
(2, 'Metalico', '21/04/2020', '165', 2),
(3, 'Tarjeta', '22/04/2020', '165', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE IF NOT EXISTS `pedido` (
  `Cod_Pedido` int(50) NOT NULL DEFAULT '0',
  `Fecha_Pedido` varchar(10) DEFAULT NULL,
  `Precio` varchar(10) DEFAULT NULL,
  `Cod_Cliente` int(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_Pedido`),
  KEY `Cod_Cliente` (`Cod_Cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`Cod_Pedido`, `Fecha_Pedido`, `Precio`, `Cod_Cliente`) VALUES
(1, '20/04/2020', '95', 1),
(2, '21/04/2020', '165', 2),
(3, '22/04/2020', '165', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `Cod_Producto` int(20) NOT NULL DEFAULT '0',
  `Descripcion` varchar(50) DEFAULT NULL,
  `Precio` varchar(10) DEFAULT NULL,
  `Cod_Gama` int(4) DEFAULT NULL,
  PRIMARY KEY (`Cod_Producto`),
  KEY `Cod_Gama` (`Cod_Gama`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`Cod_Producto`, `Descripcion`, `Precio`, `Cod_Gama`) VALUES
(1, 'TV Box gama Baja Sunnzo', '65', 1),
(2, 'TV Box gama media Xiaomi mi', '95', 2),
(3, 'TV Boxgama alta Nvidia Shield', '270', 3),
(4, 'Raspberry Pi 3 Modelo B', '150', 4),
(5, 'Raspberry Pi 4 4GB', '200', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguro`
--

CREATE TABLE IF NOT EXISTS `seguro` (
  `Cod_Seguro` int(30) NOT NULL DEFAULT '0',
  `Descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_Seguro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seguro`
--

INSERT INTO `seguro` (`Cod_Seguro`, `Descripcion`) VALUES
(1, 'Seguro de mantenimiento anual');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`Cod_Seguro`) REFERENCES `seguro` (`Cod_Seguro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`Cod_Incidencia`) REFERENCES `incidencia` (`Cod_Incidencia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cliente_ibfk_3` FOREIGN KEY (`Cod_Empleado`) REFERENCES `empleado` (`Cod_Empleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_1` FOREIGN KEY (`Cod_Pedido`) REFERENCES `pedido` (`Cod_Pedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_ibfk_2` FOREIGN KEY (`Cod_Producto`) REFERENCES `producto` (`Cod_Producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `oficina`
--
ALTER TABLE `oficina`
  ADD CONSTRAINT `oficina_ibfk_1` FOREIGN KEY (`Cod_Empleado`) REFERENCES `empleado` (`Cod_Empleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `oficina_ibfk_2` FOREIGN KEY (`Cod_Jefe`) REFERENCES `jefe` (`Cod_Jefe`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`Cod_Cliente`) REFERENCES `cliente` (`Cod_Cliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`Cod_Cliente`) REFERENCES `cliente` (`Cod_Cliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`Cod_Gama`) REFERENCES `gama` (`Cod_Gama`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
