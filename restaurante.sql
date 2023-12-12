-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2023 a las 00:59:06
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
-- Base de datos: `restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id_imagen` int(11) NOT NULL,
  `nom_imagen` varchar(25) NOT NULL,
  `foto` blob NOT NULL,
  `fecha_img` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuestos`
--

CREATE TABLE `impuestos` (
  `ID_impuesto` int(11) NOT NULL,
  `nom_impuesto` text NOT NULL,
  `porcentaje` double NOT NULL,
  `fecha_imp` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Aloja la fecha en que fue creado el registro en la base de datos restaurante.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `impuestos`
--

INSERT INTO `impuestos` (`ID_impuesto`, `nom_impuesto`, `porcentaje`, `fecha_imp`) VALUES
(1, 'IVA Alimentos', 10.05, '2023-11-06 15:30:09'),
(2, 'IVA', 21.55, '2023-11-06 15:31:09'),
(3, 'IMP PAÍS', 500, '2023-11-06 21:06:22'),
(6, 'IVA 5', 25.2, '2023-11-07 16:05:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `ID_ingrediente` int(20) NOT NULL,
  `nom_ingrediente` text NOT NULL,
  `precio_ingrediente` double NOT NULL,
  `fecha_ingrediente` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menues`
--

CREATE TABLE `menues` (
  `ID_menu` int(11) NOT NULL,
  `ID_restaurante` int(5) NOT NULL DEFAULT 1,
  `ID_impuesto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `nombre_menu` text NOT NULL,
  `preparacion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE `mesas` (
  `ID_mesa` int(11) NOT NULL,
  `ID_mozo` int(11) NOT NULL,
  `codigo_qr` blob NOT NULL,
  `ubicacion` text NOT NULL,
  `capacidad` int(11) NOT NULL,
  `fecha_mesa` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Guarda la fecha y hora en que fue creado el registro en la tabla'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mesas`
--

INSERT INTO `mesas` (`ID_mesa`, `ID_mozo`, `codigo_qr`, `ubicacion`, `capacidad`, `fecha_mesa`) VALUES
(1, 1, '', 'Frente', 6, '2023-11-05 14:39:43'),
(3, 4, '', 'Terraza', 4, '2023-11-05 14:41:39'),
(4, 2, '', 'Frente', 1, '2023-11-05 17:34:43'),
(5, 4, '', 'Frente', 25, '2023-11-05 17:36:23'),
(6, 0, '', 'Interior', 2, '2023-11-06 18:09:54'),
(7, 0, '', 'Terraza', 2, '2023-11-06 18:19:10'),
(8, 1, '', 'Interior', 55, '2023-11-06 18:22:24'),
(10, 0, '', 'Frente', 12, '2023-11-06 21:52:13'),
(11, 0, '', 'Frente', 5, '2023-11-07 15:02:26'),
(12, 0, '', 'Interior', 1, '2023-11-07 15:07:40'),
(13, 0, '', 'Terraza', 20, '2023-11-07 15:08:13'),
(14, 0, '', 'Terraza', 20, '2023-11-07 15:09:25'),
(15, 0, '', 'Frente', 15, '2023-11-07 15:10:08'),
(16, 0, '', 'Frente', 25, '2023-11-07 15:10:24'),
(17, 0, '', 'Frente', 18, '2023-11-07 15:10:49'),
(18, 0, '', 'Interior', 25, '2023-11-07 15:24:04'),
(19, 0, '', 'Terraza', 65, '2023-11-07 15:59:30'),
(20, 4, '', 'Terraza', 50, '2023-11-07 16:27:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mozos`
--

CREATE TABLE `mozos` (
  `ID_mozo` int(11) NOT NULL,
  `nom_mozo` text NOT NULL,
  `DNI_moso` int(10) NOT NULL,
  `fecha_mozo` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Almacena la fecha en que el registro fue creado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mozos`
--

INSERT INTO `mozos` (`ID_mozo`, `nom_mozo`, `DNI_moso`, `fecha_mozo`) VALUES
(1, 'Esteban', 0, '2023-11-05 14:31:18'),
(2, 'Carla', 0, '2023-11-05 14:31:47'),
(3, 'Franco', 12345678, '2023-11-05 14:31:56'),
(4, 'Enzo', 65686962, '2023-11-05 14:32:26'),
(5, 'Rick', 12345678, '2023-11-05 14:32:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes`
--

CREATE TABLE `ordenes` (
  `id_orden` int(11) NOT NULL,
  `id_mesa` int(11) NOT NULL,
  `fecha_orden` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas`
--

CREATE TABLE `recetas` (
  `ID_receta` int(11) NOT NULL,
  `ID_ingrediente` int(11) NOT NULL,
  `ID_menu` int(11) NOT NULL,
  `cantidad` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurantes`
--

CREATE TABLE `restaurantes` (
  `ID_restaurante` int(11) NOT NULL,
  `nom_restaurante` text NOT NULL,
  `dirección` text NOT NULL,
  `email` text NOT NULL,
  `logo_restaurante` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `restaurantes`
--

INSERT INTO `restaurantes` (`ID_restaurante`, `nom_restaurante`, `dirección`, `email`, `logo_restaurante`) VALUES
(1, 'Victor\'s gourmet ', 'Ramos Mejía 45 - Villa Libertad - Misiones Argentina', 'contacto.cgb@gmail.com', 0x89504e470d0a1a0a0000000d4948445200000060000000600803000000d546870a00000258504c5445ffed00000000ffffff3b3637b42030ffef1efff028fff13afff031ffee0affed02fff34ffff682fff574fffab6fff8a6fff35efff67bfff789fff466fff56dfff790fff9adfff89effee16fff357fff897fffabfa1a1a1fffbc8544f4ffff247ffee11fce902fff242fffcd0fffde0fffcd7969696f8f7f7fffeebe9e8e8a0a09fa6a4a29e9d99ead90b403b39f4dc058e8e8edc7b139f9f9ec6b917cfceccb3b1afe0d00fe69d0edfdedeeaad0dbaad1d4e4948f6e304c6c4c4847c39f4e410bebcbbd3c5116d685ff1c109e18d10898583888787f0efefababab474235aea226f7e70da3982da5a5a4afac82f0e118f5ce05b929309a9a9ae4d72d716b3fd7d6d675716e9b9796e8db24e0d3348d8975a5a38eccc355aaa890e8da257f7b7aa5a4a3f6f6e8b1ad7e939089ded33b897f219b9a95e5b09ed68489c9c6af67602acfc54fbcb770958b2e817b57dbd043afaea6504a327c7546c23423afafa9c7c7bebe3d47dc9696faf197c4bd5cc8c15ff9e60f5d5953c75433c0b961f8e869a7a36fb4ab46eccf63bbb56ca59a1d9c9b84cd4f1cd8cd3fc14736d1cfc0cfc54be4cd9d6a654fca616aeae9dbd6cd517b7325cec98fe3da63c7bf5dead6229a9365868167dcd585bab47ef0dca1bbbaa3b9b68ed7854bc24955f3de4ee0dfcfeae7bdadaa8ad0ca74bab9b2cd6640e4ce39d3772fd7c2b9b9b57bbdb86fc6c18bf1f0e2ada767d86c18e7b252e2dc8e9a9249db8c17d5d19bafa867e6b25cc0bea9eae385c1b63ae3e0b594927edbd2605c563de6db4dcf6f77d1c95cebe053ded99bc44f5aded558ccc351f2efd0f1eebbe4a730f3e74a182929d5000000c874524e53ff00ffffffffffffffffffffffffffffffffffffffffffffffffffff05fffffffffefffffffe02ffffff1aff2fffffff02ff10ffffffffffffffffffffffffe6ffffffffffff02ff01ffffeeff063cdfffff23b9ffffffffd6acff4f7f17c2ff17ed6dffa3ff0cffffffffad52ffff9443ffffff3484fffff99d5ff8ffff6cff2cffff84ff10ffbcff9a96ffffffd17dff86bfffffffffffffff4a68ffffffbccf25a55bffffffff2b3effe13effffc2ffffa7ffff67dcffc30fb6ffbcff7dc4acff96ffdee8ffedc88452ce000008fb49444154789cad9af95f53571ac66f16400208125c500c5eaac46c64230949490859088404c20e228b2020a0a222824bc55ddc75c656ad56eb56f7b6d36d5abbcc743a33fdb77aeebd49ee72ce4972d1f7c30f901b9e6f9ef39ef39ef79e1b42222e4c2691ff4064a87bf6f591ed337d1d8383831d7d33d78ebf3e5bd9f0de000d278eef6c258451d7b1bda521033be900d1d733b078229afb768f97bd1360e01a5e3dce9869a95c36e0c44e328d3c1d83bb538d141e70a24f91893c15bd291038c04f3319cbd32e5a700834c074a4598c3c08c5c5611180810e91f254b4b62027140af0a26e19fa04416e47116080e99aa8d1e7469f2503c0f8cee5ca83e87d082d0a21e0a7e50c3f1b75d06c1200ce0ebe933e58d9c25413cbd227edd670241276d951844a3c603c93f1a9b5463a7d419dcdedf6da829d56e87add43130ed09022bfa435e2e9ecf4845d1e5f8f3b244d84261886deda3a80035c137e5683dd504bff66df0364356a758d4d5723e5c7103c4c831634e00577fedbc31edf507034d8edf344ac9ea16a292eaaf7c0762f96a100039cf56b3d309a1c8790bba70b2b2f95aa3b61806277190c6860135cebd18552480ac287c858dd4318702479d578003f20190288bea8103090accfe4815423922180480e52023093bce4b289d297227200a2d5c2073c6767d05e71fa1a0f1240246a771cd097bc60e81107f0c22b8d8e662d17f09cbd502f728446ebd180840506c0a911769d287df5655c6b53a765010f396b98dc260ae08e60f409e2785912c02b427b34620043062ca0d7920034f2fa43bb982cd760e6101d2dd138e005fff588888516446c39c9a06b1ec15b6474907b33ae44a852ca06bdd800a04cd806193e5167a6afee36a602102d8d34e03974c1be0d45a8f1ea7436afbb9a9d043a574a7d7a2910dc3acaf1201ca52e9dce1b575627e8d5a9324c45878506f4212e19bfe66e8d6ab70d55c17db5690054b9200493341164842d199a2e744e0ea4d1a7934048063017ebb7a59b4c7bd302c06226f87b3d376a2369ea5e7ac0c54a0038929b8b43b8843d8a58c0f92800fcb66e138e6070bf23a0771c00fe9305081844ead2fd09f47eab8b3fb15a8701606756d63a9c896f4501ec9d554dfc1dbab91d007ec9cecec2993829061056a9aa9aaa7816140050f6cb8a15d93813d69433751bf7ad468f4aa5fa50769d2fa097108dffca01048c0943ca168c0ba8bf0cf4ab644d82fd870654e4e4302636c12652ae040e204c7dfc2a5995b0030000c9dfca19026342c147dc168a866abaaaababbb6a346a0e80dc430f8fec67a8c3a0006ff3ca694436ca0437cb5d361d28a994782814d26834a160fc4db5ccf0cbce400dc6516a163d2a2dcd4b9a582730614d94b91a9dce2dccf8683c519db47e137c3745d451801b45140163c2c0eccf1a9d374152ab4321351760bfcce8a31ab05e6aa1dd55161595e6094c24df32492979bd34c57bfbdb93e1b0cb150e47befe78b4c73644eb1f53d1f307f1f9e91d87907c5aa2540a4db013f62550b6819aa79e3c69a5d7506e76455e5e5e4e762eb895057fd6c7f5cfa0f48969aad80d149494e04dfc019a37b0554efe934a60967261d2d613ec0611ec7979ab249bc8f1a9e8019a42ea13a7a9721d5db5aa006fa21eec6752f5dfc187dfa4bcd4e3ab9271421504ebd0db0df4f763ba8b116ac369fc2a7f15de8441530df4817cbeee980c8e6336b5d42d432700ac0f3db5654a6e14e7f34df04ac7b31ae94b82289d5421e4691b5ea90fd77ef5d29bbee4d3d5c5f9b08944fdbb2dd51814ab8318792a86aa73318069a66d295b585d0c4c14244d54704dfc21bd452c74b372fba7ae8f8d8d5d9f6ae28cd31dcc8e38c2345ed17faf5f8d37f154fa543914576a1a73b1d5d2e01adb9f202c22f59bf54ceb28f97eeddaf5581306cd4d1d233365856a4dfd1833ad822b5080f3f1e65762292c5c4b9b58953451ce9a985ca445a6d0f762060671093742cc0dc8376b00813551c43371eb636a70f06d6e3d3550a3d9f0853a7d022039b8668dc044296be2940f64d6ce4fa3df4f18fd893f8c53200b2530603a790b2529fb71254d58cfe4ba8097ebfba052dad9224e1264c0e17706fc7ea723ce30ee97551543fa643f7b132879bc612530b19635c1291d452a599829e2642040c6026f023187e39cd1e93793e640c041695965b27c0870dec2b94f2efb7cc34a9c09657753bc74386204e188f9cd4e87c36176c4028419fcd062531f4243143790384a78bc9122204d14e93cf155e7f02b48a3d90c3e3c499246224638cd6627ad7626781f32c03b4a0016366ec09878faec64a2febd719a8d446de0dcac7c76f69c3946c41c666669189f3904fa47fba3fce39c831f6ce49828e698b8ff7b61b288c7727303b36f9c314a1678206ae34baff48a5300382c38ce91442f5004810966d5b5cd2bd9226e7622ce26b226e431fe2bad7ae1819464f8bf1f604c3c914f14258af84d54ffb7ee52dbac20c323d0919a44b26fcb16b4892fe5f289024111e746f6449bfc1f7cc0b45602031ae7366f814d50b95e92cb7715965654209b588572975cdec6bf2de8d5238e35411a1e6ce69b4814f1536d72f9a10980804de42a270ec9e5727e8a9bfb9107b3200d5737d32636084d7c0734e487e6efe497f34c6cca5b98ff8cbac41f20720473b40ce6ea8ecd4913bcfaf75d1ba523ff7dfed2427e1145c9c92b597f67fe0af3325f5f719af7a08507a83cb8632bdf44a2889f5a92c7e3d0955f7781f8f5b3b6f80b6dfcf1511cd6628ff701611f4d409858bc2747c7b998503fc5030a86c03551c831f104252f58c1903ef490a8f2e0abad7c136cfd5bbcb7c4539ffdc22f5813e4696d9a8744128969f8ea569409a6fe2d7e79efc9474b4b4b1f3df9e2ff37a1db89e6114bdac75c202c17b6624da4ecc47bfb3379500722fa7847dc045c3a0ab09d3839adcfec51239588e1071c13c8220e99681dd166fcb09436f18a42e0ea1f64e2e8617d14ad847b605d393c979cb0a94c30a5e37cbf45dc036b1aa19de3aeba1426def6439333130098b1dab9ab68136c135bfee7a354f2e9bef65069d977e115a68853268ade8ee8e1a92f0200da0dc0987b802ce23f3cba0bd453cb67f4d51393695cbbeffb0b3f7efebf958c89851fbefae6c65dbd76fc7d7cf5241e0d9526cbf8707bbb1e447bfbf0b8c5f41ebf3cf36ef1171fd4074f799ad4c50000000049454e44ae426082),
(2, 'Victor\'s gourmet ', 'Ramos Mejía 45 - Villa Libertad - Misiones Argentina', 'contacto.cgb@gmail.com', 0x89504e470d0a1a0a0000000d4948445200000060000000600803000000d546870a00000258504c5445ffed00000000ffffff3b3637b42030ffef1efff028fff13afff031ffee0affed02fff34ffff682fff574fffab6fff8a6fff35efff67bfff789fff466fff56dfff790fff9adfff89effee16fff357fff897fffabfa1a1a1fffbc8544f4ffff247ffee11fce902fff242fffcd0fffde0fffcd7969696f8f7f7fffeebe9e8e8a0a09fa6a4a29e9d99ead90b403b39f4dc058e8e8edc7b139f9f9ec6b917cfceccb3b1afe0d00fe69d0edfdedeeaad0dbaad1d4e4948f6e304c6c4c4847c39f4e410bebcbbd3c5116d685ff1c109e18d10898583888787f0efefababab474235aea226f7e70da3982da5a5a4afac82f0e118f5ce05b929309a9a9ae4d72d716b3fd7d6d675716e9b9796e8db24e0d3348d8975a5a38eccc355aaa890e8da257f7b7aa5a4a3f6f6e8b1ad7e939089ded33b897f219b9a95e5b09ed68489c9c6af67602acfc54fbcb770958b2e817b57dbd043afaea6504a327c7546c23423afafa9c7c7bebe3d47dc9696faf197c4bd5cc8c15ff9e60f5d5953c75433c0b961f8e869a7a36fb4ab46eccf63bbb56ca59a1d9c9b84cd4f1cd8cd3fc14736d1cfc0cfc54be4cd9d6a654fca616aeae9dbd6cd517b7325cec98fe3da63c7bf5dead6229a9365868167dcd585bab47ef0dca1bbbaa3b9b68ed7854bc24955f3de4ee0dfcfeae7bdadaa8ad0ca74bab9b2cd6640e4ce39d3772fd7c2b9b9b57bbdb86fc6c18bf1f0e2ada767d86c18e7b252e2dc8e9a9249db8c17d5d19bafa867e6b25cc0bea9eae385c1b63ae3e0b594927edbd2605c563de6db4dcf6f77d1c95cebe053ded99bc44f5aded558ccc351f2efd0f1eebbe4a730f3e74a182929d5000000c874524e53ff00ffffffffffffffffffffffffffffffffffffffffffffffffffff05fffffffffefffffffe02ffffff1aff2fffffff02ff10ffffffffffffffffffffffffe6ffffffffffff02ff01ffffeeff063cdfffff23b9ffffffffd6acff4f7f17c2ff17ed6dffa3ff0cffffffffad52ffff9443ffffff3484fffff99d5ff8ffff6cff2cffff84ff10ffbcff9a96ffffffd17dff86bfffffffffffffff4a68ffffffbccf25a55bffffffff2b3effe13effffc2ffffa7ffff67dcffc30fb6ffbcff7dc4acff96ffdee8ffedc88452ce000008fb49444154789cad9af95f53571ac66f16400208125c500c5eaac46c64230949490859088404c20e228b2020a0a222824bc55ddc75c656ad56eb56f7b6d36d5abbcc743a33fdb77aeebd49ee72ce4972d1f7c30f901b9e6f9ef39ef39ef79e1b42222e4c2691ff4064a87bf6f591ed337d1d8383831d7d33d78ebf3e5bd9f0de000d278eef6c258451d7b1bda521033be900d1d733b078229afb768f97bd1360e01a5e3dce9869a95c36e0c44e328d3c1d83bb538d141e70a24f91893c15bd291038c04f3319cbd32e5a700834c074a4598c3c08c5c5611180810e91f254b4b62027140af0a26e19fa04416e47116080e99aa8d1e7469f2503c0f8cee5ca83e87d082d0a21e0a7e50c3f1b75d06c1200ce0ebe933e58d9c25413cbd227edd670241276d951844a3c603c93f1a9b5463a7d419dcdedf6da829d56e87add43130ed09022bfa435e2e9ecf4845d1e5f8f3b244d84261886deda3a80035c137e5683dd504bff66df0364356a758d4d5723e5c7103c4c831634e00577fedbc31edf507034d8edf344ac9ea16a292eaaf7c0762f96a100039cf56b3d309a1c8790bba70b2b2f95aa3b61806277190c6860135cebd18552480ac287c858dd4318702479d578003f20190288bea8103090accfe4815423922180480e52023093bce4b289d297227200a2d5c2073c6767d05e71fa1a0f1240246a771cd097bc60e81107f0c22b8d8e662d17f09cbd502f728446ebd180840506c0a911769d287df5655c6b53a765010f396b98dc260ae08e60f409e2785912c02b427b34620043062ca0d7920034f2fa43bb982cd760e6101d2dd138e005fff588888516446c39c9a06b1ec15b6474907b33ae44a852ca06bdd800a04cd806193e5167a6afee36a602102d8d34e03974c1be0d45a8f1ea7436afbb9a9d043a574a7d7a2910dc3acaf1201ca52e9dce1b575627e8d5a9324c45878506f4212e19bfe66e8d6ab70d55c17db5690054b9200493341164842d199a2e744e0ea4d1a7934048063017ebb7a59b4c7bd302c06226f87b3d376a2369ea5e7ac0c54a0038929b8b43b8843d8a58c0f92800fcb66e138e6070bf23a0771c00fe9305081844ead2fd09f47eab8b3fb15a8701606756d63a9c896f4501ec9d554dfc1dbab91d007ec9cecec2993829061056a9aa9aaa7816140050f6cb8a15d93813d69433751bf7ad468f4aa5fa50769d2fa097108dffca01048c0943ca168c0ba8bf0cf4ab644d82fd870654e4e4302636c12652ae040e204c7dfc2a5995b0030000c9dfca19026342c147dc168a866abaaaababbb6a346a0e80dc430f8fec67a8c3a0006ff3ca694436ca0437cb5d361d28a994782814d26834a160fc4db5ccf0cbce400dc6516a163d2a2dcd4b9a582730614d94b91a9dce2dccf8683c519db47e137c3745d451801b45140163c2c0eccf1a9d374152ab4321351760bfcce8a31ab05e6aa1dd55161595e6094c24df32492979bd34c57bfbdb93e1b0cb150e47befe78b4c73644eb1f53d1f307f1f9e91d87907c5aa2540a4db013f62550b6819aa79e3c69a5d7506e76455e5e5e4e762eb895057fd6c7f5cfa0f48969aad80d149494e04dfc019a37b0554efe934a60967261d2d613ec0611ec7979ab249bc8f1a9e8019a42ea13a7a9721d5db5aa006fa21eec6752f5dfc187dfa4bcd4e3ab9271421504ebd0db0df4f763ba8b116ac369fc2a7f15de8441530df4817cbeee980c8e6336b5d42d432700ac0f3db5654a6e14e7f34df04ac7b31ae94b82289d5421e4691b5ea90fd77ef5d29bbee4d3d5c5f9b08944fdbb2dd51814ab8318792a86aa73318069a66d295b585d0c4c14244d54704dfc21bd452c74b372fba7ae8f8d8d5d9f6ae28cd31dcc8e38c2345ed17faf5f8d37f154fa543914576a1a73b1d5d2e01adb9f202c22f59bf54ceb28f97eeddaf5581306cd4d1d233365856a4dfd1833ad822b5080f3f1e65762292c5c4b9b58953451ce9a985ca445a6d0f762060671093742cc0dc8376b00813551c43371eb636a70f06d6e3d3550a3d9f0853a7d022039b8668dc044296be2940f64d6ce4fa3df4f18fd893f8c53200b2530603a790b2529fb71254d58cfe4ba8097ebfba052dad9224e1264c0e17706fc7ea723ce30ee97551543fa643f7b132879bc612530b19635c1291d452a599829e2642040c6026f023187e39cd1e93793e640c041695965b27c0870dec2b94f2efb7cc34a9c09657753bc74386204e188f9cd4e87c36176c4028419fcd062531f4243143790384a78bc9122204d14e93cf155e7f02b48a3d90c3e3c499246224638cd6627ad7626781f32c03b4a0016366ec09878faec64a2febd719a8d446de0dcac7c76f69c3946c41c666669189f3904fa47fba3fce39c831f6ce49828e698b8ff7b61b288c7727303b36f9c314a1678206ae34baff48a5300382c38ce91442f5004810966d5b5cd2bd9226e7622ce26b226e431fe2bad7ae1819464f8bf1f604c3c914f14258af84d54ffb7ee52dbac20c323d0919a44b26fcb16b4892fe5f289024111e746f6449bfc1f7cc0b45602031ae7366f814d50b95e92cb7715965654209b588572975cdec6bf2de8d5238e35411a1e6ce69b4814f1536d72f9a10980804de42a270ec9e5727e8a9bfb9107b3200d5737d32636084d7c0734e487e6efe497f34c6cca5b98ff8cbac41f20720473b40ce6ea8ecd4913bcfaf75d1ba523ff7dfed2427e1145c9c92b597f67fe0af3325f5f719af7a08507a83cb8632bdf44a2889f5a92c7e3d0955f7781f8f5b3b6f80b6dfcf1511cd6628ff701611f4d409858bc2747c7b998503fc5030a86c03551c831f104252f58c1903ef490a8f2e0abad7c136cfd5bbcb7c4539ffdc22f5813e4696d9a8744128969f8ea569409a6fe2d7e79efc9474b4b4b1f3df9e2ff37a1db89e6114bdac75c202c17b6624da4ecc47bfb3379500722fa7847dc045c3a0ab09d3839adcfec51239588e1071c13c8220e99681dd166fcb09436f18a42e0ea1f64e2e8617d14ad847b605d393c979cb0a94c30a5e37cbf45dc036b1aa19de3aeba1426def6439333130098b1dab9ab68136c135bfee7a354f2e9bef65069d977e115a68853268ade8ee8e1a92f0200da0dc0987b802ce23f3cba0bd453cb67f4d51393695cbbeffb0b3f7efebf958c89851fbefae6c65dbd76fc7d7cf5241e0d9526cbf8707bbb1e447bfbf0b8c5f41ebf3cf36ef1171fd4074f799ad4c50000000049454e44ae426082);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id_imagen`);

--
-- Indices de la tabla `impuestos`
--
ALTER TABLE `impuestos`
  ADD PRIMARY KEY (`ID_impuesto`);

--
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`ID_ingrediente`);

--
-- Indices de la tabla `menues`
--
ALTER TABLE `menues`
  ADD PRIMARY KEY (`ID_menu`);

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`ID_mesa`);

--
-- Indices de la tabla `mozos`
--
ALTER TABLE `mozos`
  ADD PRIMARY KEY (`ID_mozo`);

--
-- Indices de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`id_orden`);

--
-- Indices de la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD PRIMARY KEY (`ID_receta`);

--
-- Indices de la tabla `restaurantes`
--
ALTER TABLE `restaurantes`
  ADD PRIMARY KEY (`ID_restaurante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id_imagen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `impuestos`
--
ALTER TABLE `impuestos`
  MODIFY `ID_impuesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `ID_ingrediente` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `menues`
--
ALTER TABLE `menues`
  MODIFY `ID_menu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `ID_mesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `mozos`
--
ALTER TABLE `mozos`
  MODIFY `ID_mozo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  MODIFY `id_orden` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recetas`
--
ALTER TABLE `recetas`
  MODIFY `ID_receta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `restaurantes`
--
ALTER TABLE `restaurantes`
  MODIFY `ID_restaurante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
