-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Jun-2024 às 02:31
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `epic`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clones`
--

CREATE TABLE `clones` (
  `id` int(11) NOT NULL,
  `nick` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `realname` varchar(255) NOT NULL,
  `server` varchar(255) NOT NULL,
  `servinfo` varchar(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `clones`
--

INSERT INTO `clones` (`id`, `nick`, `host`, `realname`, `server`, `servinfo`, `time`) VALUES
(3, 'RadioPortugal', 'Brazink.13rkjv.brazink.com', 'Powered by www.brazink.com', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:30:38'),
(5, 'Global', 'services.brazink.net', 'Global Noticer', 'services.brazink.net', 'Services for Brazink IRC', '2024-06-23 00:30:42'),
(6, 'Lobo_da_Lua', 'Brazink.9pdkef.dsl.telepac.pt', 'IRC * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:31:06'),
(13, 'moi_meme', 'Brazink.1hp.ogi.230.161.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:31:36'),
(14, 'musculado', 'Brazink.g8h653.net.novis.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:31:36'),
(18, 'h-avr', 'Brazink.h66sv8.bl27.telepac.pt', 'Web2 * Está em Aveiro - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:32:06'),
(24, 'ola', 'Brazink.sghgii.cpe.netcabo.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:32:36'),
(27, 'Real_angel', 'Brazink.ve60na.netvisao.pt', 'Web2 * Está em Aveiro - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:32:58'),
(30, 'EnigmaTica', 'Brazink.92fotr.netvisao.pt', 'Web1 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:33:06'),
(33, 'Slowdive', 'Brazink.gc3sup.dsl.telepac.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:33:36'),
(39, 'queijadas', 'Brazink.tsslm4.irccloud.com', 'IRC * Está em Califórnia - EUA', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:34:06'),
(40, 'ela33-espinho', 'Brazink.kpooea.dsl.telepac.pt', 'Web2 * Está em Aveiro - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:34:06'),
(48, 'Sozinholx', 'Brazink.lihv48.cpe.netcabo.pt', 'Web1 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:35:36'),
(49, 'Homem73', 'Brazink.bjto38.bl26.telepac.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:35:36'),
(54, 'simpaticonortenho', 'Brazink.1not9h.cpe.netcabo.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:36:06'),
(56, '_Motard', 'Brazink.c39cq1.rev.vodafone.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:36:06'),
(57, 'Casad48', 'Brazink.42acj9.adslplus.ch', 'Web2 * Está em Zúrich - Suiza', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:36:16'),
(60, 'maduro_so', 'Brazink.028ho1.net.novis.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:36:32'),
(62, 'Homem47', 'Brazink.8o9cff.cpe.netcabo.pt', 'Web1 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:36:36'),
(67, 'aalice', 'Brazink.14fgvs.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:37:06'),
(70, 'Audi', 'Brazink.mus937.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:37:14'),
(81, 'Pook', 'Brazink.78ij35.dsl.telepac.pt', 'IRC * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:38:06'),
(82, 'petergestor', 'Brazink.s6f.m63.65.194.IP', 'Web1 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:38:06'),
(84, 'moreno', 'Brazink.l33qrp.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:38:36'),
(85, 'Method', 'Brazink.9i9h32.cpe.netcabo.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:38:36'),
(90, 'Roberto_4', 'Brazink.c3u.78e.230.161.IP', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:39:07'),
(91, 'GoGoRicky', 'Brazink.9ln76n.dsl.telepac.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:39:07'),
(95, 'EscuteirinhaMadeirense', 'Brazink.cmbtgv.ptr83.nosmadeira.net', 'Web2 * Está em Região Autônoma da Madeira - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:39:36'),
(96, 'Eu-H', 'Brazink.ucajat.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:39:37'),
(100, 'SinceroSeixal', 'Brazink.pace0u.dsl.telepac.pt', 'Web2 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:40:06'),
(101, 'Pedrolx', 'Brazink.to4.0po.230.161.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:40:06'),
(106, 'quarentao', 'Brazink.6rptj0.dsl.telepac.pt', 'Web2 * Está em Leiria - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:40:36'),
(107, 'Lupen', 'Brazink.s31ph6.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:40:36'),
(108, 'inga', 'Brazink.rfd.dcp.50.46.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:40:51'),
(109, 'MARCiO', 'Brazink.mco.2jt.89.190.IP', 'Web2 * Está em Pará - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:41:06'),
(110, 'Alessandra', 'Brazink.es7.3n4.38.187.IP', 'Web1 * Está em São Paulo - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:41:06'),
(111, 'Zebra', 'Brazink.i1hho1.rev.vodafone.pt', 'Web2 * Está em Distrito de Braga - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:41:16'),
(112, 'AsuZ', 'Brazink.h29okb.rev.vodafone.pt', 'Web1 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:41:36'),
(120, 'Rebelde', 'Brazink.k4uctv.irccloud.com', 'IRC * Está em Califórnia - EUA', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:42:06'),
(130, 'i732', 'Brazink.lu208e.dsl.telepac.pt', 'App * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:42:56'),
(131, 'Tina', 'Brazink.mqrlsb.netvisao.pt', 'Web2 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:43:06'),
(132, 'hang', 'Brazink.6lhjt3.rev.vodafone.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:43:06'),
(139, 'Log', 'localhost', '6iLog 1.2 - IRC Log', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:44:06'),
(140, 'DaBoyWhoMurderedLove', 'Brazink.dpa5hs.dsl.telepac.pt', 'Web2 * Está em Leiria - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:44:07'),
(151, 'Ssandra', 'Brazink.kmh.pqc.20.81.IP', 'Web2 * Está em Açores - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:45:38'),
(158, 'Francine', 'Brazink.8og.j71.148.201.IP', 'Web2 * Está em São Paulo - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:46:17'),
(162, 'nuno00', 'Brazink.bmq9uh.dsl.telepac.pt', 'Web2 * Está em Distrito da Guarda - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:47:06'),
(171, 'caladolx', 'Brazink.4l70na.bl26.telepac.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:48:07'),
(172, 'virginia', 'Brazink.jso5a1.rev.sfr.net', 'Web2 * Está em Sena Saint Denis - Francia', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:48:07'),
(173, 'Olhos_Vendados', 'Brazink.r362f2.dsl.telepac.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:48:08'),
(175, 'Bernas25anos', 'Brazink.km3r15.dsl.telepac.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:48:36'),
(176, 'Thiago486', 'Brazink.4ck.qb2.77.201.IP', 'Web2 * Está em Minas Gerais - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:48:37'),
(180, 'normal', 'Brazink.e5ekmn.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:49:07'),
(182, 'homemsemsono', 'Brazink.pv15ig.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:49:28'),
(183, 'EpiC', 'Brazink.h29okb.rev.vodafone.pt', 'IRC * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:49:36'),
(189, 'scared_of_girls', 'Brazink.325d93.cpe.netcabo.pt', 'IRC * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:50:06'),
(190, 'EleLx', 'Brazink.tmj3fk.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:50:07'),
(191, 'ViDAETERNA_', 'Brazink.v73.r16.205.186.IP', 'Web2 * Está em Rio de Janeiro - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:50:07'),
(194, 'amigoo', 'Brazink.jqu.5si.189.37.IP', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:50:37'),
(195, '_M0r3na', 'Brazink.c2g.hvu.250.188.IP', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:50:37'),
(196, 'Medico_', 'Brazink.bnklum.dsl.telepac.pt', 'Web2 * Está em Distrito de Braga - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:50:38'),
(199, 'HOMEM_59', 'Brazink.dh1bh4.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:51:53'),
(203, 'Bom_Amigo', 'Brazink.o990jj.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:52:51'),
(211, 'Tictac', 'Brazink.ifl.ejd.214.89.IP', 'Web2 * Está em  - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:54:34'),
(215, 'Pedro_gaia', 'Brazink.c5t.5ms.196.87.IP', 'Web1 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:56:25'),
(216, 'Rodrigo35', 'Brazink.87a.tti.5.189.IP', 'Web1 * Está em Goiás - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:56:59'),
(217, 'engenheiro_c', 'Brazink.prq789.cpe.netcabo.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 00:57:01'),
(224, 'Vacinada', 'Brazink.8jsuj2.dsl.telepac.pt', 'Web2 * Está em Leiria - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:00:22'),
(229, 'hcampogrande', 'Brazink.st8.64d.245.170.IP', 'Web2 * Está em Mato Grosso do Sul - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:04:28'),
(230, 'diferente_', 'Brazink.4428fm.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:04:36'),
(232, 'Starlight_girl', 'Brazink.lfp8nb.cpe.netcabo.pt', 'Web2 * Está em Aveiro - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:05:02'),
(238, 'Msolteira96', 'Brazink.o79.fe2.37.177.IP', 'Web2 * Está em Ceará - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:07:18'),
(240, 'vanessa25', 'Brazink.6ckqku.rev.vodafone.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:08:48'),
(245, 'eu-h-', 'Brazink.l9l.ee2.169.62.IP', 'Web2 * Está em Região Autônoma da Madeira - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:09:59'),
(246, 'Tequila', 'Brazink.psl61u.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:10:08'),
(248, 'Musk', 'Brazink.deghq7.cpe.netcabo.pt', 'Web2 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:10:15'),
(249, 'Hazores', 'Brazink.u62tr6.rev.sfr.net', 'Web2 * Está em Valle de Marne - Francia', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:10:25'),
(253, 'Madurosintra', 'Brazink.k7gkod.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:12:22'),
(256, 'Sage', 'Brazink.2avo60.cpe.netcabo.pt', 'Web2 * Está em Aveiro - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:13:30'),
(257, 'RuiLxPt', 'Brazink.9lpdob.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:14:07'),
(259, 'Longplaying', 'Brazink.sjigv5.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:14:21'),
(262, 'merkurie', 'Brazink.fmbab6.cpe.netcabo.pt', 'Web2 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:15:17'),
(269, 'joana1', 'Brazink.6lgrd5.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:17:01'),
(271, 'Sweet_Man_Lx', 'Brazink.0p1cqr.dsl.telepac.pt', 'Web1 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:17:17'),
(273, 'PedroLx41', 'Brazink.5c3s73.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:17:31'),
(277, 'Daniel26', 'Brazink.g4dqnh.dsl.telepac.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:18:19'),
(282, 'hcasadoo', 'Brazink.l7v2nv.dsl.telepac.pt', 'Web1 * Está em Leiria - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:19:56'),
(283, '__{{DuKe}}__', 'Brazink.b96.35v.97.138.IP', 'IRC * Está em Rio Grande do Sul - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:20:07'),
(284, 'Nacho', 'Brazink.7rb.5vm.69.148.IP', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:20:12'),
(285, 'BossMorenoPorto', 'Brazink.o5m72t.dsl.telepac.pt', 'Web2 * Está em Aveiro - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:20:20'),
(286, 'deUSA_dos_cabeLOS_caCHEadoS', 'Brazink.44g.kna.51.177.IP', 'App * Está em Paraíba - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:20:43'),
(287, 'MedicoPrt', 'Brazink.lhr42f.dsl.telepac.pt', 'Web2 * Está em Vila Real - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:20:48'),
(289, 'anosa', 'Brazink.qltkm4.net.novis.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:21:22'),
(290, 'PUMA', 'Brazink.38ll3b.cpe.netcabo.pt', 'App * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:21:29'),
(291, 'Afonso', 'Brazink.34h.vtj.189.37.IP', 'Web2 * Está em Vila Real - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:21:35'),
(293, 'Unica', 'Brazink.uqc10p.dsl.telepac.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:21:47'),
(295, 'Moreno_N', 'Brazink.bq2.53k.189.37.IP', 'Web2 * Está em Distrito de Braga - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:22:33'),
(298, 'Dark_Angel', 'Brazink.9ur43v.rev.vodafone.pt', 'Web2 * Está em Distrito de Braga - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:23:37'),
(299, 'Alfredo', 'Brazink.km23cb.cpe.netcabo.pt', 'Web1 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:23:44'),
(303, 'Mlkao', 'Brazink.c9r.h8i.191.179.IP', 'Web2 * Está em Amazonas - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:25:06'),
(305, 'NickCerto', 'Brazink.mftlik.dsl.telepac.pt', 'Web2 * Está em Distrito de Braga - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:25:43'),
(306, 'Algarvio40', 'Brazink.ktn39c.dsl.telepac.pt', 'Web2 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:26:19'),
(307, 'Mary', 'Brazink.2a66e5.veloxzone.com.br', 'Web1 * Está em Rio de Janeiro - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:27:13'),
(308, 'mulher41norte', 'Brazink.37fsu7.net.novis.pt', 'Web2 * Está em Distrito de Braga - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:27:14'),
(309, 'orquideabrancaM', 'Brazink.2i887o.netvisao.pt', 'Web2 * Está em Portalegre - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:28:31'),
(310, 'Casado45', 'Brazink.b463cs.rev.vodafone.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:29:20'),
(312, 'joaolx', 'Brazink.v6lk0v.dsl.telepac.pt', 'Web2 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:29:45'),
(313, 'Bitinha', 'Brazink.dchqrq.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:30:02'),
(314, 'MotardPT2', 'Brazink.o4p.nd9.69.148.IP', 'App * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:30:03'),
(315, 'joaofilipe', 'Brazink.hnlng0.dsl.telepac.pt', 'Web2 * Está em Viseu - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:30:03'),
(316, 'Anocas', 'Brazink.envmtf.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:30:23'),
(317, 'DuduBR', 'Brazink.9al.e17.108.179.IP', 'Web2 * Está em Santa Catarina - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-23 01:30:58');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clones`
--
ALTER TABLE `clones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clones`
--
ALTER TABLE `clones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
