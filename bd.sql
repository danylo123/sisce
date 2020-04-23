-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 23-Abr-2020 às 01:45
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisce`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `capitulos`
--

DROP TABLE IF EXISTS `capitulos`;
CREATE TABLE IF NOT EXISTS `capitulos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `imagem` varchar(200) DEFAULT NULL,
  `cidade_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero` (`numero`),
  KEY `cidade_id` (`cidade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidades`
--

DROP TABLE IF EXISTS `cidades`;
CREATE TABLE IF NOT EXISTS `cidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos`
--

DROP TABLE IF EXISTS `documentos`;
CREATE TABLE IF NOT EXISTS `documentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `arquivo` varchar(200) NOT NULL,
  `pasta_documento_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pasta_documentos_id` (`pasta_documento_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `galerias`
--

DROP TABLE IF EXISTS `galerias`;
CREATE TABLE IF NOT EXISTS `galerias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `imagem` varchar(200) NOT NULL,
  `nome_gestao` varchar(200) DEFAULT NULL,
  `periodo` varchar(200) NOT NULL,
  `tipo_galeria_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tipo_galeria_id` (`tipo_galeria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `midias`
--

DROP TABLE IF EXISTS `midias`;
CREATE TABLE IF NOT EXISTS `midias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `arquivo` varchar(200) NOT NULL,
  `pasta_midia_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pasta_midia_id` (`pasta_midia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `token` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pasta_documentos`
--

DROP TABLE IF EXISTS `pasta_documentos`;
CREATE TABLE IF NOT EXISTS `pasta_documentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `tipo` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pasta_midias`
--

DROP TABLE IF EXISTS `pasta_midias`;
CREATE TABLE IF NOT EXISTS `pasta_midias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_galerias`
--

DROP TABLE IF EXISTS `tipo_galerias`;
CREATE TABLE IF NOT EXISTS `tipo_galerias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `transparencias`
--

DROP TABLE IF EXISTS `transparencias`;
CREATE TABLE IF NOT EXISTS `transparencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `ano` int(4) NOT NULL,
  `arquivo` varchar(250) NOT NULL,
  `tipo` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_sisdm` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagem` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capitulo_id` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_sisdm` (`id_sisdm`),
  KEY `capitulo_id` (`capitulo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `id_sisdm`, `email`, `password`, `imagem`, `capitulo_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Danylo Alysson Dias de Aquino', 42712, 'danyloalyson1@gmail.com', '$2y$10$6pwDuIP55nstcByZwCZdO.Vsmm.OPPsXvmW7nIv7UlnvhXKALR7I.', 'dsadas.jpeg.png.jpeg', 1, 'KzEI3tJeSc4H4BpdqgGfHMFFIPilKgmwdsbZ82UJZoDYnptv3Un3BZq6SwBz', '2020-04-10 00:20:10', '2020-04-23 04:13:50');

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `capitulos`
--
ALTER TABLE `capitulos`
  ADD CONSTRAINT `capitulos_ibfk_1` FOREIGN KEY (`cidade_id`) REFERENCES `cidades` (`id`);

--
-- Limitadores para a tabela `documentos`
--
ALTER TABLE `documentos`
  ADD CONSTRAINT `documentos_ibfk_1` FOREIGN KEY (`pasta_documento_id`) REFERENCES `pasta_documentos` (`id`);

--
-- Limitadores para a tabela `galerias`
--
ALTER TABLE `galerias`
  ADD CONSTRAINT `galerias_ibfk_1` FOREIGN KEY (`tipo_galeria_id`) REFERENCES `tipo_galerias` (`id`);

--
-- Limitadores para a tabela `midias`
--
ALTER TABLE `midias`
  ADD CONSTRAINT `midias_ibfk_1` FOREIGN KEY (`pasta_midia_id`) REFERENCES `pasta_midias` (`id`);

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`capitulo_id`) REFERENCES `capitulos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
