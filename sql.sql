-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 19/11/2021 às 12:16
-- Versão do servidor: 5.6.51-cll-lve
-- Versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sisce`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `avisos`
--

CREATE TABLE `avisos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `ativo` int(1) NOT NULL,
  `user_name` varchar(10) NOT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `avisos`
--

INSERT INTO `avisos` (`id`, `titulo`, `ativo`, `user_name`, `imagem`, `created_at`, `updated_at`) VALUES
(6, 'Diversidade Demolay', 1, 'Danylo Aly', '6diversidade-demolay.jpeg', '2021-04-16 09:00:27', '2021-08-04 15:34:39'),
(7, 'Rede Social DMLY', 1, 'Danylo Aly', 'rede-social-d-m-l-y.jpeg', '2021-04-16 09:01:46', '2021-04-16 09:01:46'),
(8, 'Simpósio Ritualístico', 2, 'Danylo Aly', 'simposio-de-ritualistica.jpeg', '2021-04-16 10:36:49', '2021-04-16 21:25:47');

-- --------------------------------------------------------

--
-- Estrutura para tabela `capitulos`
--

CREATE TABLE `capitulos` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `imagem` varchar(200) DEFAULT NULL,
  `cidade_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `capitulos`
--

INSERT INTO `capitulos` (`id`, `numero`, `nome`, `imagem`, `cidade_id`, `created_at`, `updated_at`) VALUES
(1, 895, 'Guardiões da Fraternidade', 'capitulos/zq1FLFQb0MYOpei6oCPB4RrOTGdOBk2n17QQRxJi.jpeg', 140, '2020-04-10 07:50:10', '2021-03-30 08:05:09'),
(2, 924, 'Luz da Ribeira dos Icós', 'capitulos/fINxEOm2lNTnX2Jc4SFTo1JAtunQwgTtNXEMLPk3.png', 76, '2020-04-10 12:22:43', '2021-04-17 15:59:43'),
(3, 155, 'Juazeiro', 'capitulos/SA3nPZNe1irMsylGmAqArl9q6hDWoDMMZIK0JtJb.png', 99, '2021-04-16 09:06:47', '2021-04-17 15:57:29'),
(8, 896, 'Cavaleiros da Luz II', 'capitulos/TTLK1KcRIDeY2fye4sKaVwarlRrr89Ix0yPe5kHZ.png', 94, '2021-04-16 09:15:20', '2021-04-17 15:57:45'),
(11, 778, 'Guardiões da Harmonia Varzealegrense', 'capitulos/QJtYJJYsJsJS6BjOR0injjfmNfhcIRf6KfviSL4a.png', 183, '2021-04-16 14:34:15', '2021-04-17 15:59:56'),
(12, 781, 'Luz do Quinamuiú', 'capitulos/TAy5w9HOJ7xM36gly5tqXQk6G0ckJ8i1lZAXs0EW.png', 172, '2021-04-17 14:34:15', '2021-04-17 16:00:06'),
(13, 873, 'Príncipe do Vale', 'capitulos/qZkdTxpamQUuj5fHNkx65HVExshUkL9gYAbv94Dw.png', 169, '2021-04-18 14:34:15', '2021-04-17 16:16:52'),
(14, 629, 'Cidade de Sobral', 'capitulos/w9YWcLMFoSu3v5qsEi1w6um9JlF5skCVOD542p7N.png', 167, '2021-04-19 14:34:15', '2021-04-17 16:00:29'),
(15, 661, 'Cidade de Senador Pompeu', 'capitulos/xKs40CG3G8ZcgjOMUAvb6vmJrwF6iZs3HAFKSSH4.png', 165, '2021-04-20 14:34:15', '2021-04-17 16:00:48'),
(16, 789, 'Planalto da Ibiapaba', 'capitulos/PSEJ12boayHaSmsBWWv5P3g0MglSJVevPaTpPPIl.png', 161, '2021-04-21 14:34:15', '2021-04-17 16:01:00'),
(17, 1008, 'Jovens Templários', 'capitulos/i420d9zm2QlDbdLSWbnDtozXn5rinngLLP2T2zyC.png', 155, '2021-04-22 14:34:15', '2021-04-17 16:01:31'),
(18, 1026, 'Príncipes da Acácia', 'capitulos/tKVOnMKGGoRF705YnZWyayvQSC7FnwQtrC8b2BvD.png', 151, '2021-04-23 14:34:15', '2021-04-17 16:01:55'),
(19, 879, 'Príncipe dos Monólitos', 'capitulos/MUu4NO99BxHYUG9WTOfsdRLA0fMpSa1wltWjZEoU.png', 149, '2021-04-24 14:34:15', '2021-04-17 16:02:15'),
(20, 765, 'Johab Christus Leandro Melo', 'capitulos/f74WgZxabhPIM0BrVGL62YiR2NbWXfgunjPV9M4F.png', 137, '2021-04-25 14:34:15', '2021-04-17 16:02:38'),
(21, 784, 'Cidade de Pacajus', 'capitulos/BeeRY4Og5x29CVjvKnBR2Gv1MRlTIYUnm9sPWyIc.png', 127, '2021-04-26 14:34:15', '2021-04-17 16:19:22'),
(22, 335, 'Cidade de Nova Russas', 'capitulos/tnaGykCu5F8lNARKOBLZJVE3ZIZjTyhPi0ZxaJ9q.png', 123, '2021-04-27 14:34:15', '2021-04-17 16:03:01'),
(23, 1014, 'Luz da Independência', 'capitulos/wtTmtDPWZPMyvCOzBU2Dhu23D1OhcJn6Ia83d8J7.png', 117, '2021-04-28 14:34:15', '2021-04-17 16:19:36'),
(24, 991, 'Tio José Helder de Mesquita', 'capitulos/T8NS68yV5RlwjimcJKQttTw90r64vPLUMWoW8N61.png', 116, '2021-04-29 14:34:15', '2021-04-17 16:03:37'),
(25, 439, 'Cidade de Mombaça', 'capitulos/D7r13iLt8WRxWrBpndE7SaCCZvsLHFptauwBD77e.png', 115, '2021-04-30 14:34:15', '2021-04-17 16:03:52'),
(26, 851, 'Tio Augusto Gomes Leite', 'capitulos/1naYvAlgGoG2KvCJyQzcBptMutHGbMQFfaxrNDrf.png', 111, '2021-05-01 14:34:15', '2021-04-17 16:05:33'),
(27, 761, 'Guardiões da Juventude Mauritiense', 'capitulos/EmBQZemCUR8IMcaxrRkC9TEj5DoBXpu74V8YkEJ8.png', 109, '2021-05-02 14:34:15', '2021-04-17 16:06:12'),
(28, 1031, 'Cavaleiros da Paz II', 'capitulos/LIzDTlO6Lf8tQrCbgRpAC9VnvLbLmndllEZisuuy.png', 88, '2021-05-03 14:34:15', '2021-04-17 16:07:33'),
(29, 102, 'Tio Damião Dãozinho de Melo', 'capitulos/DwNlh5nhPFYraX8AtqCVRXKu9sufgzOayv0WVMTj.png', 80, '2021-05-04 14:34:15', '2021-04-17 16:08:44'),
(31, 898, 'Força Jovem de Independência', 'capitulos/qEBiOdEMhkLxRJJiz6x3DZv8RogcdcQUPSAuxItN.png', 78, '2021-05-06 14:34:15', '2021-04-17 16:15:08'),
(32, 279, 'Cidade de Iguatu', 'capitulos/As6vtwxt4FLkQi59FA0ct2gacqOVMBBrXk0aOVJQ.png', 77, '2021-05-07 14:34:15', '2021-04-17 16:09:24'),
(34, 59, 'Cidade de Fortaleza', 'capitulos/ccan2lTI45BstUW3tbCF5izNeGIavzwoZE8a5IyP.png', 59, '2021-05-09 14:34:15', '2021-04-17 15:40:23'),
(35, 455, 'Dragão do Mar', 'capitulos/ITZ2JohWkbaExzB8qtF8kFYK187XMwJNLKQIzvgB.png', 59, '2021-05-10 14:34:15', '2021-04-17 16:09:51'),
(37, 982, 'Guardiões do Santo Graal', 'capitulos/yuyJSnF4tY3Ycxh0xbpAihy1HWrBGndjvLru5ILv.png', 59, '2021-05-12 14:34:15', '2021-04-17 16:10:09'),
(38, 527, 'Cidade do Crato', 'capitulos/1kmUGBHl4phwLICqeOq4fszs3BGoHAsEZMOH5obp.png', 51, '2021-05-13 14:34:15', '2021-04-17 16:10:22'),
(39, 1054, 'Guardiões da Independência', 'capitulos/AKq42pvMZvVGflN9jNwrj6J9DToyUSitPYmxOFgN.png', 51, '2021-05-14 14:34:15', '2021-04-17 16:20:13'),
(40, 831, 'Cidade de Crateús', 'capitulos/6cPiBSgrL7r4svQBvGAAvsBN0psSSSQlxcgeM4Dj.png', 50, '2021-05-15 14:34:15', '2021-04-17 16:10:37'),
(41, 922, 'Cidade de Cedro', 'capitulos/jQguTi7TLKJx1B6fFbv3vsKhNXK8aakDum39lsnO.png', 45, '2021-05-16 14:34:15', '2021-04-17 16:10:55'),
(42, 970, 'Cidade de Cascavel', 'capitulos/dggroXlCeZfSd4HPnycg6QVh6Q10GZSBc3h1BWxh.png', 41, '2021-05-17 14:34:15', '2021-04-17 16:11:14'),
(43, 958, 'Cavaleiros das Guerras Bárbaras', 'capitulos/3E14744HNMmocnzZeK5sGNWY4jTrCw295tamHBkc.png', 39, '2021-05-18 14:34:15', '2021-04-17 16:20:31'),
(44, 816, 'Juventude Fraterna Canindeense', 'capitulos/o7kUerw3n1SqoU6wsANwBpVyAviCXTRBEtgKZ1Jd.png', 34, '2021-05-19 14:34:15', '2021-04-17 16:11:37'),
(45, 695, 'Irmão Thiago Santiago Bezerra', 'capitulos/ONXjWLpmgbZPqiGZ8g0lkdOPmTWAa1Na0d6xSwgj.png', 33, '2021-05-20 14:34:15', '2021-04-17 16:11:54'),
(46, 1013, 'Cavaleiros de Camocim', 'capitulos/fZexoEyQNqa2phAJjVLxyhn9o8zKATZd1kKToIKC.png', 32, '2021-05-21 14:34:15', '2021-04-17 16:12:13'),
(47, 864, 'Defensores da Igualdade Brejosantense', 'capitulos/pD5Weu50zT4j39PeZaZwoFuM5in89sApOlKMYid3.png', 31, '2021-05-22 14:34:15', '2021-04-17 16:12:29'),
(48, 899, 'Príncipe do Amor', 'capitulos/wwXuviXmF4gC8NzEWQGGtwoIunm8MqNyK6qnZ837.png', 30, '2021-05-23 14:34:15', '2021-04-17 16:12:56'),
(49, 891, 'Tio Geraldo Luiz Gonzaga', 'capitulos/iGtCPuZOyUsfRsZWiEQqScyTTC8qfhqCcXuoUIic.png', 25, '2021-05-24 14:34:15', '2021-04-17 16:13:09'),
(50, 835, 'Verdes Canaviais Barbalhense', 'capitulos/gZjBIWp5vFsmfa5upRtHzXU89Y8cWDqoh76qqtMv.png', 23, '2021-05-25 14:34:15', '2021-04-17 16:13:44'),
(51, 908, 'Tio Apolônio Chagas Gabriel', 'capitulos/xgoArC8fGeF97UAawf3sw4Au9wUjYKtByoqOBRQI.png', 20, '2021-05-26 14:34:15', '2021-04-17 16:14:01'),
(52, 986, 'Cidade de Acopiara', 'capitulos/THfvVX6VzmRQgDKBSgiO3adXyIqO3DAz3F0VRmjF.png', 4, '2021-05-27 14:34:15', '2021-04-17 16:14:15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidades`
--

CREATE TABLE `cidades` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `cidades`
--

INSERT INTO `cidades` (`id`, `nome`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Abaiara', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(2, 'Acarape', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(3, 'Acaraú', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(4, 'Acopiara', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(5, 'Aiuaba', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(6, 'Alcantaras', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(7, 'Altaneira', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(8, 'Alto Santo', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(9, 'Amontada', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(10, 'Antonina do Norte', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(11, 'Apuiares', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(12, 'Aquiraz', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(13, 'Aracati', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(14, 'Aracoiaba', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(15, 'Ararenda', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(16, 'Araripe', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(17, 'Aratuba', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(18, 'Arneiroz', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(19, 'Assare', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(20, 'Aurora', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(21, 'Baixio', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(22, 'Banabuiu', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(23, 'Barbalha', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(24, 'Barreira', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(25, 'Barro', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(26, 'Barroquinha', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(27, 'Baturite', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(28, 'Beberibe', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(29, 'Bela Cruz', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(30, 'Boa Viagem', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(31, 'Brejo Santo', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(32, 'Camocim', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(33, 'Campos Sales', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(34, 'Canindé', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(35, 'Capistrano', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(36, 'Caridade', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(37, 'Cariré', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(38, 'Caririacu', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(39, 'Caríus', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(40, 'Carnaubal', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(41, 'Cascável', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(42, 'Catarina', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(43, 'Catunda', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(44, 'Caucaia', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(45, 'Cedro', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(46, 'Chaval', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(47, 'Choró', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(48, 'Chorozinho', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(49, 'Coreau', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(50, 'Crateús', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(51, 'Crato', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(52, 'Croata', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(53, 'Cruz', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(54, 'Deputado Irapuan Pinheiro', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(55, 'Ereré', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(56, 'Eusebio', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(57, 'Farias Brito', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(58, 'Forquilha', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(59, 'Fortaleza', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(60, 'Fortim', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(61, 'Frecheirinha', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(62, 'General Sampaio', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(63, 'Graça', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(64, 'Granja', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(65, 'Granjeiro', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(66, 'Groairas', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(67, 'Guaiuba', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(68, 'Guaraciaba do Norte', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(69, 'Guaramiranga', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(70, 'Hidrolândia', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(71, 'Horizonte', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(72, 'Ibaretama', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(73, 'Ibiapina', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(74, 'Ibicuitinga', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(75, 'Icapuí', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(76, 'Icó', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(77, 'Iguatu', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(78, 'Independência', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(79, 'Ipaporanga', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(80, 'Ipaumirim', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(81, 'Ipú', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(82, 'Ipueiras', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(83, 'Iracema', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(84, 'Iraucuba', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(85, 'Itaicaba', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(86, 'Itaitinga', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(87, 'Itapagé', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(88, 'Itapipoca', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(89, 'Itapiuna', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(90, 'Itarema', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(91, 'Itatira', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(92, 'Jaguaretama', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(93, 'Jaguaribara', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(94, 'Jaguaribe', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(95, 'Jaguaruana', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(96, 'Jardim', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(97, 'Jati', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(98, 'Jijoca de Jericoacoara', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(99, 'Juazeiro do Norte', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(100, 'Jucás', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(101, 'Lavras da Mangabeira', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(102, 'Limoeiro do Norte', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(103, 'Madalena', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(104, 'Maracanau', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(105, 'Maranguape', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(106, 'Marco', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(107, 'Martinopole', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(108, 'Massapê', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(109, 'Maurití', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(110, 'Meruoca', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(111, 'Milagres', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(112, 'Milha', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(113, 'Miraima', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(114, 'Missao Velha', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(115, 'Mombaca', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(116, 'Monsenhor Tabosa', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(117, 'Morada Nova', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(118, 'Moraujo', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(119, 'Morrinhos', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(120, 'Mucambo', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(121, 'Mulungu', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(122, 'Nova Olinda', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(123, 'Nova Russas', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(124, 'Novo Oriente', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(125, 'Ocara', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(126, 'Orós', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(127, 'Pacajus', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(128, 'Pacatuba', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(129, 'Pacoti', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(130, 'Pacuja', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(131, 'Palhano', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(132, 'Palmacia', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(133, 'Paracuru', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(134, 'Paraipaba', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(135, 'Parambu', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(136, 'Paramoti', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(137, 'Pedra Branca', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(138, 'Penaforte', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(139, 'Pentecoste', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(140, 'Pereiro', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(141, 'Pindoretama', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(142, 'Piquet Carneiro', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(143, 'Pires Ferreira', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(144, 'Poranga', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(145, 'Porteiras', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(146, 'Potengi', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(147, 'Potiretama', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(148, 'Quiterianopolis', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(149, 'Quixadá', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(150, 'Quixelô', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(151, 'Quixeramobim', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(152, 'Quixeré', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(153, 'Redenção', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(154, 'Reriutaba', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(155, 'Russas', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(156, 'Saboeiro', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(157, 'Salitre', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(158, 'Santa Quitéria', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(159, 'Santana do Acaraú', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(160, 'Santana do Carirí', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(161, 'São Benedito', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(162, 'São Gonçalo do Amarante', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(163, 'São João do Jaguaribe', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(164, 'São Luís do Curú', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(165, 'Senador Pompeu', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(166, 'Senador Sá', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(167, 'Sobral', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(168, 'Solonopole', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(169, 'Tabuleiro do Norte', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(170, 'Tamboril', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(171, 'Tarrafas', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(172, 'Tauá', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(173, 'Tejuçuoca', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(174, 'Tianguá', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(175, 'Trairí', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(176, 'Tururu', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(177, 'Ubajara', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(178, 'Umari', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(179, 'Umirim', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(180, 'Uruburetama', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(181, 'Uruoca', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(182, 'Varjota', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(183, 'Várzea Alegre', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10'),
(184, 'Viçosa do Ceará', 'CE', '2020-04-10 07:48:10', '2020-04-10 07:48:10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `documentos`
--

CREATE TABLE `documentos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `arquivo` varchar(200) NOT NULL,
  `pasta_documento_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `galerias`
--

CREATE TABLE `galerias` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `imagem` varchar(200) NOT NULL,
  `nome_gestao` varchar(200) DEFAULT NULL,
  `periodo` varchar(200) NOT NULL,
  `tipo_galeria_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `galerias`
--

INSERT INTO `galerias` (`id`, `nome`, `cargo`, `imagem`, `nome_gestao`, `periodo`, `tipo_galeria_id`, `created_at`, `updated_at`) VALUES
(9, 'Felipe Bandeira de Medeiros', 'Mestre Conselheiro Estadual', 'galerias/qHX1NEr6yZKp1QqzNgd81POeu47qPa3RGUIRtn3F.png', 'Juntos Podemos Realizar', '2014 - 2015', 2, '2021-04-17 16:25:38', '2021-04-17 16:28:18'),
(10, 'Walberty Nepomuceno Ferreira', 'Mestre Conselheiro Estadual', 'galerias/GX5B2f7wuHThfpYPJ3Zc6zElTcjhxTCoWOY87ANI.png', '---', '1997 - 1998', 2, '2021-04-17 16:33:54', '2021-04-26 14:16:32'),
(11, 'Vladimir Primo de Souza', 'Mestre Conselheiro Estadual', 'galerias/cVR2gYaILyAbItEsJWFYzL0TuqZ0kfPA7qqu5hVN.png', '---', '1998 - 1999', 2, '2021-04-17 16:34:29', '2021-04-17 16:34:29'),
(12, 'Lucyo Flávio Bezerra Diniz', 'Mestre Conselheiro Estadual', 'galerias/mrTWc1JRhQgCjprJLZRSsxGMIX8PWNQXDoCQGDPN.png', '---', '2000 - 2001', 2, '2021-04-17 16:38:14', '2021-04-17 16:38:14'),
(13, 'Alvaro César Moura de Almeida', 'Mestre Conselheiro Estadual', 'galerias/dHmFWPYA42YvYODPiOlSOoV6DW0yKUwdQ8Ic1get.png', '---', '2001 - 2002', 2, '2021-04-17 16:39:33', '2021-04-17 16:39:33'),
(14, 'Thiago Cavalcante de Vasconcelos', 'Mestre Conselheiro Estadual', 'galerias/U6bmPP8gXrcJi3dR6HEeetaXIPTSrfLi0XpKPqgX.png', '---', '2002 - 2003', 2, '2021-04-17 16:40:18', '2021-04-18 13:15:03'),
(15, 'Jonas Siqueira Araújo', 'Mestre Conselheiro Estadual', 'galerias/WukWt8O2df08vBXzP3w27hznBqPQb4yccaJrMPvO.png', '---', '2002 - 2003', 2, '2021-04-17 16:40:50', '2021-04-17 16:40:50'),
(16, 'Dimitry de Sarriune Cysne', 'Mestre Conselheiro Estadual', 'galerias/j2MsKmIIo6Wi6oMv8Xh91OgDEqgRqJuis73dcJfk.png', '---', '2003 - 2005', 2, '2021-04-17 16:41:53', '2021-04-17 16:43:23'),
(17, 'Alberto Oliveira Galvão Filho', 'Mestre Conselheiro Estadual Adjunto', 'galerias/0ILUmNDRfDqa0cvQ2sdg8yRJw3rUSAOppw1F6XUT.png', NULL, '2004 - 2005', 2, '2021-04-17 16:43:58', '2021-04-17 16:43:58'),
(18, 'Charles Elton de Souza Aquino', 'Mestre Conselheiro Estadual', 'galerias/OSJZoqoS1FbwTURQIn5ZmL1YYaWnMPAAc0jnbPo6.png', NULL, '2005 - 2006', 2, '2021-04-17 16:44:37', '2021-04-17 16:44:37'),
(19, 'José Aristóteles Fiuza Neto', 'Mestre Conselheiro Estadual Adjunto', 'galerias/7lD0Iq5bw6pXYUjvNiuAElBHcpYejJGoI7VBt9e5.png', NULL, '2005 - 2006', 2, '2021-04-17 16:45:08', '2021-04-17 16:45:08'),
(20, 'Samir Ferreira Neves', 'Mestre Conselheiro Estadual', 'galerias/2WbBeXl9blHfqSWXaJpA3uX8dIZdssfmyVFRvQYg.png', NULL, '2006 -2007', 2, '2021-04-17 16:46:39', '2021-04-17 16:46:39'),
(21, 'Bergson Weber Ramos Graciano', 'Mestre Conselheiro Estadual Adjunto', 'galerias/KRA67SaDoLvlopK82xtojVfBe3h2qJ3B90AGTuiA.png', NULL, '2006 -2007', 2, '2021-04-17 16:47:16', '2021-04-17 19:40:52'),
(22, 'Wyldevânio Vieira da Silva', 'Mestre Conselheiro Estadual', 'galerias/57w3HlBloO1gndXSDVMTtwpprLZzxnaFL0OKnHpB.png', NULL, '2007 - 2008', 2, '2021-04-17 16:48:36', '2021-04-17 16:48:36'),
(23, 'Vitor Benevides de Sousa', 'Mestre Conselheiro Estadual Adjunto', 'galerias/RICTRNW508mvXAl72ITIVgnpgXiA7JzUbMhujA4E.png', NULL, '2007 - 2008', 2, '2021-04-17 16:49:06', '2021-04-17 16:49:06'),
(24, 'José Torres Coura Neto', 'Mestre Conselheiro Estadual', 'galerias/XdJGG5xYbemCBELncnb1KltbRzC8HDdL8jhJrO4g.png', NULL, '2008', 2, '2021-04-17 16:50:17', '2021-04-17 17:50:39'),
(25, 'Frederico Nóbrega Lemos', 'Mestre Conselheiro Estadual Adjunto', 'galerias/4h4GHUA9kmGciyIOWmpPpU7ayK5Y7hG233CjSVlr.png', NULL, '2008', 2, '2021-04-17 16:50:48', '2021-04-17 17:11:34'),
(26, 'Frederico Nóbrega Lemos', 'Mestre Conselheiro Estadual', 'galerias/N4pBX8YSMPrx19rLwrKb4ZpAzltDkVNVgnZFdbaN.png', 'Juventude Fazendo o Presente', '2009', 2, '2021-04-17 16:51:18', '2021-04-17 17:11:53'),
(27, 'Pedro Holanda Filho', 'Mestre Conselheiro Estadual', 'galerias/DiL4Vkwng0FVWVrVX0DTfbd0ZprP4v8y1CATRaMy.png', 'Semeando Virtudes, Construindo Ideias', '2009 - 2010', 2, '2021-04-17 16:52:21', '2021-04-17 16:52:21'),
(28, 'Samuel Sampaio Evangelista', 'Mestre Conselheiro Estadual Adjunto', 'galerias/eKxsrTf6mcBmj4cDoztozpV1hsWP1FE7yH980FYw.png', 'Semeando Virtudes, Construindo Ideias', '2009 - 2010', 2, '2021-04-17 16:53:01', '2021-04-17 16:53:01'),
(29, 'Samuel Sampaio Evangelista', 'Mestre Conselheiro Estadual', 'galerias/H6Rgma1Wspfz9gRP5NKa5SzUdLwkJKKdlvXhATp1.png', 'Consolidando Virtudes, Unindo Ideais', '2010 - 2011', 2, '2021-04-17 16:53:55', '2021-04-17 16:53:55'),
(30, 'Leonides Azevedo Cavalcante', 'Mestre Conselheiro Estadual Adjunto', 'galerias/qsObOsaVzhTJE1dfbag2vz8Mhia6zDI0cgHEvCpL.png', 'Consolidando Virtudes, Unindo Ideais', '2010 - 2011', 2, '2021-04-17 16:54:27', '2021-04-17 16:54:27'),
(31, 'Francisco da Rocha Barbosa Segundo', 'Mestre Conselheiro Estadual', 'galerias/3TxeqV0GAPOXh3lUX4glsiaeC9zkjrnKOEjbtHn5.png', 'Trabalhando Virtudes, Edificando Ideais', '2011 - 2012', 2, '2021-04-17 16:55:24', '2021-04-17 16:55:24'),
(32, 'Frankarles Genes Almeida e Sá', 'Mestre Conselheiro Estadual Adjunto', 'galerias/5MOvvPCQJkDIALFDhP8JTcamkX50eoxBCgNZA59r.png', 'Trabalhando Virtudes, Edificando Ideais', '2011 - 2012', 2, '2021-04-17 16:56:01', '2021-04-17 16:56:01'),
(33, 'Lucas Nogueira de Albuquerque', 'Mestre Conselheiro Estadual', 'galerias/sIjuBPLfNlywfUkGFYlbsmiKfCMXyraOq1jxz0SO.png', 'Unidos por DeMolay e Guiados por Virtudes, Lutamos por Ideais', '2012 - 2013', 2, '2021-04-17 16:56:57', '2021-04-17 17:49:21'),
(34, 'Plauto Monteiro Barbosa', 'Mestre Conselheiro Estadual Adjunto', 'galerias/tcaQ2v2NnZ9okHwquq7FaCmAfBOz4fDegbRbkHF7.png', 'Unidos por DeMolay e Guiados por Virtudes, Lutamos por Ideais', '2012 - 2013', 2, '2021-04-17 16:57:38', '2021-04-17 18:41:43'),
(35, 'Juscelino Martins Costa Júnior', 'Mestre Conselheiro Estadual', 'galerias/kdnI8NFQ4Mp9yx5rNwmvSSsz4w3TsrOOSwsL1NC9.png', 'Por uma Ordem DeMolay de Virtudes e Baluartes', '2013 - 2014', 2, '2021-04-17 16:58:31', '2021-04-17 19:38:47'),
(36, 'Rennan Pimentel Batista', 'Mestre Conselheiro Estadual Adjunto', 'galerias/RCqQMz9crckWV3AUcE1gS6UfA8B3jHtJUCWhDI5j.png', 'Por uma Ordem DeMolay de Virtudes e Baluartes', '2013 - 2014', 2, '2021-04-17 16:58:58', '2021-04-17 19:10:12'),
(37, 'Victor Batista Santiago', 'Mestre Conselheiro Estadual Adjunto', 'galerias/469bmH6k6hM8iwos3UV3X21mPyQ3MDthe0MEesiE.png', 'Juntos Podemos Realizar', '2014 - 2015', 2, '2021-04-17 16:59:38', '2021-04-18 13:20:22'),
(38, 'Jonatas José Lobo Oliveira', 'Mestre Conselheiro Estadual', 'galerias/ypTYBVkHaFeUVIzdAuSvOhN1ER2i5YDnBJWL7RuN.png', 'Por DeMolay, Pelo Ceará', '2015 - 2016', 2, '2021-04-17 17:00:16', '2021-04-17 17:00:16'),
(39, 'Francisco Carlos Siqueira de Oliveira', 'Mestre Conselheiro Estadual Adjunto', 'galerias/zmMmfciPB4DmMuRhL77YTGMlz7JcKYXTo2tY1jNt.png', 'Por DeMolay, Pelo Ceará', '2015 - 2016', 2, '2021-04-17 17:00:50', '2021-04-17 17:00:50'),
(40, 'Bruno Henrique de C. Coutinho', 'Mestre Conselheiro Estadual', 'galerias/J4IoFC3e7irrU2Ga6aokoq7VvfI6p3yw9JVAbNZP.png', 'Ceará de Virtudes', '2016 - 2017', 2, '2021-04-17 17:01:42', '2021-04-26 14:13:52'),
(41, 'Rômulo Ravi Lucena Lima', 'Mestre Conselheiro Estadual Adjunto', 'galerias/aIyI5sUkZGVVlKrryCW7vKaPSTV9oPR8TmYo71yO.png', 'Ceará de Virtudes', '2016 - 2017', 2, '2021-04-17 17:02:11', '2021-04-17 17:14:27'),
(42, 'Carlos Ian Bezerra de Melo', 'Mestre Conselheiro Estadual', 'galerias/F2eJXonwIljqJB0i3pvnOkQdSUFPOmrWsKbwaER4.png', 'Soberanos Ideais', '2017 - 2018', 2, '2021-04-17 17:02:55', '2021-04-17 17:13:09'),
(43, 'Hedler Lima Marreiro Júnior', 'Mestre Conselheiro Estadual Adjunto', 'galerias/DRzi9Wx24yA436EqXrCJwTe7DYhnoVerfch9yJhD.png', 'Soberanos Ideais', '2017 - 2018', 2, '2021-04-17 17:03:28', '2021-04-17 17:03:28'),
(44, 'Jan Matheus dos Santos Bandeira', 'Mestre Conselheiro Estadual', 'galerias/MT8Dej5RcFzaOrAqR2hzMiElYEUyJSS8pDMaHRcZ.png', 'Fazer o Bem e Sermos Melhores', '2018 - 2019', 2, '2021-04-17 17:04:02', '2021-04-17 22:58:45'),
(45, 'Igor Almeida Pinheiro', 'Mestre Conselheiro Estadual Adjunto', 'galerias/VqhkbdnzOKUGMRgXa2LISJOhbnIfbnseApWgghbh.png', 'Fazer o Bem e Sermos Melhores', '2018 - 2019', 2, '2021-04-17 17:04:29', '2021-04-17 17:04:29'),
(46, 'Geraldo Daniel Duarte Júnior', 'Mestre Conselheiro Estadual', 'galerias/VwZz0w97FuRIveaXg8rULyvFlsgV2D9wSEiXRzzj.png', 'Inspirando Virtudes', '2019 - 2020', 2, '2021-04-17 17:05:16', '2021-04-17 17:05:16'),
(47, 'Gabriel Noronha Freire', 'Mestre Conselheiro Estadual Adjunto', 'galerias/LDnvspW0uvo1g0HP1wX4fASgONzIciSx9ZxUaNd2.png', 'Inspirando Virtudes', '2019 - 2020', 2, '2021-04-17 17:05:55', '2021-04-17 17:05:55'),
(48, 'João Pedro Batista Pereira Maia', 'Mestre Conselheiro Estadual', 'galerias/VIm0kyfz7vptDA4YazI63mReU1uTMCnBv5XNil2C.png', 'Ceará de Líderes', '2020 - 2021', 2, '2021-04-17 17:06:39', '2021-04-17 17:54:58'),
(49, 'Victor Emanuel Siqueira Conde', 'Mestre Conselheiro Estadual Adjunto', 'galerias/et0pKk7EsphY61pU5er2Zs51ZiOfwSDWlLPf3OsN.png', 'Ceará de Líderes', '2020 - 2021', 2, '2021-04-17 17:07:14', '2021-04-18 13:40:45'),
(50, 'Welton Coelho Cysne', 'Grande Mestre Estadual', 'galerias/4q7N5mDMmYOWpvzbfGW7hNLppJbWTQA3PEt0kluf.png', NULL, '2005', 1, '2021-04-17 17:33:36', '2021-04-17 18:25:24'),
(51, 'Valdelúcio Barbosa Lima', 'Grande Mestre Estadual Adjunto', 'galerias/SJuqa3JculhhtgbQu271vrmoUZ3w2vHeyWyrVaim.png', NULL, '2005', 1, '2021-04-17 17:34:04', '2021-04-26 14:15:23'),
(52, 'Erik Sarriune Cysne', 'Grande Mestre Estadual', 'galerias/DJ5aSg5qS692TS6j9aVfMwTcILS2ICAtMtmuQI1A.png', NULL, '2005 - 2007', 1, '2021-04-17 17:34:28', '2021-04-17 18:33:19'),
(53, 'Fábio Bandeira', 'Grande Mestre Estadual Adjunto', 'galerias/8eW4UGHgsDbSmAKCT4zfLVFmHf9edMoyDFydpQ0u.png', NULL, '2005 - 2007', 1, '2021-04-17 17:34:49', '2021-04-17 18:26:49'),
(54, 'Rafael da Silva Lemos', 'Grande Mestre Estadual', 'galerias/O3DNqmwnOC68cutI9M5TrBgCUcCnYOs9tJo1TCnV.png', NULL, '2007 - 2009', 1, '2021-04-17 17:35:23', '2021-04-26 14:34:40'),
(55, 'José Sátiro Bitu', 'Grande Mestre Estadual Adjunto', 'galerias/jgRpxNYvwr6sKC9mKE6iI0zeavFGFKLYON5HNlxA.png', NULL, '2007 - 2009', 1, '2021-04-17 17:36:02', '2021-04-17 18:39:48'),
(56, 'José Sátiro Bitu', 'Grande Mestre Estadual', 'galerias/JKhvZ8wcwmwB55s96nIYkYIAVqgrPwotw4zS5yiA.png', NULL, '2009 - 2011', 1, '2021-04-17 17:36:25', '2021-04-17 18:40:01'),
(57, 'Antônio Ribamar Saraiva', 'Grande Mestre Estadual Adjunto', 'galerias/LhaJ0wWyBrzMknyvcYXsW9WdQXtiRGSj1Uhvk0iH.png', NULL, '2009 - 2011', 1, '2021-04-17 17:36:53', '2021-04-26 14:13:09'),
(58, 'Antõnio César Morais', 'Grande Mestre Estadual', 'galerias/hb2ERyCC2nrSCefoMoc7JLco1Xhz0EYDGXfvSeHR.png', NULL, '2011 - 2013', 1, '2021-04-17 17:37:17', '2021-04-17 18:35:04'),
(59, 'Valdelúcio Barbosa Lima', 'Grande Mestre Estadual Adjunto', 'galerias/vrQ1oXwRtWgDpAagynvTI4kAnGzrKI6z0NF227lR.png', NULL, '2011 - 2013', 1, '2021-04-17 17:37:40', '2021-04-26 14:15:38'),
(60, 'Paulo Ney Feitosa Petrola', 'Grande Mestre Estadual', 'galerias/sVwMA7tBYz5A6C4MNSvxA0npMpFxWS4LyAoc4O3U.png', 'Antigos Ideais, Novos Desafios', '2013 - 2015', 1, '2021-04-17 17:38:30', '2021-04-26 14:22:21'),
(61, 'Leandro Feitosa Leite Nóbrega', 'Grande Mestre Estadual Adjunto', 'galerias/TbwA7xWtcEYlUPLjV5tG34BhgqXU4e8hzzdjamX1.png', 'Antigos Ideais, Novos Desafios', '2013 - 2015', 1, '2021-04-17 17:38:56', '2021-04-17 18:30:24'),
(62, 'Leandro Feitosa Leite Nóbrega', 'Grande Mestre Estadual', 'galerias/3cAwKKO1z3JbZCSdAUu8a11fxBzZWR0MhMMUIi79.png', NULL, '2015 - 2017', 1, '2021-04-17 17:39:24', '2021-04-17 18:28:43'),
(63, 'Pedro Henrique Martins Pedrosa', 'Grande Mestre Estadual Adjunto', 'galerias/9eQnLeSFszoyC7vN7qbrkXLd7u8CZK9SRwoFpYqw.png', NULL, '2015 - 2017', 1, '2021-04-17 17:39:54', '2021-04-26 14:26:58'),
(64, 'Pedro Henrique Martins Pedrosa', 'Grande Mestre Estadual', 'galerias/H20LGgpZT9mTHlUjzI5x16fSKhib3gfg80gRM8GF.png', NULL, '2017 - 2019', 1, '2021-04-17 17:40:21', '2021-04-26 14:27:18'),
(65, 'José Ernandes Policarpo Bento', 'Grande Mestre Estadual Adjunto', 'galerias/R1bWqmrO1WpSTy23J1Gns3gToj5Lcy9OxXub0tP7.png', NULL, '2017 - 2019', 1, '2021-04-17 17:40:53', '2021-04-17 17:52:43'),
(66, 'José Ernandes Policarpo Bento', 'Grande Mestre Estadual', 'galerias/T8KpxN4pxoMIidgQpngugyC37rqzZEVTfK3oS0Ao.png', 'O Princípio é o que Importa', '2019 - 2021', 1, '2021-04-17 17:41:51', '2021-04-17 17:46:56'),
(67, 'Frederico Nóbrega Lemos', 'Grande Mestre Estadual Adjunto', 'galerias/kJDtICnofJbL47bIP5gdanXP7pr5MqzzS6rFpwvN.png', 'O Princípio é o que Importa', '2019 - 2021', 1, '2021-04-17 17:42:16', '2021-04-17 17:48:13');

-- --------------------------------------------------------

--
-- Estrutura para tabela `midias`
--

CREATE TABLE `midias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `arquivo` varchar(200) NOT NULL,
  `pasta_midia_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `token` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(9, 'danyloalyson1@gmail.com', '$2y$10$2LTu6hHM3gRsAiD9zquLtOA2tSxUJ1tzJNzhScgIP4ARhq50xQ1iO', '2021-03-23 11:56:29');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pasta_documentos`
--

CREATE TABLE `pasta_documentos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `tipo` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `pasta_documentos`
--

INSERT INTO `pasta_documentos` (`id`, `titulo`, `tipo`, `status`, `created_at`, `updated_at`) VALUES
(21, 'CRE', 4, 'desativada', '2021-04-17 18:09:24', '2021-04-17 18:13:33'),
(22, 'Certificado de Referência Estadual', 4, 'ativa', '2021-04-17 18:11:06', '2021-04-17 18:11:06');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pasta_midias`
--

CREATE TABLE `pasta_midias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo_galerias`
--

CREATE TABLE `tipo_galerias` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tipo_galerias`
--

INSERT INTO `tipo_galerias` (`id`, `nome`, `created_at`, `updated_at`) VALUES
(1, 'Grande Mestre Estadual', '2020-04-10 00:00:00', '2020-04-10 00:00:00'),
(2, 'Mestre Conselheiro Estadual', '2020-04-10 00:00:00', '2020-04-10 00:00:00'),
(3, 'Ilustre Comendador Cavaleiro Estadual', '2020-04-10 00:00:00', '2020-04-10 00:00:00'),
(4, 'Oficiais Executivos', '2020-04-10 00:00:00', '2020-04-10 00:00:00'),
(5, 'Mestre Conselheiro Regional', '2020-04-10 00:00:00', '2020-04-10 00:00:00'),
(6, 'ADACE', '2020-04-10 00:00:00', '2020-04-10 00:00:00'),
(7, 'Grande Comendador Cavaleiro', '2020-04-10 00:00:00', '2020-04-10 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `transparencias`
--

CREATE TABLE `transparencias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `ano` int(4) NOT NULL,
  `arquivo` varchar(250) NOT NULL,
  `tipo` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_sisdm` int(11) NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagem` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capitulo_id` int(11) NOT NULL,
  `nivel` int(2) NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `id_sisdm`, `email`, `password`, `imagem`, `capitulo_id`, `nivel`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Danylo Alysson Dias Aquino', 42712, 'danyloalyson1@gmail.com', '$2y$10$zoiAPJ6kK3bXZYptFQ7QCeZLaW3nGCErtzZjQhmq7gB20ia66rv52', '1-danylo-alysson-dias-aquino.jpeg', 1, 3, 'ativo', '7thsX9hazaLpwoAkb2nsBHIaphM4e8GqdXnzQudmRVEpyrRXH6eG4FbsOfsZ', '2020-04-10 00:20:10', NULL),
(2, 'Felipe Bandeira', 13458, 'felipbandeira@hotmail.com', '$2y$10$ZzY4RvLLXgtjDshfp6MDSe9Z9vxtfEP1CTdF7/MlKCDZcsDLyWgoi', '22felipe-bandeira.png', 3, 3, 'ativo', 'dgY0mXwCcwxnmtHRurOllMIghBc66ZnRooYkwsBqjlB0AtoQt40mUxnoeQb0', '2020-04-27 07:00:00', '2021-04-18 01:47:50'),
(3, 'Andres Silva Alves', 74024, 'andresilva01alves@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', 'EwGVyzWyMm0nvETmKA2SEf457bzdTbZDiqjH6Oi0JB5Boz4nlEORuKhoHvsm', '2021-04-15 22:46:59', NULL),
(4, 'Brendo Alencar Barbosa', 74035, 'brendoalencar2@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(5, 'Carlos Augusto Teixeira Alves', 74030, 'gangueextreme@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(6, 'Carlos Eduardo Teixeira Alves', 74031, 'gamercraazy09@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(7, 'Cauan Alves Pinho', 78342, 'cauanalves010@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(8, 'Davy Fernandes Vidal', 78341, 'davyvidalcold11@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(9, 'Diego Silva Ferreira', 74029, 'ferreiradiego72831@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(10, 'Enzo Hariel Ferreira Gaspar', 74032, 'enzoharielferreira@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(11, 'Erick Gabriel Ferreira Gaspar', 74012, 'erickferreiragaspar@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(12, 'Francisco Wendell Sampaio Silva', 87581, 'franciscowendell2014@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(13, 'Guilherme Franco Tavares Albuquerque', 82934, 'guialmtav@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(14, 'Igor Cavalcante Soares', 74027, 'igorcavalcante9929@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(15, 'Joaquim Florentino Brito', 74010, 'joaquimflorentinobrito@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(16, 'José Carlos da Silva Neto', 87583, 'zecacau04@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(17, 'José Eduardo Félix', 87582, 'joseeduardodm1@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(18, 'Júlio César Gonçalves Melo Sousa', 87580, 'juliocgms73@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(19, 'Patrick Guedes Braga', 82935, 'patrickguedesbraga@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(20, 'Paulo Henrique Teixeira Pereira', 78343, 'Paulohenreque6@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(21, 'Pedro Nathan Teixeira Pereira', 74034, 'pedro99nathan@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(22, 'Pedro Victor Mello de Carvalho', 74016, 'pvmc12345@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(23, 'Robson Agostinho Tavares', 74033, 'okaio604@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(24, 'Sílvio Henrique Gurgel Martins', 74019, 'silviogurgel40028922@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(25, 'Thyarlis Paulino Sousa Andrade', 74011, 'thyarlisandrade@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 52, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(26, 'Afonso Daniel Amaral Duarte', 46133, 'afonsodaniel32@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 51, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(27, 'Antônio Alves da Silva Neto', 48201, 'antonio.neto2015@outlook.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 51, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(28, 'álvaro das Chagas Oliveira', 48198, 'alvarochagas11@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 51, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(29, 'Francisco Batista Neto', 66939, 'frcnettodm@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 51, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(30, 'Francisco Fernandes de Oliveira Filho', 48202, 'demolay48202@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 51, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(31, 'Gabriel Jerônimo dos Santos Almeida Calistrato', 48191, 'biel20118@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 51, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(32, 'João Eudes Leite de Oliveira Filho', 87598, 'joaoeudesfilho55@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 51, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(33, 'José Silva Oliveira Filho', 46135, 'mariatereza.aurora@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 51, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(34, 'José William Silva de Souza Júnior', 48195, 'almeidawilliam836@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 51, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(35, 'Paulo Emílio Monte Custódio', 87600, 'paulo.emilio7893@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 51, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(36, 'Rudson Kauan Ribeiro', 87597, 'cs7015747@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 51, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(37, 'Vinicius de Souza Alves', 87599, 'vsouzaalves69@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 51, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(38, 'Matheus Francisco Caldas de Sousa', 43762, 'matheuscaldasoficial@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 50, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(39, 'Antonio Israel Andrade Netto', 75286, 'israel_netto04@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 49, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(40, 'Bruno Rafael Martins dos Santos', 65141, 'brunomartins04@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 49, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(41, 'Cícero Anderson Borges Claudino', 46126, 'anndersonborges62@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 49, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(42, 'Iarley Cabral Falcão', 61684, 'cabraldassaev@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 49, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(43, 'João Mateus Pereira de Jesus', 46129, 'edu.fsm2020.1@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 49, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(44, 'João Pedro Felipe de Oliveira', 85157, 'jpeteroliveira460@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 49, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(45, 'José Eduardo de Almeida Mendes', 87579, 'eduardomendesinfo@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 49, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(46, 'José Ferreira Neto', 65140, 'jose.ferreiranetotrb@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 49, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(47, 'José Kaik Pereira Ferreira', 65142, 'kaik.jkaik@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 49, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(48, 'José Orivan Fernandes de Sousa Neto', 85159, 'simonandinha@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 49, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(49, 'Lucas Nunes Vitalino', 61683, 'agro.lucasvitalino@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 49, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(50, 'Nicolas Gabriel de Sales', 87575, 'nicolassalles416@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 49, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(51, 'Pedro Henrique Lopes dos Santos', 46124, 'phpedrohenriquelopesdosantos@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 49, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(52, 'Pedro Victor Ferreira de Melo Silveira', 87576, 'pedrovictorferr@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 49, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(53, 'Randal Ferreira do Nascimento', 47287, 'randal13@live.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 49, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(54, 'Rangel Silva Martins de Queiroz', 44038, 'rangeldm7@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 49, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(55, 'Raul Rodrigues de Morais Lima', 46130, 'ruirodrigueslima@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 49, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(56, 'Roniele Rodrigues da Silva', 71141, 'roitricolor@live.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 49, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(57, 'Victor Felype Martins', 78832, 'victorflpmartins2001@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 49, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(58, 'Aílson Rodrigues Lobo', 101406, 'eeep.ailsonlobo@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(59, 'Antonio Lucas da Silva Carvalho', 76297, 'lucas.carvalio987@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(60, 'Antonio Maycon de Oliveira Frutuoso', 57627, 'gamerpandaz44@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(61, 'Antonio Montanaro Mendes Alves', 47875, 'montanaromendesalv@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(62, 'Clebson Alves Sampaio', 65477, 'clebsonsampaio2009@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(63, 'Elano Torres Mendes', 101404, 'helanotorres312@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(64, 'Gabriel da Silva Guerreiro', 86512, 'gabrielknigth1@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(65, 'João Lucas Carvalho Jacinto', 78365, 'joaolucasqw@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(66, 'João Pedro Oliveira Araújo', 78364, 'joaopedrocva@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(67, 'João Victor Angelim Nogueira', 76299, 'vitornogueira17legal@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(68, 'João Vitor de Souza Evaristo', 49804, 'eujoaovitorr1@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(69, 'Joelton Rodrigues Sampaio', 65476, 'eeepjoeltonsampaio@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(70, 'Kaike Lorran Alves de Araújo', 101405, 'marlenefacundo@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(71, 'Kauã do Nascimento Barbosa', 57628, 'kauanascimento@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(72, 'Luan Guilherme Noronha da Luz', 47868, 'luanguilhermen.daluzl@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(73, 'Lucas Cavalheiro e Silva Debossan', 65478, 'debossan2002@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(74, 'Luis Matheus de Carvalho Cruz', 86514, 'matheusbv17@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(75, 'Matias da Silva Santos', 47874, 'this2s1998@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(76, 'Mário Jamisson Viana Mendes', 101409, 'jamyssonvianna2002@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(77, 'Pedro Henrique Pereira Facundo', 86515, 'ppereirafacundo22@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(78, 'Pedro Henrique Ribeiro Hipólito', 57632, 'eeepdv.pedroribeiro@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(79, 'Victor Barbosa Neves', 101407, 'victorbarbosanascimento@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(80, 'Victor Jerônimo Age', 57629, 'contato.victorja@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(81, 'Wellison de  Oliveira Lima', 101403, 'eeep.wellisonoliveira@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(82, 'Wender de Sousa Cavalcante', 78368, 'sousawender62@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(83, 'Yuri Nickson do Nascimento de Araujo', 47867, 'eeep.yurenickson@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 48, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(84, 'Nícolas Leite Braga Gomes', 43613, 'nicolasleite_9@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 47, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(85, 'Adebar Alves do Nascimento Neto', 83355, 'Alvesadebar@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(86, 'Antonio Vinicios Lima Oliveira', 83367, 'vinniciuslima12@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(87, 'Auricelio Costa e Silva Neto', 83350, 'auviking2@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(88, 'Carlos Miguel Rocha Leite', 87660, 'leviarkeman865@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(89, 'Cleyton de Oliveira Carneiro', 83363, 'cleytonsantos82043@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(90, 'Douglas Eduardo dos Santos Gomes', 83364, 'edouglas865@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(91, 'Edilson Veras Coelho Neto', 83358, 'edilsonverascoelho@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(92, 'Endrew Oliveira de Almeida', 83370, 'megamam1234@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(93, 'Erisvaldo Texeira dos Santos', 83356, 'erisvaldo2007@bol.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(94, 'Expedito Kevin da Oliveira Bezerra', 83360, 'kevim2006@bol.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(95, 'Gustavo Ferreira de Vasconcelos', 83366, 'gustavovasconcelos1111@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(96, 'Janderson da Silva Albuquerque', 83349, 'jandsilva@bol.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(97, 'João Victor Bessa Silva', 87605, 'demolay87605@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(98, 'João Victor Souza Alves', 83354, 'vitorsousa@bol.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(99, 'João Vitor dos Santos Marques', 87606, 'joaovmarquesce@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(100, 'Joel da Silva Alburquerque', 83348, 'joelsilva@bol.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(101, 'José Anchieta Barcelos Magalhães Neto', 83353, 'anchietaneto@bol.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(102, 'José Augusto Barros Sousa', 83368, 'jose.augustokarate123@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(103, 'Lucas dos Santos Vieira', 83371, 'ls6182315@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(104, 'Lucas Lopes de Lima', 83351, 'lucaslopes@bol.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(105, 'Lucas Modesto Fontenele', 83365, 'lucasmodesto@bol.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(106, 'Luis Gustavo do Nascimento', 83369, 'luisgust@bol.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(107, 'Mario David Ferreira Dias Filho', 83361, 'mariodavi@bol.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(108, 'Nicholas da Silva Guilherme Aragão', 83359, 'guilhermearagao@bol.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(109, 'Silvio Franklim A. Almada', 83352, 'frankilimalmada@bol.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(110, 'Tarcisio Bernadino de Melo Neto', 87604, 'melofilho@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(111, 'Vinicius Bezerra de Carvalho', 87607, 'libnisauloco@icloud.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 46, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(112, 'Agamenon Neres Arrais', 79736, 'viniciusneresarrais8@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(113, 'Antônio Marcos de Morais Carvalho', 58323, 'marcoshungriarc@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(114, 'Brendoly Sousa Lima', 46389, 'demolay46389@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(115, 'Brenno Moura Batista de Souza', 74680, 'brennomoura.2016bm@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(116, 'Caio Sérgio Ferreira Freitas', 14188, 'caiosff@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(117, 'Carlos Henrique Nogueira de Albuquerque', 23563, 'krlim.albuquerque@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(118, 'Cicero Stefano Alves Pereira', 23551, 'stefano65@bol.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(119, 'Clemilson Alison Feitosa Brandão', 69730, 'clemilson-feitosa@msn.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(120, 'Evandro Ferreira Paiva', 32443, 'evandropaiva819@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(121, 'Francisco Eduardo de Oliveira', 101626, 'Franciscoeduardo626@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(122, 'Francisco Saulo Carvalho Oliveira', 74679, 'saulocarvalho@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(123, 'Francisco Vinicius Neres Arrais', 61056, 'viniciusneresarrais@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(124, 'Gabriel Souza de Morais', 79735, 'pombobravinho@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(125, 'George Théo Lima da Costa', 37706, 'georgetheo_dm@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(126, 'Igor Palhares Camara Costa', 23554, 'igorpccosta@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(127, 'Isaac do Nascimento Gomes', 23413, 'isaacgomes4352@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(128, 'José Edilson da Silva Junior', 85531, 'junioredilson1020@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(129, 'Lucas Diniz Fernasdes', 23548, 'lucasdinizfernandes120361@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(130, 'Lucas Nogueira de Albuquerque', 23545, 'lucasdmceara@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(131, 'Lucas Rodrigues de Souza', 30875, 'luquinhasceara@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(132, 'Marcus Vinicius Ribeiro Sousa', 79733, 'marcusvinicius871@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(133, 'Matheus Antonio Alex Lima da Silva', 55040, 'matheusalex2121@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(134, 'Matheus Moura Amorim Andrade', 75949, 'matheus.moura2018@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(135, 'Nathanael Freitas da Silva', 14184, 'demolay14184@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(136, 'Pedro Felipe Costa do Vale', 30879, 'pfdemolay@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(137, 'Pedro Henrique Pereira de Carvalho', 46388, 'perique203@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(138, 'Raul Ribeiro da Silva', 23558, 'raulribeiro_159@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(139, 'Rodrigo Oliveira da Silva', 30876, 'rodrigooliveiradm01@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(140, 'Rodrigo Viana Alves', 23560, 'rodrigviana_alves@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 45, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(141, 'Alessandro Santos Ribeiro', 87585, 'as4833160@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(142, 'Antonio Anildo Oliveira Pires', 38278, 'piresnildo@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(143, 'Antonio Batista Marreiro Neto', 79373, 'pauladn1@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(144, 'Antonio Guilherme Alves de Lima', 84989, 'guilhermeadl04@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(145, 'Antônio Raimundo Rocha Mendonça', 41238, 'antonioraimundo007@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(146, 'Arthur Rennan Maciel Marinho', 74684, 'arthurrennansp@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(147, 'Arthur Ulisses Viana Ferreira Lima', 56682, 'arthurulisses1@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(148, 'álvaro Magalhães de Magalhães', 65148, 'alvaromag@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(149, 'Carlos Henrique Sousa Alencar', 41231, 'carlosshalencar@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(150, 'Davi de Sousa Alves', 84992, 'validapokemongo@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(151, 'David Emanuel Freitas Bastos', 70250, 'bastosdavid831@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(152, 'Domingos Marcos Pires Coelho Filho', 79371, 'marcosfilho7271@gmailcom', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(153, 'Douglas Araújo Ribeiro', 34078, 'douglasadm23@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(154, 'Emerson Lima Pinto', 56683, 'elp4102@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(155, 'Fernando César Félix Honorato', 44899, 'fernandodemolay2016@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(156, 'Fernando Marley Alcantra da Rocha', 56681, 'marleyfernando458@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(157, 'Francisco Bruno Cardoso Ferreira', 87586, 'bf24241621@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(158, 'Francisco Herrison Mancinne Gomes Freitas', 44897, 'herrison.mancinne@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(159, 'Francisco Igo Dias Uchôa', 38279, 'igodias00@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(160, 'Francisco Janderson Sousa Severo', 87587, 'sousajanderson73@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(161, 'Francisco Lynconl Uchôa Câmara', 41240, 'lynconlcamara@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(162, 'Francisco Matheus Furtado Soares', 47921, 'mateuscoelho@msn.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(163, 'Francisco Rogério Rocha do Nascimento', 79370, 'rogeriorocha616@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(164, 'Gabriel Sousa Ferreira', 43519, 'gabrielfreitas2387@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(165, 'Havillon Barros Freitas', 79369, 'havillonbfreitas@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(166, 'Hedler Lima Marreiro Junior', 34065, 'hedlermarreiroo@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(167, 'João Lucas Castro Pereira', 79372, 'joaolucascastropereira@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(168, 'João Marcos Lima Barreto', 87588, 'cap816@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(169, 'Jorge Enzo Honorato Silva', 65150, 'jorgeenzo.honorato@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(170, 'José Vinicius Silva de Assis', 59181, 'viniciuscaninde15@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(171, 'Juan Kevin Ferreira Paz', 59184, 'juankevin174@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(172, 'Kauã Carlos Silva', 65149, 'kauacarlos326@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(173, 'Lucas de Almeida Carlos', 44900, 'lucascarlos945@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(174, 'Lucas Gabriel Freitas Bastos', 74688, 'lg3798078@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(175, 'Lucas Ribeiro Cavalcante', 34625, 'umlucasribeiro@me.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(176, 'Marcos Mateus Neves Coelho', 38005, 'mateus360@yahoo.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(177, 'Messias Eric Castro Sá Silva', 41230, 'eric-castro866@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(178, 'Pedro Nivaldo Freitas Pinheiro', 59178, 'pedronivaldo11@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(179, 'Pedro Ykaro Viana Fonseca', 84990, 'pedroykarodm@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(180, 'Rafael Felipe Sousa Ferreira', 84991, 'rafaelfelipe2614@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(181, 'Raimundo Moreira Dias Neto', 41239, 'moreiraddias@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(182, 'Samuel Lincoln Pinheiro Pinto', 47919, 'samuel_lp2@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(183, 'Vinicius Vieira Saraiva Martins', 87590, 'viniciussaraiva@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(184, 'Vitor Hugo dos Santos Barbosa', 87591, 'santosvitor@iCloud.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 44, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(185, 'Anderson Silva Sousa', 65788, 'andersonsilva98@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 43, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(186, 'Antoio Maycon de Oliveira Frutuoso', 87827, 'mayconfutuoso2007@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 43, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(187, 'Antonio Kayque dos Santos Prado', 47930, 'kayquepradodm@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 43, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(188, 'Caio dos Santos Franco', 65796, 'caiojucassantos33@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 43, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(189, 'Carlos Jailson Ferreira Gabriel', 30249, 'demolay30249@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 43, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(190, 'Cauan Gomes Pereira', 82271, 'cauangomes0310@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 43, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(191, 'Diogo Vieira Antunes', 65783, 'fornoalenha@hotmail.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 43, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(192, 'Douglas Araujo Pereira', 65790, 'ciceromaronio@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 43, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(193, 'Jacó de Oliveira Januário', 65784, 'jacojanuario3514@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 43, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(194, 'João Carlos Prado Filho', 65791, 'jojocarlos757@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 43, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(195, 'João Paulo Viração Rodrigues', 65794, 'jpvr2442@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 43, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(196, 'José Alysson Silva dos Santos', 65787, 'arqueiro.ce@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 43, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(197, 'Lázaro Henrique Pereira', 47927, 'adm.lazarohenrique@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 43, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(198, 'Lucas Hyan Mendes Carneiro', 82270, 'lucascarneiro44463@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 43, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(199, 'Matheus Ribeiro Cunha', 65789, 'matheusribeirocunha2011@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 43, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(200, 'Matheus Teixeira Dias', 65792, 'matheusdias025@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 43, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(201, 'Pedro Henrique Silva Antunes', 65797, 'pedrinhoextorado@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 43, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(202, 'Pedro Ryan de Melo Lima', 65793, 'pedroryan3514@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 43, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(203, 'Wanderli Felipe Lavor', 65785, 'wanderli3514@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 43, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(204, 'Airton Francisco Rocha Cormineiro', 56702, 'airtonjake12@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 42, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(205, 'Anry Alves dos Santos', 101624, 'anryalvesaraujo@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 42, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(206, 'Carlos Gabriel da Silva Marques', 87631, 'marquesgabriel1210@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 42, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(207, 'Francisco Hércules dos Santos Silva', 69040, 'hercules.silvaa@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 42, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(208, 'Francisco Kiverson Bento da Silva Texeira', 79739, 'kiversontexeira@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 42, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(209, 'Isaac Almeida Sousa Urano', 69042, 'isaacurnx@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 42, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(210, 'ícaro Cipriano de Araújo', 78355, 'icarociprianoaraujo@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 42, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(211, 'João Pedro Almeida de Oliveira', 83272, 'caio.dantas.gomes@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 42, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(212, 'José Emanuel Damasceno Nogueira', 69044, 'emanueldamasceno10@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 42, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(213, 'Kauã Silva Pereira', 73222, 'kauasilvsa@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 42, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(214, 'Lucas de Lima Reis', 87630, 'doritosgmer5@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 42, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(215, 'Luiz Vinícius Russo Oliveira', 87629, 'luizrusso704@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 42, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(216, 'Pedro Igor de Araújo Ceris e Santos', 61023, 'pedro_ceris@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 42, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(217, 'Pedro Paulo Ceres e Santos Franco', 73224, 'pedropaulogamer8@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 42, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(218, 'Rafaell Bruno Caetano Cavalcante', 73221, 'rafaell.bruno@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 42, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(219, 'Victor Augusto Amorin Nascimento', 56700, 'augusto2014victor@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 42, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(220, 'Vitor Daniel Pinto Oliveira', 69037, 'vitord10.vd@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 42, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(221, 'Wadson Cardoso Lima', 69041, 'wadsoncardoso2@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 42, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(222, 'Adson Lima Dias', 83274, 'adson98594@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(223, 'Alex Gonçalves Monteiro', 83281, 'alex123eletro123@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(224, 'Arthur Batista dos Santos Leite', 83275, 'gislenecedro@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(225, 'Bruno Adryelison Guedes dos Santos', 87613, 'adryelisonepfam@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(226, 'Bruno Emanoel de Lima Barros', 60388, 'brunodemolay733@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(227, 'Carlos Henrique Nunes da Silva', 65465, 'carlosnunes43@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(228, 'Celton Breneh Rodrigues Gama', 70730, 'celtonf2tok@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(229, 'Diego Maciel Torres', 87608, 'diegomaciel@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(230, 'Emanoel Sobreira Oliveira Moura', 65466, 'emanoelmoura@outlook.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(231, 'Francisco Jardson de Oliveira Marques', 55677, 'jardson_b@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(232, 'Gabriel de Lima Lopes', 70723, 'gabriellopeslima6782@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(233, 'Gabriel Ferreira de Castro', 60399, 'ggabrielferreira@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(234, 'Gabriel Sales Ferreira', 83283, 'gracienesal@yahoo.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(235, 'Gerdson Ryan de Araújo Lima', 73229, 'gerdsonaraujo02@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(236, 'Ian Gomes Germano', 73228, 'ianggmoto@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(237, 'Igor Bezerra Lúcio', 87610, 'igor.bezerra.lucio@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(238, 'Igor Nogueira Bezerra', 70726, 'igor2013bezerra@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(239, 'Igor Silva de Morais', 55678, 'igorsilvademorais@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(240, 'Ismael Lima Viana', 60392, 'ismaelvianalima@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(241, 'ícaro Bezerra Viana', 65459, 'icaroevil123@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(242, 'Joadson Aquino do Nascimento', 55679, 'joadsonaquino_@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(243, 'Joaquim Mauro de Moura Neto', 65454, 'mauromoura2205@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(244, 'João álvaro dos Santos Ferreira', 65461, 'joaoalvarodossantos01@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(245, 'José álvaro Castro de Souza', 87615, 'josealvaro@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(246, 'José Bruno Vieira Bezerra', 83282, 'cristina1nvb@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(247, 'José Cleriton Leite Neto', 87609, 'cleriton.neto@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(248, 'José Gabriel de Oliveira Lima', 70729, 'amuzilima123@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(249, 'José ítalo Matos Farias', 65456, 'italofarias897@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(250, 'Justino Henrique de Aquino Bezerra', 55681, 'justino.eletro@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(251, 'Kaio Emanuel Lima de Matos', 60395, 'kaaiodematos@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(252, 'Luan Brazil Felipe', 73230, 'luan48734@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(253, 'Luan de Souza Lima', 83276, 'luan93621@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(254, 'Lucas Chagas Lima', 83277, 'lima07825@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(255, 'Lucas Mota Lima Matos', 60389, 'zefilhocedro@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(256, 'Luis Gustavo Lima Sousa', 73231, 'luisgustavolimasousa@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(257, 'Luiz Eduardo Pereira de Morais', 55675, 'dudu.morais2016@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(258, 'Marcos Vinicio Lima', 83280, 'vinicoprivado@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(259, 'Mateus Diniz de Oliveira', 83278, 'mateusdiniz.if@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(260, 'Matheus do Nascimento Parnaíba', 60393, 'matheusparnaiba37@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(261, 'Mário Carneiro de Freitas Neto', 70724, 'mario.neto68@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(262, 'Pedro Arthur Silva de Souza', 70725, 'pedroarthur2112@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(263, 'Pedro Henrique Alves das Neves', 65458, 'claudivan15014_matos@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL);
INSERT INTO `users` (`id`, `name`, `id_sisdm`, `email`, `password`, `imagem`, `capitulo_id`, `nivel`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(264, 'Rafael Thomaz de Lima', 87611, 'thomazrafael82@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(265, 'Raimundo Gonçalves de Sousa Júnior', 87612, 'dream.plus@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(266, 'Rosivan Bezerra das Chagas Filho', 83279, 'rosivanfilho05@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(267, 'Wylkuem Vitor Bezerra', 73227, 'wylkuemvitor@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 41, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(268, 'José Lucas Negreiros Lima', 43122, 'lucaslima015@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 40, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(269, 'Kaio Martins Gomes', 36610, 'kayomartins33@yahoo.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 40, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(270, 'Lauro Brandão Lima Neto', 36603, 'laurobrandaoneto@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 40, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(271, 'Lucas Alves Sampaio', 43121, 'lucasalves.eto@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 40, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(272, 'Matheus Pedrosa Lima', 38242, 'matheus.lima12@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 40, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(273, 'Nivando Ferreira Feitosa', 38241, 'demolay38241@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 40, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(274, 'Adonai Emanuel Roque Campos', 92017, 'eadonai255@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 39, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(275, 'Alexandre Nascimento Borges', 91424, 'alexandreborges482@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 39, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(276, 'Anderson de Carvalho Vasconcelos', 89043, 'andersonvasconcelosfpi06@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 39, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(277, 'Arthur Adonai Santos Lourenço', 92633, 'arthuradonai09@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 39, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(278, 'Daniel de Carvalho Vasconcelos', 91456, 'dahsjxbov@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 39, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(279, 'Devilson Alisson dos Santos', 91423, 'devilson172@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 39, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(280, 'Diego Eduardo Feitosa', 91499, 'diegoeduardofeitosa622@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 39, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(281, 'Emanuel Weskley Santos Ribeiro', 91707, 'emanuelweskley323@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 39, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(282, 'Francisco Dalton Bezerra Feitosa', 91355, 'daltonfeitosa2004@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 39, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(283, 'Glauber Robson Maciel Rodrigues', 90963, 'glauber.redessociais@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 39, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(284, 'João Agostinho de Souza Neto', 90281, 'joaonetoofc@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 39, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(285, 'Juda Sampaio de Pinho', 91445, 'judahsampaio@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 39, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(286, 'Lucas Clever Magalhães Martins', 89519, 'lucasclever76@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 39, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(287, 'Matheus Leite Melo Barreto', 90969, 'matheusleite1166@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 39, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(288, 'Onofre Henriquy de Sá Santos', 92978, 'henriquy.batista@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 39, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(289, 'Pedro Jardel Amaral Cavalcante', 90143, 'jardelcavalcante18@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 39, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(290, 'Victor Gabriel Barbosa Fagundes', 91332, 'vf93443@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 39, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(291, 'Vinicius Heine Ramalho Lourenço', 89845, 'viniciushainne52@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 39, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(292, 'Vinícius Rodrigues de Lima', 103301, 'vinipexim.08@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 39, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(293, 'Alexandre Fujii Ferreira dos Santos', 88809, 'alexandrefujiicrato@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(294, 'Anterson Bezerra Lessa', 3498, 'antersonlessa@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(295, 'Antonio Cesar Morais Junior', 3479, 'cesarmoraisjunior@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(296, 'Antonio Lucas de Souza Gonçalves', 78357, 'antioniolicas56@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(297, 'Arnaldo José Alves Neto', 37608, 'arnaldoalves764@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(298, 'Brenner Alexandre Vieira', 42708, 'brenner.alexandree@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(299, 'Carlos Gomes Alves', 5469, 'carlosgomesdm@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(300, 'Carlos Marx Matias Freire', 70144, 'cr.marx55@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(301, 'David da Silva Borges', 88808, 'jamescidrao@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(302, 'Edgar Andrade Sousa Filho', 34879, 'edgar_filho7@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(303, 'Enio Alencar Bezerra Antão', 9797, 'enio_alencar@yahoo.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(304, 'Enzo Feitosa Peixoto', 47288, 'enzocpeixoto@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(305, 'Eric Tadeu de Oliveira Lacerda', 45253, 'erictol2002172@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(306, 'Francisco Erismar de Sousa', 5468, 'erismarmecanico@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(307, 'Francisco Lucas de Sousa Barros Primo', 64262, 'francisco.lucas.527@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(308, 'Frederico Nóbrega Lemos', 749, 'fredlemosdm@hotmail.com', '$2y$10$CPqqB4AkF.8505CryjnrQeIshhIMEw8.C8SE1/tEFyUsw8k66oPSm', '3082frederico-nóbrega-lemos.jpeg', 38, 3, 'ativo', '', '2021-04-15 22:46:59', '2021-04-19 04:36:55'),
(309, 'Italo Rafael Rodrigues Bezerra Tavares', 19588, 'irafaelbtavares@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(310, 'Joao Paulo Rodrigues Bezerra Tavares', 19591, 'mr.johnny_jp@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(311, 'João Bosco de Lima Filho', 70143, 'imaginemalis211@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(312, 'João Leite Machado Neto', 6846, 'joaomachadodm@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(313, 'João Marney Sales Silva', 47289, 'heymarney@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(314, 'João Rodrigues de Barros Primo Neto', 33218, 'joao.rbpn@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(315, 'Johny Taumaturgo Sampaio de Souza', 3494, 'johnytaumaturgo@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(316, 'Jonatas José Lobo Oliveira', 17029, 'jonatasjosepet@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(317, 'Jose Sarto Fulgencio de Lima Filho', 19597, 'sarto_filho@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(318, 'Leandro Feitosa Leite Nóbrega', 3482, 'leandro_feitosa@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(319, 'Lucas da Silva Marques', 37610, 'demolay37610@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(320, 'Mardonio Freitas Rodrigues Ferreira', 85439, 'mardoniofreitas2018@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(321, 'Matheus Bezerra de Brito', 88806, 'uberbrasil955@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(322, 'Matheus de Sousa Barros Primo', 64263, 'matheusprimo012@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(323, 'Mauro Lustosa Oliveira', 64259, 'maurocrato@yahoo.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(324, 'Patrick Gomes Rodrigues', 30881, 'patrickgomesdm@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(325, 'Paulo Colares de Melo Piancó', 59172, 'paulopianco10@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(326, 'Pedro Eduardo Fulgêncio Alves', 56706, 'alvespedro2002@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(327, 'Pedro Eugênio Ribeiro Leite Tavares', 30255, 'pedroeugeniorlt@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(328, 'Pedro Firmino Gomes Neto', 3483, 'pedrofirminodm@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(329, 'Pedro Henrique de Araujo Feitosa', 30259, 'pedrohfeitosa98@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(330, 'Pedro Lucas Araujo Pinho Pierre', 41206, 'pedrolucaspierre@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(331, 'Renato Moraes da Silva', 3503, 'renatodemolay527@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(332, 'Rômulo Ravi Lucena Lima', 33221, 'ravilucena@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(333, 'Samir Ferreira Neves', 3484, 'samirnevesdm@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(334, 'Shalon Ruan Lima Saraiva', 11227, 'shalonruan@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(335, 'Tarcísio Benício de Almeida Filho', 18707, 'tarcisiobenicio@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(336, 'Valter Witalo Nelo Lima', 5465, 'valterlima.adv@live.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(337, 'Wesley Oliveira Amorim Filho', 88807, 'demolay88807@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 38, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(338, 'Adriel Bruno de Vasconcelos Bezerra', 74916, 'adrielbruno.vb@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 37, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(339, 'André Santos Castelo', 87655, 'andresanti1213@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 37, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(340, 'Daniel de Sousa Silveira', 72491, 'dsilveira641@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 37, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(341, 'Davi Macedo Moreira', 82003, 'temperodasandra28@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 37, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(342, 'Farney de Sousa Pereira', 63243, 'farneyp@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 37, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(343, 'Guilherme Tell Macedo Moreira', 82004, 'aline.barr@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 37, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(344, 'Hairon Lemos Rocha', 72493, 'hairon.lemos@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 37, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(345, 'Harion Lemos Rocha', 72492, 'harionleemos@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 37, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(346, 'ícaro Cidrão de Oliveira Pereira', 87656, 'demolay87656@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 37, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(347, 'Joao Pedro de Lima Oliveira', 78374, 'jpedrooliveira@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 37, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(348, 'João Assis Miguel de Lima Filho', 74918, 'noxyst12@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 37, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(349, 'João Gabriel Almeida de Albuquerque', 68393, 'biel91054@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 37, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(350, 'João José de Araújo', 30273, 'jjoao.araujo81@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 37, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(351, 'João Pedro Araújo Uchoa', 56705, 'dassalt@rocketmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 37, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(352, 'João Pedro Marques Thé', 74919, 'joaopedrothe@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 37, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(353, 'Luan Gomes Miguel de Lima', 74917, 'luandmglima@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 37, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(354, 'Luis Eduardo Rodrigues de Lima', 83636, 'leduardo537@yahoo.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 37, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(355, 'Maicon da Silva Lemos', 82005, 'maiconlemos4456@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 37, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(356, 'Pedro Lucas da Silva Vieira', 72496, 'rolimvieira90@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 37, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(357, 'Reno Lucas de Oliveira Gonçalves', 87659, 'renolucas2014@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 37, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(358, 'Rômulo Pereira Galvão', 72087, 'romulopgalvao@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 37, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(359, 'Michael Robert Martins Rocha', 100721, 'michaelrmrocha@gmail.com', '$2y$10$CtHL2GuyCJUFQGX7/LKtbOonndjiXaWH.HNNXZouxYU73n6BnC3ha', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(360, 'Abraao Barbosa Cavalcante', 19810, 'abcavalcanteg@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(361, 'Alisson Abreu Silva', 11636, 'alissonabreu_@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(362, 'Arthur Martins Mourão Landim', 64269, 'arthurmmlandim@yahoo.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(363, 'Ângelo Holanda Aragão', 84516, 'angelo.ha@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(364, 'Belmondo Rodrigues Aragao Jr.', 9121, 'belmondo.rodrigues@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(365, 'Brenno Mendonça Macial de Alencar', 36933, 'demolay36933@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(366, 'Carlos Gabriell Silva Cidrão', 74682, 'carlosgabriell.silva2005@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(367, 'Charles Elton de Souza Aquino', 2173, 'charles_dml@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(368, 'Davi Rolim de Castro', 56664, 'davidecastro100599@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(369, 'Felipe Anthony Nogueira Gonçalves', 73061, 'felipeanthony016@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(370, 'Francisco da Rocha Barbosa Segundo', 11627, 'barbosaa_s@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(371, 'Francisco Gleydson dos Reis Matos', 26266, 'f.gleydson@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(372, 'Francisco Mario Bernardo da Silva Filho', 56661, 'mariomariobernardo@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(373, 'Francisco Wellington Lima da Silva Filho', 26270, 'wellingtonlimaf1@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(374, 'Fúlvio Moreira Xavier', 44685, 'fulvio11@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(375, 'Gabriel Nobre da Silva', 78331, 'gabriesponja2012@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(376, 'Gabriel Rufino Pinheiro de Sousa', 84517, 'gabrielrps007@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(377, 'João Augusto de Oliveira dos Santos', 64266, 'jaugustoos23@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(378, 'João Marcelo Gonçalves Cordeiro de Oliveira', 41868, 'joao_marcelo95@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(379, 'João Pedro Duarte Queiroz', 84512, 'sorayaduarte02@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(380, 'João Victor Noronha de Oliveira', 78337, 'joaovictornoronhadeoliveira@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(381, 'Jonathan Marques de Vasconcelos', 84515, 'jonathanmarquesvasconcelos@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(382, 'Jose Torres Coura Neto', 6331, 'jtc_neto@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(383, 'Jose Wilson de Oliveira Magalhaes', 44684, 'jose_vitoria@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(384, 'José Mirton Barroso Ferreira Filho', 41869, 'mtbarroso3@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(385, 'Leonardo Jorge Pereira', 30380, 'leonardoscarcela@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(386, 'Luiz Sergio Rocha Silva', 14171, 'luizsergio_dm@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(387, 'Mateus Balbuche Paraguassu', 36932, 'paraguassueceme@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(388, 'Paulo Augusto Sales Cavalcante Filho', 9123, 'advbarbosacavalcante@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(389, 'Ramon de Sousa Silva', 26292, 'ramonvup@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(390, 'Salomão Daniel Araújo Pontes', 61834, 'salomaodaniel23@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(391, 'Samuel Plauto Monteiro Barbosa', 11630, 'samuelplautobn@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(392, 'Samuel Sampaio Evangelista', 18125, 'samuelsampaio.adv@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(393, 'Thiago Bento Ribeiro', 4461, 'ribeirosilva.tbr@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(394, 'Tulio Luiz Sampaio Damasceno de Sousa', 49523, 'tuliomail88@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(395, 'Vinicius Guimarães Matos', 73063, 'viniciusguima12@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(396, 'Vitor Saraiva das Neves', 72181, 'neves.vitor1421@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 35, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(397, 'Alberto Oliveira Galvão Filho', 768, 'galvaoalberto@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(398, 'André Arruda Leitão', 74690, 'viniciusleitao@yahoo.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(399, 'Arthur Luis Honorato Freitas', 61026, 'arthurlhfreitas@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(400, 'Bergson Weber Ramos Graciano', 4465, 'bergsonramos0@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(401, 'Bruno Henrique de Cavalcante Coutinho', 14176, 'brunohenriqueolivercoutinho@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(402, 'Bruno Vinícius Alves Monte', 68401, 'brunoviniciusmonte@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(403, 'Caio Augusto Nojoza Santiago', 33815, 'nojozasantiago@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(404, 'Cesar Augusto Nery de Siqueira', 34063, 'ofuscato@bol.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(405, 'Christopher Feitosa do Monte', 74695, 'christopherfeitosa17@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(406, 'Davi Alves Leitão', 41865, 'davi.alvesle@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(407, 'Davi Feitosa Gonçalves', 84693, 'painlactuse@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(408, 'Derblaz Vieira Barbosa', 55977, 'Angelica_mvb@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(409, 'Durval Bernardo da Cunha', 79744, 'durval2020@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(410, 'Edduardo Henrique Gadelha Queiroz da Silva', 19309, 'edduardodemolay@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(411, 'Ewerton Serafim de Brito', 19308, 'ewertonsbrito@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(412, 'Fabio Henrique Coelho Lino', 101617, 'fabiohcoelholino@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(413, 'Felipe Dayvid Virginio Silva Filho', 68391, 'felipe.dayvid.f@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(414, 'Francisco Breno Melgaço Oliveira', 101619, 'brenomelgaco12@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(415, 'Francisco Gomes Andrade', 105814, 'franciscogomes14@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(416, 'Francisco Willame Morais Neto', 41864, 'willame.morais@bol.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(417, 'Gabriel de Oliveira Marreiros', 34621, 'gabrielmarreiros.gm@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(418, 'Gilfran Ribeiro da Silva', 767, 'contato@gilfran.net', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(419, 'Giovanni Andrade Lima', 771, 'glima.ot@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(420, 'Igor Leitao Chaves Cruz', 14160, 'igorleitaocruz@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(421, 'Iuri Stephan Vasconcelos Costa', 68392, 'iurivasconcelos.12@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(422, 'Joaquim de Paula Barros Sousa', 84692, 'joaquimpbs2@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(423, 'João Pedro Almeida Bezerra', 68394, 'joaopedro011102@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(424, 'Jose Gleilson Galeno Silva', 6975, 'gleylsongaleno@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(425, 'José Arthur Façanha Xenofonte Filho', 9122, 'arthurxenofonte@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(426, 'José Guilherme Morais', 41863, 'moraisjoseguilherme@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(427, 'Juarez Bruno Soares Santiago Neto', 34626, 'demolay034626@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(428, 'Lucas Tavares de Oliveira', 74694, 'lucas_tavares2014@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(429, 'Luis Henrique Honorato Freitas', 62666, 'luislhhonorato@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(430, 'Marcelo Jansen de Siqueira', 105486, 'marcelojansen@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(431, 'Marildo Hermenson Costa Martins', 33817, 'marildohermensoncostamartins@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(432, 'Matheus Chagas de Oliveira', 44477, 'matheus-995@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(433, 'Matheus de Saldanha Lima Bezerra', 68396, 'matheussaldanhalb@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(434, 'Matheus Lucas Nogueira Izídio', 42233, 'matheusdm_ce@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(435, 'Matheus Messi de Sousa Oliveira', 101616, 'fabiano.souza01@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(436, 'Michael Dhyani Hakim Fernandes', 26271, 'admdhyani@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(437, 'Nicholas Matheus Matias Vasconcelos', 68397, 'nicholasmdemolay@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(438, 'Paulo Ney Feitosa Petrola', 769, 'paulopetrola@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(439, 'Pedro Cauã Mota Sales', 59598, 'paulovagner779@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(440, 'Pedro Felipe Araújo Cavalcante de Oliveira', 33813, 'pedro.oliveira.demolay@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(441, 'Pedro Paulo Sousa Batista', 41862, 'pp_2001@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(442, 'Pedro Victor Cavalcante Santos', 74689, 'victorsaxtenor@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(443, 'Pedro Vinicius Leal Vasconcelos', 101615, 'luziaynne@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(444, 'Rafael Costa da Silva', 14162, 'rcosta.dsilva@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(445, 'Raimundo Celio Rodrigues Neto Bezerra', 101618, 'celioneto657@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(446, 'Raul Siqueira Cysne', 79742, 'raulsiqueiracysne@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(447, 'Renan Lucas Gomes', 65786, 'renang2505@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(448, 'Renato Melo Collyer', 56703, 'renatocollyer.rc@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(449, 'Rennan Pimentel Batista', 18112, 'rennan1318@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(450, 'Ricardo Wagner Muniz Lima', 18114, 'ricardowmuniz@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(451, 'Roberto Aaron Marques Braga', 26294, 'aaronmarquesee@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(452, 'Rodrigo Pinheiro Moura de Oliveira', 63244, 'rodrigo.pinheiro.rpmdor@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(453, 'Rômulo Wirlon Inácio Gonçalves', 30885, 'rwirlon@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(454, 'Samuel Sidarta Ferreira Maia', 11635, 'ssfm.fidelitas@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(455, 'Sergio Ricardo Marques Pessoa Filho', 68400, 'serginhofilho35@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(456, 'Thiago Cavalcante de Vasconcelos', 34634, 'thiagocvasconcelos@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(457, 'Tulio Franco Nogueira', 26287, 'sdsdkf@sd.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(458, 'Vagner Mota de Souza', 53297, 'vagnermota7@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(459, 'Victor Kirov Holanda Barros', 36929, 'kirov01@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(460, 'Vinicius Juca Policarpo', 26293, 'viniciusjpolicarpo@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(461, 'Vitor Jucá Policarpo', 18128, 'marta_juca@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(462, 'Walberty Nepomuceno Ferreira', 55219, 'walberty.nepomuceno@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(463, 'Willy de Souza Felix', 84165, 'willy-vr3@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 34, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(464, 'Andrei Teixeira Cavalcante', 35149, 'andreiteixeira2005@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(465, 'Antonio Duarte Neto', 15188, 'antonioduartent@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(466, 'Bruno Sarmento Cavalcante', 2494, 'bscavalcante@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(467, 'Bruno Vinicius de Carvalho', 70136, 'brunovinicius0333@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(468, 'Carlos André Ricarte de Araújo', 2491, 'carlos.andrechevalier@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(469, 'Carlos Anthonyo Andrade Maroró Santana', 101631, 'carlosanthony459@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(470, 'Cauã Alexandrino Araújo Basili', 35151, 'cauaalexandrino@icloud.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(471, 'Charles Ibraim Cardoso Duarte', 37042, 'ibraimcardoso60@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(472, 'Diego Gomes de Souza', 61820, 'adm.diegomes@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(473, 'Dimitre Paulino Aureliano', 34641, 'dimitrepaulino9@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(474, 'Douglas Paulo de Carvalho', 32432, 'douglas13579@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(475, 'Elton Ferreira Rodrigues', 34893, 'eltonferreira62@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(476, 'Fabio Renan Uchoa', 42507, 'fabiorenan110@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(477, 'Felipe de Souza Vicente', 17026, 'felipesouzavicente@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(478, 'Francisco Diego Sarmento da Silva', 2498, 'diegosarmentojus@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(479, 'Gabriel de Oliveira Bezerra', 34383, 'mcpemaster620@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(480, 'Gabriel Nogueira Leme', 101627, 'lemegabriel86@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(481, 'Gabriel Victor de Lima Alves', 57708, 'bielvictor1000@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(482, 'Geraldo Daniel Duarte Junior', 63753, 'juniorduartedm@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(483, 'Gleuberton Cartaxo Matos Amorim', 18626, 'gleu.demolay@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(484, 'Guilherme Sousa Duarte', 101634, 'guilhermesousa2702@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(485, 'Gustavo Bastos Feitosa Rodrigues', 56628, 'gustavobastos512@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(486, 'Helio Ferreira Oria Neto', 85165, 'helionetooriah@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(487, 'Hudson Correia Sabino', 32433, 'hudson_sabino@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(488, 'Igor Bandeira Pereira Leite', 26281, 'igorbpl@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(489, 'Joao Pedro Osawa Vaz Eduardo', 13579, 'jposawa@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(490, 'João Lucas Amaro de Morais', 70135, 'joaolucasamarodemoraia@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(491, 'João Pedro Araújo Holanda', 34257, 'jparaujoholanda@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(492, 'João Pedro de Oliveira Almeida', 101633, 'joopedrodeoliveiraalmeida1@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(493, 'Jose Wilson Feitosa Rodrigues Júnior', 81140, 'jrfeitosa@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(494, 'José Breno Cardoso Duarte', 63755, 'brenoconta2duarte@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(495, 'José Ferreira Viana Neto', 85163, 'josefr2216@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(496, 'José Wiron Barbosa Procopio', 8862, 'wirondm@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(497, 'Juan Alcântara Araújo', 101629, 'alcantarajuan233@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(498, 'Leonardo Vieira Rodrigues', 74905, 'rodriguesleonardo07@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(499, 'Luan Vieira de Lima', 30251, 'demolay30251@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(500, 'Lucas Alves de Oliveira', 70134, 'lucasalves1998.la@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(501, 'Lucas Emanuel Araújo Leite', 101630, 'abcde@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(502, 'Lucas Félix de Freitas', 37045, 'lucaschrnko@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(503, 'Lucas Victor de Lima Alves', 57705, 'lucas10victor@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(504, 'Marcelo Félix de Lima', 2490, 'marcelofelixdm@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(505, 'Mateus Cândido Medeiros', 101628, 'mateuscandido58@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(506, 'Mateus Gomes Maia Pereira', 19614, 'mateus.33.dm@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(507, 'Matheus Fernandes Costa', 85160, 'matheuscfernandes996@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(508, 'Matheus Silva Oliveira', 80273, 'matheus141115@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(509, 'Pedro Antonio Almino Uchoa', 19612, 'pedroalmino1@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(510, 'Pedro Henrique Barbosa Ferreira', 42505, 'pedrohenriquebf@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(511, 'Pedro Henrique Guedes Alves', 34258, 'apedrohenrique19@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(512, 'Pedro Henrique Vieira de Oliveira e Araujo', 56631, 'pedrenrique.gm@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(513, 'Pedro Holanda Filho', 8865, 'fholandapedro@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(514, 'Raimundo Alves Holanda Neto', 61822, 'raimundo279dm@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(515, 'Rian Cézar Vieira Lucena', 57707, 'rian12vieira@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(516, 'Rodrigo Bezerra Bitu', 2510, 'rodrigobituzin@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(517, 'Ronney Mendes Dutra de Carvalho', 2508, 'rmendes_direito@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(518, 'Savio Valente Gois', 26280, 'saviovalente12@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(519, 'Valmir Valentim da Silva Junior', 8867, 'sirvalmir.dm@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(520, 'Victor Gabriel Gomes Ferreira', 101632, 'victorggf17@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(521, 'Vinicius Zafriel Alves Oliveira Silva', 32437, 'zafrieloliveira@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(522, 'Vitor Emanuel Soares Alves', 80272, 'vealves2005@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(523, 'Wescley de Souza Lima', 2489, 'wescleyce@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 32, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(524, 'Lucas Moraes Soraes', 22929, 'lucasmoraes19981@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 31, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(525, 'Jean Michel Dantas Gomes', 19601, 'jean_michel_demolay@hotmail.com', '$2y$10$h9AH7diCiEoWf5waFb4o/uP4ippYRmSXP5QLrG4y.BXxCjr5EKBUi', '', 29, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(526, 'Thiago Rocha Alves', 89238, 'thiagodemariarocha@gmail.com', '$2y$10$KnOwU//82lwwOokJHB7GnOTN7Q0NSwEBJGF1m4AXTFBk1JkvqV48q', '', 29, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(527, 'Carlos Eduardo Israel Monteiro', 85441, 'cadu1intel@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 29, 1, 'ativo', '', '2021-04-15 22:46:59', NULL);
INSERT INTO `users` (`id`, `name`, `id_sisdm`, `email`, `password`, `imagem`, `capitulo_id`, `nivel`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(528, 'Emanuel Herbert Barbosa de Moura', 78327, 'emanuel-ip@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 29, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(529, 'Eneias Raul Santana da Silva', 67669, 'raulsantana05@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 29, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(530, 'Expedito Dantas Moreira Bisneto', 40919, 'exp.sukus@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 29, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(531, 'Frederico Rolim Crispim', 35135, 'frederico-ip@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 29, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(532, 'Gabriel Araújo Ferreira', 40918, 'gabrielferreirajm@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 29, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(533, 'Igor Barbosa Oliveira', 85440, 'igorbarbosaip6@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 29, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(534, 'João Francisco Felinto Evangelista', 87642, 'allandiamanteip@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 29, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(535, 'Jose Vilamar Rodrigues Vidal Junior', 28561, 'junior.bx10@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 29, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(536, 'José Amaro Saraiva Filho', 78326, 'brenofla06@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 29, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(537, 'José Wilker Reis Gomes Filho', 74379, 'wilkerg40@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 29, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(538, 'Lincoln Almeida Moreira', 67667, 'lincolnalmeida315@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 29, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(539, 'Luan Balcante Alves', 87644, 'luanbalcante007@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 29, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(540, 'Lucas Tavares de Freitas', 35147, 'lucaslori@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 29, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(541, 'Robson dos Santos Ferreira', 74378, 'robson_santosleo@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 29, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(542, 'Toshik Iarley da Silva', 35454, 'iarley.toshik@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 29, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(543, 'Wandenberg Alexandria da Silva', 87645, 'wandemberg1b2017@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 29, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(544, 'Alex Pereira Rodrigues', 22405, 'alexpereira_fa@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(545, 'Alifen Alves Lacerda', 45302, 'alifenalves@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(546, 'Arthur Ramirez de Lima Agostinho', 19618, 'arthur-ramirez-75@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(547, 'Cauã Felix de Sousa', 85617, 'felixcaua@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(548, 'Diego Vinicius Ferreira de Souza', 58266, 'diegovfs007@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(549, 'Emanoel Martins Pereira Leite', 30266, 'manelzinhodocross@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(550, 'Eric dos Santos Bezerra', 40480, 'eric094@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(551, 'Francisco Andtalys da Silva Lauriano', 30265, 'andtalys_05@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(552, 'Gabriel Henrique Sousa Saraiva', 62977, 'cicerorobertosaraiva@yahoo.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(553, 'Gabriel Vieira dos Santos', 65583, 'gabrielvieiragabriel511@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(554, 'Isaque Barbosa e Silva', 22409, 'isaqueagropec@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(555, 'Jhonatas Matheus Livio de Oliveira', 35722, 'matheus.dm@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(556, 'Joabe dos Santos', 77481, 'Santosjoabe364@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(557, 'João Guilherme Ponciano de Lima', 49281, 'j.guiilherm.14@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(558, 'João Victor de Araujo Lima', 30264, 'joaovictoaraujo@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(559, 'Jordao Batista Marques', 22407, 'jordaomarques023@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(560, 'José Guilherme Marques Moura', 85616, 'guilhermemouradm15@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(561, 'Luiz Eduardo dos Santos', 49284, 'luizedu1324@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(562, 'Mateus Leite Fernandes da Silva', 35721, 'mateusamaro9868@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(563, 'Matheus Lacerda Borges', 62979, 'mateuslacerda1990@live.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(564, 'Mozar Leite de Araujo Lima Neto', 19616, 'mozar_clik10@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(565, 'Nailson de Andrade Neri Junior', 30382, 'nailsonjr17@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(566, 'Newton Joao dos Santos Sobral Junior', 18123, 'juniorsobraladv@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(567, 'Olavo Cartaxo', 77479, 'olavinho.cartaxo@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(568, 'Victor Ezequiel Leite Dédes', 28310, 'victor_ezequieldm@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 27, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(569, 'Agenor Texeira Freitas Neto', 78346, 'nettoagenor2@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 26, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(570, 'César Salomão Mendes de Lucena Neto', 63249, 'joaoheliasfsantos75@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 26, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(571, 'Cicero Raildo Lima Pereira', 78348, 'raildolimadm12@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 26, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(572, 'Cícero Gabriel Martins da Silva', 85865, 'a00f340188@himail.online', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 26, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(573, 'Hudson Palmiery Ribeiro dos Santos', 39674, 'profhudsonribeiro@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 26, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(574, 'João Heuler Agostinho de Sá', 44040, 'jheulerdm@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 26, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(575, 'João Matheus Silva Grangeiro', 78345, 'joaomatheuss581@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 26, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(576, 'Júlio César de Araujo Evangelista', 65144, 'julioaraujocesar123@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 26, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(577, 'Luiz Henrique Diniz Silva', 85862, 'luizzhenri58@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 26, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(578, 'Miguel Pedro Xavier Fernandes Evangelista', 56676, 'miguelpedro.redes2015@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 26, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(579, 'Pablo Ryan Belém Guedes', 44043, 'belempablo07@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 26, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(580, 'Ruan Pablo Furtado Oliveira', 87601, 'ruanpablooliveira20@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 26, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(581, 'Zaqueu Laurentino Furtado Alves', 85864, 'zaque.merd@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 26, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(582, 'Angelo Kauê Alves de Sousa', 44891, 'kaueplay154@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(583, 'Antonio Robson do Nascimento Macedo', 6847, '87r.adm@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(584, 'Antonio Wellinton Sousa Nascimento', 39858, 'wellitonsousa100@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(585, 'Arthur Benevides de Sousa', 15191, 'arthurbsousa@yahoo.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(586, 'Bruno Duarte Pedrosa', 61031, 'brunoduartepedrosa@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(587, 'Caio Vinicius Santiago Pinheiro', 70471, 'caio.pinheiro00@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(588, 'Casusa de Sousa e Silva', 36629, 'casusasousa@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(589, 'Davi Andrade Melo Nascimento', 61027, 'daviandrade204@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(590, 'Diogo Ryan Pereira de Souza', 80671, 'diogoryanp@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(591, 'Dyogenes Luiz Ferreira Sales', 65514, 'dyogenesluiz08@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(592, 'Emanoel Luis Silva Sales Filho', 101414, 'emanoelluis7336@gamail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(593, 'Emanuel Evangelista Leal', 2159, 'demolay2159@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(594, 'Francisco Bruno Candido de Oliveira', 15196, 'brunooliverdm@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(595, 'Francisco Custódio Neto', 61028, 'custodioneto112233445566778899@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(596, 'Francisco Eudes Aires de Morais Neto', 65517, 'eudespesadao@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(597, 'Francisco Jheymys da Silva', 75946, 'franciscojheymyssilva@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(598, 'Francisco Milton Cavalcante Jota Neto', 70472, 'miltonjotant@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(599, 'Francisco Oilton de Andrade Paiva', 2167, 'oilton_paiva@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(600, 'Francisco Tales Benevides Mota Junior', 14201, 'tales_jrb@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(601, 'Gabriel Marques Santos da Silva', 85872, 'gabrielmarques.751.gm@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(602, 'Guilherme Bandeira e Sa', 28739, 'guilherme.b6@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(603, 'Guilherme Lucas Brito', 87646, 'glucasbrito@yahoo.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(604, 'Igor Alexandre de Sousa Pedrosa', 56688, 'alexandreigor124@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(605, 'Igor Régis Nogueira Carneiro Conde', 85868, 'igorregis8@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(606, 'Ismael Nogueira Cavalcante', 85871, 'ismaelnogueiracavalcante@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(607, 'Jhonbrand Marques Brandão', 80673, 'jonhonbrand866@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(608, 'João Henrique Moraes de Oliveira', 70476, 'mcjoaohbjj166@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(609, 'João Pedro Lima Ribeiro', 39860, 'jpedroinfor@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(610, 'João Pedro Vieira Teixeira', 85869, 'joaopedroteixeiravieira9@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(611, 'João Victor Cândido de Oliveira', 2160, 'jvckbt@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(612, 'João Victor Lima do Nascimento', 37596, 'jvliman75@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(613, 'João Vitor Sousa Teixeira Felinto', 85870, 'silvaniaseguros@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(614, 'Jonas Lima Cavalcante', 65518, 'jonaslimacavalcante1234@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(615, 'Joseli Patrocínio de Sousa', 50155, 'joselipatrocinio@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(616, 'José Edigar Almeida Sousa Teixeira', 49409, 'demolay49409@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(617, 'José Felipe Batista Alencar', 37595, 'felipelinus123@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(618, 'José Victor Araújo Sabino', 80669, 'paula10deyva@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(619, 'Kaique Alves Silva', 39855, 'demolay39855@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(620, 'Kayky Oliveira Dantas', 65519, 'kayky_oliveira7@icloud.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(621, 'Lucas Teixeira de Sousa', 80670, 'lukylucasteixeira123@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(622, 'Luiz Felipe Costa de Sousa', 44892, 'costafelipe09@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(623, 'Luís Emanuel Benevides da Silva', 101416, 'luisemanuel89@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(624, 'Marcos Wilame Teixeira da Silva', 75943, 'wilame_marcos@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(625, 'Mardonio Hugo', 101415, 'hugocarvalho15@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(626, 'Moisés Braga', 75944, 'mois7125@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(627, 'Nicolas Bezerra de Sousa', 11103, 'nicolas.bezerradm@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(628, 'Pedro Antonio Ferreira Rodrigues', 65516, 'pedrofrodrigues27@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(629, 'Pedro Felipe Vieira de Araújo', 75947, 'demolay75947@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(630, 'Pedro Henrique Martins Pedrosa', 15195, 'phmpedrosadm@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(631, 'Pedro Victor Sousa da Silva', 36630, 'pevito87@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(632, 'Rodrigo Fagner Carnaúba Pereira', 44894, 'demolay44894@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(633, 'Samuel Pedro Cavalcante Araujo', 49411, 'samuelpedromombaca2013@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(634, 'Thaynan Sabino Dantas', 39857, 'thaynansabino14@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(635, 'Wallesson Cavalcante da Silva', 15192, 'wallessondm@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(636, 'Willamy Siqueira Conde', 19832, 'wilamsiqueira15@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(637, 'Yan Cavalcante Costa Nogueira', 75948, 'demolay75948@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 25, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(638, 'Andre Lima Belmino Sousa', 85012, 'andrebelmino@yahoo.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 23, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(639, 'Arimatéia Alves da Silva Filho', 85006, 'alvesarysilva@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 23, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(640, 'Diego Almeida Cavalcante', 104001, 'androgames0202@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 23, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(641, 'Dimitre Cavalcante Souza', 85010, 'dimitresouza43@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 23, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(642, 'Felipe Cavalcante Chaves', 85018, 'tiburciocavalcante61@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 23, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(643, 'Ian Andrade Sales', 85007, 'iansales6@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 23, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(644, 'Luiz Eduardo Teixeira Almeida', 104002, 'luizeduardo1014@yahoo.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 23, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(645, 'Luiz Wneriton de Lima Junior', 85001, 'limapanda@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 23, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(646, 'Manoel Nobre da Silva Neto', 44362, 'nettonobre.eng@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 23, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(647, 'Matheus Lima Nogueira de Andrade', 85013, 'matheuslima358@yahoo.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 23, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(648, 'Pablo Ryan Pessoa Nascimento Viana', 104000, 'pabloryan1014@yahoo.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 23, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(649, 'Pedro Lucas da Silva Viana', 84998, 'pedrolucassviana111@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 23, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(650, 'Wadson Luiz Viana Braga de Vasconcelos', 85008, 'luiz.wadson@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 23, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(651, 'Antonio Francisco Azevedo Farias', 24588, 'capcons@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 22, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(652, 'Antonio Rafael Feitosa de Sousa', 48781, 'feitosarafael83@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 22, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(653, 'Cainã Farias da Silva', 86327, 'cainafarias2011@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 22, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(654, 'Carlos Sérgio de Brito Filho', 55034, 'sergiobritofilho@yahoo.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 22, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(655, 'Cláudio Vithor Catunda Martins', 86328, 'claudiovithorcm@icloud.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 22, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(656, 'Emerson de Oliveira Carreiro', 81614, 'emersoncarreiro12@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 22, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(657, 'Francisco ìtalo de Araujo Brito', 14885, 'italo_a.brito@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 22, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(658, 'Francisco Sávio Sousa Santana', 40260, 'savio.nr@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 22, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(659, 'Guilherme Wilker Martins Oliveira Farias', 79036, 'guilwilker18@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 22, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(660, 'Hugo Rodrigues de Sousa Cavalcante', 2175, 'hugorodriguessc@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 22, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(661, 'João Gabriel Farias Lima', 87652, 'eujoaog@iclou.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 22, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(662, 'João Marcelo da Silva Lima', 62981, 'jmarcelo085@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 22, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(663, 'Lucas de Sousa Camelo', 24205, 'lucascamelo10@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 22, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(664, 'Luiz Gustavo de Holanda Melo Viana', 48783, 'gutoviana670@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 22, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(665, 'Marcos Vinicius Vieira da Silva Santos', 30360, 'marcosviniciusvieira3@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 22, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(666, 'Paulo Henrique Andrade da Costa', 40261, 'paulohenriquemix@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 22, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(667, 'Ricardo Madureira Rosa Castelar Girão', 35189, 'rick060969@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 22, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(668, 'Salomão Freitas Torres de Melo', 74146, 'salomaofreitas38@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 22, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(669, 'Saulo Suassuna de Oliveira Laranjeira', 79037, 'saulosuassuna@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 22, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(670, 'Wesley Chaves Rocha', 44175, 'cynthiachaves26@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 22, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(671, 'Yure Farias Martins', 87653, 'fariasyuri72@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 22, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(672, 'Eduardo Ronald Costa de Lima', 30873, 'eduardolima.adv1992@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 21, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(673, 'Antonio Pereira de Souza Júnior', 30304, 'demolay30304@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 20, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(674, 'Carlos Daniel Ribeiro do ó', 72108, 'doodaniel66@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 20, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(675, 'Danilo Domingos de Araujo', 28676, 'danylo-11@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 20, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(676, 'Erik Rian Prudêncio Veras', 43266, 'demolay43266@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 20, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(677, 'Francisco Anacleto Alves dos Santos Filho', 35176, 'anacleto-alves@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 20, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(678, 'Francisco Igor Rodrigues Silva', 37614, 'igordemolay41@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 20, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(679, 'Francisco Pereira da Silva Júnior', 30932, 'juniordemolay@live.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 20, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(680, 'João Envid Azevedo Silveira', 39683, 'joaoenvid2912@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 20, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(681, 'João Melo Monteiro Junior', 86508, 'joaomelojr0312@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 20, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(682, 'João Pedro Maia Carvalho', 72109, 'joaopedromaia2015@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 20, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(683, 'Jorge Leandro Araújo Batista', 86509, 'jorge2017leandro@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 20, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(684, 'Jose Weliton Alves de Araujo', 19296, 'sirwelitonalves@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 20, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(685, 'José Ismael Lima Azevedo', 30309, 'arquitetoismaeldemolay@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 20, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(686, 'Luis Henrrique Bezerra Félix', 39679, 'luishenriquefelix13@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 20, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(687, 'Maycon Douglas Soares', 78379, 'mayconlee573@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 20, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(688, 'Natanel Junio Bezerra Felix', 31947, 'junim.felix@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 20, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(689, 'Pedro Henrique Nascimento Lopes', 60386, 'pedrohenrique99808@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 20, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(690, 'Rodrigo Sabino Sousa Dias', 46025, 'rodrigo1ssd@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 20, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(691, 'Ronildo Bezerra Ferreira', 72107, 'ronildo.mineira@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 20, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(692, 'Rubens Siqueira Pereira', 49275, 'alex_andre_12@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 20, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(693, 'álvaro Tavares Lins Roncolato', 75529, 'alvarotavares132002@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 19, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(694, 'Caio Laércio de Sá Pereira Diógenes', 65808, 'caiodesaufcg@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 19, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(695, 'Carlos Davi Bezerra da Silva', 61042, 'davipk40@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 19, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(696, 'Carlos Ian Bezerra de Melo', 31954, 'ian.melo2009@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 19, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(697, 'Émerson dos Santos Saturno', 103285, 'gamerscrafters32@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 19, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(698, 'Francisco Lucas de Lima Carneiro', 61036, 'flucascarneiro@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 19, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(699, 'Gabriel de Queiroz Lima Almeida', 73969, 'gabrieldequeiroz123@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 19, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(700, 'Gabriel Victor Bezerra Holanda', 43453, 'gabvicto@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 19, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(701, 'Givaldo Barros da Silva Junior', 19837, 'givaldo-barros@live.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 19, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(702, 'Isac Mendes de Freitas', 103290, 'isacf4707@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 19, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(703, 'Israel Vylkher Nogueira da Silva', 70733, 'israelvilkher@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 19, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(704, 'Javel Queiroz Freitas', 78350, 'javelqueiroz@outlook.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 19, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(705, 'João Vítor de Oliveira Fraga ', 103291, 'joaovitordof@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 19, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(706, 'Luís Gustavo Rabêlo de Oliveira', 103293, 'contatogusta15@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 19, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(707, 'Marco Antonio Rodrigues Barbosa', 103294, 'notoriouscr@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 19, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(708, 'Maximiliano Pereira Mendonça', 43460, 'maxmendo33@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 19, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(709, 'Nathan Lima Batista', 43461, 'nathanlima.b@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 19, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(710, 'Paulo Vitor da Silva Maia', 103298, 'paulo.v32silva@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 19, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(711, 'Pedro Gabriel Teixeira Silva', 61040, 'elefrio484@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 19, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(712, 'Yago Lima Capistrano', 65809, 'yaagolima@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 19, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(713, 'Alisson Alves Magalhães', 87123, 'alisson.med@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 18, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(714, 'Augusto César Barcelos de Vasconcelos', 87119, 'barceloscesar921@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 18, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(715, 'Bruno Feliciano de Lima Alves', 75530, 'brunofelicianodelima036@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 18, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(716, 'Davi Alves Marinho', 71142, 'daviam1026@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 18, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(717, 'Fernando Antonio Alexandre do Nascimento', 87118, 'fernandoalexandre741@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 18, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(718, 'Francisco Breno Almeida Ramos', 87114, 'brenoa84@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 18, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(719, 'Francisco Chagas Ricardo Neto', 87122, 'chagasneto88@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 18, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(720, 'Hiarley Sales Oliveira do Reis', 103288, 'hiarleysales1@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 18, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(721, 'ícaro Pinheiro de Pinho', 87124, 'icaropinho9@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 18, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(722, 'Jhônata Lima de Araujo', 101239, 'jhonatalimadearaujo@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 18, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(723, 'Joaquim de Almeida Pimentel Júnior', 101237, 'pimentel10.junior10@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 18, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(724, 'Jonas Gabriel Silva Marciel', 103292, 'gj3175790@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 18, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(725, 'Kauan Moreira de Sousa', 101234, 'kauan.marraky@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 18, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(726, 'Luis Eduardo Amaral Nogueira Leitão', 87112, 'amaralluiseduardo628@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 18, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(727, 'Otavio Gabriel Rufino Fernandes', 103297, 'otaviog2107@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 18, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(728, 'Patrick Wesley Azevedo Nunes', 87120, 'patrickazevedo538@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 18, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(729, 'Pedro Kauan Ribeiro Costa', 54763, 'pedrokauanrcdm@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 18, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(730, 'Thiery de Souza Correia', 87113, 'thenrysouza@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 18, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(731, 'Alisson Emanuel Oliveira Maia', 81897, 'Alinhoman9@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 17, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(732, 'Francisco Igor Araujo Martins', 85014, 'igoraraujomartins4@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 17, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(733, 'Gustavo Jansen Maia Alencar', 81896, 'guga.j7@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 17, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(734, 'Harrison Pereira de Sousa Oliveira', 81895, 'hrrsnpereira@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 17, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(735, 'Jefferson Marcos de Lima', 81891, 'jeffersonmarcos254@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 17, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(736, 'João Victor de Oliveira Andrade', 81889, 'joaovictordeoliveiraandrade10@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 17, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(737, 'Leandro Cruz Evangelista', 85015, 'leol29579@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 17, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(738, 'Lucas Luis Oliveira Rodrigues', 81898, 'lucasluis1008@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 17, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(739, 'Luis Davi de Almeida Abreu', 78375, 'ticianasampaioalmeida@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 17, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(740, 'Mateus da Silva Gonçalves', 81893, 'gotmateus618@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 17, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(741, 'Matheus Rocha Carlos', 65152, 'rochamatheuscarlos@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 17, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(742, 'Paulo Vinicius dos Santos Farias', 81888, 'paulovinicius.santosfarias@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 17, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(743, 'Pedro Luan Macêdo da Silva', 81890, 'pedro_o07@outlook', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 17, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(744, 'Samuel Nicolas Sampaio de Oliveira', 85017, 'limamaciel2017@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 17, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(745, 'Aleicson Aglas Bezerra Alencar', 14902, 'aglas_dm@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(746, 'Anderson Rodrigo de Araújo', 35178, 'andersonaraujodm@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(747, 'Antonio Anderson Vieira', 31953, 'andersonadler@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(748, 'Antônio Giovani Alves da Silva', 61678, 'giovanialvesdasilva@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(749, 'Brian da Silva Alves Bezerra', 57636, 'brian.alves_2014@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(750, 'Bruno Antonio da Silva Santos', 31951, 'brunosantos44@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(751, 'Bruno Rodrigues Costa', 57635, 'bruno.r.costa2011@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(752, 'Carlos Gastone de Oliveira Ferreira', 9486, 'carlosg.cont@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(753, 'Carlos Humberto Aires de Araújo Neto', 40257, 'c_humberto468@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(754, 'Edvardo Almeida Fernandes Júnior', 65453, 'edvardojuniorfernandes@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(755, 'Elvis Ramon da Silva Pessoa', 9488, 'elvisramon.adv@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(756, 'Francisco Carlos Siqueira de Oliveira', 31950, 'carlos.demolayce@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(757, 'Francisco Matheus de Araújo Lima', 45265, 'matheusdm11@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(758, 'Francisco Rivaldo Martins Lima', 80276, 'rivaldomartins044@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(759, 'Francisco Wesley Lima Rodrigues', 101620, 'emailcomercialwl@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(760, 'Gabriel Lucas de Souza Lima', 61680, 'gabriellucaslima2016@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(761, 'Gabriel Nascimento da Silva', 70714, 'gabrieldemolay661@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(762, 'Henrique Batista Alves', 45260, 'henriqueba.hb@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(763, 'Jaime Nobre de Pinho Neto', 33812, 'jaimefest@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(764, 'Jairon Juma dos Santos Santiago Filho', 35182, 'jaironfilho_555@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(765, 'Jhon Kennedy Carneiro de Lima Queiroz', 13581, 'kennedyd.m@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(766, 'João Pedro Pinheiro do Rego', 35180, 'joaojppr@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(767, 'João Vitor Gonçalo de Sousa', 76308, 'jv_dm@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(768, 'Jose Alves Pimenta Junior', 31887, 'juniorpimenta71@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(769, 'Jose Dogival Clementino Neto', 28743, 'dogival_neto@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(770, 'José Ferreira Cavalcante Neto', 80274, 'jnfantastico56@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(771, 'José Valdemir Vitor Lima', 35177, 'valdemirdm@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(772, 'José Weslley Queiroz de Lemos', 76309, 'weslleyswanny@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(773, 'Kauan Oliveira Perdigão Lopes', 80277, 'kauan-op@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(774, 'Kayo Anderson Prudente Souza', 13585, 'Kayokloco@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(775, 'Kayron Cavalcante Monteiro', 101621, 'karinnemaykedesagne@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(776, 'Lucas Silva do ó', 38268, 'lucasilv.dm@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(777, 'Mateus Lucas Bezerra', 87634, 'matheuss.safira.23@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(778, 'Mayk Lenno Henrique Lima', 38271, 'mayklenno@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(779, 'Nicolas Rodrigues Ferreira', 65452, 'nicolcasrodrigue@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(780, 'Raimundo Januário de Lima Neto', 70716, 'raimundo_neto468@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 15, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(781, 'Carlos Eduardo Aragão Sousa', 81444, 'acarlosesduardo@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 14, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(782, 'Carlos Emanuel da Silva Aguiar', 81448, 'e.carlosaguiar643@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 14, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(783, 'Davi Texeira Costa', 84259, 'tdavi7124@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 14, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(784, 'Francisco Abel Rodrigues dos Santos', 81451, 'abel8491@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 14, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(785, 'Francisco Ferdinan Aguiar Frota Junior', 84257, 'ferdinanjunior5051@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 14, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(786, 'Gabriel de Lira Pereira', 81440, 'liragabriel21@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 14, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(787, 'Heron Santana do Nascimento', 81445, 'haroldonascimento@bol.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 14, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(788, 'Matheus Parente Arruda', 87826, 'matheuslc123456789@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 14, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(789, 'Miguel Alves de Lira Pereira', 81441, 'miguellira522@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 14, 1, 'ativo', '', '2021-04-15 22:46:59', NULL);
INSERT INTO `users` (`id`, `name`, `id_sisdm`, `email`, `password`, `imagem`, `capitulo_id`, `nivel`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(790, 'Ocione Moreira Lima', 87823, 'ocionemoreira2018@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 14, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(791, 'Pedro Lucas Melo Pereira', 81442, 'pedrolucasmello709@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 14, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(792, 'Thiago Luiz Melo Pereira', 87824, 'luuti2019@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 14, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(793, 'Victor Dieslley Mesquita de Loiola Silva', 81447, 'VictorDieslleyM@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 14, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(794, 'Alessandro Cauã Macedo Marciel', 70738, 'ladymaia@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(795, 'André Nogueira do Amaral Neto', 43277, 'ande_n20@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(796, 'Antônio Sindeval de Almeida Filho', 59123, 'sindevalfilho@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(797, 'Arthur Santos Nunes', 75291, 'arthursnunes11@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(798, 'Carlos Eduardo de Lima Rocha', 87640, 'dudu260205@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(799, 'Carlos Vinicius Duarte Feitosa', 78376, 'ccvvduarte@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(800, 'Davi de Freitas Costa', 72310, 'daviidefreitasc@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(801, 'Emanuel Mathias Tavares dos Santos.', 84706, 'emanuelmathias87@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(802, 'Guilherme dos Santos de Assis', 72302, 'guilhermeloiro8@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(803, 'Hericles Sindenio Campelo de Almeida', 43298, 'hericlesca@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(804, 'Isaac Costa de Andrade', 75288, 'nabiercosta@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(805, 'Lucas Herbeth de Menezes Santiago', 43293, 'lucasherbeth17@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(806, 'Luis Felipe de Almeida de Freitas', 43511, 'luisfelipetab@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(807, 'Mardes Diógenes Campelo Malveira', 43297, 'mardesmalveira1@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(808, 'Matheus Chaves Marinho', 43276, 'asd@dsds.com6', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(809, 'Matheus Santiago Macêdo', 67677, 'matheus04macedo@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(810, 'Maurício Matheus Lima Silva', 62988, 'matheusmauricio940@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(811, 'Raonny Sousa Chaves', 43289, 'asd@dsds.com7', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(812, 'Raul Campelo do Amaral', 70739, 'claudioamaral1204@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(813, 'Rodrigo Guerra Filgueira Mauricio', 72307, 'milenaguerra2011@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(814, 'Samuel de Lima Menezes', 26267, 'samuel_menezes2008@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(815, 'Tiago Gadelha Guimarães', 62986, 'tuagodshow@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(816, 'Valdeni Enzo Nobre Fernandes', 72309, 'fernandesenzo@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(817, 'Vitor Oliveira dos Santos', 67676, 'vitor.olivsantos08@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(818, 'Weber Lucas Guimarães Chaves', 43278, 'weberlucas_gc@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 13, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(819, 'Antonio Romário Felix do Nascimento', 61667, 'romariofelix.96@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 12, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(820, 'Claudio Ricardo Pereira de Oliveira Junior', 30890, 'ricardojr_7@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 12, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(821, 'Igor Mário Rodrigues Benedito', 22918, 'igormario12@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 12, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(822, 'Tales Gonçalves Lima', 30884, 'taleslima.cdd@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 12, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(823, 'Aislan Lucas Bezerra', 84698, 'aislanlucas08@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(824, 'Anderson Gomes de Oliveira', 46678, 'demolay778@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(825, 'Antonio Mattheus Bezerra', 23046, 'mattheusves@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(826, 'Breno Araújo Alves', 101228, 'xdbreno007@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(827, 'Bruno Ferreira de Sousa', 84699, 'brunouzumaki451@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(828, 'Daniel de Sousa Menezes', 78322, 'ds0093317@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(829, 'Dyego da Silva Alves', 84697, 'mercadinho.sorriso@gmail.con', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(830, 'Felipe Carneiro Máximo', 101229, 'felipecarneiro104@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(831, 'Felipe Martins Ferreira', 38237, 'felipemartinsms2016@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(832, 'Felipe Renan de Sousa Lima', 101230, 'feliperenanndm@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(833, 'Henrique dos Santos Gomes', 68389, 'henriquesantosgomes58@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(834, 'Hugo Gabriel Soares Feitosa', 36561, 'hugo.soaresfeitosa@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(835, 'Igor Costa Meneses', 33216, 'igormenezes47@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(836, 'Joaquim Gabriel Bezerra Frutuoso', 67671, 'estudandomeufutro@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(837, 'João Marco de Morais', 74145, 'joaomarco96547@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(838, 'José Roberto de Oliveira Neto', 101233, 'joserobertoodm@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(839, 'Kayky Bezerra da Silva', 78323, 'kaykybritosilva23@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(840, 'Kempes de Moura Caldas', 67670, 'kmps_caldas@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(841, 'Luis Gustavo Pessoa Bitu', 68388, 'lgbitu@icloud.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(842, 'Pablo Caio Mendes Vieira', 45148, 'pablocaiomendes97@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(843, 'Rafael de Oliveira Costa', 23051, 'rafael.oliveiracosta@yahoo.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(844, 'Raimundo Ruan de Oliveira Freitas', 78325, 'oruan8768@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(845, 'Samuel de Morais Lima', 45152, 'samuellimava2@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(846, 'Victor Emanuel de Sousa Costa', 61815, 'victorwmanuel.costa@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(847, 'Victor Emanuel Ferreira Crispim', 68387, 'victoremanuel@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(848, 'Vitor Lucas de Sousa Lima', 39688, 'inbox.lucaslima@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(849, 'Willamy Brunno Vieira Silva', 59286, 'willamybrunno5@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 11, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(850, 'Adahyl Guimarães Peixoto Girão', 46662, 'adahilg@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(851, 'Airton Rodrigues de Amorim', 46664, 'airton_jbe@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(852, 'Alexandre Teixeira Guedes Santos', 46336, 'alexandretgsantos@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(853, 'Antonio Yago Freire Bessa', 56674, 'yagobessa01@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(854, 'Carlos André Aciole de Sousa', 56666, 'carlosaciole87@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(855, 'Demóstenes Henrique da Silva Souza', 74382, 'demostenesviolino@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(856, 'Dénnison Augusto Chaves', 84161, 'achavesdennison@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(857, 'Eduardo Bezerra Pinheiro Falcão', 46136, 'eduardobpfalcao@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(858, 'Ernandes Gautielly Silveira', 63757, 'ernandes896@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(859, 'Gentil Alexandre de Almeida Pinheiro', 46329, 'gentilalexandre2009@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(860, 'Hyan Carlos da Silva Oliveira', 46660, 'hyanjbe@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(861, 'Igor Almeida Pinheiro', 46325, 'igorpinheirodm@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(862, 'João Crisóstomo de Moura', 42416, 'jcmoura@bnb.gov.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(863, 'João Pedro Batista Pereira Maia', 46330, 'joaopesdrobpm10@gmail.com', '$2y$10$yHMUrbljsaOMRfejlR.vpezYdAfjLlRptfbzMx3mPFQwPmoGwRlt6', '', 8, 3, 'ativo', 'QmkQiQaaFXljzoFlYpreENCzjHLEPg1Y2mHntFBnZsbOGSWTl0vObuMqUiZm', '2021-04-15 22:46:59', '2021-04-18 01:49:01'),
(864, 'João Victor Diógenes do Nascimento', 56668, 'joaovictordn@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(865, 'João Victor Freitas Oliveira', 61051, 'jvfo_200@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(866, 'José Edmar Diógenes Neto', 74380, 'netodiogeneszero@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(867, 'Lailson Luan Bezerra da Silva', 46679, 'lailsonluanbs@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(868, 'Lucas Napoleão Timóteo Carneiro Diógenes', 46665, 'lucasdiogenes.ld.ld@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(869, 'Messias Oliveira Barbosa', 87647, 'messiasjbe64@email.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(870, 'Pedro Ian Diógenes Dantas', 46326, 'pedroian35@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(871, 'Pedro Lucas Fernandes dos Santos', 87649, 'pedrolucasmediotec@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(872, 'Ruan Kelvin Andrade Castro', 74381, 'yankelvin777@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(873, 'Rubenio da Silva Faria Filho', 61050, 'rubeniosilvajbe@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(874, 'Vlauberto Victor Silva Barros', 46337, 'victorgomesbarros@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(875, 'Yago Bezerra Lopes', 46338, 'yagolopesnbj@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(876, 'Yuri Silveira Peixoto', 63758, 'yurisilveira896@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 8, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(877, 'Annael Galdino Vieira', 33104, 'demolay33104@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 3, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(878, 'Cícero Gean de Aquino Filho', 43668, 'cicerogean5@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 3, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(879, 'Davi Gomes Macedo', 49378, 'matematica723@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 3, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(880, 'Emanuell Medeiros Viera', 25008, 'emanuell.medeiros.vieira@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 3, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(881, 'Gabriel Craveiro de Silva', 45911, 'bielgabriel546@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 3, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(882, 'Hemilio Alencar de Souza', 33103, 'hemilioalencar16@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 3, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(883, 'Isau Vieira Leite', 67683, 'isau.leite@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 3, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(884, 'Juscelino Martins Costa Junior', 6984, 'juscelino155@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 3, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(885, 'Kevin Willian Rocha Fernandes', 36159, 'kevinwinamp@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 3, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(886, 'Kleyson Filgueiras Parente', 40193, 'kleysonfp@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 3, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(887, 'Leonides Azevedo Cavalcante', 30371, 'azevedoleonides@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 3, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(888, 'Matheus Ferreira Leite', 31959, 'matheusferreira.l@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 3, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(889, 'Mayson Jonatha Gomes dos Santos', 42952, 'demolay42952@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 3, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(890, 'Moisés Ricardo Barros Campos', 65819, 'moizric@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 3, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(891, 'Paulo Fernando Matos de Santana', 11116, 'pfmsdemolay@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 3, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(892, 'Pedro de Andrade Sales Júnior', 102790, 'andrade578_@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 3, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(893, 'Pedro Henrique Palhano Cruz Sampaio', 102792, 'Palhanopedro342@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 3, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(894, 'Rogério Macedo Araújo', 37041, 'rogeriomacedo33@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 3, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(895, 'Samadhi A. Benicio', 40192, 'samadhi.arben@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 3, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(896, 'Saulo Sousa Salles', 33107, 'saulo@aluno.fapce.Edu.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 3, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(897, 'Vinycius Alves Felipe', 102793, 'vinyciusf4@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 3, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(898, 'Wyldevânio Vieira da Silva', 754, 'dere.dm@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 3, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(899, 'Carlos Eduardo Amaro de Sousa Franco de Sá', 85855, 'kadusa09@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(900, 'Eduardo Kauan dos Santos Sousa', 87626, 'seduardokauan@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(901, 'Emanuel Henrique Almeida Ferreira de Sousa', 87617, 'emanuelmannel@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(902, 'Eudo Pereira Marques Junior', 54572, 'eudo.junior12@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(903, 'Fábio Souza Freitas', 77355, 'fabionaruto@outlook.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(904, 'Francisco Elison Monteiro Gomes Júnior', 54574, 'elisonjr08@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(905, 'Francisco Gomes Sobrinho Neto', 77353, 'franciscoelivinha@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(906, 'George Erlande Batista Landim Filho', 54569, 'georgelandim3@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(907, 'Heitor Saraiva Januário', 85857, 'heitorsjpn@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(908, 'Igor Mendes Bernadinho', 87621, 'izaiasm570@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(909, 'Izaias Marcelino Silvestre', 54561, 'izaiassilvestre14@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(910, 'Jarivã Pereira da Silva Junior', 54559, 'jariva.jr@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(911, 'João Bandeira da Silva', 87620, 'joaobandeyra@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(912, 'João Pedro Moreira Rocha', 69725, 'joaopedro.ico@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(913, 'Leonel Vitório Lima Ceratti Ferreira', 54552, 'leoceratti33@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(914, 'Luan Marques Angelim', 54567, 'angelim.luan360@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(915, 'Lucas Leandro Pinheiro Menezes', 77351, 'llpmenezes91@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(916, 'Lucas Raynan Paulino Correia', 77354, 'raynanlucas15@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(917, 'Lucas Ribeiro de Lima', 54564, 'lucasrlaqui@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(918, 'Matheus Lima da Silva', 87622, 'matheuslimaico1705@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(919, 'Nathan Parnaiba Batista', 87625, 'nathanparnaiba@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(920, 'Pedro Lucas Almeida Martins', 85854, 'pedrinholok@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(921, 'Pedro Ruan Pereira Mota', 87623, 'ruanoo745@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(922, 'Pedro Saulo Gonçalves Bezerra', 81414, 'pedrosaulocsb@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(923, 'Roberto José Silva Teixeira', 77357, 'joseteixeira2014@bol.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(924, 'Ruhan Talles Nunes Bezerra', 54563, 'demolay54563@demolayceara.org.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(925, 'Tobyas Lamec Pereira da Silva', 58842, 'tatinha_024@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(926, 'Vinícius Cãndido Lopes', 77352, 'viniciusdemolay2020@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(927, 'Will Anderson Macário de Oliveira Filho', 69727, 'myswolda@yahoo.com.br', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(928, 'Yan José da Silva Dantas', 54562, 'yandantasdantasyan@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(929, 'Yuri Arruda Carlos', 54566, 'yyyuricarlosss@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 2, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(930, 'André Luis Gabriel de Lima', 78318, 'irmaodohitmonlee@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(931, 'André Sousa Carlos', 46347, 'andresousacarlos@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(932, 'Angelo Raphael Freire Dias', 58852, 'raphaelfreire.dias@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(933, 'Anthony de Sousa Maciel', 49384, 'anthony-thon@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(934, 'Antony Samuel Marques Freitas', 84263, 'antony.marques1502@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(935, 'Carlos Daniel Morais Moura', 46362, 'cael_morais@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(936, 'Davi Eduardo de Carvalho', 65156, 'daviescdm@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(937, 'Davi Erik Morais de Aquino', 46669, 'davierik123@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(938, 'Denison Afonso Cardoso', 46349, 'denisonafonsocardoso@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(939, 'Elder Vinícius Alves de Lima', 46346, 'viniciusalves1902@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(940, 'Filipe Medereiros Sanguinetti Júnior', 74390, 'fmsjr05@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(941, 'Gildo Diógenes Neto', 43671, 'gildo44@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(942, 'Hebert Vinicius Santos Rêgo', 67688, 'hebertvinicius2005@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(943, 'Hugo Santos de Aquino', 42709, 'hugo.demolay@outlook.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '1BtjZcVuTFpukGN51z6bXaUikQetWmPBGOtyWlkXB8RiZ8xK2jiJrcTjsQZj', '2021-04-15 22:46:59', NULL),
(944, 'Joao Pedro de Freitas Carvalho', 23881, 'jp.freitascar@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(945, 'João Vitor de Sousa Lima', 84261, 'dmjoao2019@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(946, 'João Vitor Ferreira da Silva', 78320, 'ferreiradmjoaovitor@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(947, 'Lauro Emmanuel Falcão de Morais', 67689, 'lauromorais@Gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(948, 'Lucas Gustavo Santos Dias', 56693, 'ldias181125@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(949, 'Luis Henrique de França Martins', 67690, 'lhfmdm@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(950, 'Marcos Vinícius Martins Pacheco', 87596, 'm.v.m.p2127@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(951, 'Maurício Lima Pereira da Silva', 87594, 'mauriciolimaest16@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(952, 'Nilmar Hércules Brito de Carvalho', 87595, 'er8kaca4valho@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'desativado', '', '2021-04-15 22:46:59', NULL),
(953, 'Patrick Weimar Aires Nogueira', 67691, 'maryalcivone@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(954, 'Rafael Figueiredo Alves', 46351, 'rafael_conexao1@hotmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(955, 'Silvio Martins Santos', 49383, 'silviosmsantos@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(956, 'Ytalo Carlos Bezerra', 87592, 'ytalocarlos35@gmail.com', '$2y$10$4RjXHyyZedh3hP22zxg8oeBpB06k2N6ul/kE50eVlk137MJXn/Iwy', '', 1, 1, 'ativo', '', '2021-04-15 22:46:59', NULL),
(957, 'José Ernandes Policarpo Bento', 46016, 'ernandes1policarpo@gmail.com', '$2y$10$vmADbR31i6uSEk1LJVtk/urByBTPQssguSwukDI4VpQY0gJiLpVoi', '9572josé-ernandes-policarpo-bento.jpeg', 34, 3, 'ativo', NULL, '2021-04-16 18:47:03', '2021-04-18 02:23:46'),
(958, 'Marcos Antônio Magalhães Guerra', 54017, 'marcosmguerra@gmail.com', '$2y$10$7h9mSQZWAhMuEBAp.etDZe7iaqmQWfmcsd7VAOtrHRWlsX2E50v2a', NULL, 1, 3, 'ativo', NULL, '2021-04-16 18:50:30', NULL),
(959, 'Victor Emanuel Siqueira Conde', 56686, 'victorsiqueirasc@gmail.com', '$2y$10$Hg5GAGTJ7yNyOXjTGRq3qefGY8trXEDIPv6.H8uW60X4GgMPvlp32', NULL, 25, 3, 'ativo', 'gWmjuJRT0NEfKqUniPSgKgn9OEvl51Z7KmhbtNDSPNtT9xEN6NzqEb6yK4L0', '2021-04-18 01:51:06', '2021-04-18 01:51:06');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `avisos`
--
ALTER TABLE `avisos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `capitulos`
--
ALTER TABLE `capitulos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numero` (`numero`),
  ADD KEY `cidade_id` (`cidade_id`);

--
-- Índices de tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pasta_documentos_id` (`pasta_documento_id`);

--
-- Índices de tabela `galerias`
--
ALTER TABLE `galerias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_galeria_id` (`tipo_galeria_id`);

--
-- Índices de tabela `midias`
--
ALTER TABLE `midias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pasta_midia_id` (`pasta_midia_id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pasta_documentos`
--
ALTER TABLE `pasta_documentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pasta_midias`
--
ALTER TABLE `pasta_midias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tipo_galerias`
--
ALTER TABLE `tipo_galerias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `transparencias`
--
ALTER TABLE `transparencias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_sisdm` (`id_sisdm`),
  ADD KEY `capitulo_id` (`capitulo_id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `avisos`
--
ALTER TABLE `avisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `capitulos`
--
ALTER TABLE `capitulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de tabela `cidades`
--
ALTER TABLE `cidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT de tabela `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `galerias`
--
ALTER TABLE `galerias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de tabela `midias`
--
ALTER TABLE `midias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `pasta_documentos`
--
ALTER TABLE `pasta_documentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `pasta_midias`
--
ALTER TABLE `pasta_midias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tipo_galerias`
--
ALTER TABLE `tipo_galerias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `transparencias`
--
ALTER TABLE `transparencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=960;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `capitulos`
--
ALTER TABLE `capitulos`
  ADD CONSTRAINT `capitulos_ibfk_1` FOREIGN KEY (`cidade_id`) REFERENCES `cidades` (`id`);

--
-- Restrições para tabelas `documentos`
--
ALTER TABLE `documentos`
  ADD CONSTRAINT `documentos_ibfk_1` FOREIGN KEY (`pasta_documento_id`) REFERENCES `pasta_documentos` (`id`);

--
-- Restrições para tabelas `galerias`
--
ALTER TABLE `galerias`
  ADD CONSTRAINT `galerias_ibfk_1` FOREIGN KEY (`tipo_galeria_id`) REFERENCES `tipo_galerias` (`id`);

--
-- Restrições para tabelas `midias`
--
ALTER TABLE `midias`
  ADD CONSTRAINT `midias_ibfk_1` FOREIGN KEY (`pasta_midia_id`) REFERENCES `pasta_midias` (`id`);

--
-- Restrições para tabelas `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`capitulo_id`) REFERENCES `capitulos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
