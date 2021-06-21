-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-06-2021 a las 18:21:12
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sanova`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `pk_msg` int(5) NOT NULL,
  `fk_emisor` varchar(9) NOT NULL,
  `fk_receptor` varchar(9) NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  `hora` varchar(5) NOT NULL,
  `mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`pk_msg`, `fk_emisor`, `fk_receptor`, `fecha`, `hora`, `mensaje`) VALUES
(125, '00000000y', '00000000j', '2021-06-10', '17:05', 'sdfsdffds');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `pk_dni` varchar(9) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(60) DEFAULT NULL,
  `area` varchar(9) NOT NULL DEFAULT 'pacientes',
  `correo` varchar(60) NOT NULL,
  `contrasenya` varchar(60) NOT NULL,
  `img` varchar(20) NOT NULL,
  `provincia` varchar(20) DEFAULT NULL,
  `localidad` varchar(60) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`pk_dni`, `nombre`, `apellidos`, `area`, `correo`, `contrasenya`, `img`, `provincia`, `localidad`, `direccion`) VALUES
('00000000b', 'Guillermo', 'Pulido Lopez', 'pacientes', 'guillermopul@gmail.com', '$2y$10$bn95mWoSwDtBmalzniMC3O5CKX1p8F4UntgcHc5yW/puDl50k68Ia', 'default.jpg', 'Madrid', 'Alcorcón', 'Calle Palmeras'),
('00000000c', 'Maria', 'Dotor Garroba', 'pacientes', 'mariadotor@gmail.com', '$2y$10$EUcEPSyL53HMj8E.3oDNEeRu6nSMDOlT9VWAWh/JRl1uDr3mdn4ty', '2.jpeg', 'Madrid', 'Madrid', 'Avenida Callao'),
('00000000d', 'Alfonso', 'Perez Barrosa', 'pacientes', 'alfonsoperez@gmail.com', '$2y$10$vZOnpYa7saU2cFUHFUMtiuxF1xrp9DcxEN1pqx5xTe/A55FqklvhW', '5.jpg', 'Ciudad Real', 'Alamillo', 'Calle Palomo'),
('00000000e', 'Rodolfo', 'Augusto López', 'pacientes', 'rodolfoaugusto@gmail.com', '$2y$10$KOmltLWtvSOszcmFSvE67.WQraMy8.11rTsjJAbYbRdMYKIykeLV6', '6.jpeg', 'León', 'Acebedo', 'Calle Palmeras'),
('00000000f', 'Paco', 'Bueno Perico', 'pacientes', 'pacobueno@gmail.com', '$2y$10$/.FQLphbWqlruFfpLasbSOI3bYmD1s7/6EDGtMFcrCpr1ipgCQcHa', '7.jpeg', 'Navarra', 'Aizcorbe', 'Calle las rosas'),
('00000000g', 'Olenka', 'Blaz Otero', 'pacientes', 'olenkablaz@gmail.com', '$2y$10$5WUsyrltgj.42KZbR.pM9OwVN9xYeKzWyQ9yMVD60HGzrd83iLaQ6', '8.jpeg', 'Zaragoza', 'Abanto', 'Calle los robles'),
('00000000h', 'Mónica', 'Pineda Gimenez', 'pacientes', 'monicapineda@gmail.com', '$2y$10$9tomfwIVi1LZ86Nad3BsN.hOEoy7CM3gNvuqL33kY49Atp87.18Me', '9.jpeg', 'Cáceres', 'Acebo', NULL),
('00000000i', 'Paloma', 'Castrenjo Barrosa', 'pacientes', 'palomacastrenjo@gmail.com', '$2y$10$6gt69Tw/zm5NtZBDlVL0CeKrRjlR6WFSREX/0gKLksePmw1VBvO6i', '10.jpeg', 'Ciudad Real', 'Alamillo', NULL),
('00000000j', 'Maria', 'Dotor Contreras', 'pacientes', 'mariadotor@gmail.com', '$2y$10$wTmvtoDAh84kaCNNqa3l5.ie3E9TaN5cCCXHKbqndWhZVSjL16VsS', '11.jpg', 'Granada', 'Albolote', 'Avda Castelloón'),
('00000000k', 'Iñigo', 'Castro Palomo', 'pacientes', 'iñigocastro@gmail.com', '$2y$10$xl2WcjTRQBTnrYywcE3Fi.D4rLaGdXv0FZix39k.G8/n5qLdkpYCW', '12.jpg', 'Asturias', 'Aballe', NULL),
('00000000l', 'Juancho', 'Marques Turrion', 'pacientes', 'juanchomarques@gmail.com', '$2y$10$XDnhLTQO5yH8crA7d0Mkdu8psngsvJ.F2WscLjZHewFS9JZUSnRru', '14.jpg', 'Castellón', 'Ahín', NULL),
('00000000m', 'Margarita', 'Flores Castro', 'pacientes', 'margaritaflores@gmail.com', '$2y$10$hFSxxVmxx/jIE9hLPxkHyePyF9WZ63z/In25i.efTB4WHcOJMasPu', '13.jpeg', 'Valencia', 'Bétera', 'Calle valdemorillos'),
('00000000y', 'Carlos', 'Matute Sainz', 'medicos', 'carlosmatute@gmail.com', '$2y$10$IYPoHM3kKjLEjE6CkopwFOBNcXAacTluX2KvQfPJW.GVMuLWjU5mm', '3.jpeg', 'Madrid', 'Móstoles', 'Calle Azucena'),
('00000000z', 'Claudia', 'Arranz Peinado', 'medicos', 'claudiaarranz@gmail.com', '$2y$10$Kc1aOfYp7xlri3/00Cghu.oUIiIHAalRTMO1swuL7if4kzlzogEpK', '4.jpg', 'Madrid', 'Fuenlabrada', 'Calle Albaricoque'),
('admin', 'Admin', NULL, 'admin', 'sanovatfg@gmail.com', '$2y$10$C.XYOMTh4KFqZLr0GU3OFO8B1zVzT5Z8.Usri7K92wdA/Vx36Sssi', 'admin.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usu_medicos`
--

CREATE TABLE `usu_medicos` (
  `pk_dniMedico` varchar(9) NOT NULL,
  `num_pacientes` int(2) NOT NULL,
  `num_vacunados` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usu_medicos`
--

INSERT INTO `usu_medicos` (`pk_dniMedico`, `num_pacientes`, `num_vacunados`) VALUES
('00000000y', 8, 3),
('00000000z', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usu_pacientes`
--

CREATE TABLE `usu_pacientes` (
  `pk_dniPaciente` varchar(9) NOT NULL,
  `sexo` char(1) NOT NULL,
  `fecha_nac` date NOT NULL,
  `covid_pasado` varchar(11) DEFAULT 'desconocido',
  `vacunado` varchar(2) NOT NULL,
  `afecciones` varchar(90) NOT NULL,
  `fk_vacuna` int(2) DEFAULT NULL,
  `fk_dniMedico` varchar(9) DEFAULT NULL,
  `estado_cita` varchar(14) DEFAULT 'no solicitada',
  `fecha_cita` date DEFAULT NULL,
  `hora_cita` varchar(5) DEFAULT NULL,
  `informe` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usu_pacientes`
--

INSERT INTO `usu_pacientes` (`pk_dniPaciente`, `sexo`, `fecha_nac`, `covid_pasado`, `vacunado`, `afecciones`, `fk_vacuna`, `fk_dniMedico`, `estado_cita`, `fecha_cita`, `hora_cita`, `informe`) VALUES
('00000000b', 'h', '1998-08-04', 'si', 'no', 'no', 1, '00000000y', 'establecida', '2021-06-19', '16:16', NULL),
('00000000c', 'm', '1990-06-15', 'no', 'no', 'cancer enfRespiratoria embarazo', NULL, NULL, 'solicitada', '2021-06-23', '15:00', NULL),
('00000000d', 'h', '1985-12-04', 'desconocido', 'no', 'no', 1, '00000000y', 'establecida', '2021-06-20', '19:20', NULL),
('00000000e', 'h', '1976-01-15', 'si', 'no', 'no', NULL, NULL, 'solicitada', '2021-06-28', '17:15', NULL),
('00000000f', 'h', '1980-06-21', 'no', 'no', 'diabetes', NULL, NULL, 'solicitada', '2021-07-22', '11:45', NULL),
('00000000g', 'h', '1996-05-17', 'si', 'no', 'enfRespiratoria', NULL, NULL, 'solicitada', '2021-07-14', '13:14', NULL),
('00000000h', 'm', '2002-02-06', 'desconocido', 'no', 'no', 2, '00000000y', 'establecida', '2021-07-12', '18:20', NULL),
('00000000i', 'h', '1990-11-19', 'no', 'si', 'embarazo', 3, '00000000y', 'concluida', '2021-08-28', '13:16', NULL),
('00000000j', 'm', '1968-05-17', 'desconocido', 'no', 'no', 5, '00000000y', 'establecida', '2021-09-14', '18:00', NULL),
('00000000k', 'h', '1993-09-25', 'si', 'no', 'cancer', NULL, NULL, 'solicitada', '2021-07-16', '12:20', NULL),
('00000000l', 'h', '1985-02-22', 'desconocido', 'si', 'cancer diabetes', 1, '00000000y', 'concluida', '2021-06-23', '16:00', NULL),
('00000000m', 'm', '1958-08-20', 'no', 'no', 'diabetes', NULL, NULL, 'solicitada', '2021-06-03', '14:59', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacunas`
--

CREATE TABLE `vacunas` (
  `pk_vacuna` int(2) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `unidades` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vacunas`
--

INSERT INTO `vacunas` (`pk_vacuna`, `nombre`, `unidades`) VALUES
(1, 'Sinovac', 854),
(2, 'Moderna', 121),
(3, 'IDT', 553),
(4, 'Jhonson & Jhonson', 116),
(5, 'Pfizer', 741),
(6, 'Curevac', 0),
(7, 'Astrazeneca', 98);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`pk_msg`),
  ADD KEY `fk_usuarioEmisor` (`fk_emisor`),
  ADD KEY `fk_usuarioReceptor` (`fk_receptor`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`pk_dni`);

--
-- Indices de la tabla `usu_medicos`
--
ALTER TABLE `usu_medicos`
  ADD PRIMARY KEY (`pk_dniMedico`);

--
-- Indices de la tabla `usu_pacientes`
--
ALTER TABLE `usu_pacientes`
  ADD PRIMARY KEY (`pk_dniPaciente`),
  ADD KEY `fk_vacuna` (`fk_vacuna`),
  ADD KEY `fk_dniMedico` (`fk_dniMedico`);

--
-- Indices de la tabla `vacunas`
--
ALTER TABLE `vacunas`
  ADD PRIMARY KEY (`pk_vacuna`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `pk_msg` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD CONSTRAINT `fk_usuarioEmisor` FOREIGN KEY (`fk_emisor`) REFERENCES `usuarios` (`pk_dni`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuarioReceptor` FOREIGN KEY (`fk_receptor`) REFERENCES `usuarios` (`pk_dni`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usu_medicos`
--
ALTER TABLE `usu_medicos`
  ADD CONSTRAINT `fk_dni_med_heredado` FOREIGN KEY (`pk_dniMedico`) REFERENCES `usuarios` (`pk_dni`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usu_pacientes`
--
ALTER TABLE `usu_pacientes`
  ADD CONSTRAINT `fk_dniMedico` FOREIGN KEY (`fk_dniMedico`) REFERENCES `usu_medicos` (`pk_dniMedico`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_dni_pac_heredado` FOREIGN KEY (`pk_dniPaciente`) REFERENCES `usuarios` (`pk_dni`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vacuna` FOREIGN KEY (`fk_vacuna`) REFERENCES `vacunas` (`pk_vacuna`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
