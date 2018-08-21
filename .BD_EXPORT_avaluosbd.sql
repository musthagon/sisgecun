-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-08-2018 a las 18:56:21
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `avaluosbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2018-08-13 17:29:13', '2018-08-13 17:29:13'),
(2, NULL, 1, 'Category 2', 'category-2', '2018-08-13 17:29:13', '2018-08-13 17:29:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `ciudad` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `capital` tinyint(4) NOT NULL,
  `id_estado` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cities`
--

INSERT INTO `cities` (`id`, `ciudad`, `created_at`, `updated_at`, `capital`, `id_estado`) VALUES
(1, 'Maroa', NULL, NULL, 0, 1),
(2, 'Puerto Ayacucho', NULL, NULL, 1, 1),
(3, 'San Fernando de Atabapo', NULL, NULL, 0, 1),
(4, 'Anaco', NULL, NULL, 0, 2),
(5, 'Aragua de Barcelona', NULL, NULL, 0, 2),
(6, 'Barcelona', NULL, NULL, 1, 2),
(7, 'Boca de Uchire', NULL, NULL, 0, 2),
(8, 'Cantaura', NULL, NULL, 0, 2),
(9, 'Clarines', NULL, NULL, 0, 2),
(10, 'El Chaparro', NULL, NULL, 0, 2),
(11, 'El Pao Anzoátegui', NULL, NULL, 0, 2),
(12, 'El Tigre', NULL, NULL, 0, 2),
(13, 'El Tigrito', NULL, NULL, 0, 2),
(14, 'Guanape', NULL, NULL, 0, 2),
(15, 'Guanta', NULL, NULL, 0, 2),
(16, 'Lechería', NULL, NULL, 0, 2),
(17, 'Onoto', NULL, NULL, 0, 2),
(18, 'Pariaguán', NULL, NULL, 0, 2),
(19, 'Píritu', NULL, NULL, 0, 2),
(20, 'Puerto La Cruz', NULL, NULL, 0, 2),
(21, 'Puerto Píritu', NULL, NULL, 0, 2),
(22, 'Sabana de Uchire', NULL, NULL, 0, 2),
(23, 'San Mateo Anzoátegui', NULL, NULL, 0, 2),
(24, 'San Pablo Anzoátegui', NULL, NULL, 0, 2),
(25, 'San Tomé', NULL, NULL, 0, 2),
(26, 'Santa Ana de Anzoátegui', NULL, NULL, 0, 2),
(27, 'Santa Fe Anzoátegui', NULL, NULL, 0, 2),
(28, 'Santa Rosa', NULL, NULL, 0, 2),
(29, 'Soledad', NULL, NULL, 0, 2),
(30, 'Urica', NULL, NULL, 0, 2),
(31, 'Valle de Guanape', NULL, NULL, 0, 2),
(43, 'Achaguas', NULL, NULL, 0, 3),
(44, 'Biruaca', NULL, NULL, 0, 3),
(45, 'Bruzual', NULL, NULL, 0, 3),
(46, 'El Amparo', NULL, NULL, 0, 3),
(47, 'El Nula', NULL, NULL, 0, 3),
(48, 'Elorza', NULL, NULL, 0, 3),
(49, 'Guasdualito', NULL, NULL, 0, 3),
(50, 'Mantecal', NULL, NULL, 0, 3),
(51, 'Puerto Páez', NULL, NULL, 0, 3),
(52, 'San Fernando de Apure', NULL, NULL, 1, 3),
(53, 'San Juan de Payara', NULL, NULL, 0, 3),
(54, 'Barbacoas', NULL, NULL, 0, 4),
(55, 'Cagua', NULL, NULL, 0, 4),
(56, 'Camatagua', NULL, NULL, 0, 4),
(58, 'Choroní', NULL, NULL, 0, 4),
(59, 'Colonia Tovar', NULL, NULL, 0, 4),
(60, 'El Consejo', NULL, NULL, 0, 4),
(61, 'La Victoria', NULL, NULL, 0, 4),
(62, 'Las Tejerías', NULL, NULL, 0, 4),
(63, 'Magdaleno', NULL, NULL, 0, 4),
(64, 'Maracay', NULL, NULL, 1, 4),
(65, 'Ocumare de La Costa', NULL, NULL, 0, 4),
(66, 'Palo Negro', NULL, NULL, 0, 4),
(67, 'San Casimiro', NULL, NULL, 0, 4),
(68, 'San Mateo', NULL, NULL, 0, 4),
(69, 'San Sebastián', NULL, NULL, 0, 4),
(70, 'Santa Cruz de Aragua', NULL, NULL, 0, 4),
(71, 'Tocorón', NULL, NULL, 0, 4),
(72, 'Turmero', NULL, NULL, 0, 4),
(73, 'Villa de Cura', NULL, NULL, 0, 4),
(74, 'Zuata', NULL, NULL, 0, 4),
(75, 'Barinas', NULL, NULL, 1, 5),
(76, 'Barinitas', NULL, NULL, 0, 5),
(77, 'Barrancas', NULL, NULL, 0, 5),
(78, 'Calderas', NULL, NULL, 0, 5),
(79, 'Capitanejo', NULL, NULL, 0, 5),
(80, 'Ciudad Bolivia', NULL, NULL, 0, 5),
(81, 'El Cantón', NULL, NULL, 0, 5),
(82, 'Las Veguitas', NULL, NULL, 0, 5),
(83, 'Libertad de Barinas', NULL, NULL, 0, 5),
(84, 'Sabaneta', NULL, NULL, 0, 5),
(85, 'Santa Bárbara de Barinas', NULL, NULL, 0, 5),
(86, 'Socopó', NULL, NULL, 0, 5),
(87, 'Caicara del Orinoco', NULL, NULL, 0, 6),
(88, 'Canaima', NULL, NULL, 0, 6),
(89, 'Ciudad Bolívar', NULL, NULL, 1, 6),
(90, 'Ciudad Piar', NULL, NULL, 0, 6),
(91, 'El Callao', NULL, NULL, 0, 6),
(92, 'El Dorado', NULL, NULL, 0, 6),
(93, 'El Manteco', NULL, NULL, 0, 6),
(94, 'El Palmar', NULL, NULL, 0, 6),
(95, 'El Pao', NULL, NULL, 0, 6),
(96, 'Guasipati', NULL, NULL, 0, 6),
(97, 'Guri', NULL, NULL, 0, 6),
(98, 'La Paragua', NULL, NULL, 0, 6),
(99, 'Matanzas', NULL, NULL, 0, 6),
(100, 'Puerto Ordaz', NULL, NULL, 0, 6),
(101, 'San Félix', NULL, NULL, 0, 6),
(102, 'Santa Elena de Uairén', NULL, NULL, 0, 6),
(103, 'Tumeremo', NULL, NULL, 0, 6),
(104, 'Unare', NULL, NULL, 0, 6),
(105, 'Upata', NULL, NULL, 0, 6),
(106, 'Bejuma', NULL, NULL, 0, 7),
(107, 'Belén', NULL, NULL, 0, 7),
(108, 'Campo de Carabobo', NULL, NULL, 0, 7),
(109, 'Canoabo', NULL, NULL, 0, 7),
(110, 'Central Tacarigua', NULL, NULL, 0, 7),
(111, 'Chirgua', NULL, NULL, 0, 7),
(112, 'Ciudad Alianza', NULL, NULL, 0, 7),
(113, 'El Palito', NULL, NULL, 0, 7),
(114, 'Guacara', NULL, NULL, 0, 7),
(115, 'Guigue', NULL, NULL, 0, 7),
(116, 'Las Trincheras', NULL, NULL, 0, 7),
(117, 'Los Guayos', NULL, NULL, 0, 7),
(118, 'Mariara', NULL, NULL, 0, 7),
(119, 'Miranda', NULL, NULL, 0, 7),
(120, 'Montalbán', NULL, NULL, 0, 7),
(121, 'Morón', NULL, NULL, 0, 7),
(122, 'Naguanagua', NULL, NULL, 0, 7),
(123, 'Puerto Cabello', NULL, NULL, 0, 7),
(124, 'San Joaquín', NULL, NULL, 0, 7),
(125, 'Tocuyito', NULL, NULL, 0, 7),
(126, 'Urama', NULL, NULL, 0, 7),
(127, 'Valencia', NULL, NULL, 1, 7),
(128, 'Vigirimita', NULL, NULL, 0, 7),
(129, 'Aguirre', NULL, NULL, 0, 8),
(130, 'Apartaderos Cojedes', NULL, NULL, 0, 8),
(131, 'Arismendi', NULL, NULL, 0, 8),
(132, 'Camuriquito', NULL, NULL, 0, 8),
(133, 'El Baúl', NULL, NULL, 0, 8),
(134, 'El Limón', NULL, NULL, 0, 8),
(135, 'El Pao Cojedes', NULL, NULL, 0, 8),
(136, 'El Socorro', NULL, NULL, 0, 8),
(137, 'La Aguadita', NULL, NULL, 0, 8),
(138, 'Las Vegas', NULL, NULL, 0, 8),
(139, 'Libertad de Cojedes', NULL, NULL, 0, 8),
(140, 'Mapuey', NULL, NULL, 0, 8),
(141, 'Piñedo', NULL, NULL, 0, 8),
(142, 'Samancito', NULL, NULL, 0, 8),
(143, 'San Carlos', NULL, NULL, 1, 8),
(144, 'Sucre', NULL, NULL, 0, 8),
(145, 'Tinaco', NULL, NULL, 0, 8),
(146, 'Tinaquillo', NULL, NULL, 0, 8),
(147, 'Vallecito', NULL, NULL, 0, 8),
(148, 'Tucupita', NULL, NULL, 1, 9),
(149, 'Caracas', NULL, NULL, 1, 24),
(150, 'El Junquito', NULL, NULL, 0, 24),
(151, 'Adícora', NULL, NULL, 0, 10),
(152, 'Boca de Aroa', NULL, NULL, 0, 10),
(153, 'Cabure', NULL, NULL, 0, 10),
(154, 'Capadare', NULL, NULL, 0, 10),
(155, 'Capatárida', NULL, NULL, 0, 10),
(156, 'Chichiriviche', NULL, NULL, 0, 10),
(157, 'Churuguara', NULL, NULL, 0, 10),
(158, 'Coro', NULL, NULL, 1, 10),
(159, 'Cumarebo', NULL, NULL, 0, 10),
(160, 'Dabajuro', NULL, NULL, 0, 10),
(161, 'Judibana', NULL, NULL, 0, 10),
(162, 'La Cruz de Taratara', NULL, NULL, 0, 10),
(163, 'La Vela de Coro', NULL, NULL, 0, 10),
(164, 'Los Taques', NULL, NULL, 0, 10),
(165, 'Maparari', NULL, NULL, 0, 10),
(166, 'Mene de Mauroa', NULL, NULL, 0, 10),
(167, 'Mirimire', NULL, NULL, 0, 10),
(168, 'Pedregal', NULL, NULL, 0, 10),
(169, 'Píritu Falcón', NULL, NULL, 0, 10),
(170, 'Pueblo Nuevo Falcón', NULL, NULL, 0, 10),
(171, 'Puerto Cumarebo', NULL, NULL, 0, 10),
(172, 'Punta Cardón', NULL, NULL, 0, 10),
(173, 'Punto Fijo', NULL, NULL, 0, 10),
(174, 'San Juan de Los Cayos', NULL, NULL, 0, 10),
(175, 'San Luis', NULL, NULL, 0, 10),
(176, 'Santa Ana Falcón', NULL, NULL, 0, 10),
(177, 'Santa Cruz De Bucaral', NULL, NULL, 0, 10),
(178, 'Tocopero', NULL, NULL, 0, 10),
(179, 'Tocuyo de La Costa', NULL, NULL, 0, 10),
(180, 'Tucacas', NULL, NULL, 0, 10),
(181, 'Yaracal', NULL, NULL, 0, 10),
(182, 'Altagracia de Orituco', NULL, NULL, 0, 11),
(183, 'Cabruta', NULL, NULL, 0, 11),
(184, 'Calabozo', NULL, NULL, 0, 11),
(185, 'Camaguán', NULL, NULL, 0, 11),
(196, 'Chaguaramas Guárico', NULL, NULL, 0, 11),
(197, 'El Socorro', NULL, NULL, 0, 11),
(198, 'El Sombrero', NULL, NULL, 0, 11),
(199, 'Las Mercedes de Los Llanos', NULL, NULL, 0, 11),
(200, 'Lezama', NULL, NULL, 0, 11),
(201, 'Onoto', NULL, NULL, 0, 11),
(202, 'Ortíz', NULL, NULL, 0, 11),
(203, 'San José de Guaribe', NULL, NULL, 0, 11),
(204, 'San Juan de Los Morros', NULL, NULL, 1, 11),
(205, 'San Rafael de Laya', NULL, NULL, 0, 11),
(206, 'Santa María de Ipire', NULL, NULL, 0, 11),
(207, 'Tucupido', NULL, NULL, 0, 11),
(208, 'Valle de La Pascua', NULL, NULL, 0, 11),
(209, 'Zaraza', NULL, NULL, 0, 11),
(210, 'Aguada Grande', NULL, NULL, 0, 12),
(211, 'Atarigua', NULL, NULL, 0, 12),
(212, 'Barquisimeto', NULL, NULL, 1, 12),
(213, 'Bobare', NULL, NULL, 0, 12),
(214, 'Cabudare', NULL, NULL, 0, 12),
(215, 'Carora', NULL, NULL, 0, 12),
(216, 'Cubiro', NULL, NULL, 0, 12),
(217, 'Cují', NULL, NULL, 0, 12),
(218, 'Duaca', NULL, NULL, 0, 12),
(219, 'El Manzano', NULL, NULL, 0, 12),
(220, 'El Tocuyo', NULL, NULL, 0, 12),
(221, 'Guaríco', NULL, NULL, 0, 12),
(222, 'Humocaro Alto', NULL, NULL, 0, 12),
(223, 'Humocaro Bajo', NULL, NULL, 0, 12),
(224, 'La Miel', NULL, NULL, 0, 12),
(225, 'Moroturo', NULL, NULL, 0, 12),
(226, 'Quíbor', NULL, NULL, 0, 12),
(227, 'Río Claro', NULL, NULL, 0, 12),
(228, 'Sanare', NULL, NULL, 0, 12),
(229, 'Santa Inés', NULL, NULL, 0, 12),
(230, 'Sarare', NULL, NULL, 0, 12),
(231, 'Siquisique', NULL, NULL, 0, 12),
(232, 'Tintorero', NULL, NULL, 0, 12),
(233, 'Apartaderos Mérida', NULL, NULL, 0, 13),
(234, 'Arapuey', NULL, NULL, 0, 13),
(235, 'Bailadores', NULL, NULL, 0, 13),
(236, 'Caja Seca', NULL, NULL, 0, 13),
(237, 'Canaguá', NULL, NULL, 0, 13),
(238, 'Chachopo', NULL, NULL, 0, 13),
(239, 'Chiguara', NULL, NULL, 0, 13),
(240, 'Ejido', NULL, NULL, 0, 13),
(241, 'El Vigía', NULL, NULL, 0, 13),
(242, 'La Azulita', NULL, NULL, 0, 13),
(243, 'La Playa', NULL, NULL, 0, 13),
(244, 'Lagunillas Mérida', NULL, NULL, 0, 13),
(245, 'Mérida', NULL, NULL, 1, 13),
(246, 'Mesa de Bolívar', NULL, NULL, 0, 13),
(247, 'Mucuchíes', NULL, NULL, 0, 13),
(248, 'Mucujepe', NULL, NULL, 0, 13),
(249, 'Mucuruba', NULL, NULL, 0, 13),
(250, 'Nueva Bolivia', NULL, NULL, 0, 13),
(251, 'Palmarito', NULL, NULL, 0, 13),
(252, 'Pueblo Llano', NULL, NULL, 0, 13),
(253, 'Santa Cruz de Mora', NULL, NULL, 0, 13),
(254, 'Santa Elena de Arenales', NULL, NULL, 0, 13),
(255, 'Santo Domingo', NULL, NULL, 0, 13),
(256, 'Tabáy', NULL, NULL, 0, 13),
(257, 'Timotes', NULL, NULL, 0, 13),
(258, 'Torondoy', NULL, NULL, 0, 13),
(259, 'Tovar', NULL, NULL, 0, 13),
(260, 'Tucani', NULL, NULL, 0, 13),
(261, 'Zea', NULL, NULL, 0, 13),
(262, 'Araguita', NULL, NULL, 0, 14),
(263, 'Carrizal', NULL, NULL, 0, 14),
(264, 'Caucagua', NULL, NULL, 0, 14),
(265, 'Chaguaramas Miranda', NULL, NULL, 0, 14),
(266, 'Charallave', NULL, NULL, 0, 14),
(267, 'Chirimena', NULL, NULL, 0, 14),
(268, 'Chuspa', NULL, NULL, 0, 14),
(269, 'Cúa', NULL, NULL, 0, 14),
(270, 'Cupira', NULL, NULL, 0, 14),
(271, 'Curiepe', NULL, NULL, 0, 14),
(272, 'El Guapo', NULL, NULL, 0, 14),
(273, 'El Jarillo', NULL, NULL, 0, 14),
(274, 'Filas de Mariche', NULL, NULL, 0, 14),
(275, 'Guarenas', NULL, NULL, 0, 14),
(276, 'Guatire', NULL, NULL, 0, 14),
(277, 'Higuerote', NULL, NULL, 0, 14),
(278, 'Los Anaucos', NULL, NULL, 0, 14),
(279, 'Los Teques', NULL, NULL, 1, 14),
(280, 'Ocumare del Tuy', NULL, NULL, 0, 14),
(281, 'Panaquire', NULL, NULL, 0, 14),
(282, 'Paracotos', NULL, NULL, 0, 14),
(283, 'Río Chico', NULL, NULL, 0, 14),
(284, 'San Antonio de Los Altos', NULL, NULL, 0, 14),
(285, 'San Diego de Los Altos', NULL, NULL, 0, 14),
(286, 'San Fernando del Guapo', NULL, NULL, 0, 14),
(287, 'San Francisco de Yare', NULL, NULL, 0, 14),
(288, 'San José de Los Altos', NULL, NULL, 0, 14),
(289, 'San José de Río Chico', NULL, NULL, 0, 14),
(290, 'San Pedro de Los Altos', NULL, NULL, 0, 14),
(291, 'Santa Lucía', NULL, NULL, 0, 14),
(292, 'Santa Teresa', NULL, NULL, 0, 14),
(293, 'Tacarigua de La Laguna', NULL, NULL, 0, 14),
(294, 'Tacarigua de Mamporal', NULL, NULL, 0, 14),
(295, 'Tácata', NULL, NULL, 0, 14),
(296, 'Turumo', NULL, NULL, 0, 14),
(297, 'Aguasay', NULL, NULL, 0, 15),
(298, 'Aragua de Maturín', NULL, NULL, 0, 15),
(299, 'Barrancas del Orinoco', NULL, NULL, 0, 15),
(300, 'Caicara de Maturín', NULL, NULL, 0, 15),
(301, 'Caripe', NULL, NULL, 0, 15),
(302, 'Caripito', NULL, NULL, 0, 15),
(303, 'Chaguaramal', NULL, NULL, 0, 15),
(305, 'Chaguaramas Monagas', NULL, NULL, 0, 15),
(307, 'El Furrial', NULL, NULL, 0, 15),
(308, 'El Tejero', NULL, NULL, 0, 15),
(309, 'Jusepín', NULL, NULL, 0, 15),
(310, 'La Toscana', NULL, NULL, 0, 15),
(311, 'Maturín', NULL, NULL, 1, 15),
(312, 'Miraflores', NULL, NULL, 0, 15),
(313, 'Punta de Mata', NULL, NULL, 0, 15),
(314, 'Quiriquire', NULL, NULL, 0, 15),
(315, 'San Antonio de Maturín', NULL, NULL, 0, 15),
(316, 'San Vicente Monagas', NULL, NULL, 0, 15),
(317, 'Santa Bárbara', NULL, NULL, 0, 15),
(318, 'Temblador', NULL, NULL, 0, 15),
(319, 'Teresen', NULL, NULL, 0, 15),
(320, 'Uracoa', NULL, NULL, 0, 15),
(321, 'Altagracia', NULL, NULL, 0, 16),
(322, 'Boca de Pozo', NULL, NULL, 0, 16),
(323, 'Boca de Río', NULL, NULL, 0, 16),
(324, 'El Espinal', NULL, NULL, 0, 16),
(325, 'El Valle del Espíritu Santo', NULL, NULL, 0, 16),
(326, 'El Yaque', NULL, NULL, 0, 16),
(327, 'Juangriego', NULL, NULL, 0, 16),
(328, 'La Asunción', NULL, NULL, 1, 16),
(329, 'La Guardia', NULL, NULL, 0, 16),
(330, 'Pampatar', NULL, NULL, 0, 16),
(331, 'Porlamar', NULL, NULL, 0, 16),
(332, 'Puerto Fermín', NULL, NULL, 0, 16),
(333, 'Punta de Piedras', NULL, NULL, 0, 16),
(334, 'San Francisco de Macanao', NULL, NULL, 0, 16),
(335, 'San Juan Bautista', NULL, NULL, 0, 16),
(336, 'San Pedro de Coche', NULL, NULL, 0, 16),
(337, 'Santa Ana de Nueva Esparta', NULL, NULL, 0, 16),
(338, 'Villa Rosa', NULL, NULL, 0, 16),
(339, 'Acarigua', NULL, NULL, 0, 17),
(340, 'Agua Blanca', NULL, NULL, 0, 17),
(341, 'Araure', NULL, NULL, 0, 17),
(342, 'Biscucuy', NULL, NULL, 0, 17),
(343, 'Boconoito', NULL, NULL, 0, 17),
(344, 'Campo Elías', NULL, NULL, 0, 17),
(345, 'Chabasquén', NULL, NULL, 0, 17),
(346, 'Guanare', NULL, NULL, 1, 17),
(347, 'Guanarito', NULL, NULL, 0, 17),
(348, 'La Aparición', NULL, NULL, 0, 17),
(349, 'La Misión', NULL, NULL, 0, 17),
(350, 'Mesa de Cavacas', NULL, NULL, 0, 17),
(351, 'Ospino', NULL, NULL, 0, 17),
(352, 'Papelón', NULL, NULL, 0, 17),
(353, 'Payara', NULL, NULL, 0, 17),
(354, 'Pimpinela', NULL, NULL, 0, 17),
(355, 'Píritu de Portuguesa', NULL, NULL, 0, 17),
(356, 'San Rafael de Onoto', NULL, NULL, 0, 17),
(357, 'Santa Rosalía', NULL, NULL, 0, 17),
(358, 'Turén', NULL, NULL, 0, 17),
(359, 'Altos de Sucre', NULL, NULL, 0, 18),
(360, 'Araya', NULL, NULL, 0, 18),
(361, 'Cariaco', NULL, NULL, 0, 18),
(362, 'Carúpano', NULL, NULL, 0, 18),
(363, 'Casanay', NULL, NULL, 0, 18),
(364, 'Cumaná', NULL, NULL, 1, 18),
(365, 'Cumanacoa', NULL, NULL, 0, 18),
(366, 'El Morro Puerto Santo', NULL, NULL, 0, 18),
(367, 'El Pilar', NULL, NULL, 0, 18),
(368, 'El Poblado', NULL, NULL, 0, 18),
(369, 'Guaca', NULL, NULL, 0, 18),
(370, 'Guiria', NULL, NULL, 0, 18),
(371, 'Irapa', NULL, NULL, 0, 18),
(372, 'Manicuare', NULL, NULL, 0, 18),
(373, 'Mariguitar', NULL, NULL, 0, 18),
(374, 'Río Caribe', NULL, NULL, 0, 18),
(375, 'San Antonio del Golfo', NULL, NULL, 0, 18),
(376, 'San José de Aerocuar', NULL, NULL, 0, 18),
(377, 'San Vicente de Sucre', NULL, NULL, 0, 18),
(378, 'Santa Fe de Sucre', NULL, NULL, 0, 18),
(379, 'Tunapuy', NULL, NULL, 0, 18),
(380, 'Yaguaraparo', NULL, NULL, 0, 18),
(381, 'Yoco', NULL, NULL, 0, 18),
(382, 'Abejales', NULL, NULL, 0, 19),
(383, 'Borota', NULL, NULL, 0, 19),
(384, 'Bramon', NULL, NULL, 0, 19),
(385, 'Capacho', NULL, NULL, 0, 19),
(386, 'Colón', NULL, NULL, 0, 19),
(387, 'Coloncito', NULL, NULL, 0, 19),
(388, 'Cordero', NULL, NULL, 0, 19),
(389, 'El Cobre', NULL, NULL, 0, 19),
(390, 'El Pinal', NULL, NULL, 0, 19),
(391, 'Independencia', NULL, NULL, 0, 19),
(392, 'La Fría', NULL, NULL, 0, 19),
(393, 'La Grita', NULL, NULL, 0, 19),
(394, 'La Pedrera', NULL, NULL, 0, 19),
(395, 'La Tendida', NULL, NULL, 0, 19),
(396, 'Las Delicias', NULL, NULL, 0, 19),
(397, 'Las Hernández', NULL, NULL, 0, 19),
(398, 'Lobatera', NULL, NULL, 0, 19),
(399, 'Michelena', NULL, NULL, 0, 19),
(400, 'Palmira', NULL, NULL, 0, 19),
(401, 'Pregonero', NULL, NULL, 0, 19),
(402, 'Queniquea', NULL, NULL, 0, 19),
(403, 'Rubio', NULL, NULL, 0, 19),
(404, 'San Antonio del Tachira', NULL, NULL, 0, 19),
(405, 'San Cristobal', NULL, NULL, 1, 19),
(406, 'San José de Bolívar', NULL, NULL, 0, 19),
(407, 'San Josecito', NULL, NULL, 0, 19),
(408, 'San Pedro del Río', NULL, NULL, 0, 19),
(409, 'Santa Ana Táchira', NULL, NULL, 0, 19),
(410, 'Seboruco', NULL, NULL, 0, 19),
(411, 'Táriba', NULL, NULL, 0, 19),
(412, 'Umuquena', NULL, NULL, 0, 19),
(413, 'Ureña', NULL, NULL, 0, 19),
(414, 'Batatal', NULL, NULL, 0, 20),
(415, 'Betijoque', NULL, NULL, 0, 20),
(416, 'Boconó', NULL, NULL, 0, 20),
(417, 'Carache', NULL, NULL, 0, 20),
(418, 'Chejende', NULL, NULL, 0, 20),
(419, 'Cuicas', NULL, NULL, 0, 20),
(420, 'El Dividive', NULL, NULL, 0, 20),
(421, 'El Jaguito', NULL, NULL, 0, 20),
(422, 'Escuque', NULL, NULL, 0, 20),
(423, 'Isnotú', NULL, NULL, 0, 20),
(424, 'Jajó', NULL, NULL, 0, 20),
(425, 'La Ceiba', NULL, NULL, 0, 20),
(426, 'La Concepción de Trujllo', NULL, NULL, 0, 20),
(427, 'La Mesa de Esnujaque', NULL, NULL, 0, 20),
(428, 'La Puerta', NULL, NULL, 0, 20),
(429, 'La Quebrada', NULL, NULL, 0, 20),
(430, 'Mendoza Fría', NULL, NULL, 0, 20),
(431, 'Meseta de Chimpire', NULL, NULL, 0, 20),
(432, 'Monay', NULL, NULL, 0, 20),
(433, 'Motatán', NULL, NULL, 0, 20),
(434, 'Pampán', NULL, NULL, 0, 20),
(435, 'Pampanito', NULL, NULL, 0, 20),
(436, 'Sabana de Mendoza', NULL, NULL, 0, 20),
(437, 'San Lázaro', NULL, NULL, 0, 20),
(438, 'Santa Ana de Trujillo', NULL, NULL, 0, 20),
(439, 'Tostós', NULL, NULL, 0, 20),
(440, 'Trujillo', NULL, NULL, 1, 20),
(441, 'Valera', NULL, NULL, 0, 20),
(442, 'Carayaca', NULL, NULL, 0, 21),
(443, 'Litoral', NULL, NULL, 0, 21),
(444, 'Archipiélago Los Roques', NULL, NULL, 0, 25),
(445, 'Aroa', NULL, NULL, 0, 22),
(446, 'Boraure', NULL, NULL, 0, 22),
(447, 'Campo Elías de Yaracuy', NULL, NULL, 0, 22),
(448, 'Chivacoa', NULL, NULL, 0, 22),
(449, 'Cocorote', NULL, NULL, 0, 22),
(450, 'Farriar', NULL, NULL, 0, 22),
(451, 'Guama', NULL, NULL, 0, 22),
(452, 'Marín', NULL, NULL, 0, 22),
(453, 'Nirgua', NULL, NULL, 0, 22),
(454, 'Sabana de Parra', NULL, NULL, 0, 22),
(455, 'Salom', NULL, NULL, 0, 22),
(456, 'San Felipe', NULL, NULL, 1, 22),
(457, 'San Pablo de Yaracuy', NULL, NULL, 0, 22),
(458, 'Urachiche', NULL, NULL, 0, 22),
(459, 'Yaritagua', NULL, NULL, 0, 22),
(460, 'Yumare', NULL, NULL, 0, 22),
(461, 'Bachaquero', NULL, NULL, 0, 23),
(462, 'Bobures', NULL, NULL, 0, 23),
(463, 'Cabimas', NULL, NULL, 0, 23),
(464, 'Campo Concepción', NULL, NULL, 0, 23),
(465, 'Campo Mara', NULL, NULL, 0, 23),
(466, 'Campo Rojo', NULL, NULL, 0, 23),
(467, 'Carrasquero', NULL, NULL, 0, 23),
(468, 'Casigua', NULL, NULL, 0, 23),
(469, 'Chiquinquirá', NULL, NULL, 0, 23),
(470, 'Ciudad Ojeda', NULL, NULL, 0, 23),
(471, 'El Batey', NULL, NULL, 0, 23),
(472, 'El Carmelo', NULL, NULL, 0, 23),
(473, 'El Chivo', NULL, NULL, 0, 23),
(474, 'El Guayabo', NULL, NULL, 0, 23),
(475, 'El Mene', NULL, NULL, 0, 23),
(476, 'El Venado', NULL, NULL, 0, 23),
(477, 'Encontrados', NULL, NULL, 0, 23),
(478, 'Gibraltar', NULL, NULL, 0, 23),
(479, 'Isla de Toas', NULL, NULL, 0, 23),
(480, 'La Concepción del Zulia', NULL, NULL, 0, 23),
(481, 'La Paz', NULL, NULL, 0, 23),
(482, 'La Sierrita', NULL, NULL, 0, 23),
(483, 'Lagunillas del Zulia', NULL, NULL, 0, 23),
(484, 'Las Piedras de Perijá', NULL, NULL, 0, 23),
(485, 'Los Cortijos', NULL, NULL, 0, 23),
(486, 'Machiques', NULL, NULL, 0, 23),
(487, 'Maracaibo', NULL, NULL, 1, 23),
(488, 'Mene Grande', NULL, NULL, 0, 23),
(489, 'Palmarejo', NULL, NULL, 0, 23),
(490, 'Paraguaipoa', NULL, NULL, 0, 23),
(491, 'Potrerito', NULL, NULL, 0, 23),
(492, 'Pueblo Nuevo del Zulia', NULL, NULL, 0, 23),
(493, 'Puertos de Altagracia', NULL, NULL, 0, 23),
(494, 'Punta Gorda', NULL, NULL, 0, 23),
(495, 'Sabaneta de Palma', NULL, NULL, 0, 23),
(496, 'San Francisco', NULL, NULL, 0, 23),
(497, 'San José de Perijá', NULL, NULL, 0, 23),
(498, 'San Rafael del Moján', NULL, NULL, 0, 23),
(499, 'San Timoteo', NULL, NULL, 0, 23),
(500, 'Santa Bárbara Del Zulia', NULL, NULL, 0, 23),
(501, 'Santa Cruz de Mara', NULL, NULL, 0, 23),
(502, 'Santa Cruz del Zulia', NULL, NULL, 0, 23),
(503, 'Santa Rita', NULL, NULL, 0, 23),
(504, 'Sinamaica', NULL, NULL, 0, 23),
(505, 'Tamare', NULL, NULL, 0, 23),
(506, 'Tía Juana', NULL, NULL, 0, 23),
(507, 'Villa del Rosario', NULL, NULL, 0, 23),
(508, 'La Guaira', NULL, NULL, 1, 21),
(509, 'Catia La Mar', NULL, NULL, 0, 21),
(510, 'Macuto', NULL, NULL, 0, 21),
(511, 'Naiguatá', NULL, NULL, 0, 21),
(512, 'Archipiélago Los Monjes', NULL, NULL, 0, 25),
(513, 'Isla La Tortuga y Cayos adyacentes', NULL, NULL, 0, 25),
(514, 'Isla La Sola', NULL, NULL, 0, 25),
(515, 'Islas Los Testigos', NULL, NULL, 0, 25),
(516, 'Islas Los Frailes', NULL, NULL, 0, 25),
(517, 'Isla La Orchila', NULL, NULL, 0, 25),
(518, 'Archipiélago Las Aves', NULL, NULL, 0, 25),
(519, 'Isla de Aves', NULL, NULL, 0, 25),
(520, 'Isla La Blanquilla', NULL, NULL, 0, 25),
(521, 'Isla de Patos', NULL, NULL, 0, 25),
(522, 'Islas Los Hermanos', NULL, NULL, 0, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, NULL, 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '', 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(31, 5, 'author_id', 'rich_text_box', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(32, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, NULL, 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, NULL, 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, NULL, 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, NULL, 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '', 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '', 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '', 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '', 12),
(57, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(58, 7, 'nombre', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, NULL, 2),
(59, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(60, 9, 'nombre', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, NULL, 2),
(61, 11, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(63, 12, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(65, 12, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 4),
(66, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(67, 13, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(69, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, NULL, 4),
(70, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(71, 14, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(73, 14, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, NULL, 4),
(74, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(75, 12, 'estado', 'text', 'Estado', 1, 1, 1, 0, 0, 0, NULL, 2),
(76, 12, 'iso_3166_2', 'text', 'Iso 3166 2', 0, 1, 1, 0, 0, 0, NULL, 3),
(77, 11, 'ciudad', 'text', 'Ciudad', 1, 1, 1, 1, 1, 1, NULL, 2),
(78, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, NULL, 6),
(79, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(80, 11, 'capital', 'text', 'Capital', 1, 1, 1, 1, 1, 1, NULL, 5),
(81, 11, 'id_estado', 'text', 'Id Estado', 1, 1, 1, 1, 1, 1, NULL, 4),
(83, 11, 'city_belongsto_state_relationship', 'relationship', 'Estado', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\State\",\"table\":\"states\",\"type\":\"belongsTo\",\"column\":\"id_estado\",\"key\":\"id\",\"label\":\"estado\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(84, 13, 'municipio_belongsto_state_relationship', 'relationship', 'Estado', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\State\",\"table\":\"states\",\"type\":\"belongsTo\",\"column\":\"id_estado\",\"key\":\"id\",\"label\":\"estado\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(85, 13, 'municipio', 'text', 'Municipio', 1, 1, 1, 1, 1, 1, NULL, 2),
(86, 13, 'id_estado', 'text', 'Id Estado', 1, 1, 1, 1, 1, 1, NULL, 6),
(87, 14, 'parroquia_belongsto_municipio_relationship', 'relationship', 'municipios', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Municipio\",\"table\":\"municipios\",\"type\":\"belongsTo\",\"column\":\"id_municipio\",\"key\":\"id\",\"label\":\"municipio\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(88, 14, 'parroquia', 'text', 'Parroquia', 1, 1, 1, 1, 1, 1, NULL, 2),
(89, 14, 'id_municipio', 'text', 'Id Municipio', 0, 1, 1, 1, 1, 1, NULL, 6),
(90, 1, 'user_belongsto_state_relationship', 'relationship', 'Estados', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\State\",\"table\":\"states\",\"type\":\"belongsTo\",\"column\":\"id_estado\",\"key\":\"id\",\"label\":\"estado\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(91, 1, 'user_belongsto_municipio_relationship', 'relationship', 'municipios', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Municipio\",\"table\":\"municipios\",\"type\":\"belongsTo\",\"column\":\"id_municipio\",\"key\":\"id\",\"label\":\"municipio\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(92, 1, 'user_belongsto_parroquia_relationship', 'relationship', 'parroquias', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Parroquia\",\"table\":\"parroquias\",\"type\":\"belongsTo\",\"column\":\"id_parroquia\",\"key\":\"id\",\"label\":\"parroquia\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(93, 1, 'id_estado', 'text', 'Id Estado', 0, 1, 1, 1, 1, 1, NULL, 11),
(94, 1, 'id_municipio', 'text', 'Id Municipio', 0, 1, 1, 1, 1, 1, NULL, 12),
(95, 1, 'id_parroquia', 'text', 'Id Parroquia', 0, 1, 1, 1, 1, 1, NULL, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-13 17:29:11', '2018-08-14 18:38:24'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2018-08-13 17:29:13', '2018-08-13 17:29:13'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-13 17:29:13', '2018-08-14 00:26:56'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2018-08-13 17:29:13', '2018-08-13 17:29:13'),
(7, 'ciudad', 'ciudad', 'Ciudad', 'Ciudades', NULL, 'App\\Ciudad', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"nombre\",\"order_display_column\":\"nombre\"}', '2018-08-14 01:21:30', '2018-08-14 01:30:59'),
(9, 'ciudades', 'ciudades', 'Ciudade', 'Ciudades', NULL, 'App\\Ciudad', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-14 01:36:15', '2018-08-14 01:36:15'),
(11, 'cities', 'cities', 'Ciudad', 'Ciudades', NULL, 'App\\City', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"ciudad\",\"order_display_column\":null}', '2018-08-14 01:38:27', '2018-08-14 07:14:59'),
(12, 'states', 'states', 'Estado', 'Estados', NULL, 'App\\State', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"estado\",\"order_display_column\":\"estado\"}', '2018-08-14 03:18:03', '2018-08-14 05:25:08'),
(13, 'municipios', 'municipios', 'Municipio', 'Municipios', NULL, 'App\\Municipio', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"municipio\"}', '2018-08-14 04:33:28', '2018-08-14 07:31:03'),
(14, 'parroquias', 'parroquias', 'Parroquia', 'Parroquias', NULL, 'App\\Parroquia', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-14 05:04:41', '2018-08-14 07:37:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-08-13 17:29:11', '2018-08-13 17:29:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Panel de Control', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2018-08-13 17:29:11', '2018-08-13 21:34:50', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-08-13 17:29:11', '2018-08-14 05:03:06', 'voyager.media.index', NULL),
(3, 1, 'Usuarios', '', '_self', 'voyager-person', '#000000', NULL, 4, '2018-08-13 17:29:11', '2018-08-14 04:23:04', 'voyager.users.index', 'null'),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 3, '2018-08-13 17:29:11', '2018-08-14 04:23:04', 'voyager.roles.index', NULL),
(5, 1, 'Herramientas', '', '_self', 'voyager-tools', '#000000', NULL, 9, '2018-08-13 17:29:11', '2018-08-14 05:05:12', NULL, ''),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-08-13 17:29:11', '2018-08-14 01:41:54', 'voyager.menus.index', NULL),
(7, 1, 'Base de Datos', '', '_self', 'voyager-data', '#000000', 5, 2, '2018-08-13 17:29:11', '2018-08-14 01:41:54', 'voyager.database.index', 'null'),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-08-13 17:29:11', '2018-08-14 01:41:54', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-08-13 17:29:11', '2018-08-14 01:41:54', 'voyager.bread.index', NULL),
(10, 1, 'Configuración', '', '_self', 'voyager-settings', '#000000', NULL, 10, '2018-08-13 17:29:11', '2018-08-14 05:05:12', 'voyager.settings.index', 'null'),
(11, 1, 'Categorías', '', '_self', 'voyager-categories', '#000000', NULL, 8, '2018-08-13 17:29:13', '2018-08-14 05:05:12', 'voyager.categories.index', 'null'),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2018-08-13 17:29:13', '2018-08-14 05:03:07', 'voyager.posts.index', NULL),
(13, 1, 'Páginas', '', '_self', 'voyager-file-text', '#000000', NULL, 7, '2018-08-13 17:29:14', '2018-08-14 05:05:12', 'voyager.pages.index', 'null'),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-08-13 17:29:14', '2018-08-14 01:41:54', 'voyager.hooks', NULL),
(21, 1, 'Ciudades', '', '_self', NULL, NULL, 22, 2, '2018-08-14 01:38:27', '2018-08-14 05:05:17', 'voyager.cities.index', NULL),
(22, 1, 'General', '', '_self', NULL, '#000000', NULL, 2, '2018-08-14 01:41:36', '2018-08-14 04:23:04', NULL, ''),
(23, 1, 'Estados', '', '_self', NULL, '#000000', 22, 1, '2018-08-14 03:18:04', '2018-08-14 05:05:17', 'voyager.states.index', 'null'),
(24, 1, 'Municipios', '', '_self', NULL, NULL, 22, 3, '2018-08-14 04:33:28', '2018-08-14 05:03:06', 'voyager.municipios.index', NULL),
(25, 1, 'Parroquias', '', '_self', NULL, NULL, 22, 4, '2018-08-14 05:04:41', '2018-08-14 05:05:12', 'voyager.parroquias.index', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id` int(10) UNSIGNED NOT NULL,
  `municipio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_estado` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id`, `municipio`, `created_at`, `updated_at`, `id_estado`) VALUES
(1, 'Alto Orinoco', NULL, NULL, 1),
(2, 'Atabapo', NULL, NULL, 1),
(3, 'Atures', NULL, NULL, 1),
(4, 'Autana', NULL, NULL, 1),
(5, 'Manapiare', NULL, NULL, 1),
(6, 'Maroa', NULL, NULL, 1),
(7, 'Río Negro', NULL, NULL, 1),
(8, 'Anaco', NULL, NULL, 2),
(9, 'Aragua', NULL, NULL, 2),
(10, 'Manuel Ezequiel Bruzual', NULL, NULL, 2),
(11, 'Diego Bautista Urbaneja', NULL, NULL, 2),
(12, 'Fernando Peñalver', NULL, NULL, 2),
(13, 'Francisco Del Carmen Carvajal', NULL, NULL, 2),
(14, 'General Sir Arthur McGregor', NULL, NULL, 2),
(15, 'Guanta', NULL, NULL, 2),
(16, 'Independencia', NULL, NULL, 2),
(17, 'José Gregorio Monagas', NULL, NULL, 2),
(18, 'Juan Antonio Sotillo', NULL, NULL, 2),
(19, 'Juan Manuel Cajigal', NULL, NULL, 2),
(20, 'Libertad', NULL, NULL, 2),
(21, 'Francisco de Miranda', NULL, NULL, 2),
(22, 'Pedro María Freites', NULL, NULL, 2),
(23, 'Píritu', NULL, NULL, 2),
(24, 'San José de Guanipa', NULL, NULL, 2),
(25, 'San Juan de Capistrano', NULL, NULL, 2),
(26, 'Santa Ana', NULL, NULL, 2),
(27, 'Simón Bolívar', NULL, NULL, 2),
(28, 'Simón Rodríguez', NULL, NULL, 2),
(29, 'Achaguas', NULL, NULL, 3),
(30, 'Biruaca', NULL, NULL, 3),
(31, 'Muñóz', NULL, NULL, 3),
(32, 'Páez', NULL, NULL, 3),
(33, 'Pedro Camejo', NULL, NULL, 3),
(34, 'Rómulo Gallegos', NULL, NULL, 3),
(35, 'San Fernando', NULL, NULL, 3),
(36, 'Atanasio Girardot', NULL, NULL, 4),
(37, 'Bolívar', NULL, NULL, 4),
(38, 'Camatagua', NULL, NULL, 4),
(39, 'Francisco Linares Alcántara', NULL, NULL, 4),
(40, 'José Ángel Lamas', NULL, NULL, 4),
(41, 'José Félix Ribas', NULL, NULL, 4),
(42, 'José Rafael Revenga', NULL, NULL, 4),
(43, 'Libertador', NULL, NULL, 4),
(44, 'Mario Briceño Iragorry', NULL, NULL, 4),
(45, 'Ocumare de la Costa de Oro', NULL, NULL, 4),
(46, 'San Casimiro', NULL, NULL, 4),
(47, 'San Sebastián', NULL, NULL, 4),
(48, 'Santiago Mariño', NULL, NULL, 4),
(49, 'Santos Michelena', NULL, NULL, 4),
(50, 'Sucre', NULL, NULL, 4),
(51, 'Tovar', NULL, NULL, 4),
(52, 'Urdaneta', NULL, NULL, 4),
(53, 'Zamora', NULL, NULL, 4),
(54, 'Alberto Arvelo Torrealba', NULL, NULL, 5),
(55, 'Andrés Eloy Blanco', NULL, NULL, 5),
(56, 'Antonio José de Sucre', NULL, NULL, 5),
(57, 'Arismendi', NULL, NULL, 5),
(58, 'Barinas', NULL, NULL, 5),
(59, 'Bolívar', NULL, NULL, 5),
(60, 'Cruz Paredes', NULL, NULL, 5),
(61, 'Ezequiel Zamora', NULL, NULL, 5),
(62, 'Obispos', NULL, NULL, 5),
(63, 'Pedraza', NULL, NULL, 5),
(64, 'Rojas', NULL, NULL, 5),
(65, 'Sosa', NULL, NULL, 5),
(66, 'Caroní', NULL, NULL, 6),
(67, 'Cedeño', NULL, NULL, 6),
(68, 'El Callao', NULL, NULL, 6),
(69, 'Gran Sabana', NULL, NULL, 6),
(70, 'Heres', NULL, NULL, 6),
(71, 'Piar', NULL, NULL, 6),
(72, 'Angostura (Raúl Leoni)', NULL, NULL, 6),
(73, 'Roscio', NULL, NULL, 6),
(74, 'Sifontes', NULL, NULL, 6),
(75, 'Sucre', NULL, NULL, 6),
(76, 'Padre Pedro Chien', NULL, NULL, 6),
(77, 'Bejuma', NULL, NULL, 7),
(78, 'Carlos Arvelo', NULL, NULL, 7),
(79, 'Diego Ibarra', NULL, NULL, 7),
(80, 'Guacara', NULL, NULL, 7),
(81, 'Juan José Mora', NULL, NULL, 7),
(82, 'Libertador', NULL, NULL, 7),
(83, 'Los Guayos', NULL, NULL, 7),
(84, 'Miranda', NULL, NULL, 7),
(85, 'Montalbán', NULL, NULL, 7),
(86, 'Naguanagua', NULL, NULL, 7),
(87, 'Puerto Cabello', NULL, NULL, 7),
(88, 'San Diego', NULL, NULL, 7),
(89, 'San Joaquín', NULL, NULL, 7),
(90, 'Valencia', NULL, NULL, 7),
(91, 'Anzoátegui', NULL, NULL, 8),
(92, 'Tinaquillo', NULL, NULL, 8),
(93, 'Girardot', NULL, NULL, 8),
(94, 'Lima Blanco', NULL, NULL, 8),
(95, 'Pao de San Juan Bautista', NULL, NULL, 8),
(96, 'Ricaurte', NULL, NULL, 8),
(97, 'Rómulo Gallegos', NULL, NULL, 8),
(98, 'San Carlos', NULL, NULL, 8),
(99, 'Tinaco', NULL, NULL, 8),
(100, 'Antonio Díaz', NULL, NULL, 9),
(101, 'Casacoima', NULL, NULL, 9),
(102, 'Pedernales', NULL, NULL, 9),
(103, 'Tucupita', NULL, NULL, 9),
(104, 'Acosta', NULL, NULL, 10),
(105, 'Bolívar', NULL, NULL, 10),
(106, 'Buchivacoa', NULL, NULL, 10),
(107, 'Cacique Manaure', NULL, NULL, 10),
(108, 'Carirubana', NULL, NULL, 10),
(109, 'Colina', NULL, NULL, 10),
(110, 'Dabajuro', NULL, NULL, 10),
(111, 'Democracia', NULL, NULL, 10),
(112, 'Falcón', NULL, NULL, 10),
(113, 'Federación', NULL, NULL, 10),
(114, 'Jacura', NULL, NULL, 10),
(115, 'José Laurencio Silva', NULL, NULL, 10),
(116, 'Los Taques', NULL, NULL, 10),
(117, 'Mauroa', NULL, NULL, 10),
(118, 'Miranda', NULL, NULL, 10),
(119, 'Monseñor Iturriza', NULL, NULL, 10),
(120, 'Palmasola', NULL, NULL, 10),
(121, 'Petit', NULL, NULL, 10),
(122, 'Píritu', NULL, NULL, 10),
(123, 'San Francisco', NULL, NULL, 10),
(124, 'Sucre', NULL, NULL, 10),
(125, 'Tocópero', NULL, NULL, 10),
(126, 'Unión', NULL, NULL, 10),
(127, 'Urumaco', NULL, NULL, 10),
(128, 'Zamora', NULL, NULL, 10),
(129, 'Camaguán', NULL, NULL, 11),
(130, 'Chaguaramas', NULL, NULL, 11),
(131, 'El Socorro', NULL, NULL, 11),
(132, 'José Félix Ribas', NULL, NULL, 11),
(133, 'José Tadeo Monagas', NULL, NULL, 11),
(134, 'Juan Germán Roscio', NULL, NULL, 11),
(135, 'Julián Mellado', NULL, NULL, 11),
(136, 'Las Mercedes', NULL, NULL, 11),
(137, 'Leonardo Infante', NULL, NULL, 11),
(138, 'Pedro Zaraza', NULL, NULL, 11),
(139, 'Ortíz', NULL, NULL, 11),
(140, 'San Gerónimo de Guayabal', NULL, NULL, 11),
(141, 'San José de Guaribe', NULL, NULL, 11),
(142, 'Santa María de Ipire', NULL, NULL, 11),
(143, 'Sebastián Francisco de Miranda', NULL, NULL, 11),
(144, 'Andrés Eloy Blanco', NULL, NULL, 12),
(145, 'Crespo', NULL, NULL, 12),
(146, 'Iribarren', NULL, NULL, 12),
(147, 'Jiménez', NULL, NULL, 12),
(148, 'Morán', NULL, NULL, 12),
(149, 'Palavecino', NULL, NULL, 12),
(150, 'Simón Planas', NULL, NULL, 12),
(151, 'Torres', NULL, NULL, 12),
(152, 'Urdaneta', NULL, NULL, 12),
(179, 'Alberto Adriani', NULL, NULL, 13),
(180, 'Andrés Bello', NULL, NULL, 13),
(181, 'Antonio Pinto Salinas', NULL, NULL, 13),
(182, 'Aricagua', NULL, NULL, 13),
(183, 'Arzobispo Chacón', NULL, NULL, 13),
(184, 'Campo Elías', NULL, NULL, 13),
(185, 'Caracciolo Parra Olmedo', NULL, NULL, 13),
(186, 'Cardenal Quintero', NULL, NULL, 13),
(187, 'Guaraque', NULL, NULL, 13),
(188, 'Julio César Salas', NULL, NULL, 13),
(189, 'Justo Briceño', NULL, NULL, 13),
(190, 'Libertador', NULL, NULL, 13),
(191, 'Miranda', NULL, NULL, 13),
(192, 'Obispo Ramos de Lora', NULL, NULL, 13),
(193, 'Padre Noguera', NULL, NULL, 13),
(194, 'Pueblo Llano', NULL, NULL, 13),
(195, 'Rangel', NULL, NULL, 13),
(196, 'Rivas Dávila', NULL, NULL, 13),
(197, 'Santos Marquina', NULL, NULL, 13),
(198, 'Sucre', NULL, NULL, 13),
(199, 'Tovar', NULL, NULL, 13),
(200, 'Tulio Febres Cordero', NULL, NULL, 13),
(201, 'Zea', NULL, NULL, 13),
(223, 'Acevedo', NULL, NULL, 14),
(224, 'Andrés Bello', NULL, NULL, 14),
(225, 'Baruta', NULL, NULL, 14),
(226, 'Brión', NULL, NULL, 14),
(227, 'Buroz', NULL, NULL, 14),
(228, 'Carrizal', NULL, NULL, 14),
(229, 'Chacao', NULL, NULL, 14),
(230, 'Cristóbal Rojas', NULL, NULL, 14),
(231, 'El Hatillo', NULL, NULL, 14),
(232, 'Guaicaipuro', NULL, NULL, 14),
(233, 'Independencia', NULL, NULL, 14),
(234, 'Lander', NULL, NULL, 14),
(235, 'Los Salias', NULL, NULL, 14),
(236, 'Páez', NULL, NULL, 14),
(237, 'Paz Castillo', NULL, NULL, 14),
(238, 'Pedro Gual', NULL, NULL, 14),
(239, 'Plaza', NULL, NULL, 14),
(240, 'Simón Bolívar', NULL, NULL, 14),
(241, 'Sucre', NULL, NULL, 14),
(242, 'Urdaneta', NULL, NULL, 14),
(243, 'Zamora', NULL, NULL, 14),
(258, 'Acosta', NULL, NULL, 15),
(259, 'Aguasay', NULL, NULL, 15),
(260, 'Bolívar', NULL, NULL, 15),
(261, 'Caripe', NULL, NULL, 15),
(262, 'Cedeño', NULL, NULL, 15),
(263, 'Ezequiel Zamora', NULL, NULL, 15),
(264, 'Libertador', NULL, NULL, 15),
(265, 'Maturín', NULL, NULL, 15),
(266, 'Piar', NULL, NULL, 15),
(267, 'Punceres', NULL, NULL, 15),
(268, 'Santa Bárbara', NULL, NULL, 15),
(269, 'Sotillo', NULL, NULL, 15),
(270, 'Uracoa', NULL, NULL, 15),
(271, 'Antolín del Campo', NULL, NULL, 16),
(272, 'Arismendi', NULL, NULL, 16),
(273, 'García', NULL, NULL, 16),
(274, 'Gómez', NULL, NULL, 16),
(275, 'Maneiro', NULL, NULL, 16),
(276, 'Marcano', NULL, NULL, 16),
(277, 'Mariño', NULL, NULL, 16),
(278, 'Península de Macanao', NULL, NULL, 16),
(279, 'Tubores', NULL, NULL, 16),
(280, 'Villalba', NULL, NULL, 16),
(281, 'Díaz', NULL, NULL, 16),
(282, 'Agua Blanca', NULL, NULL, 17),
(283, 'Araure', NULL, NULL, 17),
(284, 'Esteller', NULL, NULL, 17),
(285, 'Guanare', NULL, NULL, 17),
(286, 'Guanarito', NULL, NULL, 17),
(287, 'Monseñor José Vicente de Unda', NULL, NULL, 17),
(288, 'Ospino', NULL, NULL, 17),
(289, 'Páez', NULL, NULL, 17),
(290, 'Papelón', NULL, NULL, 17),
(291, 'San Genaro de Boconoíto', NULL, NULL, 17),
(292, 'San Rafael de Onoto', NULL, NULL, 17),
(293, 'Santa Rosalía', NULL, NULL, 17),
(294, 'Sucre', NULL, NULL, 17),
(295, 'Turén', NULL, NULL, 17),
(296, 'Andrés Eloy Blanco', NULL, NULL, 18),
(297, 'Andrés Mata', NULL, NULL, 18),
(298, 'Arismendi', NULL, NULL, 18),
(299, 'Benítez', NULL, NULL, 18),
(300, 'Bermúdez', NULL, NULL, 18),
(301, 'Bolívar', NULL, NULL, 18),
(302, 'Cajigal', NULL, NULL, 18),
(303, 'Cruz Salmerón Acosta', NULL, NULL, 18),
(304, 'Libertador', NULL, NULL, 18),
(305, 'Mariño', NULL, NULL, 18),
(306, 'Mejía', NULL, NULL, 18),
(307, 'Montes', NULL, NULL, 18),
(308, 'Ribero', NULL, NULL, 18),
(309, 'Sucre', NULL, NULL, 18),
(310, 'Valdéz', NULL, NULL, 18),
(341, 'Andrés Bello', NULL, NULL, 19),
(342, 'Antonio Rómulo Costa', NULL, NULL, 19),
(343, 'Ayacucho', NULL, NULL, 19),
(344, 'Bolívar', NULL, NULL, 19),
(345, 'Cárdenas', NULL, NULL, 19),
(346, 'Córdoba', NULL, NULL, 19),
(347, 'Fernández Feo', NULL, NULL, 19),
(348, 'Francisco de Miranda', NULL, NULL, 19),
(349, 'García de Hevia', NULL, NULL, 19),
(350, 'Guásimos', NULL, NULL, 19),
(351, 'Independencia', NULL, NULL, 19),
(352, 'Jáuregui', NULL, NULL, 19),
(353, 'José María Vargas', NULL, NULL, 19),
(354, 'Junín', NULL, NULL, 19),
(355, 'Libertad', NULL, NULL, 19),
(356, 'Libertador', NULL, NULL, 19),
(357, 'Lobatera', NULL, NULL, 19),
(358, 'Michelena', NULL, NULL, 19),
(359, 'Panamericano', NULL, NULL, 19),
(360, 'Pedro María Ureña', NULL, NULL, 19),
(361, 'Rafael Urdaneta', NULL, NULL, 19),
(362, 'Samuel Darío Maldonado', NULL, NULL, 19),
(363, 'San Cristóbal', NULL, NULL, 19),
(364, 'Seboruco', NULL, NULL, 19),
(365, 'Simón Rodríguez', NULL, NULL, 19),
(366, 'Sucre', NULL, NULL, 19),
(367, 'Torbes', NULL, NULL, 19),
(368, 'Uribante', NULL, NULL, 19),
(369, 'San Judas Tadeo', NULL, NULL, 19),
(370, 'Andrés Bello', NULL, NULL, 20),
(371, 'Boconó', NULL, NULL, 20),
(372, 'Bolívar', NULL, NULL, 20),
(373, 'Candelaria', NULL, NULL, 20),
(374, 'Carache', NULL, NULL, 20),
(375, 'Escuque', NULL, NULL, 20),
(376, 'José Felipe Márquez Cañizalez', NULL, NULL, 20),
(377, 'Juan Vicente Campos Elías', NULL, NULL, 20),
(378, 'La Ceiba', NULL, NULL, 20),
(379, 'Miranda', NULL, NULL, 20),
(380, 'Monte Carmelo', NULL, NULL, 20),
(381, 'Motatán', NULL, NULL, 20),
(382, 'Pampán', NULL, NULL, 20),
(383, 'Pampanito', NULL, NULL, 20),
(384, 'Rafael Rangel', NULL, NULL, 20),
(385, 'San Rafael de Carvajal', NULL, NULL, 20),
(386, 'Sucre', NULL, NULL, 20),
(387, 'Trujillo', NULL, NULL, 20),
(388, 'Urdaneta', NULL, NULL, 20),
(389, 'Valera', NULL, NULL, 20),
(390, 'Vargas', NULL, NULL, 21),
(391, 'Arístides Bastidas', NULL, NULL, 22),
(392, 'Bolívar', NULL, NULL, 22),
(407, 'Bruzual', NULL, NULL, 22),
(408, 'Cocorote', NULL, NULL, 22),
(409, 'Independencia', NULL, NULL, 22),
(410, 'José Antonio Páez', NULL, NULL, 22),
(411, 'La Trinidad', NULL, NULL, 22),
(412, 'Manuel Monge', NULL, NULL, 22),
(413, 'Nirgua', NULL, NULL, 22),
(414, 'Peña', NULL, NULL, 22),
(415, 'San Felipe', NULL, NULL, 22),
(416, 'Sucre', NULL, NULL, 22),
(417, 'Urachiche', NULL, NULL, 22),
(418, 'José Joaquín Veroes', NULL, NULL, 22),
(441, 'Almirante Padilla', NULL, NULL, 23),
(442, 'Baralt', NULL, NULL, 23),
(443, 'Cabimas', NULL, NULL, 23),
(444, 'Catatumbo', NULL, NULL, 23),
(445, 'Colón', NULL, NULL, 23),
(446, 'Francisco Javier Pulgar', NULL, NULL, 23),
(447, 'Páez', NULL, NULL, 23),
(448, 'Jesús Enrique Losada', NULL, NULL, 23),
(449, 'Jesús María Semprún', NULL, NULL, 23),
(450, 'La Cañada de Urdaneta', NULL, NULL, 23),
(451, 'Lagunillas', NULL, NULL, 23),
(452, 'Machiques de Perijá', NULL, NULL, 23),
(453, 'Mara', NULL, NULL, 23),
(454, 'Maracaibo', NULL, NULL, 23),
(455, 'Miranda', NULL, NULL, 23),
(456, 'Rosario de Perijá', NULL, NULL, 23),
(457, 'San Francisco', NULL, NULL, 23),
(458, 'Santa Rita', NULL, NULL, 23),
(459, 'Simón Bolívar', NULL, NULL, 23),
(460, 'Sucre', NULL, NULL, 23),
(461, 'Valmore Rodríguez', NULL, NULL, 23),
(462, 'Libertador', NULL, NULL, 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-08-13 17:29:14', '2018-08-13 17:29:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parroquias`
--

CREATE TABLE `parroquias` (
  `id` int(10) UNSIGNED NOT NULL,
  `parroquia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_municipio` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `parroquias`
--

INSERT INTO `parroquias` (`id`, `parroquia`, `created_at`, `updated_at`, `id_municipio`) VALUES
(1, 'Alto Orinoco', NULL, NULL, 1),
(2, 'Huachamacare Acanaña', NULL, NULL, 1),
(3, 'Marawaka Toky Shamanaña', NULL, NULL, 1),
(4, 'Mavaka Mavaka', NULL, NULL, 1),
(5, 'Sierra Parima Parimabé', NULL, NULL, 1),
(6, 'Ucata Laja Lisa', NULL, NULL, 2),
(7, 'Yapacana Macuruco', NULL, NULL, 2),
(8, 'Caname Guarinuma', NULL, NULL, 2),
(9, 'Fernando Girón Tovar', NULL, NULL, 3),
(10, 'Luis Alberto Gómez', NULL, NULL, 3),
(11, 'Pahueña Limón de Parhueña', NULL, NULL, 3),
(12, 'Platanillal Platanillal', NULL, NULL, 3),
(13, 'Samariapo', NULL, NULL, 4),
(14, 'Sipapo', NULL, NULL, 4),
(15, 'Munduapo', NULL, NULL, 4),
(16, 'Guayapo', NULL, NULL, 4),
(17, 'Alto Ventuari', NULL, NULL, 5),
(18, 'Medio Ventuari', NULL, NULL, 5),
(19, 'Bajo Ventuari', NULL, NULL, 5),
(20, 'Victorino', NULL, NULL, 6),
(21, 'Comunidad', NULL, NULL, 6),
(22, 'Casiquiare', NULL, NULL, 7),
(23, 'Cocuy', NULL, NULL, 7),
(24, 'San Carlos de Río Negro', NULL, NULL, 7),
(25, 'Solano', NULL, NULL, 7),
(26, 'Anaco', NULL, NULL, 8),
(27, 'San Joaquín', NULL, NULL, 8),
(28, 'Cachipo', NULL, NULL, 9),
(29, 'Aragua de Barcelona', NULL, NULL, 9),
(30, 'Lechería', NULL, NULL, 11),
(31, 'El Morro', NULL, NULL, 11),
(32, 'Puerto Píritu', NULL, NULL, 12),
(33, 'San Miguel', NULL, NULL, 12),
(34, 'Sucre', NULL, NULL, 12),
(35, 'Valle de Guanape', NULL, NULL, 13),
(36, 'Santa Bárbara', NULL, NULL, 13),
(37, 'El Chaparro', NULL, NULL, 14),
(38, 'Tomás Alfaro', NULL, NULL, 14),
(39, 'Calatrava', NULL, NULL, 14),
(40, 'Guanta', NULL, NULL, 15),
(41, 'Chorrerón', NULL, NULL, 15),
(42, 'Mamo', NULL, NULL, 16),
(43, 'Soledad', NULL, NULL, 16),
(44, 'Mapire', NULL, NULL, 17),
(45, 'Piar', NULL, NULL, 17),
(46, 'Santa Clara', NULL, NULL, 17),
(47, 'San Diego de Cabrutica', NULL, NULL, 17),
(48, 'Uverito', NULL, NULL, 17),
(49, 'Zuata', NULL, NULL, 17),
(50, 'Puerto La Cruz', NULL, NULL, 18),
(51, 'Pozuelos', NULL, NULL, 18),
(52, 'Onoto', NULL, NULL, 19),
(53, 'San Pablo', NULL, NULL, 19),
(54, 'San Mateo', NULL, NULL, 20),
(55, 'El Carito', NULL, NULL, 20),
(56, 'Santa Inés', NULL, NULL, 20),
(57, 'La Romereña', NULL, NULL, 20),
(58, 'Atapirire', NULL, NULL, 21),
(59, 'Boca del Pao', NULL, NULL, 21),
(60, 'El Pao', NULL, NULL, 21),
(61, 'Pariaguán', NULL, NULL, 21),
(62, 'Cantaura', NULL, NULL, 22),
(63, 'Libertador', NULL, NULL, 22),
(64, 'Santa Rosa', NULL, NULL, 22),
(65, 'Urica', NULL, NULL, 22),
(66, 'Píritu', NULL, NULL, 23),
(67, 'San Francisco', NULL, NULL, 23),
(68, 'San José de Guanipa', NULL, NULL, 24),
(69, 'Boca de Uchire', NULL, NULL, 25),
(70, 'Boca de Chávez', NULL, NULL, 25),
(71, 'Pueblo Nuevo', NULL, NULL, 26),
(72, 'Santa Ana', NULL, NULL, 26),
(73, 'Bergantín', NULL, NULL, 27),
(74, 'Caigua', NULL, NULL, 27),
(75, 'El Carmen', NULL, NULL, 27),
(76, 'El Pilar', NULL, NULL, 27),
(77, 'Naricual', NULL, NULL, 27),
(78, 'San Crsitóbal', NULL, NULL, 27),
(79, 'Edmundo Barrios', NULL, NULL, 28),
(80, 'Miguel Otero Silva', NULL, NULL, 28),
(81, 'Achaguas', NULL, NULL, 29),
(82, 'Apurito', NULL, NULL, 29),
(83, 'El Yagual', NULL, NULL, 29),
(84, 'Guachara', NULL, NULL, 29),
(85, 'Mucuritas', NULL, NULL, 29),
(86, 'Queseras del medio', NULL, NULL, 29),
(87, 'Biruaca', NULL, NULL, 30),
(88, 'Bruzual', NULL, NULL, 31),
(89, 'Mantecal', NULL, NULL, 31),
(90, 'Quintero', NULL, NULL, 31),
(91, 'Rincón Hondo', NULL, NULL, 31),
(92, 'San Vicente', NULL, NULL, 31),
(93, 'Guasdualito', NULL, NULL, 32),
(94, 'Aramendi', NULL, NULL, 32),
(95, 'El Amparo', NULL, NULL, 32),
(96, 'San Camilo', NULL, NULL, 32),
(97, 'Urdaneta', NULL, NULL, 32),
(98, 'San Juan de Payara', NULL, NULL, 33),
(99, 'Codazzi', NULL, NULL, 33),
(100, 'Cunaviche', NULL, NULL, 33),
(101, 'Elorza', NULL, NULL, 34),
(102, 'La Trinidad', NULL, NULL, 34),
(103, 'San Fernando', NULL, NULL, 35),
(104, 'El Recreo', NULL, NULL, 35),
(105, 'Peñalver', NULL, NULL, 35),
(106, 'San Rafael de Atamaica', NULL, NULL, 35),
(107, 'Pedro José Ovalles', NULL, NULL, 36),
(108, 'Joaquín Crespo', NULL, NULL, 36),
(109, 'José Casanova Godoy', NULL, NULL, 36),
(110, 'Madre María de San José', NULL, NULL, 36),
(111, 'Andrés Eloy Blanco', NULL, NULL, 36),
(112, 'Los Tacarigua', NULL, NULL, 36),
(113, 'Las Delicias', NULL, NULL, 36),
(114, 'Choroní', NULL, NULL, 36),
(115, 'Bolívar', NULL, NULL, 37),
(116, 'Camatagua', NULL, NULL, 38),
(117, 'Carmen de Cura', NULL, NULL, 38),
(118, 'Santa Rita', NULL, NULL, 39),
(119, 'Francisco de Miranda', NULL, NULL, 39),
(120, 'Moseñor Feliciano González', NULL, NULL, 39),
(121, 'Santa Cruz', NULL, NULL, 40),
(122, 'José Félix Ribas', NULL, NULL, 41),
(123, 'Castor Nieves Ríos', NULL, NULL, 41),
(124, 'Las Guacamayas', NULL, NULL, 41),
(125, 'Pao de Zárate', NULL, NULL, 41),
(126, 'Zuata', NULL, NULL, 41),
(127, 'José Rafael Revenga', NULL, NULL, 42),
(128, 'Palo Negro', NULL, NULL, 43),
(129, 'San Martín de Porres', NULL, NULL, 43),
(130, 'El Limón', NULL, NULL, 44),
(131, 'Caña de Azúcar', NULL, NULL, 44),
(132, 'Ocumare de la Costa', NULL, NULL, 45),
(133, 'San Casimiro', NULL, NULL, 46),
(134, 'Güiripa', NULL, NULL, 46),
(135, 'Ollas de Caramacate', NULL, NULL, 46),
(136, 'Valle Morín', NULL, NULL, 46),
(137, 'San Sebastían', NULL, NULL, 47),
(138, 'Turmero', NULL, NULL, 48),
(139, 'Arevalo Aponte', NULL, NULL, 48),
(140, 'Chuao', NULL, NULL, 48),
(141, 'Samán de Güere', NULL, NULL, 48),
(142, 'Alfredo Pacheco Miranda', NULL, NULL, 48),
(143, 'Santos Michelena', NULL, NULL, 49),
(144, 'Tiara', NULL, NULL, 49),
(145, 'Cagua', NULL, NULL, 50),
(146, 'Bella Vista', NULL, NULL, 50),
(147, 'Tovar', NULL, NULL, 51),
(148, 'Urdaneta', NULL, NULL, 52),
(149, 'Las Peñitas', NULL, NULL, 52),
(150, 'San Francisco de Cara', NULL, NULL, 52),
(151, 'Taguay', NULL, NULL, 52),
(152, 'Zamora', NULL, NULL, 53),
(153, 'Magdaleno', NULL, NULL, 53),
(154, 'San Francisco de Asís', NULL, NULL, 53),
(155, 'Valles de Tucutunemo', NULL, NULL, 53),
(156, 'Augusto Mijares', NULL, NULL, 53),
(157, 'Sabaneta', NULL, NULL, 54),
(158, 'Juan Antonio Rodríguez Domínguez', NULL, NULL, 54),
(159, 'El Cantón', NULL, NULL, 55),
(160, 'Santa Cruz de Guacas', NULL, NULL, 55),
(161, 'Puerto Vivas', NULL, NULL, 55),
(162, 'Ticoporo', NULL, NULL, 56),
(163, 'Nicolás Pulido', NULL, NULL, 56),
(164, 'Andrés Bello', NULL, NULL, 56),
(165, 'Arismendi', NULL, NULL, 57),
(166, 'Guadarrama', NULL, NULL, 57),
(167, 'La Unión', NULL, NULL, 57),
(168, 'San Antonio', NULL, NULL, 57),
(169, 'Barinas', NULL, NULL, 58),
(170, 'Alberto Arvelo Larriva', NULL, NULL, 58),
(171, 'San Silvestre', NULL, NULL, 58),
(172, 'Santa Inés', NULL, NULL, 58),
(173, 'Santa Lucía', NULL, NULL, 58),
(174, 'Torumos', NULL, NULL, 58),
(175, 'El Carmen', NULL, NULL, 58),
(176, 'Rómulo Betancourt', NULL, NULL, 58),
(177, 'Corazón de Jesús', NULL, NULL, 58),
(178, 'Ramón Ignacio Méndez', NULL, NULL, 58),
(179, 'Alto Barinas', NULL, NULL, 58),
(180, 'Manuel Palacio Fajardo', NULL, NULL, 58),
(181, 'Juan Antonio Rodríguez Domínguez', NULL, NULL, 58),
(182, 'Dominga Ortiz de Páez', NULL, NULL, 58),
(183, 'Barinitas', NULL, NULL, 59),
(184, 'Altamira de Cáceres', NULL, NULL, 59),
(185, 'Calderas', NULL, NULL, 59),
(186, 'Barrancas', NULL, NULL, 60),
(187, 'El Socorro', NULL, NULL, 60),
(188, 'Mazparrito', NULL, NULL, 60),
(189, 'Santa Bárbara', NULL, NULL, 61),
(190, 'Pedro Briceño Méndez', NULL, NULL, 61),
(191, 'Ramón Ignacio Méndez', NULL, NULL, 61),
(192, 'José Ignacio del Pumar', NULL, NULL, 61),
(193, 'Obispos', NULL, NULL, 62),
(194, 'Guasimitos', NULL, NULL, 62),
(195, 'El Real', NULL, NULL, 62),
(196, 'La Luz', NULL, NULL, 62),
(197, 'Ciudad Bolívia', NULL, NULL, 63),
(198, 'José Ignacio Briceño', NULL, NULL, 63),
(199, 'José Félix Ribas', NULL, NULL, 63),
(200, 'Páez', NULL, NULL, 63),
(201, 'Libertad', NULL, NULL, 64),
(202, 'Dolores', NULL, NULL, 64),
(203, 'Santa Rosa', NULL, NULL, 64),
(204, 'Palacio Fajardo', NULL, NULL, 64),
(205, 'Ciudad de Nutrias', NULL, NULL, 65),
(206, 'El Regalo', NULL, NULL, 65),
(207, 'Puerto Nutrias', NULL, NULL, 65),
(208, 'Santa Catalina', NULL, NULL, 65),
(209, 'Cachamay', NULL, NULL, 66),
(210, 'Chirica', NULL, NULL, 66),
(211, 'Dalla Costa', NULL, NULL, 66),
(212, 'Once de Abril', NULL, NULL, 66),
(213, 'Simón Bolívar', NULL, NULL, 66),
(214, 'Unare', NULL, NULL, 66),
(215, 'Universidad', NULL, NULL, 66),
(216, 'Vista al Sol', NULL, NULL, 66),
(217, 'Pozo Verde', NULL, NULL, 66),
(218, 'Yocoima', NULL, NULL, 66),
(219, '5 de Julio', NULL, NULL, 66),
(220, 'Cedeño', NULL, NULL, 67),
(221, 'Altagracia', NULL, NULL, 67),
(222, 'Ascensión Farreras', NULL, NULL, 67),
(223, 'Guaniamo', NULL, NULL, 67),
(224, 'La Urbana', NULL, NULL, 67),
(225, 'Pijiguaos', NULL, NULL, 67),
(226, 'El Callao', NULL, NULL, 68),
(227, 'Gran Sabana', NULL, NULL, 69),
(228, 'Ikabarú', NULL, NULL, 69),
(229, 'Catedral', NULL, NULL, 70),
(230, 'Zea', NULL, NULL, 70),
(231, 'Orinoco', NULL, NULL, 70),
(232, 'José Antonio Páez', NULL, NULL, 70),
(233, 'Marhuanta', NULL, NULL, 70),
(234, 'Agua Salada', NULL, NULL, 70),
(235, 'Vista Hermosa', NULL, NULL, 70),
(236, 'La Sabanita', NULL, NULL, 70),
(237, 'Panapana', NULL, NULL, 70),
(238, 'Andrés Eloy Blanco', NULL, NULL, 71),
(239, 'Pedro Cova', NULL, NULL, 71),
(240, 'Raúl Leoni', NULL, NULL, 72),
(241, 'Barceloneta', NULL, NULL, 72),
(242, 'Santa Bárbara', NULL, NULL, 72),
(243, 'San Francisco', NULL, NULL, 72),
(244, 'Roscio', NULL, NULL, 73),
(245, 'Salóm', NULL, NULL, 73),
(246, 'Sifontes', NULL, NULL, 74),
(247, 'Dalla Costa', NULL, NULL, 74),
(248, 'San Isidro', NULL, NULL, 74),
(249, 'Sucre', NULL, NULL, 75),
(250, 'Aripao', NULL, NULL, 75),
(251, 'Guarataro', NULL, NULL, 75),
(252, 'Las Majadas', NULL, NULL, 75),
(253, 'Moitaco', NULL, NULL, 75),
(254, 'Padre Pedro Chien', NULL, NULL, 76),
(255, 'Río Grande', NULL, NULL, 76),
(256, 'Bejuma', NULL, NULL, 77),
(257, 'Canoabo', NULL, NULL, 77),
(258, 'Simón Bolívar', NULL, NULL, 77),
(259, 'Güigüe', NULL, NULL, 78),
(260, 'Carabobo', NULL, NULL, 78),
(261, 'Tacarigua', NULL, NULL, 78),
(262, 'Mariara', NULL, NULL, 79),
(263, 'Aguas Calientes', NULL, NULL, 79),
(264, 'Ciudad Alianza', NULL, NULL, 80),
(265, 'Guacara', NULL, NULL, 80),
(266, 'Yagua', NULL, NULL, 80),
(267, 'Morón', NULL, NULL, 81),
(268, 'Yagua', NULL, NULL, 81),
(269, 'Tocuyito', NULL, NULL, 82),
(270, 'Independencia', NULL, NULL, 82),
(271, 'Los Guayos', NULL, NULL, 83),
(272, 'Miranda', NULL, NULL, 84),
(273, 'Montalbán', NULL, NULL, 85),
(274, 'Naguanagua', NULL, NULL, 86),
(275, 'Bartolomé Salóm', NULL, NULL, 87),
(276, 'Democracia', NULL, NULL, 87),
(277, 'Fraternidad', NULL, NULL, 87),
(278, 'Goaigoaza', NULL, NULL, 87),
(279, 'Juan José Flores', NULL, NULL, 87),
(280, 'Unión', NULL, NULL, 87),
(281, 'Borburata', NULL, NULL, 87),
(282, 'Patanemo', NULL, NULL, 87),
(283, 'San Diego', NULL, NULL, 88),
(284, 'San Joaquín', NULL, NULL, 89),
(285, 'Candelaria', NULL, NULL, 90),
(286, 'Catedral', NULL, NULL, 90),
(287, 'El Socorro', NULL, NULL, 90),
(288, 'Miguel Peña', NULL, NULL, 90),
(289, 'Rafael Urdaneta', NULL, NULL, 90),
(290, 'San Blas', NULL, NULL, 90),
(291, 'San José', NULL, NULL, 90),
(292, 'Santa Rosa', NULL, NULL, 90),
(293, 'Negro Primero', NULL, NULL, 90),
(294, 'Cojedes', NULL, NULL, 91),
(295, 'Juan de Mata Suárez', NULL, NULL, 91),
(296, 'Tinaquillo', NULL, NULL, 92),
(297, 'El Baúl', NULL, NULL, 93),
(298, 'Sucre', NULL, NULL, 93),
(299, 'La Aguadita', NULL, NULL, 94),
(300, 'Macapo', NULL, NULL, 94),
(301, 'El Pao', NULL, NULL, 95),
(302, 'El Amparo', NULL, NULL, 96),
(303, 'Libertad de Cojedes', NULL, NULL, 96),
(304, 'Rómulo Gallegos', NULL, NULL, 97),
(305, 'San Carlos de Austria', NULL, NULL, 98),
(306, 'Juan Ángel Bravo', NULL, NULL, 98),
(307, 'Manuel Manrique', NULL, NULL, 98),
(308, 'General en Jefe José Laurencio Silva', NULL, NULL, 99),
(309, 'Curiapo', NULL, NULL, 100),
(310, 'Almirante Luis Brión', NULL, NULL, 100),
(311, 'Francisco Aniceto Lugo', NULL, NULL, 100),
(312, 'Manuel Renaud', NULL, NULL, 100),
(313, 'Padre Barral', NULL, NULL, 100),
(314, 'Santos de Abelgas', NULL, NULL, 100),
(315, 'Imataca', NULL, NULL, 101),
(316, 'Cinco de Julio', NULL, NULL, 101),
(317, 'Juan Bautista Arismendi', NULL, NULL, 101),
(318, 'Manuel Piar', NULL, NULL, 101),
(319, 'Rómulo Gallegos', NULL, NULL, 101),
(320, 'Pedernales', NULL, NULL, 102),
(321, 'Luis Beltrán Prieto Figueroa', NULL, NULL, 102),
(322, 'San José (Delta Amacuro)', NULL, NULL, 103),
(323, 'José Vidal Marcano', NULL, NULL, 103),
(324, 'Juan Millán', NULL, NULL, 103),
(325, 'Leonardo Ruíz Pineda', NULL, NULL, 103),
(326, 'Mariscal Antonio José de Sucre', NULL, NULL, 103),
(327, 'Monseñor Argimiro García', NULL, NULL, 103),
(328, 'San Rafael (Delta Amacuro)', NULL, NULL, 103),
(329, 'Virgen del Valle', NULL, NULL, 103),
(330, 'Clarines', NULL, NULL, 10),
(331, 'Guanape', NULL, NULL, 10),
(332, 'Sabana de Uchire', NULL, NULL, 10),
(333, 'Capadare', NULL, NULL, 104),
(334, 'La Pastora', NULL, NULL, 104),
(335, 'Libertador', NULL, NULL, 104),
(336, 'San Juan de los Cayos', NULL, NULL, 104),
(337, 'Aracua', NULL, NULL, 105),
(338, 'La Peña', NULL, NULL, 105),
(339, 'San Luis', NULL, NULL, 105),
(340, 'Bariro', NULL, NULL, 106),
(341, 'Borojó', NULL, NULL, 106),
(342, 'Capatárida', NULL, NULL, 106),
(343, 'Guajiro', NULL, NULL, 106),
(344, 'Seque', NULL, NULL, 106),
(345, 'Zazárida', NULL, NULL, 106),
(346, 'Valle de Eroa', NULL, NULL, 106),
(347, 'Cacique Manaure', NULL, NULL, 107),
(348, 'Norte', NULL, NULL, 108),
(349, 'Carirubana', NULL, NULL, 108),
(350, 'Santa Ana', NULL, NULL, 108),
(351, 'Urbana Punta Cardón', NULL, NULL, 108),
(352, 'La Vela de Coro', NULL, NULL, 109),
(353, 'Acurigua', NULL, NULL, 109),
(354, 'Guaibacoa', NULL, NULL, 109),
(355, 'Las Calderas', NULL, NULL, 109),
(356, 'Macoruca', NULL, NULL, 109),
(357, 'Dabajuro', NULL, NULL, 110),
(358, 'Agua Clara', NULL, NULL, 111),
(359, 'Avaria', NULL, NULL, 111),
(360, 'Pedregal', NULL, NULL, 111),
(361, 'Piedra Grande', NULL, NULL, 111),
(362, 'Purureche', NULL, NULL, 111),
(363, 'Adaure', NULL, NULL, 112),
(364, 'Adícora', NULL, NULL, 112),
(365, 'Baraived', NULL, NULL, 112),
(366, 'Buena Vista', NULL, NULL, 112),
(367, 'Jadacaquiva', NULL, NULL, 112),
(368, 'El Vínculo', NULL, NULL, 112),
(369, 'El Hato', NULL, NULL, 112),
(370, 'Moruy', NULL, NULL, 112),
(371, 'Pueblo Nuevo', NULL, NULL, 112),
(372, 'Agua Larga', NULL, NULL, 113),
(373, 'El Paují', NULL, NULL, 113),
(374, 'Independencia', NULL, NULL, 113),
(375, 'Mapararí', NULL, NULL, 113),
(376, 'Agua Linda', NULL, NULL, 114),
(377, 'Araurima', NULL, NULL, 114),
(378, 'Jacura', NULL, NULL, 114),
(379, 'Tucacas', NULL, NULL, 115),
(380, 'Boca de Aroa', NULL, NULL, 115),
(381, 'Los Taques', NULL, NULL, 116),
(382, 'Judibana', NULL, NULL, 116),
(383, 'Mene de Mauroa', NULL, NULL, 117),
(384, 'San Félix', NULL, NULL, 117),
(385, 'Casigua', NULL, NULL, 117),
(386, 'Guzmán Guillermo', NULL, NULL, 118),
(387, 'Mitare', NULL, NULL, 118),
(388, 'Río Seco', NULL, NULL, 118),
(389, 'Sabaneta', NULL, NULL, 118),
(390, 'San Antonio', NULL, NULL, 118),
(391, 'San Gabriel', NULL, NULL, 118),
(392, 'Santa Ana', NULL, NULL, 118),
(393, 'Boca del Tocuyo', NULL, NULL, 119),
(394, 'Chichiriviche', NULL, NULL, 119),
(395, 'Tocuyo de la Costa', NULL, NULL, 119),
(396, 'Palmasola', NULL, NULL, 120),
(397, 'Cabure', NULL, NULL, 121),
(398, 'Colina', NULL, NULL, 121),
(399, 'Curimagua', NULL, NULL, 121),
(400, 'San José de la Costa', NULL, NULL, 122),
(401, 'Píritu', NULL, NULL, 122),
(402, 'San Francisco', NULL, NULL, 123),
(403, 'Sucre', NULL, NULL, 124),
(404, 'Pecaya', NULL, NULL, 124),
(405, 'Tocópero', NULL, NULL, 125),
(406, 'El Charal', NULL, NULL, 126),
(407, 'Las Vegas del Tuy', NULL, NULL, 126),
(408, 'Santa Cruz de Bucaral', NULL, NULL, 126),
(409, 'Bruzual', NULL, NULL, 127),
(410, 'Urumaco', NULL, NULL, 127),
(411, 'Puerto Cumarebo', NULL, NULL, 128),
(412, 'La Ciénaga', NULL, NULL, 128),
(413, 'La Soledad', NULL, NULL, 128),
(414, 'Pueblo Cumarebo', NULL, NULL, 128),
(415, 'Zazárida', NULL, NULL, 128),
(416, 'Churuguara', NULL, NULL, 113),
(417, 'Camaguán', NULL, NULL, 129),
(418, 'Puerto Miranda', NULL, NULL, 129),
(419, 'Uverito', NULL, NULL, 129),
(420, 'Chaguaramas', NULL, NULL, 130),
(421, 'El Socorro', NULL, NULL, 131),
(422, 'Tucupido', NULL, NULL, 132),
(423, 'San Rafael de Laya', NULL, NULL, 132),
(424, 'Altagracia de Orituco', NULL, NULL, 133),
(425, 'San Rafael de Orituco', NULL, NULL, 133),
(426, 'San Francisco Javier de Lezama', NULL, NULL, 133),
(427, 'Paso Real de Macaira', NULL, NULL, 133),
(428, 'Carlos Soublette', NULL, NULL, 133),
(429, 'San Francisco de Macaira', NULL, NULL, 133),
(430, 'Libertad de Orituco', NULL, NULL, 133),
(431, 'Cantaclaro', NULL, NULL, 134),
(432, 'San Juan de los Morros', NULL, NULL, 134),
(433, 'Parapara', NULL, NULL, 134),
(434, 'El Sombrero', NULL, NULL, 135),
(435, 'Sosa', NULL, NULL, 135),
(436, 'Las Mercedes', NULL, NULL, 136),
(437, 'Cabruta', NULL, NULL, 136),
(438, 'Santa Rita de Manapire', NULL, NULL, 136),
(439, 'Valle de la Pascua', NULL, NULL, 137),
(440, 'Espino', NULL, NULL, 137),
(441, 'San José de Unare', NULL, NULL, 138),
(442, 'Zaraza', NULL, NULL, 138),
(443, 'San José de Tiznados', NULL, NULL, 139),
(444, 'San Francisco de Tiznados', NULL, NULL, 139),
(445, 'San Lorenzo de Tiznados', NULL, NULL, 139),
(446, 'Ortiz', NULL, NULL, 139),
(447, 'Guayabal', NULL, NULL, 140),
(448, 'Cazorla', NULL, NULL, 140),
(449, 'San José de Guaribe', NULL, NULL, 141),
(450, 'Uveral', NULL, NULL, 141),
(451, 'Santa María de Ipire', NULL, NULL, 142),
(452, 'Altamira', NULL, NULL, 142),
(453, 'El Calvario', NULL, NULL, 143),
(454, 'El Rastro', NULL, NULL, 143),
(455, 'Guardatinajas', NULL, NULL, 143),
(456, 'Capital Urbana Calabozo', NULL, NULL, 143),
(457, 'Quebrada Honda de Guache', NULL, NULL, 144),
(458, 'Pío Tamayo', NULL, NULL, 144),
(459, 'Yacambú', NULL, NULL, 144),
(460, 'Fréitez', NULL, NULL, 145),
(461, 'José María Blanco', NULL, NULL, 145),
(462, 'Catedral', NULL, NULL, 146),
(463, 'Concepción', NULL, NULL, 146),
(464, 'El Cují', NULL, NULL, 146),
(465, 'Juan de Villegas', NULL, NULL, 146),
(466, 'Santa Rosa', NULL, NULL, 146),
(467, 'Tamaca', NULL, NULL, 146),
(468, 'Unión', NULL, NULL, 146),
(469, 'Aguedo Felipe Alvarado', NULL, NULL, 146),
(470, 'Buena Vista', NULL, NULL, 146),
(471, 'Juárez', NULL, NULL, 146),
(472, 'Juan Bautista Rodríguez', NULL, NULL, 147),
(473, 'Cuara', NULL, NULL, 147),
(474, 'Diego de Lozada', NULL, NULL, 147),
(475, 'Paraíso de San José', NULL, NULL, 147),
(476, 'San Miguel', NULL, NULL, 147),
(477, 'Tintorero', NULL, NULL, 147),
(478, 'José Bernardo Dorante', NULL, NULL, 147),
(479, 'Coronel Mariano Peraza ', NULL, NULL, 147),
(480, 'Bolívar', NULL, NULL, 148),
(481, 'Anzoátegui', NULL, NULL, 148),
(482, 'Guarico', NULL, NULL, 148),
(483, 'Hilario Luna y Luna', NULL, NULL, 148),
(484, 'Humocaro Alto', NULL, NULL, 148),
(485, 'Humocaro Bajo', NULL, NULL, 148),
(486, 'La Candelaria', NULL, NULL, 148),
(487, 'Morán', NULL, NULL, 148),
(488, 'Cabudare', NULL, NULL, 149),
(489, 'José Gregorio Bastidas', NULL, NULL, 149),
(490, 'Agua Viva', NULL, NULL, 149),
(491, 'Sarare', NULL, NULL, 150),
(492, 'Buría', NULL, NULL, 150),
(493, 'Gustavo Vegas León', NULL, NULL, 150),
(494, 'Trinidad Samuel', NULL, NULL, 151),
(495, 'Antonio Díaz', NULL, NULL, 151),
(496, 'Camacaro', NULL, NULL, 151),
(497, 'Castañeda', NULL, NULL, 151),
(498, 'Cecilio Zubillaga', NULL, NULL, 151),
(499, 'Chiquinquirá', NULL, NULL, 151),
(500, 'El Blanco', NULL, NULL, 151),
(501, 'Espinoza de los Monteros', NULL, NULL, 151),
(502, 'Lara', NULL, NULL, 151),
(503, 'Las Mercedes', NULL, NULL, 151),
(504, 'Manuel Morillo', NULL, NULL, 151),
(505, 'Montaña Verde', NULL, NULL, 151),
(506, 'Montes de Oca', NULL, NULL, 151),
(507, 'Torres', NULL, NULL, 151),
(508, 'Heriberto Arroyo', NULL, NULL, 151),
(509, 'Reyes Vargas', NULL, NULL, 151),
(510, 'Altagracia', NULL, NULL, 151),
(511, 'Siquisique', NULL, NULL, 152),
(512, 'Moroturo', NULL, NULL, 152),
(513, 'San Miguel', NULL, NULL, 152),
(514, 'Xaguas', NULL, NULL, 152),
(515, 'Presidente Betancourt', NULL, NULL, 179),
(516, 'Presidente Páez', NULL, NULL, 179),
(517, 'Presidente Rómulo Gallegos', NULL, NULL, 179),
(518, 'Gabriel Picón González', NULL, NULL, 179),
(519, 'Héctor Amable Mora', NULL, NULL, 179),
(520, 'José Nucete Sardi', NULL, NULL, 179),
(521, 'Pulido Méndez', NULL, NULL, 179),
(522, 'La Azulita', NULL, NULL, 180),
(523, 'Santa Cruz de Mora', NULL, NULL, 181),
(524, 'Mesa Bolívar', NULL, NULL, 181),
(525, 'Mesa de Las Palmas', NULL, NULL, 181),
(526, 'Aricagua', NULL, NULL, 182),
(527, 'San Antonio', NULL, NULL, 182),
(528, 'Canagua', NULL, NULL, 183),
(529, 'Capurí', NULL, NULL, 183),
(530, 'Chacantá', NULL, NULL, 183),
(531, 'El Molino', NULL, NULL, 183),
(532, 'Guaimaral', NULL, NULL, 183),
(533, 'Mucutuy', NULL, NULL, 183),
(534, 'Mucuchachí', NULL, NULL, 183),
(535, 'Fernández Peña', NULL, NULL, 184),
(536, 'Matriz', NULL, NULL, 184),
(537, 'Montalbán', NULL, NULL, 184),
(538, 'Acequias', NULL, NULL, 184),
(539, 'Jají', NULL, NULL, 184),
(540, 'La Mesa', NULL, NULL, 184),
(541, 'San José del Sur', NULL, NULL, 184),
(542, 'Tucaní', NULL, NULL, 185),
(543, 'Florencio Ramírez', NULL, NULL, 185),
(544, 'Santo Domingo', NULL, NULL, 186),
(545, 'Las Piedras', NULL, NULL, 186),
(546, 'Guaraque', NULL, NULL, 187),
(547, 'Mesa de Quintero', NULL, NULL, 187),
(548, 'Río Negro', NULL, NULL, 187),
(549, 'Arapuey', NULL, NULL, 188),
(550, 'Palmira', NULL, NULL, 188),
(551, 'San Cristóbal de Torondoy', NULL, NULL, 189),
(552, 'Torondoy', NULL, NULL, 189),
(553, 'Antonio Spinetti Dini', NULL, NULL, 190),
(554, 'Arias', NULL, NULL, 190),
(555, 'Caracciolo Parra Pérez', NULL, NULL, 190),
(556, 'Domingo Peña', NULL, NULL, 190),
(557, 'El Llano', NULL, NULL, 190),
(558, 'Gonzalo Picón Febres', NULL, NULL, 190),
(559, 'Jacinto Plaza', NULL, NULL, 190),
(560, 'Juan Rodríguez Suárez', NULL, NULL, 190),
(561, 'Lasso de la Vega', NULL, NULL, 190),
(562, 'Mariano Picón Salas', NULL, NULL, 190),
(563, 'Milla', NULL, NULL, 190),
(564, 'Osuna Rodríguez', NULL, NULL, 190),
(565, 'Sagrario', NULL, NULL, 190),
(566, 'El Morro', NULL, NULL, 190),
(567, 'Los Nevados', NULL, NULL, 190),
(568, 'Andrés Eloy Blanco', NULL, NULL, 191),
(569, 'La Venta', NULL, NULL, 191),
(570, 'Piñango', NULL, NULL, 191),
(571, 'Timotes', NULL, NULL, 191),
(572, 'Eloy Paredes', NULL, NULL, 192),
(573, 'San Rafael de Alcázar', NULL, NULL, 192),
(574, 'Santa Elena de Arenales', NULL, NULL, 192),
(575, 'Santa María de Caparo', NULL, NULL, 193),
(576, 'Pueblo Llano', NULL, NULL, 194),
(577, 'Cacute', NULL, NULL, 195),
(578, 'La Toma', NULL, NULL, 195),
(579, 'Mucuchíes', NULL, NULL, 195),
(580, 'Mucurubá', NULL, NULL, 195),
(581, 'San Rafael', NULL, NULL, 195),
(582, 'Gerónimo Maldonado', NULL, NULL, 196),
(583, 'Bailadores', NULL, NULL, 196),
(584, 'Tabay', NULL, NULL, 197),
(585, 'Chiguará', NULL, NULL, 198),
(586, 'Estánquez', NULL, NULL, 198),
(587, 'Lagunillas', NULL, NULL, 198),
(588, 'La Trampa', NULL, NULL, 198),
(589, 'Pueblo Nuevo del Sur', NULL, NULL, 198),
(590, 'San Juan', NULL, NULL, 198),
(591, 'El Amparo', NULL, NULL, 199),
(592, 'El Llano', NULL, NULL, 199),
(593, 'San Francisco', NULL, NULL, 199),
(594, 'Tovar', NULL, NULL, 199),
(595, 'Independencia', NULL, NULL, 200),
(596, 'María de la Concepción Palacios Blanco', NULL, NULL, 200),
(597, 'Nueva Bolivia', NULL, NULL, 200),
(598, 'Santa Apolonia', NULL, NULL, 200),
(599, 'Caño El Tigre', NULL, NULL, 201),
(600, 'Zea', NULL, NULL, 201),
(601, 'Aragüita', NULL, NULL, 223),
(602, 'Arévalo González', NULL, NULL, 223),
(603, 'Capaya', NULL, NULL, 223),
(604, 'Caucagua', NULL, NULL, 223),
(605, 'Panaquire', NULL, NULL, 223),
(606, 'Ribas', NULL, NULL, 223),
(607, 'El Café', NULL, NULL, 223),
(608, 'Marizapa', NULL, NULL, 223),
(609, 'Cumbo', NULL, NULL, 224),
(610, 'San José de Barlovento', NULL, NULL, 224),
(611, 'El Cafetal', NULL, NULL, 225),
(612, 'Las Minas', NULL, NULL, 225),
(613, 'Nuestra Señora del Rosario', NULL, NULL, 225),
(614, 'Higuerote', NULL, NULL, 226),
(615, 'Curiepe', NULL, NULL, 226),
(616, 'Tacarigua de Brión', NULL, NULL, 226),
(617, 'Mamporal', NULL, NULL, 227),
(618, 'Carrizal', NULL, NULL, 228),
(619, 'Chacao', NULL, NULL, 229),
(620, 'Charallave', NULL, NULL, 230),
(621, 'Las Brisas', NULL, NULL, 230),
(622, 'El Hatillo', NULL, NULL, 231),
(623, 'Altagracia de la Montaña', NULL, NULL, 232),
(624, 'Cecilio Acosta', NULL, NULL, 232),
(625, 'Los Teques', NULL, NULL, 232),
(626, 'El Jarillo', NULL, NULL, 232),
(627, 'San Pedro', NULL, NULL, 232),
(628, 'Tácata', NULL, NULL, 232),
(629, 'Paracotos', NULL, NULL, 232),
(630, 'Cartanal', NULL, NULL, 233),
(631, 'Santa Teresa del Tuy', NULL, NULL, 233),
(632, 'La Democracia', NULL, NULL, 234),
(633, 'Ocumare del Tuy', NULL, NULL, 234),
(634, 'Santa Bárbara', NULL, NULL, 234),
(635, 'San Antonio de los Altos', NULL, NULL, 235),
(636, 'Río Chico', NULL, NULL, 236),
(637, 'El Guapo', NULL, NULL, 236),
(638, 'Tacarigua de la Laguna', NULL, NULL, 236),
(639, 'Paparo', NULL, NULL, 236),
(640, 'San Fernando del Guapo', NULL, NULL, 236),
(641, 'Santa Lucía del Tuy', NULL, NULL, 237),
(642, 'Cúpira', NULL, NULL, 238),
(643, 'Machurucuto', NULL, NULL, 238),
(644, 'Guarenas', NULL, NULL, 239),
(645, 'San Antonio de Yare', NULL, NULL, 240),
(646, 'San Francisco de Yare', NULL, NULL, 240),
(647, 'Leoncio Martínez', NULL, NULL, 241),
(648, 'Petare', NULL, NULL, 241),
(649, 'Caucagüita', NULL, NULL, 241),
(650, 'Filas de Mariche', NULL, NULL, 241),
(651, 'La Dolorita', NULL, NULL, 241),
(652, 'Cúa', NULL, NULL, 242),
(653, 'Nueva Cúa', NULL, NULL, 242),
(654, 'Guatire', NULL, NULL, 243),
(655, 'Bolívar', NULL, NULL, 243),
(656, 'San Antonio de Maturín', NULL, NULL, 258),
(657, 'San Francisco de Maturín', NULL, NULL, 258),
(658, 'Aguasay', NULL, NULL, 259),
(659, 'Caripito', NULL, NULL, 260),
(660, 'El Guácharo', NULL, NULL, 261),
(661, 'La Guanota', NULL, NULL, 261),
(662, 'Sabana de Piedra', NULL, NULL, 261),
(663, 'San Agustín', NULL, NULL, 261),
(664, 'Teresen', NULL, NULL, 261),
(665, 'Caripe', NULL, NULL, 261),
(666, 'Areo', NULL, NULL, 262),
(667, 'Capital Cedeño', NULL, NULL, 262),
(668, 'San Félix de Cantalicio', NULL, NULL, 262),
(669, 'Viento Fresco', NULL, NULL, 262),
(670, 'El Tejero', NULL, NULL, 263),
(671, 'Punta de Mata', NULL, NULL, 263),
(672, 'Chaguaramas', NULL, NULL, 264),
(673, 'Las Alhuacas', NULL, NULL, 264),
(674, 'Tabasca', NULL, NULL, 264),
(675, 'Temblador', NULL, NULL, 264),
(676, 'Alto de los Godos', NULL, NULL, 265),
(677, 'Boquerón', NULL, NULL, 265),
(678, 'Las Cocuizas', NULL, NULL, 265),
(679, 'La Cruz', NULL, NULL, 265),
(680, 'San Simón', NULL, NULL, 265),
(681, 'El Corozo', NULL, NULL, 265),
(682, 'El Furrial', NULL, NULL, 265),
(683, 'Jusepín', NULL, NULL, 265),
(684, 'La Pica', NULL, NULL, 265),
(685, 'San Vicente', NULL, NULL, 265),
(686, 'Aparicio', NULL, NULL, 266),
(687, 'Aragua de Maturín', NULL, NULL, 266),
(688, 'Chaguamal', NULL, NULL, 266),
(689, 'El Pinto', NULL, NULL, 266),
(690, 'Guanaguana', NULL, NULL, 266),
(691, 'La Toscana', NULL, NULL, 266),
(692, 'Taguaya', NULL, NULL, 266),
(693, 'Cachipo', NULL, NULL, 267),
(694, 'Quiriquire', NULL, NULL, 267),
(695, 'Santa Bárbara', NULL, NULL, 268),
(696, 'Barrancas', NULL, NULL, 269),
(697, 'Los Barrancos de Fajardo', NULL, NULL, 269),
(698, 'Uracoa', NULL, NULL, 270),
(699, 'Antolín del Campo', NULL, NULL, 271),
(700, 'Arismendi', NULL, NULL, 272),
(701, 'García', NULL, NULL, 273),
(702, 'Francisco Fajardo', NULL, NULL, 273),
(703, 'Bolívar', NULL, NULL, 274),
(704, 'Guevara', NULL, NULL, 274),
(705, 'Matasiete', NULL, NULL, 274),
(706, 'Santa Ana', NULL, NULL, 274),
(707, 'Sucre', NULL, NULL, 274),
(708, 'Aguirre', NULL, NULL, 275),
(709, 'Maneiro', NULL, NULL, 275),
(710, 'Adrián', NULL, NULL, 276),
(711, 'Juan Griego', NULL, NULL, 276),
(712, 'Yaguaraparo', NULL, NULL, 276),
(713, 'Porlamar', NULL, NULL, 277),
(714, 'San Francisco de Macanao', NULL, NULL, 278),
(715, 'Boca de Río', NULL, NULL, 278),
(716, 'Tubores', NULL, NULL, 279),
(717, 'Los Baleales', NULL, NULL, 279),
(718, 'Vicente Fuentes', NULL, NULL, 280),
(719, 'Villalba', NULL, NULL, 280),
(720, 'San Juan Bautista', NULL, NULL, 281),
(721, 'Zabala', NULL, NULL, 281),
(722, 'Capital Araure', NULL, NULL, 283),
(723, 'Río Acarigua', NULL, NULL, 283),
(724, 'Capital Esteller', NULL, NULL, 284),
(725, 'Uveral', NULL, NULL, 284),
(726, 'Guanare', NULL, NULL, 285),
(727, 'Córdoba', NULL, NULL, 285),
(728, 'San José de la Montaña', NULL, NULL, 285),
(729, 'San Juan de Guanaguanare', NULL, NULL, 285),
(730, 'Virgen de la Coromoto', NULL, NULL, 285),
(731, 'Guanarito', NULL, NULL, 286),
(732, 'Trinidad de la Capilla', NULL, NULL, 286),
(733, 'Divina Pastora', NULL, NULL, 286),
(734, 'Monseñor José Vicente de Unda', NULL, NULL, 287),
(735, 'Peña Blanca', NULL, NULL, 287),
(736, 'Capital Ospino', NULL, NULL, 288),
(737, 'Aparición', NULL, NULL, 288),
(738, 'La Estación', NULL, NULL, 288),
(739, 'Páez', NULL, NULL, 289),
(740, 'Payara', NULL, NULL, 289),
(741, 'Pimpinela', NULL, NULL, 289),
(742, 'Ramón Peraza', NULL, NULL, 289),
(743, 'Papelón', NULL, NULL, 290),
(744, 'Caño Delgadito', NULL, NULL, 290),
(745, 'San Genaro de Boconoito', NULL, NULL, 291),
(746, 'Antolín Tovar', NULL, NULL, 291),
(747, 'San Rafael de Onoto', NULL, NULL, 292),
(748, 'Santa Fe', NULL, NULL, 292),
(749, 'Thermo Morles', NULL, NULL, 292),
(750, 'Santa Rosalía', NULL, NULL, 293),
(751, 'Florida', NULL, NULL, 293),
(752, 'Sucre', NULL, NULL, 294),
(753, 'Concepción', NULL, NULL, 294),
(754, 'San Rafael de Palo Alzado', NULL, NULL, 294),
(755, 'Uvencio Antonio Velásquez', NULL, NULL, 294),
(756, 'San José de Saguaz', NULL, NULL, 294),
(757, 'Villa Rosa', NULL, NULL, 294),
(758, 'Turén', NULL, NULL, 295),
(759, 'Canelones', NULL, NULL, 295),
(760, 'Santa Cruz', NULL, NULL, 295),
(761, 'San Isidro Labrador', NULL, NULL, 295),
(762, 'Mariño', NULL, NULL, 296),
(763, 'Rómulo Gallegos', NULL, NULL, 296),
(764, 'San José de Aerocuar', NULL, NULL, 297),
(765, 'Tavera Acosta', NULL, NULL, 297),
(766, 'Río Caribe', NULL, NULL, 298),
(767, 'Antonio José de Sucre', NULL, NULL, 298),
(768, 'El Morro de Puerto Santo', NULL, NULL, 298),
(769, 'Puerto Santo', NULL, NULL, 298),
(770, 'San Juan de las Galdonas', NULL, NULL, 298),
(771, 'El Pilar', NULL, NULL, 299),
(772, 'El Rincón', NULL, NULL, 299),
(773, 'General Francisco Antonio Váquez', NULL, NULL, 299),
(774, 'Guaraúnos', NULL, NULL, 299),
(775, 'Tunapuicito', NULL, NULL, 299),
(776, 'Unión', NULL, NULL, 299),
(777, 'Santa Catalina', NULL, NULL, 300),
(778, 'Santa Rosa', NULL, NULL, 300),
(779, 'Santa Teresa', NULL, NULL, 300),
(780, 'Bolívar', NULL, NULL, 300),
(781, 'Maracapana', NULL, NULL, 300),
(782, 'Libertad', NULL, NULL, 302),
(783, 'El Paujil', NULL, NULL, 302),
(784, 'Yaguaraparo', NULL, NULL, 302),
(785, 'Cruz Salmerón Acosta', NULL, NULL, 303),
(786, 'Chacopata', NULL, NULL, 303),
(787, 'Manicuare', NULL, NULL, 303),
(788, 'Tunapuy', NULL, NULL, 304),
(789, 'Campo Elías', NULL, NULL, 304),
(790, 'Irapa', NULL, NULL, 305),
(791, 'Campo Claro', NULL, NULL, 305),
(792, 'Maraval', NULL, NULL, 305),
(793, 'San Antonio de Irapa', NULL, NULL, 305),
(794, 'Soro', NULL, NULL, 305),
(795, 'Mejía', NULL, NULL, 306),
(796, 'Cumanacoa', NULL, NULL, 307),
(797, 'Arenas', NULL, NULL, 307),
(798, 'Aricagua', NULL, NULL, 307),
(799, 'Cogollar', NULL, NULL, 307),
(800, 'San Fernando', NULL, NULL, 307),
(801, 'San Lorenzo', NULL, NULL, 307),
(802, 'Villa Frontado (Muelle de Cariaco)', NULL, NULL, 308),
(803, 'Catuaro', NULL, NULL, 308),
(804, 'Rendón', NULL, NULL, 308),
(805, 'San Cruz', NULL, NULL, 308),
(806, 'Santa María', NULL, NULL, 308),
(807, 'Altagracia', NULL, NULL, 309),
(808, 'Santa Inés', NULL, NULL, 309),
(809, 'Valentín Valiente', NULL, NULL, 309),
(810, 'Ayacucho', NULL, NULL, 309),
(811, 'San Juan', NULL, NULL, 309),
(812, 'Raúl Leoni', NULL, NULL, 309),
(813, 'Gran Mariscal', NULL, NULL, 309),
(814, 'Cristóbal Colón', NULL, NULL, 310),
(815, 'Bideau', NULL, NULL, 310),
(816, 'Punta de Piedras', NULL, NULL, 310),
(817, 'Güiria', NULL, NULL, 310),
(818, 'Andrés Bello', NULL, NULL, 341),
(819, 'Antonio Rómulo Costa', NULL, NULL, 342),
(820, 'Ayacucho', NULL, NULL, 343),
(821, 'Rivas Berti', NULL, NULL, 343),
(822, 'San Pedro del Río', NULL, NULL, 343),
(823, 'Bolívar', NULL, NULL, 344),
(824, 'Palotal', NULL, NULL, 344),
(825, 'General Juan Vicente Gómez', NULL, NULL, 344),
(826, 'Isaías Medina Angarita', NULL, NULL, 344),
(827, 'Cárdenas', NULL, NULL, 345),
(828, 'Amenodoro Ángel Lamus', NULL, NULL, 345),
(829, 'La Florida', NULL, NULL, 345),
(830, 'Córdoba', NULL, NULL, 346),
(831, 'Fernández Feo', NULL, NULL, 347),
(832, 'Alberto Adriani', NULL, NULL, 347),
(833, 'Santo Domingo', NULL, NULL, 347),
(834, 'Francisco de Miranda', NULL, NULL, 348),
(835, 'García de Hevia', NULL, NULL, 349),
(836, 'Boca de Grita', NULL, NULL, 349),
(837, 'José Antonio Páez', NULL, NULL, 349),
(838, 'Guásimos', NULL, NULL, 350),
(839, 'Independencia', NULL, NULL, 351),
(840, 'Juan Germán Roscio', NULL, NULL, 351),
(841, 'Román Cárdenas', NULL, NULL, 351),
(842, 'Jáuregui', NULL, NULL, 352),
(843, 'Emilio Constantino Guerrero', NULL, NULL, 352),
(844, 'Monseñor Miguel Antonio Salas', NULL, NULL, 352),
(845, 'José María Vargas', NULL, NULL, 353),
(846, 'Junín', NULL, NULL, 354),
(847, 'La Petrólea', NULL, NULL, 354),
(848, 'Quinimarí', NULL, NULL, 354),
(849, 'Bramón', NULL, NULL, 354),
(850, 'Libertad', NULL, NULL, 355),
(851, 'Cipriano Castro', NULL, NULL, 355),
(852, 'Manuel Felipe Rugeles', NULL, NULL, 355),
(853, 'Libertador', NULL, NULL, 356),
(854, 'Doradas', NULL, NULL, 356),
(855, 'Emeterio Ochoa', NULL, NULL, 356),
(856, 'San Joaquín de Navay', NULL, NULL, 356),
(857, 'Lobatera', NULL, NULL, 357),
(858, 'Constitución', NULL, NULL, 357),
(859, 'Michelena', NULL, NULL, 358),
(860, 'Panamericano', NULL, NULL, 359),
(861, 'La Palmita', NULL, NULL, 359),
(862, 'Pedro María Ureña', NULL, NULL, 360),
(863, 'Nueva Arcadia', NULL, NULL, 360),
(864, 'Delicias', NULL, NULL, 361),
(865, 'Pecaya', NULL, NULL, 361),
(866, 'Samuel Darío Maldonado', NULL, NULL, 362),
(867, 'Boconó', NULL, NULL, 362),
(868, 'Hernández', NULL, NULL, 362),
(869, 'La Concordia', NULL, NULL, 363),
(870, 'San Juan Bautista', NULL, NULL, 363),
(871, 'Pedro María Morantes', NULL, NULL, 363),
(872, 'San Sebastián', NULL, NULL, 363),
(873, 'Dr. Francisco Romero Lobo', NULL, NULL, 363),
(874, 'Seboruco', NULL, NULL, 364),
(875, 'Simón Rodríguez', NULL, NULL, 365),
(876, 'Sucre', NULL, NULL, 366),
(877, 'Eleazar López Contreras', NULL, NULL, 366),
(878, 'San Pablo', NULL, NULL, 366),
(879, 'Torbes', NULL, NULL, 367),
(880, 'Uribante', NULL, NULL, 368),
(881, 'Cárdenas', NULL, NULL, 368),
(882, 'Juan Pablo Peñalosa', NULL, NULL, 368),
(883, 'Potosí', NULL, NULL, 368),
(884, 'San Judas Tadeo', NULL, NULL, 369),
(885, 'Araguaney', NULL, NULL, 370),
(886, 'El Jaguito', NULL, NULL, 370),
(887, 'La Esperanza', NULL, NULL, 370),
(888, 'Santa Isabel', NULL, NULL, 370),
(889, 'Boconó', NULL, NULL, 371),
(890, 'El Carmen', NULL, NULL, 371),
(891, 'Mosquey', NULL, NULL, 371),
(892, 'Ayacucho', NULL, NULL, 371),
(893, 'Burbusay', NULL, NULL, 371),
(894, 'General Ribas', NULL, NULL, 371),
(895, 'Guaramacal', NULL, NULL, 371),
(896, 'Vega de Guaramacal', NULL, NULL, 371),
(897, 'Monseñor Jáuregui', NULL, NULL, 371),
(898, 'Rafael Rangel', NULL, NULL, 371),
(899, 'San Miguel', NULL, NULL, 371),
(900, 'San José', NULL, NULL, 371),
(901, 'Sabana Grande', NULL, NULL, 372),
(902, 'Cheregüé', NULL, NULL, 372),
(903, 'Granados', NULL, NULL, 372),
(904, 'Arnoldo Gabaldón', NULL, NULL, 373),
(905, 'Bolivia', NULL, NULL, 373),
(906, 'Carrillo', NULL, NULL, 373),
(907, 'Cegarra', NULL, NULL, 373),
(908, 'Chejendé', NULL, NULL, 373),
(909, 'Manuel Salvador Ulloa', NULL, NULL, 373),
(910, 'San José', NULL, NULL, 373),
(911, 'Carache', NULL, NULL, 374),
(912, 'La Concepción', NULL, NULL, 374),
(913, 'Cuicas', NULL, NULL, 374),
(914, 'Panamericana', NULL, NULL, 374),
(915, 'Santa Cruz', NULL, NULL, 374),
(916, 'Escuque', NULL, NULL, 375),
(917, 'La Unión', NULL, NULL, 375),
(918, 'Santa Rita', NULL, NULL, 375),
(919, 'Sabana Libre', NULL, NULL, 375),
(920, 'El Socorro', NULL, NULL, 376),
(921, 'Los Caprichos', NULL, NULL, 376),
(922, 'Antonio José de Sucre', NULL, NULL, 376),
(923, 'Campo Elías', NULL, NULL, 377),
(924, 'Arnoldo Gabaldón', NULL, NULL, 377),
(925, 'Santa Apolonia', NULL, NULL, 378),
(926, 'El Progreso', NULL, NULL, 378),
(927, 'La Ceiba', NULL, NULL, 378),
(928, 'Tres de Febrero', NULL, NULL, 378),
(929, 'El Dividive', NULL, NULL, 379),
(930, 'Agua Santa', NULL, NULL, 379),
(931, 'Agua Caliente', NULL, NULL, 379),
(932, 'El Cenizo', NULL, NULL, 379),
(933, 'Valerita', NULL, NULL, 379),
(934, 'Monte Carmelo', NULL, NULL, 380),
(935, 'Buena Vista', NULL, NULL, 380),
(936, 'Santa María del Horcón', NULL, NULL, 380),
(937, 'Motatán', NULL, NULL, 381),
(938, 'El Baño', NULL, NULL, 381),
(939, 'Jalisco', NULL, NULL, 381),
(940, 'Pampán', NULL, NULL, 382),
(941, 'Flor de Patria', NULL, NULL, 382),
(942, 'La Paz', NULL, NULL, 382),
(943, 'Santa Ana', NULL, NULL, 382),
(944, 'Pampanito', NULL, NULL, 383),
(945, 'La Concepción', NULL, NULL, 383),
(946, 'Pampanito II', NULL, NULL, 383),
(947, 'Betijoque', NULL, NULL, 384),
(948, 'José Gregorio Hernández', NULL, NULL, 384),
(949, 'La Pueblita', NULL, NULL, 384),
(950, 'Los Cedros', NULL, NULL, 384),
(951, 'Carvajal', NULL, NULL, 385),
(952, 'Campo Alegre', NULL, NULL, 385),
(953, 'Antonio Nicolás Briceño', NULL, NULL, 385),
(954, 'José Leonardo Suárez', NULL, NULL, 385),
(955, 'Sabana de Mendoza', NULL, NULL, 386),
(956, 'Junín', NULL, NULL, 386),
(957, 'Valmore Rodríguez', NULL, NULL, 386),
(958, 'El Paraíso', NULL, NULL, 386),
(959, 'Andrés Linares', NULL, NULL, 387),
(960, 'Chiquinquirá', NULL, NULL, 387),
(961, 'Cristóbal Mendoza', NULL, NULL, 387),
(962, 'Cruz Carrillo', NULL, NULL, 387),
(963, 'Matriz', NULL, NULL, 387),
(964, 'Monseñor Carrillo', NULL, NULL, 387),
(965, 'Tres Esquinas', NULL, NULL, 387),
(966, 'Cabimbú', NULL, NULL, 388),
(967, 'Jajó', NULL, NULL, 388),
(968, 'La Mesa de Esnujaque', NULL, NULL, 388),
(969, 'Santiago', NULL, NULL, 388),
(970, 'Tuñame', NULL, NULL, 388),
(971, 'La Quebrada', NULL, NULL, 388),
(972, 'Juan Ignacio Montilla', NULL, NULL, 389),
(973, 'La Beatriz', NULL, NULL, 389),
(974, 'La Puerta', NULL, NULL, 389),
(975, 'Mendoza del Valle de Momboy', NULL, NULL, 389),
(976, 'Mercedes Díaz', NULL, NULL, 389),
(977, 'San Luis', NULL, NULL, 389),
(978, 'Caraballeda', NULL, NULL, 390),
(979, 'Carayaca', NULL, NULL, 390),
(980, 'Carlos Soublette', NULL, NULL, 390),
(981, 'Caruao Chuspa', NULL, NULL, 390),
(982, 'Catia La Mar', NULL, NULL, 390),
(983, 'El Junko', NULL, NULL, 390),
(984, 'La Guaira', NULL, NULL, 390),
(985, 'Macuto', NULL, NULL, 390),
(986, 'Maiquetía', NULL, NULL, 390),
(987, 'Naiguatá', NULL, NULL, 390),
(988, 'Urimare', NULL, NULL, 390),
(989, 'Arístides Bastidas', NULL, NULL, 391),
(990, 'Bolívar', NULL, NULL, 392),
(991, 'Chivacoa', NULL, NULL, 407),
(992, 'Campo Elías', NULL, NULL, 407),
(993, 'Cocorote', NULL, NULL, 408),
(994, 'Independencia', NULL, NULL, 409),
(995, 'José Antonio Páez', NULL, NULL, 410),
(996, 'La Trinidad', NULL, NULL, 411),
(997, 'Manuel Monge', NULL, NULL, 412),
(998, 'Salóm', NULL, NULL, 413),
(999, 'Temerla', NULL, NULL, 413),
(1000, 'Nirgua', NULL, NULL, 413),
(1001, 'San Andrés', NULL, NULL, 414),
(1002, 'Yaritagua', NULL, NULL, 414),
(1003, 'San Javier', NULL, NULL, 415),
(1004, 'Albarico', NULL, NULL, 415),
(1005, 'San Felipe', NULL, NULL, 415),
(1006, 'Sucre', NULL, NULL, 416),
(1007, 'Urachiche', NULL, NULL, 417),
(1008, 'El Guayabo', NULL, NULL, 418),
(1009, 'Farriar', NULL, NULL, 418),
(1010, 'Isla de Toas', NULL, NULL, 441),
(1011, 'Monagas', NULL, NULL, 441),
(1012, 'San Timoteo', NULL, NULL, 442),
(1013, 'General Urdaneta', NULL, NULL, 442),
(1014, 'Libertador', NULL, NULL, 442),
(1015, 'Marcelino Briceño', NULL, NULL, 442),
(1016, 'Pueblo Nuevo', NULL, NULL, 442),
(1017, 'Manuel Guanipa Matos', NULL, NULL, 442),
(1018, 'Ambrosio', NULL, NULL, 443),
(1019, 'Carmen Herrera', NULL, NULL, 443),
(1020, 'La Rosa', NULL, NULL, 443),
(1021, 'Germán Ríos Linares', NULL, NULL, 443),
(1022, 'San Benito', NULL, NULL, 443),
(1023, 'Rómulo Betancourt', NULL, NULL, 443),
(1024, 'Jorge Hernández', NULL, NULL, 443),
(1025, 'Punta Gorda', NULL, NULL, 443),
(1026, 'Arístides Calvani', NULL, NULL, 443),
(1027, 'Encontrados', NULL, NULL, 444),
(1028, 'Udón Pérez', NULL, NULL, 444),
(1029, 'Moralito', NULL, NULL, 445),
(1030, 'San Carlos del Zulia', NULL, NULL, 445),
(1031, 'Santa Cruz del Zulia', NULL, NULL, 445),
(1032, 'Santa Bárbara', NULL, NULL, 445),
(1033, 'Urribarrí', NULL, NULL, 445),
(1034, 'Carlos Quevedo', NULL, NULL, 446),
(1035, 'Francisco Javier Pulgar', NULL, NULL, 446),
(1036, 'Simón Rodríguez', NULL, NULL, 446),
(1037, 'Guamo-Gavilanes', NULL, NULL, 446),
(1038, 'La Concepción', NULL, NULL, 448),
(1039, 'San José', NULL, NULL, 448),
(1040, 'Mariano Parra León', NULL, NULL, 448),
(1041, 'José Ramón Yépez', NULL, NULL, 448),
(1042, 'Jesús María Semprún', NULL, NULL, 449),
(1043, 'Barí', NULL, NULL, 449),
(1044, 'Concepción', NULL, NULL, 450),
(1045, 'Andrés Bello', NULL, NULL, 450),
(1046, 'Chiquinquirá', NULL, NULL, 450),
(1047, 'El Carmelo', NULL, NULL, 450),
(1048, 'Potreritos', NULL, NULL, 450),
(1049, 'Libertad', NULL, NULL, 451),
(1050, 'Alonso de Ojeda', NULL, NULL, 451),
(1051, 'Venezuela', NULL, NULL, 451),
(1052, 'Eleazar López Contreras', NULL, NULL, 451),
(1053, 'Campo Lara', NULL, NULL, 451),
(1054, 'Bartolomé de las Casas', NULL, NULL, 452),
(1055, 'Libertad', NULL, NULL, 452),
(1056, 'Río Negro', NULL, NULL, 452),
(1057, 'San José de Perijá', NULL, NULL, 452),
(1058, 'San Rafael', NULL, NULL, 453),
(1059, 'La Sierrita', NULL, NULL, 453),
(1060, 'Las Parcelas', NULL, NULL, 453),
(1061, 'Luis de Vicente', NULL, NULL, 453),
(1062, 'Monseñor Marcos Sergio Godoy', NULL, NULL, 453),
(1063, 'Ricaurte', NULL, NULL, 453),
(1064, 'Tamare', NULL, NULL, 453),
(1065, 'Antonio Borjas Romero', NULL, NULL, 454),
(1066, 'Bolívar', NULL, NULL, 454),
(1067, 'Cacique Mara', NULL, NULL, 454),
(1068, 'Carracciolo Parra Pérez', NULL, NULL, 454),
(1069, 'Cecilio Acosta', NULL, NULL, 454),
(1070, 'Cristo de Aranza', NULL, NULL, 454),
(1071, 'Coquivacoa', NULL, NULL, 454),
(1072, 'Chiquinquirá', NULL, NULL, 454),
(1073, 'Francisco Eugenio Bustamante', NULL, NULL, 454),
(1074, 'Idelfonzo Vásquez', NULL, NULL, 454),
(1075, 'Juana de Ávila', NULL, NULL, 454),
(1076, 'Luis Hurtado Higuera', NULL, NULL, 454),
(1077, 'Manuel Dagnino', NULL, NULL, 454),
(1078, 'Olegario Villalobos', NULL, NULL, 454),
(1079, 'Raúl Leoni', NULL, NULL, 454),
(1080, 'Santa Lucía', NULL, NULL, 454),
(1081, 'Venancio Pulgar', NULL, NULL, 454),
(1082, 'San Isidro', NULL, NULL, 454),
(1083, 'Altagracia', NULL, NULL, 455),
(1084, 'Faría', NULL, NULL, 455),
(1085, 'Ana María Campos', NULL, NULL, 455),
(1086, 'San Antonio', NULL, NULL, 455),
(1087, 'San José', NULL, NULL, 455),
(1088, 'Donaldo García', NULL, NULL, 456),
(1089, 'El Rosario', NULL, NULL, 456),
(1090, 'Sixto Zambrano', NULL, NULL, 456),
(1091, 'San Francisco', NULL, NULL, 457),
(1092, 'El Bajo', NULL, NULL, 457),
(1093, 'Domitila Flores', NULL, NULL, 457),
(1094, 'Francisco Ochoa', NULL, NULL, 457),
(1095, 'Los Cortijos', NULL, NULL, 457),
(1096, 'Marcial Hernández', NULL, NULL, 457),
(1097, 'Santa Rita', NULL, NULL, 458),
(1098, 'El Mene', NULL, NULL, 458),
(1099, 'Pedro Lucas Urribarrí', NULL, NULL, 458),
(1100, 'José Cenobio Urribarrí', NULL, NULL, 458),
(1101, 'Rafael Maria Baralt', NULL, NULL, 459),
(1102, 'Manuel Manrique', NULL, NULL, 459),
(1103, 'Rafael Urdaneta', NULL, NULL, 459),
(1104, 'Bobures', NULL, NULL, 460),
(1105, 'Gibraltar', NULL, NULL, 460),
(1106, 'Heras', NULL, NULL, 460),
(1107, 'Monseñor Arturo Álvarez', NULL, NULL, 460),
(1108, 'Rómulo Gallegos', NULL, NULL, 460),
(1109, 'El Batey', NULL, NULL, 460),
(1110, 'Rafael Urdaneta', NULL, NULL, 461),
(1111, 'La Victoria', NULL, NULL, 461),
(1112, 'Raúl Cuenca', NULL, NULL, 461),
(1113, 'Sinamaica', NULL, NULL, 447),
(1114, 'Alta Guajira', NULL, NULL, 447),
(1115, 'Elías Sánchez Rubio', NULL, NULL, 447),
(1116, 'Guajira', NULL, NULL, 447),
(1117, 'Altagracia', NULL, NULL, 462),
(1118, 'Antímano', NULL, NULL, 462),
(1119, 'Caricuao', NULL, NULL, 462),
(1120, 'Catedral', NULL, NULL, 462),
(1121, 'Coche', NULL, NULL, 462),
(1122, 'El Junquito', NULL, NULL, 462),
(1123, 'El Paraíso', NULL, NULL, 462),
(1124, 'El Recreo', NULL, NULL, 462),
(1125, 'El Valle', NULL, NULL, 462),
(1126, 'La Candelaria', NULL, NULL, 462),
(1127, 'La Pastora', NULL, NULL, 462),
(1128, 'La Vega', NULL, NULL, 462),
(1129, 'Macarao', NULL, NULL, 462),
(1130, 'San Agustín', NULL, NULL, 462),
(1131, 'San Bernardino', NULL, NULL, 462),
(1132, 'San José', NULL, NULL, 462),
(1133, 'San Juan', NULL, NULL, 462),
(1134, 'San Pedro', NULL, NULL, 462),
(1135, 'Santa Rosalía', NULL, NULL, 462),
(1136, 'Santa Teresa', NULL, NULL, 462),
(1137, 'Sucre (Catia)', NULL, NULL, 462),
(1138, '23 de enero', NULL, NULL, 462);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(2, 'browse_bread', NULL, '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(3, 'browse_database', NULL, '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(4, 'browse_media', NULL, '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(5, 'browse_compass', NULL, '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(6, 'browse_menus', 'menus', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(7, 'read_menus', 'menus', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(8, 'edit_menus', 'menus', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(9, 'add_menus', 'menus', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(10, 'delete_menus', 'menus', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(11, 'browse_roles', 'roles', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(12, 'read_roles', 'roles', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(13, 'edit_roles', 'roles', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(14, 'add_roles', 'roles', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(15, 'delete_roles', 'roles', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(16, 'browse_users', 'users', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(17, 'read_users', 'users', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(18, 'edit_users', 'users', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(19, 'add_users', 'users', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(20, 'delete_users', 'users', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(21, 'browse_settings', 'settings', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(22, 'read_settings', 'settings', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(23, 'edit_settings', 'settings', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(24, 'add_settings', 'settings', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(25, 'delete_settings', 'settings', '2018-08-13 17:29:11', '2018-08-13 17:29:11'),
(26, 'browse_categories', 'categories', '2018-08-13 17:29:13', '2018-08-13 17:29:13'),
(27, 'read_categories', 'categories', '2018-08-13 17:29:13', '2018-08-13 17:29:13'),
(28, 'edit_categories', 'categories', '2018-08-13 17:29:13', '2018-08-13 17:29:13'),
(29, 'add_categories', 'categories', '2018-08-13 17:29:13', '2018-08-13 17:29:13'),
(30, 'delete_categories', 'categories', '2018-08-13 17:29:13', '2018-08-13 17:29:13'),
(31, 'browse_posts', 'posts', '2018-08-13 17:29:13', '2018-08-13 17:29:13'),
(32, 'read_posts', 'posts', '2018-08-13 17:29:13', '2018-08-13 17:29:13'),
(33, 'edit_posts', 'posts', '2018-08-13 17:29:13', '2018-08-13 17:29:13'),
(34, 'add_posts', 'posts', '2018-08-13 17:29:13', '2018-08-13 17:29:13'),
(35, 'delete_posts', 'posts', '2018-08-13 17:29:13', '2018-08-13 17:29:13'),
(36, 'browse_pages', 'pages', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(37, 'read_pages', 'pages', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(38, 'edit_pages', 'pages', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(39, 'add_pages', 'pages', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(40, 'delete_pages', 'pages', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(41, 'browse_hooks', NULL, '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(42, 'browse_ciudad', 'ciudad', '2018-08-14 01:21:30', '2018-08-14 01:21:30'),
(43, 'read_ciudad', 'ciudad', '2018-08-14 01:21:30', '2018-08-14 01:21:30'),
(44, 'edit_ciudad', 'ciudad', '2018-08-14 01:21:30', '2018-08-14 01:21:30'),
(45, 'add_ciudad', 'ciudad', '2018-08-14 01:21:30', '2018-08-14 01:21:30'),
(46, 'delete_ciudad', 'ciudad', '2018-08-14 01:21:30', '2018-08-14 01:21:30'),
(47, 'browse_ciudades', 'ciudades', '2018-08-14 01:36:15', '2018-08-14 01:36:15'),
(48, 'read_ciudades', 'ciudades', '2018-08-14 01:36:15', '2018-08-14 01:36:15'),
(49, 'edit_ciudades', 'ciudades', '2018-08-14 01:36:15', '2018-08-14 01:36:15'),
(50, 'add_ciudades', 'ciudades', '2018-08-14 01:36:15', '2018-08-14 01:36:15'),
(51, 'delete_ciudades', 'ciudades', '2018-08-14 01:36:15', '2018-08-14 01:36:15'),
(52, 'browse_cities', 'cities', '2018-08-14 01:38:27', '2018-08-14 01:38:27'),
(53, 'read_cities', 'cities', '2018-08-14 01:38:27', '2018-08-14 01:38:27'),
(54, 'edit_cities', 'cities', '2018-08-14 01:38:27', '2018-08-14 01:38:27'),
(55, 'add_cities', 'cities', '2018-08-14 01:38:27', '2018-08-14 01:38:27'),
(56, 'delete_cities', 'cities', '2018-08-14 01:38:27', '2018-08-14 01:38:27'),
(57, 'browse_states', 'states', '2018-08-14 03:18:04', '2018-08-14 03:18:04'),
(58, 'read_states', 'states', '2018-08-14 03:18:04', '2018-08-14 03:18:04'),
(59, 'edit_states', 'states', '2018-08-14 03:18:04', '2018-08-14 03:18:04'),
(60, 'add_states', 'states', '2018-08-14 03:18:04', '2018-08-14 03:18:04'),
(61, 'delete_states', 'states', '2018-08-14 03:18:04', '2018-08-14 03:18:04'),
(62, 'browse_municipios', 'municipios', '2018-08-14 04:33:28', '2018-08-14 04:33:28'),
(63, 'read_municipios', 'municipios', '2018-08-14 04:33:28', '2018-08-14 04:33:28'),
(64, 'edit_municipios', 'municipios', '2018-08-14 04:33:28', '2018-08-14 04:33:28'),
(65, 'add_municipios', 'municipios', '2018-08-14 04:33:28', '2018-08-14 04:33:28'),
(66, 'delete_municipios', 'municipios', '2018-08-14 04:33:28', '2018-08-14 04:33:28'),
(67, 'browse_parroquias', 'parroquias', '2018-08-14 05:04:41', '2018-08-14 05:04:41'),
(68, 'read_parroquias', 'parroquias', '2018-08-14 05:04:41', '2018-08-14 05:04:41'),
(69, 'edit_parroquias', 'parroquias', '2018-08-14 05:04:41', '2018-08-14 05:04:41'),
(70, 'add_parroquias', 'parroquias', '2018-08-14 05:04:41', '2018-08-14 05:04:41'),
(71, 'delete_parroquias', 'parroquias', '2018-08-14 05:04:41', '2018-08-14 05:04:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 3),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(31, 2),
(31, 3),
(31, 4),
(32, 1),
(32, 2),
(32, 3),
(32, 4),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(36, 2),
(36, 3),
(37, 1),
(37, 2),
(37, 3),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(57, 1),
(58, 1),
(62, 1),
(63, 1),
(67, 1),
(68, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-08-13 17:29:13', '2018-08-13 17:29:13'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-08-13 17:29:13', '2018-08-13 17:29:13'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-08-13 17:29:13', '2018-08-13 17:29:13'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-08-13 17:29:13', '2018-08-13 17:29:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrador', '2018-08-13 17:29:11', '2018-08-13 21:42:07'),
(2, 'user', 'Usuario Normal', '2018-08-13 17:29:11', '2018-08-13 21:42:29'),
(3, 'inspector', 'Inspector', '2018-08-14 16:58:32', '2018-08-14 16:58:48'),
(4, 'analista', 'Analista', '2018-08-14 17:15:03', '2018-08-14 17:15:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Tasaciones Comerciales', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', NULL, '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\August2018\\9NJuVFgDa7fWJ0DcjB9z.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Admin - Tasaciones Comerciales', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', NULL, '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `estado` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `iso_3166_2` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `states`
--

INSERT INTO `states` (`id`, `estado`, `created_at`, `updated_at`, `iso_3166_2`) VALUES
(1, 'Amazonas', NULL, NULL, 'VE-X'),
(2, 'Anzoátegui', NULL, NULL, 'VE-B'),
(3, 'Apure', NULL, NULL, 'VE-C'),
(4, 'Aragua', NULL, NULL, 'VE-D'),
(5, 'Barinas', NULL, NULL, 'VE-E'),
(6, 'Bolívar', NULL, NULL, 'VE-F'),
(7, 'Carabobo', NULL, NULL, 'VE-G'),
(8, 'Cojedes', NULL, NULL, 'VE-H'),
(9, 'Delta Amacuro', NULL, NULL, 'VE-Y'),
(10, 'Falcón', NULL, NULL, 'VE-I'),
(11, 'Guárico', NULL, NULL, 'VE-J'),
(12, 'Lara', NULL, NULL, 'VE-K'),
(13, 'Mérida', NULL, NULL, 'VE-L'),
(14, 'Miranda', NULL, NULL, 'VE-M'),
(15, 'Monagas', NULL, NULL, 'VE-N'),
(16, 'Nueva Esparta', NULL, NULL, 'VE-O'),
(17, 'Portuguesa', NULL, NULL, 'VE-P'),
(18, 'Sucre', NULL, NULL, 'VE-R'),
(19, 'Táchira', NULL, NULL, 'VE-S'),
(20, 'Trujillo', NULL, NULL, 'VE-T'),
(21, 'Vargas', NULL, NULL, 'VE-W'),
(22, 'Yaracuy', NULL, NULL, 'VE-U'),
(23, 'Zulia', NULL, NULL, 'VE-V'),
(24, 'Distrito Capital', NULL, NULL, 'VE-A'),
(25, 'Dependencias Federales', NULL, NULL, 'VE-Z');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-08-13 17:29:14', '2018-08-13 17:29:14'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-08-13 17:29:14', '2018-08-13 17:29:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_estado` int(10) UNSIGNED DEFAULT NULL,
  `id_municipio` int(10) UNSIGNED DEFAULT NULL,
  `id_parroquia` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `id_estado`, `id_municipio`, `id_parroquia`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$Bdte22LQ7DMRxiAtojqoQeP6Ve3/22LFiFrXG8AVxFtn3DLjQRumq', 'ApeF4pqSwD8v6YviBTiddayQLtB1gpbhuYtxNuPPMjyWeWfPkBbK59tIbch5', '{\"locale\":\"es\"}', '2018-08-13 17:29:13', '2018-08-13 18:48:45', NULL, NULL, NULL),
(2, 1, 'Miguel Magdalena', 'miguelangelmagdalena@gmail.com', 'users/default.png', '$2y$10$Cf39lX9.wVoe8cToy03gtOMGw/UfSnKdNHzOyQehML/ZICRa6MqMS', 'HwWYGsPIhCDYHYudkm8ENyGtxtcckvnbLw54M7nxQopqlgKM7mQAotoHuzGS', '{\"locale\":\"es\"}', '2018-08-13 18:49:26', '2018-08-13 21:52:43', NULL, NULL, NULL),
(4, 2, 'Miguel Angel', 'miguel@gmail.com', 'users/default.png', '$2y$10$9xpiNR2KDkzAlLLaWPU5gunTa13su0FHS7GxzCrA43k0gJ1Hna2cy', '2FgRsRH9hz5LzYV3fw9FpIAacyburfM43kda4IWKYSBiSBRdQmlmohEJ3kOY', NULL, '2018-08-15 22:24:33', '2018-08-15 22:24:33', NULL, NULL, NULL),
(6, 2, 'Mitchell', 'mitch@gmail.com', 'users/default.png', '$2y$10$TDmonoYeDJYDTdAn.ZRkMuP232SXqoDRn9iEqzKH0GOrJu48ezHJu', 'xCQW1AHjCLUsptNtbZHfmkT8tmBEfxaxhvFST5L4BoWGXQVxNNy1E0S6UI1L', NULL, '2018-08-20 19:33:45', '2018-08-20 19:33:45', 24, 462, 1137),
(7, 2, 'Miguel Magdalena', 'aa@gmail.com', 'users/default.png', '$2y$10$mTYvX30H87vxesZiObSOU.5Qmtu5rIiBgWt48zYBef5Zy69R25FSm', 'LF9QUnSRMX4qj1pv05ukhSXN8M1RQJWGpD0Lay0suvO5iVAxta2I8GrvFPDC', NULL, '2018-08-20 19:37:23', '2018-08-20 19:37:23', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_id_estado_index` (`id_estado`),
  ADD KEY `id_estado` (`id_estado`),
  ADD KEY `id_estado_2` (`id_estado`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `municipios_id_estado_index` (`id_estado`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indices de la tabla `parroquias`
--
ALTER TABLE `parroquias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parroquias_id_municipio_index` (`id_municipio`),
  ADD KEY `id_municipio` (`id_municipio`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=523;

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `parroquias`
--
ALTER TABLE `parroquias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1139;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `states` (`id`);

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `municipios_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `states` (`id`);

--
-- Filtros para la tabla `parroquias`
--
ALTER TABLE `parroquias`
  ADD CONSTRAINT `parroquias_ibfk_1` FOREIGN KEY (`id_municipio`) REFERENCES `municipios` (`id`);

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
