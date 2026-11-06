-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 06-11-2026 a las 01:03:11
-- Versión del servidor: 8.4.3
-- Versión de PHP: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `c0230365_paeest2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anios`
--

CREATE TABLE `anios` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `anios`
--

INSERT INTO `anios` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, '1° Año', NULL, NULL),
(2, '2° Año', NULL, NULL),
(3, '3° Año', NULL, NULL),
(4, '4° Año', NULL, NULL),
(5, '5° Año', NULL, NULL),
(6, '6° Año', NULL, NULL),
(7, '7° Año', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Técnico en Informática Personal y Profesional', NULL, '2026-06-05 20:40:57'),
(2, 'Técnico Electromecánico', NULL, '2026-06-05 20:40:35'),
(5, 'Ciclo Básico', '2025-12-17 12:32:52', '2025-12-17 14:06:23'),
(7, 'Técnico Químico', '2025-12-17 12:34:48', '2026-06-03 17:17:44'),
(10, 'Técnico Maestro Mayor de Obras', '2026-06-03 14:02:41', '2026-06-03 14:02:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emtp_carreras`
--

CREATE TABLE `emtp_carreras` (
  `id` bigint UNSIGNED NOT NULL,
  `profesor_id` bigint UNSIGNED NOT NULL,
  `carrera_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jefe_carreras`
--

CREATE TABLE `jefe_carreras` (
  `id` bigint UNSIGNED NOT NULL,
  `profesor_id` bigint UNSIGNED NOT NULL,
  `carrera_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` smallint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` bigint UNSIGNED NOT NULL,
  `carrera_id` bigint UNSIGNED NOT NULL,
  `anio_id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `carrera_id`, `anio_id`, `nombre`, `created_at`, `updated_at`) VALUES
(24, 1, 4, 'Literatura', '2026-03-03 17:15:21', '2026-03-03 17:15:21'),
(25, 1, 4, 'Inglés', '2026-03-03 17:15:55', '2026-03-03 17:15:55'),
(26, 1, 4, 'Educación Física', '2026-03-03 17:16:14', '2026-03-03 17:16:14'),
(27, 1, 4, 'Salud y Adolescencia', '2026-03-03 17:16:39', '2026-03-03 17:16:39'),
(28, 1, 4, 'Historia', '2026-03-03 17:16:58', '2026-03-03 17:16:58'),
(29, 1, 4, 'Geografía', '2026-03-03 17:17:38', '2026-03-03 17:17:38'),
(30, 1, 4, 'Química', '2026-03-03 17:18:12', '2026-03-03 17:18:12'),
(31, 1, 4, 'Física', '2026-03-03 17:19:16', '2026-03-03 17:19:16'),
(32, 1, 4, 'Matemática Ciclo Superior', '2026-03-03 17:19:50', '2026-03-03 17:19:50'),
(33, 1, 4, 'Tecnologías Electrónicas', '2026-03-03 17:20:14', '2026-03-03 17:20:14'),
(38, 1, 5, 'Literatura', '2026-03-03 17:29:43', '2026-03-03 17:29:43'),
(39, 1, 5, 'Inglés', '2026-03-03 17:29:57', '2026-03-03 17:29:57'),
(41, 1, 5, 'Educación Física', '2026-03-03 17:30:40', '2026-03-03 17:30:40'),
(42, 1, 5, 'Política y Ciudadanía', '2026-03-03 17:31:14', '2026-03-03 17:31:14'),
(43, 1, 5, 'Historia', '2026-03-03 17:31:33', '2026-03-03 17:31:33'),
(44, 1, 5, 'Geografía', '2026-03-03 17:31:44', '2026-03-03 17:31:44'),
(45, 1, 5, 'Análisis Matemático', '2026-03-03 17:32:10', '2026-03-03 17:32:10'),
(46, 1, 5, 'Sistemas Digitales', '2026-03-03 17:32:53', '2026-03-03 17:32:53'),
(47, 1, 5, 'Teleinformática', '2026-03-03 17:33:15', '2026-03-03 17:33:15'),
(52, 1, 6, 'Literatura', '2026-03-03 17:37:44', '2026-03-03 17:37:44'),
(53, 1, 6, 'Inglés', '2026-03-03 17:38:38', '2026-03-03 17:38:38'),
(54, 1, 6, 'Educación Física', '2026-03-03 17:38:59', '2026-03-03 17:38:59'),
(55, 1, 6, 'Filosofía', '2026-03-03 17:39:24', '2026-03-03 17:39:24'),
(56, 1, 6, 'Arte', '2026-03-03 17:39:37', '2026-03-03 17:39:37'),
(57, 1, 6, 'Matemática Aplicada', '2026-03-03 17:40:17', '2026-03-03 17:40:17'),
(58, 1, 6, 'Sistemas Digitales', '2026-03-03 17:40:40', '2026-03-03 17:40:40'),
(59, 1, 6, 'Investigación Operativa', '2026-03-03 17:41:07', '2026-03-03 17:41:07'),
(60, 1, 6, 'Seguridad Informática', '2026-03-03 17:41:28', '2026-03-03 17:41:28'),
(61, 1, 6, 'Derechos del Trabajo', '2026-03-03 17:41:59', '2026-03-03 17:41:59'),
(66, 1, 7, 'Prácticas Profesionalizantes del Sector Informático', '2026-03-03 17:45:49', '2026-03-03 17:45:49'),
(67, 1, 7, 'Emprendimientos Productivos y Desarrollo Local', '2026-03-04 13:36:11', '2026-03-04 13:49:03'),
(68, 1, 7, 'Evaluación de Proyectos', '2026-03-04 13:36:43', '2026-03-04 13:36:43'),
(69, 1, 7, 'Modelos y Sistemas', '2026-03-04 13:37:03', '2026-03-04 13:37:03'),
(70, 1, 7, 'Base de Datos', '2026-03-04 13:37:29', '2026-03-04 13:37:29'),
(71, 1, 7, 'Instalación, Mantenimiento y Reparación de Redes Informáticas', '2026-03-04 13:42:26', '2026-03-04 13:42:26'),
(72, 1, 7, 'Instalación, Mantenimiento y Reparación de Sistemas Computacionales', '2026-03-04 13:44:02', '2026-03-04 13:44:02'),
(73, 1, 7, 'Proyecto, Diseño e Implementación de Sistemas Computacionales', '2026-03-04 13:46:47', '2026-03-04 13:46:47'),
(74, 1, 6, 'Laboratorio de Aplicaciones', '2026-03-04 13:51:24', '2026-03-04 13:51:24'),
(75, 1, 6, 'Laboratorio de Sistemas Operativos', '2026-03-04 13:52:24', '2026-03-04 13:53:07'),
(76, 1, 6, 'Laboratorio de Hardware', '2026-03-04 13:52:52', '2026-03-04 13:59:25'),
(77, 1, 6, 'Laboratorio de Programación', '2026-03-04 13:53:31', '2026-03-04 13:53:31'),
(78, 1, 4, 'Laboratorio de Programación', '2026-03-04 13:57:07', '2026-03-04 13:57:07'),
(79, 1, 4, 'Laboratorio de Hardware', '2026-03-04 13:57:25', '2026-03-04 13:59:38'),
(80, 1, 4, 'Laboratorio de Sistemas Operativos', '2026-03-04 13:57:50', '2026-03-04 13:57:50'),
(81, 1, 4, 'Laboratorio de Aplicaciones', '2026-03-04 13:58:08', '2026-03-04 13:58:08'),
(82, 1, 5, 'Laboratorio de Programación', '2026-03-04 13:58:34', '2026-03-04 13:58:34'),
(83, 1, 5, 'Laboratorio de Hardware', '2026-03-04 13:58:52', '2026-03-04 13:59:51'),
(84, 1, 5, 'Laboratorio de Sistemas Operativos', '2026-03-04 14:00:13', '2026-03-04 14:00:13'),
(85, 1, 5, 'Laboratorio de Aplicaciones', '2026-03-04 14:00:38', '2026-03-04 14:00:38'),
(86, 10, 4, 'Literatura', '2026-06-03 14:57:01', '2026-06-03 14:57:01'),
(87, 10, 4, 'Inglés', '2026-06-03 14:57:24', '2026-06-03 14:57:24'),
(88, 10, 4, 'Educación Física', '2026-06-03 14:58:35', '2026-06-03 14:58:35'),
(89, 10, 4, 'Salud y Adolescencia', '2026-06-03 14:59:09', '2026-06-03 14:59:09'),
(90, 10, 4, 'Historia', '2026-06-03 14:59:27', '2026-06-03 14:59:27'),
(91, 10, 4, 'Geografía', '2026-06-03 15:01:13', '2026-06-03 15:01:13'),
(92, 10, 4, 'Matemática Ciclo Superior', '2026-06-03 15:01:36', '2026-06-03 15:01:36'),
(93, 10, 4, 'Física', '2026-06-03 15:01:59', '2026-06-03 15:01:59'),
(94, 10, 4, 'Química', '2026-06-03 15:02:23', '2026-06-03 15:02:23'),
(95, 10, 4, 'Conocimiento de los Materiales', '2026-06-03 15:02:59', '2026-06-03 15:02:59'),
(96, 10, 4, 'Dibujo Tecnológico', '2026-06-03 15:03:32', '2026-06-03 15:03:32'),
(97, 10, 4, 'Planificación de Obra', '2026-06-03 15:04:02', '2026-06-03 15:04:02'),
(98, 10, 4, 'Sistemas Constructivos', '2026-06-03 15:04:26', '2026-06-03 15:04:26'),
(99, 10, 4, 'Proyecto', '2026-06-03 15:04:46', '2026-06-03 15:04:46'),
(100, 10, 5, 'Literatura', '2026-06-03 15:06:09', '2026-06-03 15:06:09'),
(101, 10, 5, 'Inglés', '2026-06-03 15:06:23', '2026-06-03 15:06:23'),
(102, 10, 5, 'Educación Física', '2026-06-03 15:06:37', '2026-06-03 15:06:37'),
(104, 10, 5, 'Política y Ciudadanía', '2026-06-03 15:08:18', '2026-06-03 15:08:18'),
(105, 10, 5, 'Historia', '2026-06-03 15:08:36', '2026-06-03 15:08:36'),
(106, 10, 5, 'Geografía', '2026-06-03 15:08:52', '2026-06-03 15:08:52'),
(108, 10, 5, 'Análisis Matemático', '2026-06-03 15:30:45', '2026-06-03 15:30:45'),
(109, 10, 5, 'Instalaciones Eléctricas', '2026-06-03 15:31:07', '2026-06-03 15:31:07'),
(110, 10, 5, 'Resistencia y Ensayo de los Materiales', '2026-06-03 15:31:36', '2026-06-03 15:31:36'),
(111, 10, 5, 'Documentación Técnica', '2026-06-03 15:32:01', '2026-06-03 15:32:01'),
(112, 10, 5, 'Materiales de Obra', '2026-06-03 15:32:34', '2026-06-03 15:32:34'),
(113, 10, 5, 'Sistemas Constructivos', '2026-06-03 15:32:54', '2026-06-03 15:32:54'),
(114, 10, 5, 'Proyecto', '2026-06-03 15:33:30', '2026-06-03 15:33:30'),
(115, 10, 4, 'Interpretación de Anteproyectos', '2026-06-03 15:35:02', '2026-06-03 15:35:02'),
(116, 10, 6, 'Literatura', '2026-06-03 15:35:58', '2026-06-03 15:35:58'),
(117, 10, 6, 'Inglés', '2026-06-03 15:36:11', '2026-06-03 15:36:11'),
(118, 10, 6, 'Educación Física', '2026-06-03 15:36:24', '2026-06-03 15:36:24'),
(119, 10, 6, 'Filosofía', '2026-06-03 15:36:47', '2026-06-03 15:36:47'),
(120, 10, 6, 'Arte', '2026-06-03 15:37:04', '2026-06-03 15:37:04'),
(121, 10, 6, 'Matemática Aplicada', '2026-06-03 15:37:25', '2026-06-03 15:37:25'),
(122, 10, 6, 'Instalaciones Sanitarias y de Gas', '2026-06-03 15:38:21', '2026-06-03 15:38:21'),
(123, 10, 6, 'Estructuras', '2026-06-03 15:38:39', '2026-06-03 15:38:39'),
(124, 10, 6, 'Derechos del Trabajo', '2026-06-03 15:40:08', '2026-06-03 15:40:08'),
(125, 10, 6, 'Proyecto de Instalaciones', '2026-06-03 15:40:35', '2026-06-03 15:40:35'),
(126, 10, 6, 'Dirección de la Ejecución de Instalaciones', '2026-06-03 15:41:44', '2026-06-03 15:41:44'),
(127, 10, 6, 'Sistemas Constructivos', '2026-06-03 15:42:00', '2026-06-03 15:42:00'),
(128, 10, 6, 'Proyecto', '2026-06-03 15:42:15', '2026-06-03 15:42:15'),
(129, 10, 7, 'Prácticas Profesionalizantes del sector Construcciones Edilicias', '2026-06-03 15:43:08', '2026-06-03 15:43:08'),
(130, 10, 7, 'Emprendimientos Productivos y Desarrollo Local', '2026-06-03 15:43:29', '2026-06-03 15:43:29'),
(131, 10, 7, 'Intalación de Acondicionadores de Aire', '2026-06-03 15:44:02', '2026-06-03 15:44:02'),
(132, 10, 7, 'Estructuras', '2026-06-03 15:44:49', '2026-06-03 15:44:49'),
(133, 10, 7, 'Proyecto Final', '2026-06-03 15:45:36', '2026-06-03 15:45:36'),
(134, 10, 7, 'Dirección de Obra', '2026-06-03 15:45:55', '2026-06-03 15:45:55'),
(135, 10, 7, 'Ejercicio Profesional de la Construcción', '2026-06-03 15:46:21', '2026-06-03 15:46:21'),
(136, 7, 4, 'Literatura', '2026-06-03 16:54:24', '2026-06-03 16:54:24'),
(137, 7, 4, 'Inglés', '2026-06-03 16:55:20', '2026-06-03 16:55:20'),
(138, 7, 4, 'Salud y Adolescencia', '2026-06-03 16:56:06', '2026-06-03 16:56:06'),
(139, 7, 4, 'Historia', '2026-06-03 17:17:05', '2026-06-03 17:17:05'),
(140, 7, 4, 'Educación Física', '2026-06-04 13:50:07', '2026-06-04 13:50:07'),
(141, 7, 4, 'Geografía', '2026-06-04 13:50:19', '2026-06-04 13:50:19'),
(142, 7, 4, 'Matemática Ciclo Superior', '2026-06-04 13:50:40', '2026-06-04 13:50:40'),
(143, 7, 4, 'Química', '2026-06-04 13:50:58', '2026-06-04 13:50:58'),
(144, 7, 4, 'Física', '2026-06-04 13:51:14', '2026-06-04 13:51:14'),
(145, 7, 4, 'Operaciones Unitarias y Tecnología de los Materiales', '2026-06-04 13:51:57', '2026-07-14 15:12:09'),
(146, 7, 4, 'Introducción a la Biología Celular', '2026-06-04 13:55:08', '2026-06-04 13:55:08'),
(147, 7, 5, 'Literatura', '2026-06-04 13:55:30', '2026-06-04 13:55:30'),
(148, 7, 5, 'Inglés', '2026-06-04 13:55:42', '2026-06-04 13:55:42'),
(149, 7, 5, 'Educación Física', '2026-06-04 13:55:51', '2026-06-04 13:55:51'),
(150, 7, 5, 'Política y Ciudadanía', '2026-06-04 13:56:16', '2026-06-04 13:56:16'),
(151, 7, 5, 'Historia', '2026-06-04 13:56:34', '2026-06-04 13:56:34'),
(152, 7, 5, 'Geografía', '2026-06-04 13:56:47', '2026-06-04 13:56:47'),
(153, 7, 5, 'Análisis Matemático', '2026-06-04 13:57:34', '2026-06-04 13:57:34'),
(154, 7, 5, 'Química Orgánica', '2026-06-04 13:57:58', '2026-06-04 13:57:58'),
(155, 7, 5, 'Química General e Inorgánica', '2026-06-04 13:58:28', '2026-06-04 13:58:28'),
(156, 7, 5, 'Procesamientos Químicos y Control', '2026-06-04 13:58:57', '2026-06-04 13:58:57'),
(157, 7, 6, 'Literatura', '2026-06-04 13:59:14', '2026-06-04 13:59:14'),
(158, 7, 5, 'Inglés', '2026-06-04 13:59:31', '2026-06-04 13:59:31'),
(159, 7, 6, 'Educación Física', '2026-06-04 13:59:58', '2026-06-04 13:59:58'),
(160, 7, 6, 'Educación Física', '2026-06-04 14:00:26', '2026-06-04 14:00:26'),
(161, 7, 5, 'Filosofía', '2026-06-04 14:00:58', '2026-06-04 14:00:58'),
(162, 7, 6, 'Filosofía', '2026-06-04 14:01:51', '2026-06-04 14:01:51'),
(163, 7, 6, 'Arte', '2026-06-04 14:02:43', '2026-06-04 14:02:43'),
(164, 7, 6, 'Matemática Aplicada', '2026-06-04 14:08:19', '2026-06-04 14:08:19'),
(165, 7, 6, 'Química Orgánica y Biológica', '2026-06-04 14:13:46', '2026-06-04 14:13:46'),
(166, 7, 6, 'Química Industrial', '2026-06-04 14:14:15', '2026-06-04 14:14:15'),
(167, 7, 6, 'Química Analítica', '2026-06-04 14:14:47', '2026-06-04 14:14:47'),
(168, 7, 6, 'Derechos del Trabajo', '2026-06-04 14:15:03', '2026-06-04 14:15:03'),
(169, 7, 7, 'Emprendimientos Productivos y Desarrollo Local', '2026-06-04 15:19:52', '2026-06-04 15:19:52'),
(170, 7, 7, 'Química Industrial', '2026-06-04 15:20:21', '2026-06-04 15:20:21'),
(171, 7, 7, 'Organización y Gestión Industrial', '2026-06-04 15:22:42', '2026-06-04 15:22:42'),
(172, 7, 7, 'Prácticas Profesionalizantes del Sector Químico', '2026-07-14 14:51:29', '2026-07-14 14:51:29'),
(173, 7, 7, 'Química Analítica', '2026-07-14 15:05:52', '2026-07-14 15:05:52'),
(174, 7, 4, 'Laboratorio de Ensayos Físicos', '2026-07-14 15:16:39', '2026-07-14 15:16:39'),
(175, 7, 4, 'Laboratorio de Química', '2026-07-14 15:22:13', '2026-07-14 15:22:13'),
(176, 7, 5, 'Laboratorio de Procesos Industriales', '2026-07-14 16:36:28', '2026-07-14 16:36:28'),
(177, 7, 5, 'Laboratorios de Técnicas Analíticas', '2026-07-14 16:37:10', '2026-07-14 16:37:10'),
(178, 7, 5, 'Laboratorio de Química Orgánica', '2026-07-14 16:39:58', '2026-07-14 16:39:58'),
(179, 7, 6, 'Laboratorio de Procesos Industriales', '2026-07-14 16:41:18', '2026-07-14 16:41:18'),
(180, 7, 6, 'Laboratorio de Técnicas Analíticas', '2026-07-14 16:41:46', '2026-07-14 16:41:46'),
(181, 7, 6, 'Laboratorio de Química Orgánica, Biológica y Microbiológica', '2026-07-14 16:42:54', '2026-07-14 16:42:54'),
(182, 7, 7, 'Laboratorio de Análisis Microbiológicos', '2026-07-14 16:43:45', '2026-07-14 16:43:45'),
(183, 7, 7, 'laboratorios de Técnicas Analíticas Instrumentales', '2026-07-14 16:53:48', '2026-07-14 16:53:48'),
(184, 7, 7, 'Laboratorios de Industrias', '2026-07-14 16:55:49', '2026-07-14 16:55:49'),
(185, 7, 7, 'Laboratorios de análisis Microbiológicos', '2026-07-14 16:56:37', '2026-07-14 16:56:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_09_02_234737_create_sessions_table', 1),
(5, '2026_09_03_212405_create_roles_table', 1),
(6, '2026_09_03_212410_create_profesores_table', 1),
(7, '2026_09_03_233502_create_anios_table', 1),
(8, '2026_09_03_233507_create_carreras_table', 1),
(9, '2026_09_03_233512_create_materias_table', 1),
(10, '2026_09_03_233517_create_profesor_materias_table', 1),
(11, '2026_09_03_233526_create_programas_table', 1),
(12, '2026_09_30_211447_create_profesor_rol_table', 1),
(13, '2026_09_30_211514_remove_rol_id_from_profesores_table', 1),
(14, '2026_10_07_044831_add_anio_lectivo_to_programas_table', 2),
(15, '2026_10_08_220501_create_emtp_carreras_table', 3),
(16, '2026_10_08_220512_create_preceptor_cursos_table', 3),
(17, '2026_10_17_055945_add_email_to_profesores_and_make_user_nullable', 4),
(18, '2026_10_17_062209_add_creado_por_admin_to_profesores_table', 5),
(19, '2026_10_19_221741_create_jefe_carreras_and_creado_por_perfil', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preceptor_cursos`
--

CREATE TABLE `preceptor_cursos` (
  `id` bigint UNSIGNED NOT NULL,
  `profesor_id` bigint UNSIGNED NOT NULL,
  `carrera_id` bigint UNSIGNED NOT NULL,
  `anio_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creado_por_admin` tinyint(1) NOT NULL DEFAULT '0',
  `creado_por_perfil_id` bigint UNSIGNED DEFAULT NULL,
  `rol_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id`, `user_id`, `nombre`, `email`, `creado_por_admin`, `creado_por_perfil_id`, `rol_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Jefe de Área Informática - Valles, Roberto', NULL, 1, NULL, NULL, NULL, '2026-02-19 04:38:22'),
(2, 14, 'Fresart, Claudia', NULL, 1, NULL, NULL, '2026-03-04 17:42:20', '2026-03-04 17:42:20'),
(3, NULL, 'Mignaco, Tomás', NULL, 1, NULL, NULL, '2026-03-04 17:43:08', '2026-03-04 17:43:08'),
(4, 12, 'Bertolani, Ana Laura', NULL, 1, NULL, NULL, '2026-03-04 17:43:59', '2026-03-04 17:43:59'),
(5, NULL, 'Lamadrid, Mariano', NULL, 1, NULL, NULL, '2026-03-04 17:45:08', '2026-03-04 17:45:08'),
(6, NULL, 'Spitzer, Cecilia', NULL, 1, NULL, NULL, '2026-03-04 17:45:58', '2026-03-04 17:45:58'),
(7, 11, 'Rolandelli, Fernando', NULL, 1, NULL, NULL, '2026-03-04 17:47:13', '2026-03-04 17:47:13'),
(8, 8, 'Rueda, Cristian', NULL, 1, NULL, NULL, '2026-03-04 17:51:11', '2026-03-04 17:51:11'),
(9, 24, 'Ruíz, Pablo', NULL, 1, NULL, NULL, '2026-03-04 17:52:41', '2026-03-04 17:52:41'),
(10, NULL, 'Ferraro, Marcos Maximiliano', NULL, 1, NULL, NULL, '2026-03-04 17:53:42', '2026-06-04 19:41:53'),
(11, 18, 'Del Pontigo, Miguel', NULL, 1, NULL, NULL, '2026-03-04 17:54:16', '2026-03-04 17:54:16'),
(12, 19, 'Torino, Cristian', NULL, 1, NULL, NULL, '2026-03-04 17:54:58', '2026-03-04 17:54:58'),
(13, 3, 'Yunis, Teresita', NULL, 1, NULL, NULL, '2026-03-04 17:55:27', '2026-03-04 17:55:27'),
(14, 13, 'Bruno, Sandra', NULL, 1, NULL, NULL, '2026-03-04 17:55:44', '2026-03-04 17:55:44'),
(15, 17, 'González, Jorge', NULL, 1, NULL, NULL, '2026-03-04 17:57:34', '2026-03-04 17:57:34'),
(16, 15, 'Faggiolani, Rosana', NULL, 1, NULL, NULL, '2026-03-04 19:13:26', '2026-03-04 19:13:26'),
(17, 7, 'Dip, Julián', NULL, 1, NULL, NULL, '2026-03-04 20:17:24', '2026-03-04 20:17:24'),
(18, 6, 'Lagorio, Ariana', NULL, 1, NULL, NULL, '2026-03-04 20:18:44', '2026-03-04 20:18:44'),
(19, 16, 'Lamberto, Andrés', NULL, 1, NULL, NULL, '2026-03-04 20:22:11', '2026-03-04 20:22:11'),
(20, 9, 'Toledo, Federico', NULL, 1, NULL, NULL, '2026-03-04 20:22:56', '2026-03-04 20:22:56'),
(21, 5, 'Morera, Yamila', NULL, 1, NULL, NULL, '2026-03-04 20:23:46', '2026-03-04 20:23:46'),
(22, 10, 'Varas, Cristina', NULL, 1, NULL, NULL, '2026-03-04 20:25:09', '2026-03-04 20:25:09'),
(23, NULL, 'Bertero Cecilia', NULL, 1, NULL, NULL, '2026-06-04 19:44:12', '2026-06-09 16:43:56'),
(24, NULL, 'Cardinali Cristian', NULL, 1, NULL, NULL, '2026-06-04 19:44:32', '2026-06-04 19:44:32'),
(25, NULL, 'Sosa Luciana', NULL, 1, NULL, NULL, '2026-06-04 19:44:43', '2026-06-04 19:44:43'),
(26, NULL, 'Moreno Luciana', NULL, 1, NULL, NULL, '2026-06-04 19:45:00', '2026-06-04 19:45:00'),
(27, NULL, 'Heit Rosana', NULL, 1, NULL, NULL, '2026-06-04 19:46:28', '2026-06-04 19:46:28'),
(28, NULL, 'Secchi Mariana', NULL, 1, NULL, NULL, '2026-06-04 19:46:43', '2026-06-04 19:46:43'),
(29, NULL, 'Sabella Luciana', NULL, 1, NULL, NULL, '2026-06-04 19:47:06', '2026-06-04 19:47:06'),
(30, NULL, 'Martín Andrea', NULL, 1, NULL, NULL, '2026-06-04 19:47:38', '2026-06-04 19:47:38'),
(31, NULL, 'Henzmann Maricel', NULL, 1, NULL, NULL, '2026-06-04 19:48:01', '2026-07-14 17:55:55'),
(32, NULL, 'Benigni Emanuel', NULL, 1, NULL, NULL, '2026-06-04 19:48:18', '2026-06-04 19:48:18'),
(33, NULL, 'Luqui Daniela', NULL, 1, NULL, NULL, '2026-06-04 19:49:21', '2026-06-04 19:49:21'),
(34, NULL, 'Neiret Jorgelina', NULL, 1, NULL, NULL, '2026-06-04 19:49:47', '2026-06-04 19:49:47'),
(35, NULL, 'Cuatrín Lorena', NULL, 1, NULL, NULL, '2026-06-04 19:50:33', '2026-06-04 19:50:33'),
(36, NULL, 'Jaworowski Gretel', NULL, 1, NULL, NULL, '2026-06-04 19:51:04', '2026-06-04 19:51:04'),
(37, NULL, 'Stochi Sabrina', NULL, 1, NULL, NULL, '2026-06-04 19:51:26', '2026-06-04 19:51:26'),
(38, 21, 'González Carolina', NULL, 1, NULL, NULL, '2026-06-04 19:51:56', '2026-06-04 19:51:56'),
(39, 26, 'Castañeira Raúl', NULL, 1, NULL, NULL, '2026-06-04 20:17:13', '2026-06-04 20:17:13'),
(40, NULL, 'Mazzini Nora', NULL, 1, NULL, NULL, '2026-06-04 20:18:18', '2026-06-04 20:18:18'),
(41, NULL, 'Insúa Karina', NULL, 1, NULL, NULL, '2026-06-04 20:18:38', '2026-06-04 20:18:38'),
(42, NULL, 'Gorbarán Karina', NULL, 1, NULL, NULL, '2026-06-04 20:19:16', '2026-06-04 20:19:16'),
(43, NULL, 'Vázquez Alejandrina', NULL, 1, NULL, NULL, '2026-06-04 20:19:35', '2026-06-04 20:19:35'),
(44, NULL, 'Cepeda Nelson', NULL, 1, NULL, NULL, '2026-06-04 20:19:52', '2026-06-04 20:19:52'),
(45, NULL, 'Villamea Juan Pablo', NULL, 1, NULL, NULL, '2026-06-04 20:20:07', '2026-07-14 18:52:32'),
(46, 23, 'Vázquez Joel', NULL, 1, NULL, NULL, '2026-06-04 20:20:31', '2026-06-04 20:20:31'),
(47, NULL, 'De Felipe Guillermo', NULL, 1, NULL, NULL, '2026-06-04 20:20:43', '2026-06-04 20:20:43'),
(48, NULL, 'Vivas Marianela', NULL, 1, NULL, NULL, '2026-06-04 20:23:01', '2026-06-04 20:23:01'),
(49, 27, 'Machado Betiana', NULL, 1, NULL, NULL, '2026-06-04 20:23:18', '2026-06-04 20:23:18'),
(50, 20, 'Blanes Patricia', NULL, 1, NULL, NULL, '2026-06-04 20:24:40', '2026-06-04 20:24:40'),
(51, NULL, 'Ferreira Maricel', NULL, 1, NULL, NULL, '2026-06-04 20:24:56', '2026-06-04 20:24:56'),
(52, NULL, 'Giménez Dimas', NULL, 1, NULL, NULL, '2026-06-04 20:25:11', '2026-06-04 20:25:11'),
(53, 22, 'Fabbroni Verónica', NULL, 1, NULL, NULL, '2026-06-04 20:25:35', '2026-06-04 20:25:35'),
(54, 33, 'León José', NULL, 1, NULL, NULL, '2026-06-04 20:27:06', '2026-06-04 20:27:06'),
(55, 25, 'Mattana Gabriela', NULL, 1, NULL, NULL, '2026-06-04 20:27:20', '2026-06-04 20:27:20'),
(56, 31, 'Miretti Soledad', NULL, 1, NULL, NULL, '2026-06-04 20:27:41', '2026-06-04 20:27:41'),
(57, 32, 'Santos Víctor', NULL, 1, NULL, NULL, '2026-06-04 20:27:52', '2026-06-04 20:27:52'),
(58, NULL, 'Minoldo Francisco', NULL, 1, NULL, NULL, '2026-06-04 20:28:16', '2026-06-04 20:28:16'),
(59, NULL, 'Ríos', NULL, 1, NULL, NULL, '2026-06-04 20:28:38', '2026-06-04 20:28:38'),
(60, NULL, 'Perelló Daniel', NULL, 1, NULL, NULL, '2026-06-04 20:28:47', '2026-06-08 19:20:40'),
(61, 28, 'Mulet', NULL, 1, NULL, NULL, '2026-06-04 20:29:21', '2026-06-04 20:29:21'),
(62, NULL, 'Mansilla Luciano', NULL, 1, NULL, NULL, '2026-06-04 20:29:41', '2026-06-08 19:20:26'),
(63, NULL, 'Salguero Alejandro', NULL, 1, NULL, NULL, '2026-06-08 19:27:25', '2026-06-08 19:27:25'),
(64, NULL, 'Budassi', NULL, 1, NULL, NULL, '2026-06-08 19:30:29', '2026-06-08 19:30:29'),
(65, NULL, 'Toledo Rubén', NULL, 1, NULL, NULL, '2026-06-08 19:31:54', '2026-06-08 19:31:54'),
(66, NULL, 'Jung Jorgelina', NULL, 1, NULL, NULL, '2026-06-08 19:33:07', '2026-06-08 19:33:07'),
(67, NULL, 'Servini María José', NULL, 1, NULL, NULL, '2026-06-08 19:34:06', '2026-06-08 19:34:06'),
(68, NULL, 'Trotta Gustavo', NULL, 1, NULL, NULL, '2026-06-08 19:40:44', '2026-06-08 19:40:44'),
(69, NULL, 'Tessone María Luz', NULL, 1, NULL, NULL, '2026-06-08 19:41:10', '2026-06-08 19:41:10'),
(70, NULL, 'Beliz Virginia', NULL, 1, NULL, NULL, '2026-06-08 19:41:47', '2026-06-08 19:41:47'),
(71, NULL, 'Arce Camila', NULL, 1, NULL, NULL, '2026-06-08 19:42:20', '2026-06-08 19:42:20'),
(72, NULL, 'Lafico Jorge', NULL, 1, NULL, NULL, '2026-06-09 16:42:22', '2026-06-09 16:42:22'),
(73, NULL, 'Repetto Romina', NULL, 1, NULL, NULL, '2026-06-09 16:42:48', '2026-06-09 16:42:48'),
(74, NULL, 'Rodríguez', NULL, 1, NULL, NULL, '2026-06-09 16:43:12', '2026-06-09 16:43:12'),
(75, NULL, 'Nievas Miguel', NULL, 1, NULL, NULL, '2026-06-09 16:44:44', '2026-06-09 16:44:44'),
(76, NULL, 'Carossino Favio', NULL, 1, NULL, NULL, '2026-07-14 19:49:34', '2026-07-14 19:49:34'),
(77, 29, 'Babudro Erica', NULL, 1, NULL, NULL, '2026-08-25 19:32:22', '2026-08-25 19:32:22'),
(78, 30, 'Ulibarrena Juan', NULL, 1, NULL, NULL, '2026-08-25 19:32:53', '2026-08-25 19:32:53'),
(79, 2, 'Profesor', NULL, 1, NULL, NULL, '2025-12-18 03:13:03', '2026-03-06 17:11:00'),
(80, 4, 'EMATP Claudio', NULL, 1, NULL, NULL, '2026-03-03 19:32:18', '2026-03-03 19:32:18'),
(81, 34, 'Pedro Coyle', NULL, 1, NULL, NULL, '2026-11-03 22:11:34', '2026-11-03 22:11:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_materias`
--

CREATE TABLE `profesor_materias` (
  `id` bigint UNSIGNED NOT NULL,
  `profesor_id` bigint UNSIGNED NOT NULL,
  `materia_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `profesor_materias`
--

INSERT INTO `profesor_materias` (`id`, `profesor_id`, `materia_id`, `created_at`, `updated_at`) VALUES
(183, 4, 78, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(184, 4, 80, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(185, 4, 81, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(186, 8, 74, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(187, 8, 83, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(188, 8, 84, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(189, 8, 85, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(190, 9, 46, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(191, 9, 47, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(192, 9, 68, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(193, 9, 73, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(194, 9, 75, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(195, 9, 77, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(196, 9, 82, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(197, 9, 85, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(198, 10, 76, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(199, 12, 60, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(200, 12, 72, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(201, 13, 67, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(202, 14, 69, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(203, 15, 71, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(204, 15, 73, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(205, 16, 76, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(206, 16, 79, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(207, 16, 80, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(208, 17, 84, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(209, 18, 70, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(210, 18, 75, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(211, 18, 81, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(212, 19, 83, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(213, 20, 74, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(214, 21, 71, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(215, 21, 72, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(216, 22, 66, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(217, 23, 87, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(218, 23, 137, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(219, 24, 140, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(220, 24, 159, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(221, 25, 138, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(222, 25, 146, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(223, 26, 139, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(224, 27, 141, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(225, 27, 152, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(226, 28, 100, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(227, 28, 147, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(228, 29, 148, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(229, 30, 149, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(230, 31, 150, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(231, 32, 105, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(232, 32, 151, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(233, 33, 157, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(234, 34, 101, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(235, 34, 117, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(236, 35, 162, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(237, 36, 163, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(238, 37, 142, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(239, 38, 143, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(240, 38, 145, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(241, 38, 155, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(242, 38, 167, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(243, 38, 170, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(244, 38, 177, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(245, 38, 185, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(246, 39, 172, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(247, 40, 94, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(248, 40, 154, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(249, 41, 144, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(250, 42, 108, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(251, 42, 121, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(252, 42, 153, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(253, 42, 164, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(254, 43, 165, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(255, 44, 166, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(256, 44, 179, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(257, 45, 168, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(258, 46, 145, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(259, 46, 156, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(260, 46, 173, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(261, 46, 176, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(262, 46, 178, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(263, 46, 180, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(264, 47, 171, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(265, 48, 145, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(266, 49, 174, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(267, 49, 181, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(268, 50, 175, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(269, 50, 180, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(270, 50, 183, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(271, 51, 175, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(272, 51, 181, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(273, 53, 184, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(274, 54, 95, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(275, 54, 96, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(276, 54, 112, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(277, 54, 113, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(278, 54, 115, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(279, 54, 126, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(280, 54, 127, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(281, 54, 134, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(282, 55, 97, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(283, 55, 98, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(284, 55, 111, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(285, 55, 112, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(286, 55, 113, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(287, 55, 115, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(288, 55, 125, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(289, 55, 131, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(290, 56, 99, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(291, 56, 114, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(292, 56, 128, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(293, 56, 129, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(294, 56, 130, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(295, 57, 114, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(296, 57, 133, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(297, 58, 96, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(298, 58, 97, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(299, 58, 98, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(300, 58, 111, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(301, 60, 110, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(302, 60, 122, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(303, 60, 132, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(304, 61, 135, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(305, 63, 124, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(306, 64, 88, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(307, 64, 102, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(308, 65, 109, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(309, 66, 104, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(310, 67, 106, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(311, 68, 119, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(312, 69, 120, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(313, 70, 92, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(314, 70, 121, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(315, 71, 157, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(316, 72, 89, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(317, 73, 90, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(318, 74, 91, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(319, 75, 86, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(320, 75, 136, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(321, 76, 169, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(322, 77, 59, '2026-11-03 22:07:12', '2026-11-03 22:07:12'),
(323, 78, 58, '2026-11-03 22:07:12', '2026-11-03 22:07:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_rol`
--

CREATE TABLE `profesor_rol` (
  `id` bigint UNSIGNED NOT NULL,
  `profesor_id` bigint UNSIGNED NOT NULL,
  `rol_id` tinyint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `profesor_rol`
--

INSERT INTO `profesor_rol` (`id`, `profesor_id`, `rol_id`, `created_at`, `updated_at`) VALUES
(126, 1, 3, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(127, 2, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(128, 3, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(129, 4, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(130, 5, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(131, 6, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(132, 7, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(133, 8, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(134, 9, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(135, 10, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(136, 11, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(137, 12, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(138, 13, 3, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(139, 14, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(140, 15, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(141, 16, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(142, 17, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(143, 18, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(144, 19, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(145, 20, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(146, 21, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(147, 22, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(148, 23, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(149, 24, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(150, 25, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(151, 26, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(152, 27, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(153, 28, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(154, 29, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(155, 30, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(156, 31, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(157, 32, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(158, 33, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(159, 34, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(160, 35, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(161, 36, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(162, 37, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(163, 38, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(164, 39, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(165, 40, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(166, 41, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(167, 42, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(168, 43, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(169, 44, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(170, 45, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(171, 46, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(172, 47, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(173, 48, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(174, 49, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(175, 50, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(176, 51, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(177, 52, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(178, 53, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(179, 54, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(180, 55, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(181, 56, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(182, 57, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(183, 58, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(184, 59, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(185, 60, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(186, 61, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(187, 62, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(188, 63, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(189, 64, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(190, 65, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(191, 66, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(192, 67, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(193, 68, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(194, 69, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(195, 70, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(196, 71, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(197, 72, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(198, 73, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(199, 74, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(200, 75, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(201, 76, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(202, 77, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(203, 78, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(204, 79, 1, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(205, 80, 3, '2026-11-03 22:07:11', '2026-11-03 22:07:11'),
(206, 81, 3, '2026-11-03 22:11:34', '2026-11-03 22:11:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programas`
--

CREATE TABLE `programas` (
  `id` bigint UNSIGNED NOT NULL,
  `profesor_id` bigint UNSIGNED NOT NULL,
  `materia_id` bigint UNSIGNED NOT NULL,
  `anio_lectivo` smallint UNSIGNED NOT NULL,
  `archivo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_subida` timestamp NULL DEFAULT NULL,
  `ultimo` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `programas`
--

INSERT INTO `programas` (`id`, `profesor_id`, `materia_id`, `anio_lectivo`, `archivo`, `fecha_subida`, `ultimo`, `created_at`, `updated_at`) VALUES
(55, 4, 78, 2026, 'programas/2026_Proyecto.Aúlico_Laboratorio.de.Programación.PDF_14-7-2026.pdf', '2026-07-14 14:06:30', 1, '2026-07-14 17:06:30', '2026-07-14 19:32:48'),
(56, 4, 78, 2026, 'programas/2026_Continuidad.Pedagogica_Laboratorio.de.Programación_14-7-2026.pdf', '2026-07-14 16:32:48', 1, '2026-07-14 19:32:48', '2026-07-14 19:55:34'),
(57, 4, 78, 2026, 'programas/2026_Contenidos.Minimos_Laboratorio.de.Programación_14-7-2026.pdf', '2026-07-14 16:55:34', 1, '2026-07-14 19:55:34', '2026-07-14 19:55:34'),
(58, 4, 80, 2026, 'programas/2026_Proyecto.Aúlico_Laboratorio.de.Sistemas.Operativos_14-7-2026.pdf', '2026-07-14 14:15:46', 1, '2026-07-14 17:15:46', '2026-07-14 19:06:17'),
(59, 4, 80, 2026, 'programas/2026_Contenidos.Minimos_Laboratorio.de.Sistemas.Operativos_14-7-2026.pdf', '2026-07-14 16:06:17', 1, '2026-07-14 19:06:17', '2026-07-14 19:06:17'),
(60, 4, 81, 2026, 'programas/2026_Proyecto.Aúlico_Laboratorio.de.Aplicaciones_14-7-2026.pdf', '2026-07-14 14:18:48', 1, '2026-07-14 17:18:48', '2026-07-14 19:13:43'),
(61, 4, 81, 2026, 'programas/2026_Contenidos.Minimos_Laboratorio.de.Aplicaciones_14-7-2026.pdf', '2026-07-14 16:13:43', 1, '2026-07-14 19:13:43', '2026-07-14 19:23:55'),
(62, 4, 81, 2026, 'programas/2026_Continuidad.Pedagogica_Laboratorio.de.Aplicaciones_14-7-2026.pdf', '2026-07-14 16:23:55', 1, '2026-07-14 19:23:55', '2026-07-14 19:23:55'),
(63, 8, 74, 2026, 'programas/2026_Proyecto.Aúlico_Laboratorio.de.Aplicaciones_6-4-2026.pdf', '2026-04-06 17:08:37', 1, '2026-04-06 20:08:37', '2026-04-06 20:10:40'),
(64, 8, 74, 2026, 'programas/2026_Contenidos.Mínimos_Laboratorio.de.Aplicaciones_6-4-2026.pdf', '2026-04-06 17:10:40', 1, '2026-04-06 20:10:40', '2026-04-06 20:11:00'),
(65, 8, 74, 2026, 'programas/2026_Continuidad.Pedagógica_Laboratorio.de.Aplicaciones_6-4-2026.pdf', '2026-04-06 17:11:00', 1, '2026-04-06 20:11:00', '2026-04-06 20:11:00'),
(66, 8, 83, 2026, 'programas/2026_Proyecto.Aúlico_Laboratorio.de.Hardware_6-4-2026.pdf', '2026-04-06 03:00:35', 1, '2026-04-06 06:00:35', '2026-07-10 04:24:32'),
(67, 8, 83, 2026, 'programas/2026_Contenidos.Mínimos_Laboratorio.de.Hardware_9-7-2026.pdf', '2026-07-10 01:24:32', 1, '2026-07-10 04:24:32', '2026-07-10 04:25:14'),
(68, 8, 83, 2026, 'programas/2026_Continuidad.pedagógica_Laboratorio.de.Hardware_9-7-2026.pdf', '2026-07-10 01:25:14', 1, '2026-07-10 04:25:14', '2026-07-10 04:25:14'),
(69, 8, 84, 2026, 'programas/2026_Proyecto.Aúlico_Laboratorio.de.Sistemas.Operativos_16-6-2026.pdf', '2026-06-16 18:33:06', 1, '2026-06-16 21:33:06', '2026-06-16 21:33:27'),
(70, 8, 84, 2026, 'programas/2026_Continuidad.Pedagógica_Laboratorio.de.Sistemas.Operativos_16-6-2026.pdf', '2026-06-16 18:33:27', 1, '2026-06-16 21:33:27', '2026-07-10 04:25:59'),
(71, 8, 84, 2026, 'programas/2026_Contenidos.mínimos_Laboratorio.de.Sistemas.Operativos_9-7-2026.pdf', '2026-07-10 01:25:59', 1, '2026-07-10 04:25:59', '2026-07-10 04:25:59'),
(72, 8, 85, 2026, 'programas/2026_Proyecto.Aúlico_Laboratorio.de.Aplicaciones_9-4-2026.pdf', '2026-04-09 04:18:53', 1, '2026-04-09 07:18:53', '2026-07-10 04:28:48'),
(73, 8, 85, 2026, 'programas/2026_Contenidos.Mínimos_Laboratorio.de.Aplicaciones_9-7-2026.pdf', '2026-07-10 01:28:48', 1, '2026-07-10 04:28:48', '2026-07-10 04:29:17'),
(74, 8, 85, 2026, 'programas/2026_Continuidad.Pedagógica_Laboratorio.de.Aplicaciones_9-7-2026.pdf', '2026-07-10 01:29:17', 1, '2026-07-10 04:29:17', '2026-07-10 04:29:17'),
(75, 9, 46, 2026, 'programas/2026_proyecto.aulico_sistemas.digitales_14-7-2026.pdf', '2026-07-14 15:43:32', 1, '2026-07-14 18:43:32', '2026-07-14 18:44:26'),
(76, 9, 46, 2026, 'programas/2026_continuidad.pedagogica_sistemas.digitales_14-7-2026.pdf', '2026-07-14 15:44:26', 1, '2026-07-14 18:44:26', '2026-07-14 18:44:26'),
(77, 9, 47, 2026, 'programas/2026_proyecto.aulico_teleinformatica_14-7-2026.pdf', '2026-07-14 15:45:10', 1, '2026-07-14 18:45:10', '2026-07-14 18:45:40'),
(78, 9, 47, 2026, 'programas/2026_continuidad.pedagogica_teleinformatica_14-7-2026.pdf', '2026-07-14 15:45:40', 1, '2026-07-14 18:45:40', '2026-07-14 18:45:40'),
(79, 9, 68, 2026, 'programas/2026_Proyecto.Aulico_Evaluacion.de.proyecto_14-7-2026.pdf', '2026-07-14 16:25:18', 1, '2026-07-14 19:25:18', '2026-07-14 19:25:38'),
(80, 9, 68, 2026, 'programas/2026_continuidad.pedagogica_Evaluacion.de.proyecto_14-7-2026.pdf', '2026-07-14 16:25:38', 1, '2026-07-14 19:25:38', '2026-07-14 19:25:38'),
(81, 9, 73, 2026, 'programas/2026_continuidad.pedagogica_proyecto.diseño.e.implementacion.de.sistemas.computacionales_14-7-2026.pdf', '2026-07-14 16:26:25', 1, '2026-07-14 19:26:25', '2026-07-14 19:26:58'),
(82, 9, 73, 2026, 'programas/2026_Proyecto.Aulico_Proyecto.diseño.e.implementación.de.sistemas.computacionales_14-7-2026.pdf', '2026-07-14 16:26:58', 1, '2026-07-14 19:26:58', '2026-07-14 19:26:58'),
(83, 9, 75, 2026, 'programas/2026_Proyecto.aulico_Laboratorio.de.programacion_14-7-2026.pdf', '2026-07-14 15:47:36', 1, '2026-07-14 18:47:36', '2026-07-14 19:22:06'),
(84, 9, 75, 2026, 'programas/2026_continuidad.pedagogica_laboratorio.de.sistemas.operativos_14-7-2026.pdf', '2026-07-14 16:22:06', 1, '2026-07-14 19:22:06', '2026-07-14 19:22:06'),
(85, 9, 77, 2026, 'programas/2026_continuidad.pedagogica_laboratorio.de.programacion_14-7-2026.pdf', '2026-07-14 16:16:49', 1, '2026-07-14 19:16:49', '2026-07-14 19:16:49'),
(86, 12, 60, 2026, 'programas/2026_Proyecto.aulico_SEGURIDAD.INFORMATICA_28-5-2026.pdf', '2026-05-28 22:48:28', 1, '2026-05-29 01:48:28', '2026-05-29 01:54:18'),
(87, 12, 60, 2026, 'programas/2026_Contenidos.minimos_SEGURIDAD.INFORMATICA_28-5-2026.pdf', '2026-05-28 22:54:18', 1, '2026-05-29 01:54:18', '2026-05-29 02:39:36'),
(88, 12, 60, 2026, 'programas/2026_Continuidad.pedagogica_SEGURIDAD.INFORMATICA_28-5-2026.pdf', '2026-05-28 23:39:36', 1, '2026-05-29 02:39:36', '2026-05-29 02:39:36'),
(89, 12, 72, 2026, 'programas/2026_Proyecto.aulico_INST.MANT.REP.SIST.COMP_28-5-2026.pdf', '2026-05-28 22:48:10', 1, '2026-05-29 01:48:10', '2026-05-29 01:54:33'),
(90, 12, 72, 2026, 'programas/2026_Contenidos.minimos_INST.MANT.REP.SIST.COMP_28-5-2026.pdf', '2026-05-28 22:54:33', 1, '2026-05-29 01:54:33', '2026-05-29 02:39:53'),
(91, 12, 72, 2026, 'programas/2026_Continuidad.pedagogica_INST.MANT.REP.SIST.COMP_28-5-2026.pdf', '2026-05-28 23:39:53', 1, '2026-05-29 02:39:53', '2026-05-29 02:39:53'),
(92, 14, 69, 2026, 'programas/2026_Proyecto.Aulico_Modelos.y.Sistemas_14-7-2026.pdf', '2026-07-15 01:34:55', 1, '2026-07-15 04:34:55', '2026-07-15 04:35:20'),
(93, 14, 69, 2026, 'programas/2026_Contenidos.minimos_Modelos.y.Sistemas_14-7-2026.pdf', '2026-07-15 01:35:20', 1, '2026-07-15 04:35:20', '2026-07-15 04:35:39'),
(94, 14, 69, 2026, 'programas/2026_Continuidad.pedagogica_Modelos.y.Sistemas_14-7-2026.pdf', '2026-07-15 01:35:39', 1, '2026-07-15 04:35:39', '2026-07-15 04:35:39'),
(95, 15, 71, 2026, 'programas/2026_Proyecto.Aúlico_IMRRI_26-4-2026.pdf', '2026-04-26 22:46:03', 1, '2026-04-27 01:46:03', '2026-05-03 01:07:13'),
(96, 15, 71, 2026, 'programas/2026_Continuidad.Pedagógica__IMRRI_2-5-2026.pdf', '2026-05-02 22:07:13', 1, '2026-05-03 01:07:13', '2026-05-03 01:07:38'),
(97, 15, 71, 2026, 'programas/2026_Contenidos.Mínimos_IMRRI_2-5-2026.pdf', '2026-05-02 22:07:39', 1, '2026-05-03 01:07:39', '2026-05-03 01:07:39'),
(98, 15, 73, 2026, 'programas/2026_Proyecto.Aúlico_PDISC_8-7-2026.pdf', '2026-07-08 15:29:49', 1, '2026-07-08 18:29:49', '2026-07-08 18:29:49'),
(99, 16, 76, 2026, 'programas/Cuadernillo de Redes_26-3-2026.pdf', '2026-03-26 23:25:07', 0, '2026-03-27 02:25:07', '2026-03-27 02:31:36'),
(100, 16, 76, 2026, 'programas/rredes fe fa.docx_26-3-2026.pdf', '2026-03-26 23:31:36', 0, '2026-03-27 02:31:36', '2026-04-16 18:36:51'),
(101, 16, 76, 2026, 'programas/2026_Proyecto.Áulico.Laboratorio.de.Hardware_16-4-2026.pdf', '2026-04-16 15:36:51', 1, '2026-04-16 18:36:51', '2026-04-16 18:37:10'),
(102, 16, 76, 2026, 'programas/2026_Contenidos.Mínimos.Laboratorio.de.Hardware_16-4-2026.pdf', '2026-04-16 15:37:11', 1, '2026-04-16 18:37:10', '2026-04-16 18:37:25'),
(103, 16, 76, 2026, 'programas/2026_Continuidad.Pedagógica_Laboratorio.de.Sistema.Operativo (1)_16-4-2026.pdf', '2026-04-16 15:37:25', 1, '2026-04-16 18:37:25', '2026-04-16 18:37:25'),
(104, 16, 79, 2026, 'programas/cuadernilllo lh 4to_26-3-2026.pdf', '2026-03-26 23:25:52', 0, '2026-03-27 02:25:52', '2026-03-27 02:26:33'),
(105, 16, 79, 2026, 'programas/proyecto aulico 26 lh_26-3-2026.pdf', '2026-03-26 23:26:33', 1, '2026-03-27 02:26:33', '2026-04-16 17:52:17'),
(106, 16, 79, 2026, 'programas/2026_Contenidos.Mínimos._Laboratorio.de.Hardware_16-4-2026.pdf', '2026-04-16 14:53:22', 1, '2026-04-16 17:53:22', '2026-04-16 17:53:48'),
(107, 16, 79, 2026, 'programas/2026_Continuidad.Pedagóica_Laboratorio.de.Hardware_16-4-2026.pdf', '2026-04-16 14:53:48', 1, '2026-04-16 17:53:48', '2026-04-16 17:53:48'),
(108, 16, 80, 2026, 'programas/Planif S.O 4to 2025 EEST2.docx_26-3-2026.pdf', '2026-03-27 01:43:27', 0, '2026-03-27 04:43:27', '2026-03-27 04:44:17'),
(109, 16, 80, 2026, 'programas/Cuadernillo Sistema Operativo 4to año_26-3-2026.pdf', '2026-03-27 01:44:17', 0, '2026-03-27 04:44:17', '2026-04-16 18:28:08'),
(110, 16, 80, 2026, 'programas/2026_Proyecto.Áulico_Laboratorio.Sistemas.Operativos_16-4-2026.pdf', '2026-04-16 15:28:08', 1, '2026-04-16 18:28:08', '2026-04-16 18:29:09'),
(111, 16, 80, 2026, 'programas/2026_Contenidos.Mínimos_Laboratorio.de.Sistema.Operativo_16-4-2026.pdf', '2026-04-16 15:29:09', 1, '2026-04-16 18:29:09', '2026-04-16 18:29:41'),
(112, 16, 80, 2026, 'programas/2026_Continuidad.Pedagógica_Laboratorio.de.Sistema.Operativo_16-4-2026.pdf', '2026-04-16 15:29:41', 1, '2026-04-16 18:29:41', '2026-04-16 18:29:41'),
(113, 17, 84, 2026, 'programas/2026 Planificación de INFO - Laboratorio de Sistemas Operativos (LSO) - 5to 5ta - Grupo A - DIP_8-7-2026.pdf', '2026-07-08 15:53:04', 1, '2026-07-08 18:53:04', '2026-07-08 18:53:04'),
(114, 18, 70, 2026, 'programas/2026_Proyecto.Aulico_Base.De.Datos_27-3-2026.pdf', '2026-03-27 21:44:37', 1, '2026-03-28 00:44:37', '2026-03-28 00:46:10'),
(115, 18, 70, 2026, 'programas/2026_Contenidos.Minimos_Base.de.datos_27-3-2026.pdf', '2026-03-27 21:46:11', 1, '2026-03-28 00:46:11', '2026-03-28 00:46:27'),
(116, 18, 70, 2026, 'programas/2026_Continuidad.Pedagogica_Base.de.datos_27-3-2026.pdf', '2026-03-27 21:46:27', 1, '2026-03-28 00:46:27', '2026-03-28 00:46:27'),
(117, 18, 75, 2026, 'programas/2026_Proyecto.aulico_sistemas.operativos_27-3-2026.pdf', '2026-03-27 04:41:13', 1, '2026-03-27 07:41:13', '2026-03-27 07:45:07'),
(118, 18, 75, 2026, 'programas/2026_Contenidos.Minimos_Sistemas.Operativos_27-3-2026.pdf', '2026-03-27 04:45:07', 1, '2026-03-27 07:45:07', '2026-03-27 07:49:58'),
(119, 18, 75, 2026, 'programas/2026_Continuidad.Pedagogica_Sistemas.Operativos_27-3-2026.pdf', '2026-03-27 04:49:58', 1, '2026-03-27 07:49:58', '2026-03-27 07:49:58'),
(120, 18, 81, 2026, 'programas/2026_ACTIVIDADESDECONTINUIDAD_LAB  APLICACIONES  4° 5°_21-4-2026.pdf', '2026-04-21 16:27:03', 1, '2026-04-21 19:27:03', '2026-04-21 19:41:15'),
(121, 18, 81, 2026, 'programas/2026_Contenidos.Minimos_Lab.Aplicaciones_21-4-2026.pdf', '2026-04-21 16:41:15', 1, '2026-04-21 19:41:15', '2026-04-21 19:42:48'),
(122, 18, 81, 2026, 'programas/2026_PROYECTO AULICO_LAB APLICACIONES 4° 5°_21-4-2026.pdf', '2026-04-21 16:42:48', 1, '2026-04-21 19:42:48', '2026-04-21 19:42:48'),
(123, 19, 83, 2026, 'programas/PROYECTO  ANUAL  LAB  DE  HARDWARE  eest 2 2026_25-3-2026.pdf', '2026-03-25 17:32:52', 0, '2026-03-25 20:32:52', '2026-04-08 23:58:22'),
(124, 19, 83, 2026, 'programas/2026_Proyecto.Aúlico_Laboratorio.de.Hardware_5to 5ta grupo B_8-4-2026.pdf', '2026-04-08 20:58:22', 1, '2026-04-08 23:58:22', '2026-07-13 06:29:57'),
(125, 19, 83, 2026, 'programas/2026_Continuidad.pedagógica_Laboratorio.de.Hardware_13-7-2026.pdf', '2026-07-13 03:29:57', 1, '2026-07-13 06:29:57', '2026-07-13 06:30:16'),
(126, 19, 83, 2026, 'programas/2026_Contenidos.Mínimos_Laboratorio.de.Hardware_13-7-2026.pdf', '2026-07-13 03:30:16', 1, '2026-07-13 06:30:16', '2026-07-13 06:30:16'),
(127, 20, 74, 2026, 'programas/2026_Proyecto.Aúlico_Laboratorio.de.Aplicaciones_13-3-2026.pdf', '2026-03-13 23:28:29', 0, '2026-03-14 02:28:29', '2026-03-14 02:28:50'),
(128, 20, 74, 2026, 'programas/2026_Contenidos.Mínimos_Laboratorio.de.Aplicaciones_13-3-2026.pdf', '2026-03-13 23:29:06', 0, '2026-03-14 02:29:06', '2026-03-17 07:38:39'),
(129, 20, 74, 2026, 'programas/2026_Contenidos.Mínimos_Laboratorio.de.Aplicaciones_17-3-2026.pdf', '2026-03-17 06:00:27', 1, '2026-03-17 09:00:27', '2026-03-17 09:00:57'),
(130, 20, 74, 2026, 'programas/2026_Continuidad.Pedagógica_Laboratorio.de.Aplicaciones_17-3-2026.pdf', '2026-03-17 06:00:57', 1, '2026-03-17 09:00:57', '2026-03-17 09:08:20'),
(131, 20, 74, 2026, 'programas/2026_Proyecto.Aúlico_Laboratorio.de.Aplicaciones_17-3-2026.pdf', '2026-03-17 06:08:20', 1, '2026-03-17 09:08:20', '2026-03-17 09:08:20'),
(132, 21, 71, 2026, 'programas/7mo__Int_Mant_ Redes_Planificacion 2026_13-7-2026.pdf', '2026-07-13 21:44:16', 1, '2026-07-14 00:44:16', '2026-07-14 02:32:53'),
(133, 21, 71, 2026, 'programas/2026_ContenidosMínimos_IMRRI_13-7-2026.pdf', '2026-07-13 23:32:53', 1, '2026-07-14 02:32:53', '2026-07-14 02:33:09'),
(134, 21, 71, 2026, 'programas/2026_ContinuidadPedagógica__IMRRI_13-7-2026.pdf', '2026-07-13 23:33:09', 1, '2026-07-14 02:33:09', '2026-07-14 02:33:09'),
(135, 22, 66, 2026, 'programas/PP.Informatica_14-5-2026.pdf', '2026-05-14 22:25:05', 1, '2026-05-15 01:25:05', '2026-05-15 01:25:05'),
(136, 55, 97, 2026, 'programas/2026_contenidosmínimos_planificacióndeobras_6-8-2026.pdf', '2026-08-06 18:48:31', 1, '2026-08-06 21:48:31', '2026-08-06 21:49:55'),
(137, 55, 97, 2026, 'programas/2026_proyecto.áulico_planificacióndeobras_6-8-2026.pdf', '2026-08-06 18:49:55', 1, '2026-08-06 21:49:55', '2026-08-06 21:50:22'),
(138, 55, 97, 2026, 'programas/2026_continuidadpedagógica_planificaciondeobra_6-8-2026.pdf', '2026-08-06 18:50:22', 1, '2026-08-06 21:50:22', '2026-08-06 21:50:22'),
(139, 55, 98, 2026, 'programas/2026_contenidosminimos_sistemasconstructivos_6-8-2026.pdf', '2026-08-06 18:55:37', 1, '2026-08-06 21:55:37', '2026-08-06 21:56:14'),
(140, 55, 98, 2026, 'programas/2026_proyectoaulico_sistemasconstructivos_6-8-2026.pdf', '2026-08-06 18:56:14', 1, '2026-08-06 21:56:14', '2026-08-06 21:56:39'),
(141, 55, 98, 2026, 'programas/2026_continuidadpedagógica_sistemasconstructivos_6-8-2026.pdf', '2026-08-06 18:56:39', 1, '2026-08-06 21:56:39', '2026-08-06 21:56:39'),
(142, 55, 111, 2026, 'programas/2026_contenidosminimos_documentaciontecnica_6-8-2026.pdf', '2026-08-06 19:07:55', 1, '2026-08-06 22:07:55', '2026-08-06 22:08:17'),
(143, 55, 111, 2026, 'programas/2026_continuidadpedagogica_documentacion tecnica_6-8-2026.pdf', '2026-08-06 19:08:17', 1, '2026-08-06 22:08:17', '2026-08-06 22:08:35'),
(144, 55, 111, 2026, 'programas/2026_proyectoaulico_documentacion tecnica_6-8-2026.pdf', '2026-08-06 19:08:35', 1, '2026-08-06 22:08:35', '2026-08-06 22:08:35'),
(145, 55, 113, 2026, 'programas/2026_contenidosminimos_sistemas constructivos5to_6-8-2026.pdf', '2026-08-06 19:30:33', 1, '2026-08-06 22:30:33', '2026-08-06 22:30:58'),
(146, 55, 113, 2026, 'programas/2026_continuidadpedagogica_sistemasconstructivos5to_6-8-2026.pdf', '2026-08-06 19:30:58', 1, '2026-08-06 22:30:58', '2026-08-06 22:33:53'),
(147, 55, 113, 2026, 'programas/2026_proyectoaulico_sistemas constructivos5to_6-8-2026.pdf', '2026-08-06 19:33:53', 1, '2026-08-06 22:33:53', '2026-08-06 22:33:53'),
(148, 55, 115, 2026, 'programas/2026_contenidosminimos_interpretacióndeanteproyecto_6-8-2026.pdf', '2026-08-06 19:00:22', 1, '2026-08-06 22:00:22', '2026-08-06 22:00:53'),
(149, 55, 115, 2026, 'programas/2026_proyectoaulico_interpretacióndeanteproyecto_6-8-2026.pdf', '2026-08-06 19:00:53', 1, '2026-08-06 22:00:53', '2026-08-06 22:19:21'),
(150, 55, 115, 2026, 'programas/2026_continuidadpedagógica_interpretacióndeanteproyecto_6-8-2026.pdf', '2026-08-06 19:19:21', 1, '2026-08-06 22:19:21', '2026-08-06 22:19:21'),
(151, 77, 59, 2026, 'programas/2026_Planificación _investigacion operativa_13-9-2026.pdf', '2026-09-13 20:37:06', 0, '2026-09-13 23:37:06', '2026-09-13 23:37:31'),
(152, 77, 59, 2026, 'programas/2026_anexo 1 _ Investigacion operativa_13-9-2026.pdf', '2026-09-13 20:37:31', 0, '2026-09-13 23:37:31', '2026-09-13 23:37:44'),
(153, 77, 59, 2026, 'programas/2026_Actividades de continuidad pedagogica_Investigacion oprativa_13-9-2026.pdf', '2026-09-13 20:37:44', 1, '2026-09-13 23:37:44', '2026-09-13 23:37:57'),
(154, 77, 59, 2026, 'programas/2026_Anexo 3_Investigacion operativa_13-9-2026.pdf', '2026-09-13 20:37:57', 0, '2026-09-13 23:37:57', '2026-09-13 23:38:08'),
(155, 77, 59, 2026, 'programas/2026_Anexo 4_investigacion operativa_13-9-2026.pdf', '2026-09-13 20:38:08', 0, '2026-09-13 23:38:08', '2026-09-13 23:38:42'),
(156, 77, 59, 2026, 'programas/2026__Anexo 6 ­_Investigacion operativa _13-9-2026.pdf', '2026-09-13 20:38:42', 1, '2026-09-13 23:38:42', '2026-09-13 23:38:42'),
(157, 78, 58, 2026, 'programas/Proyecto.aulico_Sistemas.Digitales.pdf_25-8-2026.pdf', '2026-08-25 19:18:47', 1, '2026-08-25 22:18:47', '2026-08-25 22:26:26'),
(158, 78, 58, 2026, 'programas/Contenidos mínimos Sistemas digitales 6to_25-8-2026.pdf', '2026-08-25 19:26:26', 1, '2026-08-25 22:26:26', '2026-08-25 22:26:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('AvtpjNLHLQr7Tlbk6wnXvsbKCFFgFG5krzMeIwgr', 34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJ4MlBMNXdGN2xNRFZDMm9YNU9aT0tCWGJTUWxnTUNGd0ZOaTdSaUxLIiwidXJsIjpbXSwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9hZG1pblwvcHJvZ3JhbWFzIiwicm91dGUiOiJhZG1pbi5wcm9ncmFtYXMuaW5kZXgifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI6MzR9', 1793744183);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombre`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Valles, Roberto', 'rvalles2@abc.gob.ar', '$2y$12$6Jb8lTdWHN464BgW59v./.OvxDekMqlyKZqpjKnulvVgDJpz2xH7e', '2025-12-11 00:42:07', '2025-12-17 15:38:48'),
(2, 'Profesor', 'Profesor@gmail.com', '$2y$12$vhr1xHxSehArWrfmGXNQQu7ATxjyR1UpJVsinItGJIN2YCvYJwpi2', '2025-12-18 03:13:03', '2026-03-06 17:11:00'),
(3, 'Preceptor', 'Preceptor@gmail.com', '$2y$12$00URtolUu3zwJMiivCYjluLPSzEuEKKPpmEa0eTk4Wp8oDkbGJCI6', '2026-02-19 04:32:18', '2026-09-10 04:39:44'),
(4, 'EMATP Claudio', 'cdallarmellina@abc.gob.ar', '$2y$12$U2/S5kILmyzjRgdbekY5iO6tViOjhWzkqcISgq//hs5EpTX6hui9K', '2026-03-03 19:32:18', '2026-03-03 19:32:18'),
(5, 'Yamila Magdale Morera', 'morerayamila@abc.gob.ar', '$2y$12$43vsk0dM5RB63JJ4G8ICZuKStHr/NKA4hs.Dae/oc55wNmJUjD05W', '2026-03-03 20:17:25', '2026-03-06 17:16:38'),
(6, 'Ariana', 'arianalagorio@abc.gob.ar', '$2y$12$3au/GA25vuSNwzYEQY9PyO3.43ex8aSI5U9jdMCAZJ8V9H2isA2oS', '2026-03-03 20:19:57', '2026-03-06 17:24:03'),
(7, 'Dip', 'jdip@abc.gob.ar', '$2y$12$TJpeD6hBy7CgWoOrm9FhYOqUrLhJj91kWUhpZKF5ZIoR5Vd4i8YAO', '2026-03-03 23:20:07', '2026-03-06 17:15:01'),
(8, 'Cristian Rueda', 'cristianrueda@abc.gob.ar', '$2y$12$JRk7GjGNpHiCCia0hNkWYuXFOitgQBt6PETkJXEkdfiSkQKNyamfW', '2026-03-03 23:31:23', '2026-03-06 17:14:06'),
(9, 'Federico Toledo', 'ftoledo@abc.gob.ar', '$2y$12$E1ZglmU/M1AKu04/C11q0OOHpYCE44ho753uW1ZvZC060phZv7SRW', '2026-03-04 00:14:07', '2026-03-06 17:15:21'),
(10, 'María Cristina Varas', 'mvaras@abc.gob.ar', '$2y$12$iOKQIyqSlSFAQKTl.Ai1fOQcR3qDLCcgIXqs.RcLqONBceOeg5u1y', '2026-03-05 21:56:41', '2026-03-06 17:15:51'),
(11, 'Jorge Fernando Rolandelli', 'jrolandelli@abc.gob.ar', '$2y$12$vtGQivKMXJvFCToRlYwyweiWUBMJCjQXeuzO9aPcq2CtP6hewanGm', '2026-03-05 23:22:01', '2026-03-06 17:15:38'),
(12, 'Ana Laura Bertolani', 'abertolani@abc.gob.ar', '$2y$12$04r.D7B/UkxxqBfwkqexM.qkvNeoBrzK0xsK8HDdoa9Ru49yq/D8u', '2026-03-06 01:21:06', '2026-03-06 17:13:09'),
(13, 'Sandra Bruno', 'sanbruno@abc.gob.ar', '$2y$12$q.uRIox3giE2zpEX8bcN4.SXwTmwBL2HZ9wmamNjEO0woM9FA/wfu', '2026-03-06 04:24:35', '2026-03-06 17:16:22'),
(14, 'Claudia Alejandra Fresart', 'cfresart@abc.gob.ar', '$2y$12$PztYHPZE0eGGAMPhHtt9veN2HeGsv1U0dO81AxKsmN4BVB/pcpHCa', '2026-03-06 07:08:12', '2026-03-06 17:13:54'),
(15, 'Rosana Faggiolani', 'rfaggiolani@abc.gob.ar', '$2y$12$uOsdxI/DXEFK/oMKYVXeCOfZ7Mf8.euFP4c5Uyio1mRnZoWp7zonC', '2026-03-06 16:45:04', '2026-03-06 17:16:09'),
(16, 'Andrés Damián Lamberto', 'alamberto@abc.gob.ar', '$2y$12$H8g4sVnEu7IF4dnj4iJTnurOfSQ64WCXRlUb943H8/3IrahRzHsyC', '2026-03-06 17:42:33', '2026-03-06 19:01:16'),
(17, 'Jorge Gonzalez', 'jorgegonzalez5@abc.gob.ar', '$2y$12$wP9zp/GlFGJ3Dc7nvKPaGO1QTrPBacunT5LJCerhRHQelxst/V80e', '2026-03-06 19:14:36', '2026-03-07 06:49:40'),
(18, 'Miguel Del Pontigo', 'mdelpontigo@abc.gob.ar', '$2y$12$bNHGuex0MBSxtJkMmo.B4.qzVm0Ht3n.XDv8DHpCJdTJfzUdfq2ru', '2026-03-06 22:54:57', '2026-03-07 06:49:58'),
(19, 'Cristian Torino', 'ctorino@abc.gob.ar', '$2y$12$x3K.QL3.c6MJa6sj8D.h5udfWJO8wx0U/V7pq1aDx4j83iRNoQGKm', '2026-03-11 02:36:51', '2026-03-17 04:07:01'),
(20, 'PATRICIA BLANES', 'pblanes1@abc.gob.ar', '$2y$12$6hVWx5Lh2u3sV9hS1iCG3OEogKcf9wDU.PHkW2ZmuH8x1T5/phZ6m', '2026-07-13 23:04:28', '2026-07-13 23:21:49'),
(21, 'Carolina Verónica Gonzalez', 'gonzalezcarolinav@abc.gob.ar', '$2y$12$zer/t3kwrOi2ZknbUjOGC.9QmC9tHK96odrrn74lpVoucN7xa1Vuq', '2026-07-14 00:09:28', '2026-07-14 17:45:13'),
(22, 'María Verónica Fabbroni', 'mariafabbroni@abc.gob.ar', '$2y$12$MQzsTV0d4xZJleJhhkKXOet.BeSQqq3hN/o1smdi7pAegmhgLRoDa', '2026-07-14 01:34:24', '2026-08-04 18:51:53'),
(23, 'Yoel Vazquez', 'yoelvazquez@abc.gob.ar', '$2y$12$wQUheS12Dm5XRQSaHKP1tOi//5TxZWPr2AfBiDwNQnQ64fQSeITl.', '2026-07-14 01:53:51', '2026-07-14 17:47:12'),
(24, 'Pablo Ruiz', 'pabloruiz@abc.gob.ar', '$2y$12$bdikqpxmhsIioa6nMR.XAOnrHiD2Xu3LQ2iD3i5.RXWnrQY1OqWoC', '2026-07-14 07:35:58', '2026-07-14 16:56:10'),
(25, 'Maria Gabriela Mattana', 'mmattana@abc.gob.ar', '$2y$12$JzN/4fwEArCIPDgFt5X.meefREr9CNTdawCKPPcnRGK2XSKhOaYbG', '2026-07-14 17:32:30', '2026-07-14 17:39:52'),
(26, 'Raul Andrés Castañeira', 'rcastaneira@abc.gob.ar', '$2y$12$RIRRCvuWDd8DNmJBmdX9net7NJf19CyiQ2P6i9MecGtgUq/inpv/6', '2026-07-17 21:28:11', '2026-08-04 18:50:55'),
(27, 'Betiana Machado', 'betianamachado@abc.gob.ar', '$2y$12$kAMIwg9Fz9dh2Y6FZF3u3eKFLyGNqcsvl6BkJFQVq6X02Y6HSpNgG', '2026-07-18 02:00:20', '2026-08-04 18:51:29'),
(28, 'Jose Maria Mulet', 'jmulet@abc.gob.ar', '$2y$12$rzjpWnhewVC1VuyfQjcvHedMrrXqjFE8339soBgL8mg9IMkdE3Jwy', '2026-08-12 05:40:54', '2026-08-25 20:26:02'),
(29, 'Babudro Erica Andrea', 'ebabudro@abc.gob.ar', '$2y$12$sBPmQQSSfP0STsZyQC51wOvqebTQz4/RWs0HFmiVNUWrF1yV4eL.u', '2026-08-23 05:54:53', '2026-08-25 20:23:57'),
(30, 'Juan Bautista Ulibarrena', 'ulibarrenajuan@abc.gob.ar', '$2y$12$JcgNA9TFCDCdfPh638NeCuqNj83Pab8HmgwV38pYBciyWWisC5SAi', '2026-08-25 03:03:38', '2026-08-25 20:25:18'),
(31, 'Maria Soledad Miretti', 'mmiretti@abc.gob.ar', '$2y$12$uLLFHd2Ynic84TM2CmapC.rvCcPHBwqs9F/tzveTR9ojBOgMJIls2', '2026-09-18 02:15:29', '2026-10-16 18:13:23'),
(32, 'Victor Leonardo Santos', 'vsantos5@abc.gob.ar', '$2y$12$GjKSqfkL6pVG3dtv6FAfh.06K.jMus7pMd07jd2eRbM4wuZp9KxTq', '2026-09-18 02:17:09', '2026-10-16 18:13:44'),
(33, 'Jose Armando Leon', 'jleon@abc.gob.ar', '$2y$12$hWpooi1Dg4taaz9fWjcjn.s2BNEYm7c1Ijk0EsNFoIZkhZ0BxUUoi', '2026-09-18 02:42:05', '2026-10-16 18:12:31'),
(34, 'Pedro Coyle', 'pedroc@abc.gob.ar', '$2y$12$y1mgfJucuHwPGRDZA8W2Qu9doiy/hFfrbLHMMyhqJpau/zNgFAdtG', '2026-11-03 22:11:34', '2026-11-03 22:11:34');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anios`
--
ALTER TABLE `anios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `emtp_carreras`
--
ALTER TABLE `emtp_carreras`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emtp_carreras_profesor_id_carrera_id_unique` (`profesor_id`,`carrera_id`),
  ADD KEY `emtp_carreras_carrera_id_foreign` (`carrera_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`);

--
-- Indices de la tabla `jefe_carreras`
--
ALTER TABLE `jefe_carreras`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jefe_carreras_profesor_id_carrera_id_unique` (`profesor_id`,`carrera_id`),
  ADD KEY `jefe_carreras_carrera_id_foreign` (`carrera_id`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materias_carrera_id_foreign` (`carrera_id`),
  ADD KEY `materias_anio_id_foreign` (`anio_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preceptor_cursos`
--
ALTER TABLE `preceptor_cursos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `preceptor_cursos_profesor_id_carrera_id_anio_id_unique` (`profesor_id`,`carrera_id`,`anio_id`),
  ADD KEY `preceptor_cursos_carrera_id_foreign` (`carrera_id`),
  ADD KEY `preceptor_cursos_anio_id_foreign` (`anio_id`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profesores_email_unique` (`email`),
  ADD KEY `profesores_user_id_foreign` (`user_id`),
  ADD KEY `profesores_rol_id_foreign` (`rol_id`),
  ADD KEY `profesores_creado_por_perfil_id_foreign` (`creado_por_perfil_id`);

--
-- Indices de la tabla `profesor_materias`
--
ALTER TABLE `profesor_materias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profesor_materias_profesor_id_foreign` (`profesor_id`),
  ADD KEY `profesor_materias_materia_id_foreign` (`materia_id`);

--
-- Indices de la tabla `profesor_rol`
--
ALTER TABLE `profesor_rol`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profesor_rol_profesor_id_rol_id_unique` (`profesor_id`,`rol_id`);

--
-- Indices de la tabla `programas`
--
ALTER TABLE `programas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `programas_profesor_id_foreign` (`profesor_id`),
  ADD KEY `programas_materia_id_foreign` (`materia_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anios`
--
ALTER TABLE `anios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `emtp_carreras`
--
ALTER TABLE `emtp_carreras`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jefe_carreras`
--
ALTER TABLE `jefe_carreras`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `preceptor_cursos`
--
ALTER TABLE `preceptor_cursos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de la tabla `profesor_materias`
--
ALTER TABLE `profesor_materias`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT de la tabla `profesor_rol`
--
ALTER TABLE `profesor_rol`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT de la tabla `programas`
--
ALTER TABLE `programas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `emtp_carreras`
--
ALTER TABLE `emtp_carreras`
  ADD CONSTRAINT `emtp_carreras_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `emtp_carreras_profesor_id_foreign` FOREIGN KEY (`profesor_id`) REFERENCES `profesores` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `jefe_carreras`
--
ALTER TABLE `jefe_carreras`
  ADD CONSTRAINT `jefe_carreras_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jefe_carreras_profesor_id_foreign` FOREIGN KEY (`profesor_id`) REFERENCES `profesores` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_anio_id_foreign` FOREIGN KEY (`anio_id`) REFERENCES `anios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `materias_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `preceptor_cursos`
--
ALTER TABLE `preceptor_cursos`
  ADD CONSTRAINT `preceptor_cursos_anio_id_foreign` FOREIGN KEY (`anio_id`) REFERENCES `anios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `preceptor_cursos_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `preceptor_cursos_profesor_id_foreign` FOREIGN KEY (`profesor_id`) REFERENCES `profesores` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD CONSTRAINT `profesores_creado_por_perfil_id_foreign` FOREIGN KEY (`creado_por_perfil_id`) REFERENCES `profesores` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `profesores_rol_id_foreign` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `profesores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `profesor_materias`
--
ALTER TABLE `profesor_materias`
  ADD CONSTRAINT `profesor_materias_materia_id_foreign` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `profesor_materias_profesor_id_foreign` FOREIGN KEY (`profesor_id`) REFERENCES `profesores` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `profesor_rol`
--
ALTER TABLE `profesor_rol`
  ADD CONSTRAINT `profesor_rol_profesor_id_foreign` FOREIGN KEY (`profesor_id`) REFERENCES `profesores` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `programas`
--
ALTER TABLE `programas`
  ADD CONSTRAINT `programas_materia_id_foreign` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `programas_profesor_id_foreign` FOREIGN KEY (`profesor_id`) REFERENCES `profesores` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
