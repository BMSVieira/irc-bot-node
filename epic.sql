-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Jun-2024 às 04:53
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
-- Estrutura da tabela `bot_entradas`
--

CREATE TABLE `bot_entradas` (
  `id_entrada` int(11) NOT NULL,
  `nick` varchar(255) NOT NULL,
  `host` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `bot_entradas`
--

INSERT INTO `bot_entradas` (`id_entrada`, `nick`, `host`, `date`) VALUES
(1, 'EpiC', 'Brazink.qivqvu.rev.vodafone.pt', '2024-06-29 02:13:48'),
(3, 'Global', 'services.brazink.net', '2024-06-29 02:13:51'),
(4, 'Bom_Amigo', 'Brazink.o990jj.cpe.netcabo.pt', '2024-06-29 02:13:53'),
(5, 'moi_meme', 'Brazink.1hp.ogi.230.161.IP', '2024-06-29 02:13:55'),
(6, 'Moon', 'Brazink.brr2tj.net.novis.pt', '2024-06-29 02:14:18'),
(7, 'RadioPortugal', 'Brazink.13rkjv.brazink.com', '2024-06-29 02:14:18'),
(8, 'Homem50So', 'Brazink.llg8fb.rev.vodafone.pt', '2024-06-29 02:14:18'),
(9, 'Quarentao-lx', 'Brazink.c4caio.rev.vodafone.pt', '2024-06-29 02:14:38'),
(10, 'Thati_Rj', 'Brazink.40imls.tinasnet.net.br', '2024-06-29 02:14:48'),
(11, 'Admirador', 'Brazink.0373rr.cpe.netcabo.pt', '2024-06-29 02:14:49'),
(12, 'carlos', 'Brazink.rurci1.cpe.netcabo.pt', '2024-06-29 02:14:49'),
(13, 'Audi', 'Brazink.enu.sre.69.148.IP', '2024-06-29 02:14:57'),
(14, 'MulataLx', 'Brazink.ndu9ll.cpe.netcabo.pt', '2024-06-29 02:15:18'),
(15, 'EnigmaTica', 'Brazink.92fotr.netvisao.pt', '2024-06-29 02:15:19'),
(16, 'Log', 'localhost', '2024-06-29 02:15:19'),
(17, 'paulo_lisboa', 'Brazink.b3rrv4.rev.vodafone.pt', '2024-06-29 02:15:37'),
(18, 'Daniela', 'Brazink.19dfe2.dsl.telepac.pt', '2024-06-29 02:15:40'),
(19, 'CaLorina', 'Brazink.h8i.4lk.69.148.IP', '2024-06-29 02:15:48'),
(20, 'elsa', 'Brazink.u4h.db3.69.148.IP', '2024-06-29 02:15:49'),
(21, 'AsuZ', 'Brazink.qivqvu.rev.vodafone.pt', '2024-06-29 02:15:49'),
(22, 'Zeca', 'Brazink.qoe.5q0.196.87.IP', '2024-06-29 02:15:50'),
(23, 'Dark_Angel', 'Brazink.9ur43v.rev.vodafone.pt', '2024-06-29 02:16:18'),
(24, 'Hugo_', 'Brazink.1d79nv.cpe.netcabo.pt', '2024-06-29 02:16:18'),
(25, 'MiguelZzzZZz', 'Brazink.qmmvrv.cpe.netcabo.pt', '2024-06-29 02:16:18'),
(26, 'isabel_35', 'Brazink.4oa.tt3.69.148.IP', '2024-06-29 02:16:48'),
(27, 'ElePorto', 'Brazink.qoqntu.cpe.netcabo.pt', '2024-06-29 02:16:48'),
(28, 'Nickless', 'Brazink.78ij35.dsl.telepac.pt', '2024-06-29 02:16:48'),
(29, 'Rui', 'Brazink.r35.2r0.140.188.IP', '2024-06-29 02:17:18'),
(30, 'Antonio472', 'Brazink.3he6js.rev.vodafone.pt', '2024-06-29 02:17:18'),
(31, 'hugo', 'Brazink.dnl0r6.rev.vodafone.pt', '2024-06-29 02:17:24'),
(32, 'Anziety', 'Brazink.ctu.ciu.230.161.IP', '2024-06-29 02:17:48'),
(33, 'Jonas77', 'Brazink.4o4.h12.214.89.IP', '2024-06-29 02:17:48'),
(34, 'Lx_casado', 'Brazink.ea6hgs.dsl.telepac.pt', '2024-06-29 02:17:48'),
(35, 'Franco48', 'Brazink.qoe.5q0.196.87.IP', '2024-06-29 02:18:01'),
(36, 'Nacho', 'Brazink.puc4an.rev.vodafone.pt', '2024-06-29 02:18:18'),
(37, 'kamilla', 'Brazink.b9t.keh.79.170.IP', '2024-06-29 02:18:18'),
(38, 'Rafael_34', 'Brazink.jjm02n.cpe.netcabo.pt', '2024-06-29 02:18:18'),
(39, 'Nunovla', 'Brazink.3fe0oo.cpe.netcabo.pt', '2024-06-29 02:18:21'),
(40, 'AzoreanoB40', 'Brazink.9sf.db9.29.78.IP', '2024-06-29 02:18:26'),
(41, 'Slowdive', 'Brazink.mi5.518.113.185.IP', '2024-06-29 02:18:35'),
(42, 'ViDAETERNA_', 'Brazink.v73.r16.205.186.IP', '2024-06-29 02:18:48'),
(43, 'alice', 'Brazink.14fgvs.cpe.netcabo.pt', '2024-06-29 02:18:49'),
(44, 'PannaCotta', 'Brazink.dor.vp8.250.188.IP', '2024-06-29 02:18:49'),
(45, 'Bom_Amigo', 'Brazink.o990jj.cpe.netcabo.pt', '2024-06-29 02:18:53'),
(46, 'Zeto', 'Brazink.vr3iel.cpe.netcabo.pt', '2024-06-29 02:19:18'),
(47, 'Sergio_Porto_PT', 'Brazink.rd1b0f.cpe.netcabo.pt', '2024-06-29 02:19:19'),
(48, 'blade', 'Brazink.hetopr.rev.vodafone.pt', '2024-06-29 02:19:19'),
(49, 'Leoa_PT', 'Brazink.42981s.netvisao.pt', '2024-06-29 02:19:30'),
(50, 'Escurinho', 'Brazink.vt6mkd.net.novis.pt', '2024-06-29 02:19:46'),
(51, 'Valadares', 'Brazink.9hd.m2i.214.89.IP', '2024-06-29 02:19:48'),
(52, 'Filme', 'Brazink.qmo.ncb.28.104.IP', '2024-06-29 02:19:48'),
(53, 'Pequeninaabelhinha', 'Brazink.rsa.btc.29.189.IP', '2024-06-29 02:19:48'),
(54, 'highspecgam', 'Brazink.80egfr.dsl.telepac.pt', '2024-06-29 02:20:07'),
(55, 'hugo', 'Brazink.dnl0r6.rev.vodafone.pt', '2024-06-29 02:20:18'),
(56, 'ios', 'Brazink.rgq.tvr.50.46.IP', '2024-06-29 02:20:18'),
(57, 'Cabeludo', 'Brazink.5cenkj.bl26.telepac.pt', '2024-06-29 02:20:18'),
(58, 'Luuis', 'Brazink.t73a23.rev.vodafone.pt', '2024-06-29 02:20:40'),
(59, 'Pedro44', 'Brazink.vi3.518.113.185.IP', '2024-06-29 02:20:48'),
(60, 'h-no-Porto', 'Brazink.mkvksb.cpe.netcabo.pt', '2024-06-29 02:20:49'),
(61, 'GoGoRicky', 'Brazink.9ln76n.dsl.telepac.pt', '2024-06-29 02:20:49'),
(62, 'Andre28', 'Brazink.0akasr.rev.vodafone.pt', '2024-06-29 02:21:18'),
(63, 'inga', 'Brazink.4h3.dcp.50.46.IP', '2024-06-29 02:21:18'),
(64, 'normal', 'Brazink.e5ekmn.cpe.netcabo.pt', '2024-06-29 02:21:48'),
(65, 'pedrocoimbra', 'Brazink.fctjhk.dsl.telepac.pt', '2024-06-29 02:21:49'),
(66, 'Mel3', 'Brazink.4it.bdc.251.188.IP', '2024-06-29 02:21:49'),
(67, 'H65seixal', 'Brazink.tr3i4k.rev.vodafone.pt', '2024-06-29 02:22:12'),
(68, 'Lobo_da_Lua', 'Brazink.9pdkef.dsl.telepac.pt', '2024-06-29 02:22:18'),
(69, 'H_Lisboa', 'Brazink.mgmm1h.bl26.telepac.pt', '2024-06-29 02:22:19'),
(70, 'mulher_', 'Brazink.hqe.5qf.65.128.IP', '2024-06-29 02:22:46'),
(71, 'PUMA', 'Brazink.57h.1na.190.213.IP', '2024-06-29 02:22:48'),
(72, 'Joao29', 'Brazink.k0bmdg.rev.vodafone.pt', '2024-06-29 02:22:49'),
(73, 'EpiC', 'Brazink.qivqvu.rev.vodafone.pt', '2024-06-29 02:23:18'),
(74, 'RodrigoG', 'Brazink.goccrc.rev.vodafone.pt', '2024-06-29 02:23:19'),
(75, 'Rui_vs', 'Brazink.ralqum.dsl.telepac.pt', '2024-06-29 02:23:43'),
(76, 'Andre', 'Brazink.pace0u.dsl.telepac.pt', '2024-06-29 02:23:48'),
(77, 'visitaa', 'Brazink.k9a38i.cpe.netcabo.pt', '2024-06-29 02:24:10'),
(78, 'Pedro45', 'Brazink.6hs056.rev.vodafone.pt', '2024-06-29 02:24:11'),
(79, 'Filipe3589', 'Brazink.d11.t61.69.148.IP', '2024-06-29 02:24:18'),
(80, 'inga', 'Brazink.4h3.dcp.50.46.IP', '2024-06-29 02:24:33'),
(81, 'rui_pt', 'Brazink.l84hb5.dsl.telepac.pt', '2024-06-29 02:24:35'),
(82, 'portugal', 'Brazink.u015p1.cpe.netcabo.pt', '2024-06-29 02:24:35'),
(83, 'Pedro45', 'Brazink.6hs056.rev.vodafone.pt', '2024-06-29 02:24:46'),
(84, 'divorciado', 'Brazink.d42j2v.rev.vodafone.pt', '2024-06-29 02:24:55'),
(85, 'Pedro-Aveiro', 'Brazink.9purkq.rev.vodafone.pt', '2024-06-29 02:25:01'),
(86, 'Quarentao-lx', 'Brazink.c4caio.rev.vodafone.pt', '2024-06-29 02:25:39'),
(87, 'Eborense', 'Brazink.7sdt12.rev.vodafone.pt', '2024-06-29 02:25:43'),
(88, '_Miguel_', 'Brazink.0b7e61.net.novis.pt', '2024-06-29 02:25:51'),
(89, 'homemaltopt', 'Brazink.irf.a39.69.148.IP', '2024-06-29 02:26:10'),
(90, 'H40s', 'Brazink.6hs056.rev.vodafone.pt', '2024-06-29 02:26:58'),
(91, 'mauro', 'Brazink.rg8job.rev.vodafone.pt', '2024-06-29 02:28:07'),
(92, 'Fernando_', 'Brazink.6p8pcn.dsl.telepac.pt', '2024-06-29 02:29:16'),
(93, 'JustTalk', 'Brazink.pcamoj.cpe.netcabo.pt', '2024-06-29 02:29:40'),
(94, 'Te-enrabo', 'Brazink.j5dfu4.desktop.com.br', '2024-06-29 02:29:43'),
(95, 'HomemPT', 'Brazink.m329vb.net.novis.pt', '2024-06-29 02:29:50'),
(96, 'Belaaos43', 'Brazink.e57.8pq.105.177.IP', '2024-06-29 02:30:01'),
(97, 'carlitos', 'Brazink.4cj81d.rev.vodafone.pt', '2024-06-29 02:31:31'),
(98, 'Militar1', 'Brazink.qoqntu.cpe.netcabo.pt', '2024-06-29 02:32:19'),
(99, 'Sage', 'Brazink.2avo60.cpe.netcabo.pt', '2024-06-29 02:32:40'),
(100, 'Juliano', 'Brazink.7ietd7.Rapidanet.net.br', '2024-06-29 02:33:09'),
(101, 'Pedrotomas', 'Brazink.c10.i6d.63.148.IP', '2024-06-29 02:33:53'),
(102, 'carlitos69', 'Brazink.4cj81d.rev.vodafone.pt', '2024-06-29 02:34:04'),
(103, 'LucasLisboa', 'Brazink.sfc7qp.dsl.telepac.pt', '2024-06-29 02:34:36'),
(104, 'H_Farda', 'Brazink.qoqntu.cpe.netcabo.pt', '2024-06-29 02:34:56'),
(105, 'Homem50So', 'Brazink.llg8fb.rev.vodafone.pt', '2024-06-29 02:34:57'),
(106, 'Fernando_82', 'Brazink.bnd.h3m.214.89.IP', '2024-06-29 02:34:59'),
(107, 'Diogok', 'Brazink.4s8vhh.cpe.netcabo.pt', '2024-06-29 02:36:48'),
(108, 'Homem50So', 'Brazink.llg8fb.rev.vodafone.pt', '2024-06-29 02:37:19'),
(109, 'PeterGestor', 'Brazink.s6f.m63.65.194.IP', '2024-06-29 02:38:40'),
(110, 'Duarte', 'Brazink.i3uu8t.cpe.netcabo.pt', '2024-06-29 02:38:48'),
(111, 'Tarci', 'Brazink.6r6.27q.164.45.IP', '2024-06-29 02:38:59'),
(112, 'Kiko54Lx', 'Brazink.ag7rrg.cpe.netcabo.pt', '2024-06-29 02:40:00'),
(113, 'Ana23PT', 'Brazink.ouf.7m2.251.188.IP', '2024-06-29 02:41:28'),
(114, 'Trifolium', 'Brazink.ec4.2r0.140.188.IP', '2024-06-29 02:42:36'),
(115, 'orquideabrancaM', 'Brazink.2i887o.netvisao.pt', '2024-06-29 02:43:39'),
(116, 'AndreCE', 'Brazink.cq2.lu3.137.177.IP', '2024-06-29 02:43:52'),
(117, 'miguel_boy_chunga', 'Brazink.453rt9.cpe.netcabo.pt', '2024-06-29 02:43:54'),
(118, 'camila47', 'Brazink.548ggl.dsl.telepac.pt', '2024-06-29 02:43:56'),
(119, 'H_Lisboa', 'Brazink.mgmm1h.bl26.telepac.pt', '2024-06-29 02:44:09'),
(120, 'DJ_batabranca', 'Brazink.i7reae.rev.vodafone.pt', '2024-06-29 02:45:29'),
(121, 'candy', 'Brazink.lkd.247.137.143.IP', '2024-06-29 02:45:52'),
(122, 'Ghostt', 'Brazink.mi5.518.113.185.IP', '2024-06-29 02:45:59'),
(123, 'Alex_', 'Brazink.u09got.dsl.telepac.pt', '2024-06-29 02:46:19'),
(124, 'Pequeninaabelhinha', 'Brazink.rsa.btc.29.189.IP', '2024-06-29 02:46:54'),
(125, 'anosa', 'Brazink.cdo.7sv.102.93.IP', '2024-06-29 02:46:55'),
(126, 'Manuel-Coimbra', 'Brazink.pfsdev.cpe.netcabo.pt', '2024-06-29 02:47:19'),
(127, 'casal', 'Brazink.rq7.097.196.87.IP', '2024-06-29 02:47:36'),
(128, 'Caralegal', 'Brazink.sgn.5i3.140.177.IP', '2024-06-29 02:47:44'),
(129, 'bianca20', 'Brazink.rq7.097.196.87.IP', '2024-06-29 02:47:56'),
(130, 'Ghostt', 'Brazink.kut.uai.113.185.IP', '2024-06-29 02:49:25'),
(131, 'Slowdive', 'Brazink.i6a.uai.113.185.IP', '2024-06-29 02:49:28'),
(132, 'kamilla', 'Brazink.b9t.keh.79.170.IP', '2024-06-29 02:50:07'),
(133, 'RolaBranca', 'Brazink.m27.r73.73.187.IP', '2024-06-29 02:50:35'),
(134, 'medicopt', 'Brazink.d42j2v.rev.vodafone.pt', '2024-06-29 02:51:50'),
(135, 'LucasLisboa', 'Brazink.sfc7qp.dsl.telepac.pt', '2024-06-29 02:53:30'),
(136, 'GolfoBrasil', 'Brazink.5rg.4pb.195.191.IP', '2024-06-29 02:53:46'),
(137, 'GoollldoBrasil', 'Brazink.5rg.4pb.195.191.IP', '2024-06-29 02:54:19'),
(138, 'elsa', 'Brazink.u4h.db3.69.148.IP', '2024-06-29 02:54:39'),
(139, 'Pedro_saojoaodamadeira', 'Brazink.u09got.dsl.telepac.pt', '2024-06-29 02:54:56'),
(140, 'Fotografo_Lisboa', 'Brazink.0p1cqr.dsl.telepac.pt', '2024-06-29 02:55:08'),
(141, 'orquideabrancaM', 'Brazink.2i887o.netvisao.pt', '2024-06-29 02:56:03'),
(142, 'Casadobraga', 'Brazink.eft06n.rev.vodafone.pt', '2024-06-29 02:56:59'),
(143, 'Tatiana_SP_Capital', 'Brazink.toe.sk9.50.177.IP', '2024-06-29 02:57:16'),
(144, 'Vip', 'Brazink.a52.0f5.220.186.IP', '2024-06-29 02:57:27'),
(145, 'Vip', 'Brazink.a52.0f5.220.186.IP', '2024-06-29 02:58:21'),
(146, 'polexx', 'Brazink.amtiob.dsl.telepac.pt', '2024-06-29 02:58:26'),
(147, 'Fabio_', 'Brazink.dhmqph.dsl.telepac.pt', '2024-06-29 02:58:40'),
(148, 'Fyodor', 'Brazink.iikt2h.cpe.netcabo.pt', '2024-06-29 02:58:44'),
(149, 'Pequeninaabelhinha', 'Brazink.rsa.btc.29.189.IP', '2024-06-29 02:58:51'),
(150, 'Alex_', 'Brazink.u09got.dsl.telepac.pt', '2024-06-29 02:59:37'),
(151, 'moreno31', 'Brazink.ucfckq.dsl.telepac.pt', '2024-06-29 03:00:04'),
(152, 'H_farda', 'Brazink.qoqntu.cpe.netcabo.pt', '2024-06-29 03:02:13'),
(153, 'PauloSigilo', 'Brazink.to4.0po.230.161.IP', '2024-06-29 03:03:33'),
(154, 'pedrosousa', 'Brazink.rqv9qu.rev.vodafone.pt', '2024-06-29 03:03:44'),
(155, 'Zeca48', 'Brazink.qoe.5q0.196.87.IP', '2024-06-29 03:03:56'),
(156, 'Mariana42', 'Brazink.uq1o56.cpe.netcabo.pt', '2024-06-29 03:04:56'),
(157, 'Yuri26', 'Brazink.7ietd7.Rapidanet.net.br', '2024-06-29 03:05:25'),
(158, 'lucho', 'Brazink.mv6a81.net.novis.pt', '2024-06-29 03:05:26'),
(159, 'Joaquim45', 'Brazink.30dbnf.rev.vodafone.pt', '2024-06-29 03:05:45'),
(160, 'DavidLisboa', 'Brazink.sfc7qp.dsl.telepac.pt', '2024-06-29 03:05:52'),
(161, 'fabyo', 'Brazink.2pbqv8.cpe.netcabo.pt', '2024-06-29 03:06:35'),
(162, 'Brutinho', 'Brazink.qvm.7g5.214.89.IP', '2024-06-29 03:07:40'),
(163, 'Professornorte', 'Brazink.4ti17e.rev.vodafone.pt', '2024-06-29 03:07:50'),
(164, 'H_farda', 'Brazink.qoqntu.cpe.netcabo.pt', '2024-06-29 03:08:11'),
(165, 'anonimaAa', 'Brazink.5rg.4pb.195.191.IP', '2024-06-29 03:08:12'),
(166, 'Paulo40', 'Brazink.to4.0po.230.161.IP', '2024-06-29 03:08:15'),
(167, 'JustTalk', 'Brazink.pcamoj.cpe.netcabo.pt', '2024-06-29 03:08:16'),
(168, 'Duarte', 'Brazink.i3uu8t.cpe.netcabo.pt', '2024-06-29 03:09:00'),
(169, 'Paulo40', 'Brazink.to4.0po.230.161.IP', '2024-06-29 03:09:11'),
(170, 'decadente', 'Brazink.8eki09.rev.vodafone.pt', '2024-06-29 03:09:23'),
(171, 'Andree', 'Brazink.vgr7m2.rev.vodafone.pt', '2024-06-29 03:09:42'),
(172, 'AgroBeto', 'Brazink.56se24.dsl.telepac.pt', '2024-06-29 03:09:54'),
(173, 'negroalto', 'Brazink.tle.5tj.250.188.IP', '2024-06-29 03:10:50'),
(174, 'susy', 'Brazink.d1t91f.netvisao.pt', '2024-06-29 03:11:21'),
(175, 'Tatiana_SP_Capital', 'Brazink.fan.rbh.50.177.IP', '2024-06-29 03:11:53'),
(176, 'Admirador', 'Brazink.0373rr.cpe.netcabo.pt', '2024-06-29 03:12:14'),
(177, 'comaprima', 'Brazink.pjh.9t0.56.38.IP', '2024-06-29 03:12:27'),
(178, 'lucho', 'Brazink.mv6a81.net.novis.pt', '2024-06-29 03:12:43'),
(179, 'Casado_lx', 'Brazink.1h5.dcp.50.46.IP', '2024-06-29 03:13:04'),
(180, 'centro', 'Brazink.e0d.onn.250.188.IP', '2024-06-29 03:14:11'),
(181, 'Juliano', 'Brazink.7ietd7.Rapidanet.net.br', '2024-06-29 03:14:11'),
(182, 'Casado_lx', 'Brazink.ea6hgs.dsl.telepac.pt', '2024-06-29 03:14:27'),
(183, 'H_farda', 'Brazink.qoqntu.cpe.netcabo.pt', '2024-06-29 03:14:50'),
(184, 'Tatiana_SP_Capital', 'Brazink.iii.mgi.50.177.IP', '2024-06-29 03:16:22'),
(185, 'Sage', 'Brazink.2avo60.cpe.netcabo.pt', '2024-06-29 03:16:31'),
(186, 'max93', 'Brazink.d3qu88.cpe.netcabo.pt', '2024-06-29 03:16:40'),
(187, 'Ricardo', 'Brazink.l8k6rk.rev.vodafone.pt', '2024-06-29 03:18:04'),
(188, 'PedroLisboa', 'Brazink.sfc7qp.dsl.telepac.pt', '2024-06-29 03:18:46'),
(189, 'negropt', 'Brazink.3lgk47.cpe.netcabo.pt', '2024-06-29 03:19:24'),
(190, 'susy', 'Brazink.d1t91f.netvisao.pt', '2024-06-29 03:19:41'),
(191, 'Antonio47', 'Brazink.stl.osm.50.46.IP', '2024-06-29 03:20:17'),
(192, 'Antonio472', 'Brazink.3he6js.rev.vodafone.pt', '2024-06-29 03:20:23'),
(193, 'toze', 'Brazink.4l70na.bl26.telepac.pt', '2024-06-29 03:20:39'),
(194, 'Miguel47', 'Brazink.obrl93.dsl.telepac.pt', '2024-06-29 03:20:49'),
(195, 'Fotografo_Lisboa', 'Brazink.0p1cqr.dsl.telepac.pt', '2024-06-29 03:21:30'),
(196, 'tatuad9', 'Brazink.a2gotp.rev.vodafone.pt', '2024-06-29 03:21:40'),
(197, 'ricardoveiga', 'Brazink.e1tf9m.rev.vodafone.pt', '2024-06-29 03:22:19'),
(198, 'Valadares', 'Brazink.9hd.m2i.214.89.IP', '2024-06-29 03:23:00'),
(199, 'Coe', 'Brazink.8hrbcj.rev.vodafone.pt', '2024-06-29 03:23:21'),
(200, '_Miguel_', 'Brazink.0b7e61.net.novis.pt', '2024-06-29 03:23:29'),
(201, 'tesao1', 'Brazink.pjh.9t0.56.38.IP', '2024-06-29 03:25:07'),
(202, 'Wolverine', 'Brazink.pbnpbv.rev.vodafone.pt', '2024-06-29 03:26:09'),
(203, 'Carla52', 'Brazink.b3psau.cpe.netcabo.pt', '2024-06-29 03:26:39'),
(204, 'candy', 'Brazink.lkd.247.137.143.IP', '2024-06-29 03:27:39'),
(205, 'Marilia98', 'Brazink.776.4u5.88.187.IP', '2024-06-29 03:27:51'),
(206, 'Homem50So', 'Brazink.llg8fb.rev.vodafone.pt', '2024-06-29 03:27:54'),
(207, 'setubal25', 'Brazink.i0m.097.196.87.IP', '2024-06-29 03:28:51'),
(208, 'Convidado', 'Brazink.70hp19.cpe.netcabo.pt', '2024-06-29 03:28:55'),
(209, 'Joana', 'Brazink.v4n4f9.cpe.netcabo.pt', '2024-06-29 03:31:49'),
(210, 'convidado', 'Brazink.70hp19.cpe.netcabo.pt', '2024-06-29 03:31:54'),
(211, 'decadente', 'Brazink.8eki09.rev.vodafone.pt', '2024-06-29 03:32:22'),
(212, 'MiGUEL01', 'Brazink.5j7.t95.69.148.IP', '2024-06-29 03:32:37'),
(213, 'maxptH', 'Brazink.ls05u4.net.novis.pt', '2024-06-29 03:33:31'),
(214, 'jorge-coimbra', 'Brazink.1s4som.dsl.telepac.pt', '2024-06-29 03:34:26'),
(215, 'lucho', 'Brazink.mv6a81.net.novis.pt', '2024-06-29 03:34:47'),
(216, 'H_farda', 'Brazink.qoqntu.cpe.netcabo.pt', '2024-06-29 03:35:17'),
(217, 'carlos_prt', 'Brazink.sa1fg1.cpe.netcabo.pt', '2024-06-29 03:35:38'),
(218, 'lucho', 'Brazink.mv6a81.net.novis.pt', '2024-06-29 03:39:04'),
(219, 'Carla59', 'Brazink.981lof.dsl.telepac.pt', '2024-06-29 03:39:16'),
(220, 'Kellynha', 'Brazink.3m4tc6.ezernet.com.br', '2024-06-29 03:39:36'),
(221, 'FelgueorasH', 'Brazink.70hp19.cpe.netcabo.pt', '2024-06-29 03:39:58'),
(222, 'HomemPT', 'Brazink.m329vb.net.novis.pt', '2024-06-29 03:40:42'),
(223, 'mudarsenha12', 'Brazink.08u.ct6.171.45.IP', '2024-06-29 03:41:45'),
(224, 'pardal', 'Brazink.1s9.vs3.97.179.IP', '2024-06-29 03:42:48'),
(225, 'Miguelitos', 'Brazink.q7e.518.113.185.IP', '2024-06-29 03:43:08'),
(226, 'mudarsenha12', 'Brazink.08u.ct6.171.45.IP', '2024-06-29 03:44:18'),
(227, 'moreno37', 'Brazink.rtqkde.rev.vodafone.pt', '2024-06-29 03:44:20'),
(228, 'max-H-lx-28', 'Brazink.ls05u4.net.novis.pt', '2024-06-29 03:45:23'),
(229, 'mudarsenha12', 'Brazink.08u.ct6.171.45.IP', '2024-06-29 03:45:49'),
(230, 'rafa', 'Brazink.9b0dbq.dsl.telepac.pt', '2024-06-29 03:49:03'),
(231, 'faro26a', 'Brazink.e48.sre.69.148.IP', '2024-06-29 03:49:49'),
(232, 'DEL', 'Brazink.vch.85c.214.89.IP', '2024-06-29 03:49:57'),
(233, 'H_Farda', 'Brazink.qoqntu.cpe.netcabo.pt', '2024-06-29 03:50:57'),
(234, 'Carla59', 'Brazink.981lof.dsl.telepac.pt', '2024-06-29 03:51:54'),
(235, 'susy', 'Brazink.d1t91f.netvisao.pt', '2024-06-29 03:52:29'),
(236, 'HdoNorte', 'Brazink.70hp19.cpe.netcabo.pt', '2024-06-29 03:53:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bot_logs`
--

CREATE TABLE `bot_logs` (
  `id_log` int(11) NOT NULL,
  `log_type` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `bot_logs`
--

INSERT INTO `bot_logs` (`id_log`, `log_type`, `description`, `date`) VALUES
(1, 'multicon', 'User: Teco (Brazink.h29okb.rev.vodafone.pt) entrou. | User: Tico (Brazink.h29okb.rev.vodafone.pt) kickado', '2024-06-27 21:33:21'),
(2, 'multicon', 'User: MiguelR (Brazink.4cfdr6.dsl.telepac.pt) entrou. | User: Paulo--- (Brazink.4cfdr6.dsl.telepac.pt) kickado.', '2024-06-27 21:52:41'),
(3, 'multicon', 'User: Paulo--- (Brazink.4cfdr6.dsl.telepac.pt) entrou. | User: MiguelR (Brazink.4cfdr6.dsl.telepac.pt) kickado.', '2024-06-27 21:55:19'),
(4, 'multicon', 'User: moreno (Brazink.l33qrp.cpe.netcabo.pt) entrou. | User: tenhodona (Brazink.l33qrp.cpe.netcabo.pt) kickado.', '2024-06-27 22:03:14'),
(5, 'multicon', 'User: thiago25 (Brazink.e5mi2n.dsl.telepac.pt) entrou. | User: vitor51 (Brazink.e5mi2n.dsl.telepac.pt) kickado.', '2024-06-27 22:40:10'),
(6, 'multicon', 'User: solteiro92 (Brazink.l33qrp.cpe.netcabo.pt) entrou. | User: moreno (Brazink.l33qrp.cpe.netcabo.pt) kickado.', '2024-06-27 23:04:03'),
(7, 'multicon', 'User: urze32 (Brazink.mod.lsm.50.46.IP) entrou. | User: urze (Brazink.mod.lsm.50.46.IP) kickado.', '2024-06-27 23:07:22'),
(8, 'multicon', 'User: MaisUm48 (Brazink.ago.ooi.63.148.IP) entrou. | User: MaisUm (Brazink.ago.ooi.63.148.IP) kickado.', '2024-06-27 23:11:05'),
(9, 'multicon', 'User: MaisUm58 (Brazink.ago.ooi.63.148.IP) entrou. | User: MaisUm48 (Brazink.ago.ooi.63.148.IP) kickado.', '2024-06-27 23:16:50'),
(10, 'multicon', 'User: Guest54904 (Brazink.356.nq9.250.92.IP) entrou. | User: Guest31570 (Brazink.356.nq9.250.92.IP) kickado.', '2024-06-28 00:02:04'),
(11, 'multicon', 'User: Guest62951 (Brazink.356.nq9.250.92.IP) entrou. | User: Guest31570 (Brazink.356.nq9.250.92.IP) kickado.', '2024-06-28 00:03:08'),
(12, 'multicon', 'User: Guest62951 (Brazink.356.nq9.250.92.IP) entrou. | User: Guest54904 (Brazink.356.nq9.250.92.IP) kickado.', '2024-06-28 00:03:08'),
(13, 'multicon', 'User: cabelodefogo (Brazink.356.nq9.250.92.IP) entrou. | User: Guest31570 (Brazink.356.nq9.250.92.IP) kickado.', '2024-06-28 00:03:35'),
(14, 'multicon', 'User: cabelodefogo (Brazink.356.nq9.250.92.IP) entrou. | User: Guest54904 (Brazink.356.nq9.250.92.IP) kickado.', '2024-06-28 00:03:35'),
(15, 'multicon', 'User: cabelodefogo (Brazink.356.nq9.250.92.IP) entrou. | User: Guest62951 (Brazink.356.nq9.250.92.IP) kickado.', '2024-06-28 00:03:35'),
(16, 'multicon', 'User: leocadia (Brazink.356.nq9.250.92.IP) entrou. | User: Guest31570 (Brazink.356.nq9.250.92.IP) kickado.', '2024-06-28 00:12:51'),
(17, 'multicon', 'User: leocadia (Brazink.356.nq9.250.92.IP) entrou. | User: Guest54904 (Brazink.356.nq9.250.92.IP) kickado.', '2024-06-28 00:12:51'),
(18, 'multicon', 'User: leocadia (Brazink.356.nq9.250.92.IP) entrou. | User: Guest62951 (Brazink.356.nq9.250.92.IP) kickado.', '2024-06-28 00:12:51'),
(19, 'multicon', 'User: JulioC (Brazink.0fi75i.cpe.netcabo.pt) entrou. | User: Karlos_Pt (Brazink.0fi75i.cpe.netcabo.pt) kickado.', '2024-06-28 00:32:04'),
(20, 'multicon', 'User: lui (Brazink.5uf5fj.dsl.telepac.pt) entrou. | User: luissantos (Brazink.5uf5fj.dsl.telepac.pt) kickado.', '2024-06-28 00:55:20'),
(21, 'multicon', 'User: Mendes (Brazink.opb64p.dsl.telepac.pt) entrou. | User: acetatodetrembolona (Brazink.opb64p.dsl.telepac.pt) kickado.', '2024-06-28 01:28:43'),
(22, 'multicon', 'User: Miguel- (Brazink.goccrc.rev.vodafone.pt) entrou. | User: RodrigoG (Brazink.goccrc.rev.vodafone.pt) kickado.', '2024-06-28 01:29:31'),
(23, 'prohibited', 'maduro - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 01:32:09'),
(24, 'invalid', 'Eu - Nick demasiado curto, escolhe outro mais longo por favor.', '2024-06-28 02:44:51'),
(25, 'invalid', 'ai - Nick demasiado curto, escolhe outro mais longo por favor.', '2024-06-28 04:03:43'),
(26, 'invalid', 'ai - Nick demasiado curto, escolhe outro mais longo por favor.', '2024-06-28 04:03:57'),
(27, 'invalid', 'NS - Nick demasiado curto, escolhe outro mais longo por favor.', '2024-06-28 04:28:21'),
(28, 'multicon', 'User: Rabudatatuada (Brazink.iv5ci6.cpe.netcabo.pt) entrou. | User: PutinhaCasada (Brazink.iv5ci6.cpe.netcabo.pt) kickado.', '2024-06-28 04:42:55'),
(29, 'multicon', 'User: Antonio473 (Brazink.3he6js.rev.vodafone.pt) entrou. | User: Antonio47 (Brazink.3he6js.rev.vodafone.pt) kickado.', '2024-06-28 06:05:23'),
(30, 'multicon', 'User: verdadeiro (Brazink.r43726.dsl.telepac.pt) entrou. | User: simplesh (Brazink.r43726.dsl.telepac.pt) kickado.', '2024-06-28 06:30:04'),
(31, 'multicon', 'User: Antonio472 (Brazink.3he6js.rev.vodafone.pt) entrou. | User: Antonio473 (Brazink.3he6js.rev.vodafone.pt) kickado.', '2024-06-28 07:04:29'),
(32, 'multicon', 'User: simpatico_porto (Brazink.7sd9l4.net.novis.pt) entrou. | User: casado36 (Brazink.7sd9l4.net.novis.pt) kickado.', '2024-06-28 08:16:46'),
(33, 'multicon', 'User: vilma__2 (Brazink.m049rl.ptr83.nosmadeira.net) entrou. | User: vilma__ (Brazink.m049rl.ptr83.nosmadeira.net) kickado.', '2024-06-28 08:32:21'),
(34, 'prohibited', 'Militar - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 09:08:27'),
(35, 'prohibited', 'marido54 - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 09:16:32'),
(36, 'prohibited', 'Corno - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 09:36:35'),
(37, 'prohibited', 'marido54 - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 09:36:57'),
(38, 'prohibited', 'MaduroCharmoso_ - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 09:53:45'),
(39, 'multicon', 'User: MaduroCharmoso_ (Brazink.14q.moe.225.172.IP) entrou. | User: JorgeLx_ (Brazink.14q.moe.225.172.IP) kickado.', '2024-06-28 09:53:45'),
(40, 'prohibited', 'HMaduroLisboa - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 10:49:53'),
(41, 'prohibited', 'Militar - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 10:59:37'),
(42, 'multicon', 'User: Gustavo_Barreiro99 (Brazink.g5osc8.net.novis.pt) entrou. | User: Gustavo_Barreiro (Brazink.g5osc8.net.novis.pt) kickado.', '2024-06-28 11:03:47'),
(43, 'invalid', 'H - Nick demasiado curto, escolhe outro mais longo por favor.', '2024-06-28 11:03:51'),
(44, 'multicon', 'User: Gustavo-Barreiro53 (Brazink.g5osc8.net.novis.pt) entrou. | User: Gustavo-Barreiro (Brazink.g5osc8.net.novis.pt) kickado.', '2024-06-28 11:08:35'),
(45, 'multicon', 'User: Cristovao (Brazink.jdttqo.netvisao.pt) entrou. | User: Eduardo (Brazink.jdttqo.netvisao.pt) kickado.', '2024-06-28 11:43:41'),
(46, 'multicon', 'User: gatogiraco (Brazink.8tvl9h.dsl.telepac.pt) entrou. | User: kaio (Brazink.8tvl9h.dsl.telepac.pt) kickado.', '2024-06-28 11:51:55'),
(47, 'prohibited', 'Militar - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 11:56:34'),
(48, 'prohibited', 'marido54 - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 12:02:22'),
(49, 'multicon', 'User: Rita91 (Brazink.1ft.78l.69.148.IP) entrou. | User: nortuda (Brazink.1ft.78l.69.148.IP) kickado.', '2024-06-28 12:02:56'),
(50, 'multicon', 'User: Nortenha (Brazink.1ft.78l.69.148.IP) entrou. | User: nortuda (Brazink.1ft.78l.69.148.IP) kickado.', '2024-06-28 12:05:17'),
(51, 'multicon', 'User: Luaplena (Brazink.fei.0b5.69.148.IP) entrou. | User: Luaplena38 (Brazink.fei.0b5.69.148.IP) kickado.', '2024-06-28 13:04:08'),
(52, 'prohibited', 'virginia - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 13:35:33'),
(53, 'prohibited', 'militar_de_folga - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 13:43:33'),
(54, 'prohibited', 'Militar - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 13:48:13'),
(55, 'prohibited', 'Militar - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 13:55:46'),
(56, 'prohibited', 'GuloSo - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 13:58:09'),
(57, 'prohibited', 'Militar - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 14:03:22'),
(58, 'prohibited', 'guloso84 - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 14:13:05'),
(59, 'invalid', 'xxx - Nick não pode ser composto pela mesma letra repetida.', '2024-06-28 14:21:04'),
(60, 'prohibited', 'xxx - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 14:21:04'),
(61, 'prohibited', 'Militar - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 14:53:09'),
(62, 'prohibited', 'Militar - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 15:02:37'),
(63, 'prohibited', 'Militar - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 15:15:10'),
(64, 'prohibited', 'H_Carente - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 15:21:04'),
(65, 'multicon', 'User: El_Professor (Brazink.jl2mii.rev.vodafone.pt) entrou. | User: O_Escorpiao (Brazink.jl2mii.rev.vodafone.pt) kickado.', '2024-06-28 15:21:53'),
(66, 'prohibited', 'Militar - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 15:33:12'),
(67, 'prohibited', 'Militar - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 15:35:05'),
(68, 'invalid', 'ju - Nick demasiado curto, escolhe outro mais longo por favor.', '2024-06-28 15:36:48'),
(69, 'prohibited', 'casal - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 15:41:36'),
(70, 'prohibited', 'Militar - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 15:42:44'),
(71, 'multicon', 'User: Nuno42 (Brazink.93lrcl.rev.vodafone.pt) entrou. | User: Andrept (Brazink.93lrcl.rev.vodafone.pt) kickado.', '2024-06-28 15:44:22'),
(72, 'multicon', 'User: zeca (Brazink.jl2mii.rev.vodafone.pt) entrou. | User: El_Professor (Brazink.jl2mii.rev.vodafone.pt) kickado.', '2024-06-28 15:46:00'),
(73, 'prohibited', 'TaradoporBuceta - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 15:55:36'),
(74, 'invalid', 'oi - Nick demasiado curto, escolhe outro mais longo por favor.', '2024-06-28 16:01:46'),
(75, 'invalid', 'ss - Nick demasiado curto, escolhe outro mais longo por favor.', '2024-06-28 16:09:02'),
(76, 'invalid', 'aa - Nick demasiado curto, escolhe outro mais longo por favor.', '2024-06-28 16:10:04'),
(77, 'multicon', 'User: SandraC58 (Brazink.1ckbvb.dsl.telepac.pt) entrou. | User: SandraC (Brazink.1ckbvb.dsl.telepac.pt) kickado.', '2024-06-28 16:16:39'),
(78, 'multicon', 'User: Cristovao (Brazink.74gas2.netvisao.pt) entrou. | User: Eduardo (Brazink.74gas2.netvisao.pt) kickado.', '2024-06-28 16:19:05'),
(79, 'multicon', 'User: hultimate77 (Brazink.ul1fhs.rev.vodafone.pt) entrou. | User: hultimate (Brazink.ul1fhs.rev.vodafone.pt) kickado.', '2024-06-28 16:27:44'),
(80, 'prohibited', 'PoliciaSegurancaPublica - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 16:29:16'),
(81, 'prohibited', 'GNR - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 16:30:40'),
(82, 'prohibited', 'Pau_lo - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 16:31:06'),
(83, 'multicon', 'User: sara (Brazink.o21.cpk.28.62.IP) entrou. | User: minho (Brazink.o21.cpk.28.62.IP) kickado.', '2024-06-28 16:52:42'),
(84, 'prohibited', 'casal_bi_lx - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 17:12:38'),
(85, 'multicon', 'User: Sofia4694 (Brazink.ildk32.dsl.telepac.pt) entrou. | User: SOFiA46 (Brazink.ildk32.dsl.telepac.pt) kickado.', '2024-06-28 17:29:35'),
(86, 'multicon', 'User: ana46 (Brazink.ildk32.dsl.telepac.pt) entrou. | User: Sofia4694 (Brazink.ildk32.dsl.telepac.pt) kickado.', '2024-06-28 17:30:40'),
(87, 'prohibited', 'Militar - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 17:34:00'),
(88, 'prohibited', 'Casal - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 17:38:11'),
(89, 'prohibited', 'DocePecador - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 17:40:01'),
(90, 'prohibited', 'Casal - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 17:42:01'),
(91, 'prohibited', 'submissa - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 17:44:40'),
(92, 'prohibited', 'submissa - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 17:46:01'),
(93, 'prohibited', 'casal - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 17:55:35'),
(94, 'invalid', 'jf - Nick demasiado curto, escolhe outro mais longo por favor.', '2024-06-28 18:15:41'),
(95, 'prohibited', 'casal_norte - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 18:22:14'),
(96, 'multicon', 'User: sofiaa (Brazink.7gn1ri.cpe.netcabo.pt) entrou. | User: rutinha (Brazink.7gn1ri.cpe.netcabo.pt) kickado.', '2024-06-28 18:35:36'),
(97, 'prohibited', 'Militar - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 18:50:40'),
(98, 'prohibited', 'Militar - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 18:53:05'),
(99, 'prohibited', 'Militar - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 19:08:33'),
(100, 'prohibited', 'submisso - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 19:09:29'),
(101, 'prohibited', 'CasalMalveira - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 19:09:48'),
(102, 'prohibited', 'Militar - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 19:12:36'),
(103, 'multicon', 'User: acoriano_pdl (Brazink.r67.7en.29.78.IP) entrou. | User: renata_ (Brazink.r67.7en.29.78.IP) kickado.', '2024-06-28 19:17:10'),
(104, 'prohibited', 'falo_alunas - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 19:22:49'),
(105, 'prohibited', 'Militar - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 19:28:20'),
(106, 'prohibited', 'Militar - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 19:49:01'),
(107, 'prohibited', 'Militar - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 19:57:24'),
(108, 'multicon', 'User: xdavidx82 (Brazink.hl6.t5f.69.148.IP) entrou. | User: xdavidx (Brazink.hl6.t5f.69.148.IP) kickado.', '2024-06-28 20:11:07'),
(109, 'prohibited', 'Militar - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 20:19:19'),
(110, 'invalid', 'm - Nick demasiado curto, escolhe outro mais longo por favor.', '2024-06-28 20:22:48'),
(111, 'invalid', 'm - Nick demasiado curto, escolhe outro mais longo por favor.', '2024-06-28 21:05:19'),
(112, 'prohibited', 'submissa_portu - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 21:19:17'),
(113, 'invalid', 'vggggg - Nick não pode ser composto pela mesma letra repetida.', '2024-06-28 21:29:26'),
(114, 'multicon', 'User: Rita (Brazink.fe02qf.rev.vodafone.pt) entrou. | User: nortuda (Brazink.fe02qf.rev.vodafone.pt) kickado.', '2024-06-28 21:37:41'),
(115, 'multicon', 'User: AsuZ (Brazink.qivqvu.rev.vodafone.pt) entrou. | User: EpiC1 (Brazink.qivqvu.rev.vodafone.pt) kickado.', '2024-06-28 21:39:18'),
(116, 'multicon', 'User: ios53 (Brazink.b07.esq.69.95.IP) entrou. | User: ios (Brazink.b07.esq.69.95.IP) kickado.', '2024-06-28 21:55:54'),
(117, 'invalid', 'm - Nick demasiado curto, escolhe outro mais longo por favor.', '2024-06-28 21:58:44'),
(118, 'multicon', 'User: Marco772 (Brazink.972n3u.dsl.telepac.pt) entrou. | User: Marco77 (Brazink.972n3u.dsl.telepac.pt) kickado.', '2024-06-28 22:33:09'),
(119, 'prohibited', 'Marido - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 22:33:33'),
(120, 'multicon', 'User: Santiago_ (Brazink.i2jcep.cpe.netcabo.pt) entrou. | User: Xis (Brazink.i2jcep.cpe.netcabo.pt) kickado.', '2024-06-28 22:33:44'),
(121, 'prohibited', 'Tiago_safado - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 22:36:20'),
(122, 'prohibited', 'pauduro - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 22:39:25'),
(123, 'multicon', 'User: Hloures30 (Brazink.ok6v98.dsl.telepac.pt) entrou. | User: Hloures (Brazink.ok6v98.dsl.telepac.pt) kickado.', '2024-06-28 22:40:10'),
(124, 'prohibited', 'MuitoMadura - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 22:42:27'),
(125, 'multicon', 'User: Marco773 (Brazink.972n3u.dsl.telepac.pt) entrou. | User: Marco772 (Brazink.972n3u.dsl.telepac.pt) kickado.', '2024-06-28 23:03:23'),
(126, 'multicon', 'User: engenheiro_c53 (Brazink.prq789.cpe.netcabo.pt) entrou. | User: engenheiro_c (Brazink.prq789.cpe.netcabo.pt) kickado.', '2024-06-28 23:09:25'),
(127, 'invalid', 'Eu - Nick demasiado curto, escolhe outro mais longo por favor.', '2024-06-28 23:28:39'),
(128, 'multicon', 'User: carlasofia (Brazink.4ti17e.rev.vodafone.pt) entrou. | User: Professornorte (Brazink.4ti17e.rev.vodafone.pt) kickado.', '2024-06-28 23:44:08'),
(129, 'multicon', 'User: hang (Brazink.eri.4pv.69.148.IP) entrou. | User: Guest25598 (Brazink.eri.4pv.69.148.IP) kickado.', '2024-06-28 23:47:54'),
(130, 'multicon', 'User: hang (Brazink.eri.4pv.69.148.IP) entrou. | User: Guest25598 (Brazink.eri.4pv.69.148.IP) kickado.', '2024-06-28 23:58:33'),
(131, 'multicon', 'User: algarvio61 (Brazink.d5pmnv.net.novis.pt) entrou. | User: Algarvio (Brazink.d5pmnv.net.novis.pt) kickado.', '2024-06-29 00:03:50'),
(132, 'multicon', 'User: JG5221 (Brazink.gb0nd2.cpe.netcabo.pt) entrou. | User: JG52 (Brazink.gb0nd2.cpe.netcabo.pt) kickado.', '2024-06-29 00:05:29'),
(133, 'multicon', 'User: hang (Brazink.eri.4pv.69.148.IP) entrou. | User: Guest25598 (Brazink.eri.4pv.69.148.IP) kickado.', '2024-06-29 00:12:28'),
(134, 'prohibited', 'brunacasalporto - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-29 00:27:30'),
(135, 'multicon', 'User: hang (Brazink.eri.4pv.69.148.IP) entrou. | User: Guest25598 (Brazink.eri.4pv.69.148.IP) kickado.', '2024-06-29 00:47:29'),
(136, 'multicon', 'User: oProfessor (Brazink.fmffb2.rev.vodafone.pt) entrou. | User: descomplicado (Brazink.fmffb2.rev.vodafone.pt) kickado.', '2024-06-29 00:54:18'),
(137, 'prohibited', 'GestorSedutor - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-29 01:07:13'),
(138, 'multicon', 'User: Seitedecor67 (Brazink.q9c.csi.22.31.IP) entrou. | User: Seitedecor (Brazink.q9c.csi.22.31.IP) kickado.', '2024-06-29 01:10:41'),
(139, 'prohibited', 'mansopass - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-29 01:32:56'),
(140, 'multicon', 'User: hang (Brazink.eri.4pv.69.148.IP) entrou. | User: Guest25598 (Brazink.eri.4pv.69.148.IP) kickado.', '2024-06-29 01:47:42'),
(141, 'prohibited', 'Militar - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-29 02:00:03'),
(142, 'prohibited', 'Militar1 - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-29 02:32:18'),
(143, 'multicon', 'User: carlitos69 (Brazink.4cj81d.rev.vodafone.pt) entrou. | User: carlitos (Brazink.4cj81d.rev.vodafone.pt) kickado.', '2024-06-29 02:34:04'),
(144, 'prohibited', 'casal - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-29 02:47:35'),
(145, 'prohibited', 'RolaBranca - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-29 02:50:35'),
(146, 'prohibited', 'PauloSigilo - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-29 03:03:33'),
(147, 'prohibited', 'tesao1 - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-29 03:25:06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bot_meiaspalavras`
--

CREATE TABLE `bot_meiaspalavras` (
  `id` int(11) NOT NULL,
  `palavra` varchar(255) NOT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `bot_meiaspalavras`
--

INSERT INTO `bot_meiaspalavras` (`id`, `palavra`, `isactive`) VALUES
(1, 'maduro', 1),
(2, 'discreto', 1),
(3, 'discretto', 1),
(4, 'discretoo', 1),
(5, 'dscreto', 1),
(6, 'madurao', 1),
(7, 'safado', 1),
(8, 'safada', 1),
(9, 'bancado', 1),
(10, 'xulo', 1),
(11, 'guloso', 1),
(12, 'casal', 1),
(13, 'casadobi', 1),
(14, 'bicasado', 1),
(15, 'sissy', 1),
(16, 'falodela', 1),
(17, 'falodelafone', 1),
(18, 'corno', 1),
(19, 'gay', 1),
(20, 'panuca', 1),
(21, 'prazer', 1),
(22, 'cazal', 1),
(23, 'madura', 1),
(24, 'ativo', 1),
(25, 'passivo', 1),
(26, 'xhxh', 1),
(27, 'csdo', 1),
(28, 'csda', 1),
(29, 'manso', 1),
(30, 'cormanso', 1),
(31, '50tao', 1),
(32, '60tao', 1),
(33, '40tao', 1),
(34, 'caralhao', 1),
(35, 'policia', 1),
(36, 'maridoker', 1),
(37, 'maridoquer', 1),
(38, 'fetiches', 1),
(39, 'encontros', 1),
(40, 'encontro', 1),
(41, 'curioso', 1),
(42, 'curiosa', 1),
(43, 'cuck', 1),
(44, 'cuckold', 1),
(47, 'pzudo', 1),
(48, 'Mduro', 1),
(49, 'kerMULHER', 1),
(50, 'kerHOMEM', 1),
(51, 'dotado', 1),
(52, 'psp', 1),
(53, 'HkM', 1),
(54, 'virgem', 1),
(55, 'Curios', 1),
(56, 'submisso', 1),
(57, 'submissa', 1),
(59, 'nuquarto', 1),
(60, 'leite', 1),
(61, 'leitinho', 1),
(62, 'xenofoba', 1),
(69, 'xenofobo', 1),
(76, 'chifruda', 1),
(77, 'Madurito', 1),
(79, 'virg', 1),
(80, 'queroela', 1),
(81, 'tabus', 1),
(82, 'teso', 1),
(83, 'leiteiro', 1),
(84, 'Sassy', 1),
(85, 'paudurovirtual', 1),
(86, 'pauduro', 1),
(87, 'sexting', 1),
(89, 'hmadur', 1),
(90, 'MmsGrnds', 1),
(91, 'roleplay', 1),
(92, 'prevert', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bot_palavrasproibidas`
--

CREATE TABLE `bot_palavrasproibidas` (
  `id` int(11) NOT NULL,
  `palavra` varchar(255) NOT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `bot_palavrasproibidas`
--

INSERT INTO `bot_palavrasproibidas` (`id`, `palavra`, `isactive`) VALUES
(1, 'Caralho', 1),
(2, 'Buceta', 1),
(3, 'Piroca', 1),
(4, 'Foder', 1),
(5, 'Pau', 1),
(6, 'Puta', 1),
(7, 'Cuzinho', 1),
(8, 'Porno', 1),
(9, 'Gay', 1),
(10, 'Corno', 1),
(11, 'Madura', 1),
(12, 'Maduro', 1),
(13, 'cd', 1),
(14, 'Submisso', 1),
(15, 'Submissa', 1),
(16, 'Curioso', 1),
(17, 'Curiosa', 1),
(18, 'Dom', 1),
(19, 'Femdom', 1),
(20, 'cdzinha', 1),
(21, 'Bi', 1),
(22, 'Cross', 1),
(23, 'Prazer', 1),
(24, 'Perverso', 1),
(25, 'Perversa', 1),
(26, 'Orgasmo', 1),
(27, 'Orgasm', 1),
(28, 'Cuck', 1),
(29, 'Policia', 1),
(30, 'Fdp', 1),
(31, 'Mamar', 1),
(32, 'Mama', 1),
(33, 'Leite', 1),
(34, 'Leitinho', 1),
(35, 'Esperma', 1),
(36, 'Anal', 1),
(37, 'XXX', 1),
(38, 'Vaginal', 1),
(39, 'Vagina', 1),
(40, 'Cu', 1),
(41, 'Cona', 1),
(42, 'Travesti', 1),
(43, 'Shemale', 1),
(44, 'Carente', 1),
(45, 'Dominatrix', 1),
(46, 'Cuckold', 1),
(47, 'Chupar', 1),
(48, 'Lamber', 1),
(49, 'Dildo', 1),
(50, 'Vibrador', 1),
(51, 'Tesao', 1),
(52, 'Menage', 1),
(53, 'Orgia', 1),
(54, 'Sissy', 1),
(55, 'Corninho', 1),
(56, 'Gemer', 1),
(57, 'Grosso', 1),
(58, 'Sigilo', 1),
(59, 'guloso', 1),
(60, 'ativo', 1),
(61, 'kota', 1),
(62, 'grelo', 1),
(63, 'dou', 1),
(64, 'vendo', 1),
(65, 'quero', 1),
(66, 'milf', 1),
(67, 'at', 1),
(68, 'pass', 1),
(69, 'Pecador', 1),
(70, 'mad', 1),
(72, 'levei', 1),
(73, 'Tuza', 1),
(74, 'Mduro', 1),
(75, 'Metedor', 1),
(76, 'pissaralho', 1),
(77, 'Tetas', 1),
(78, 'Madurinho', 1),
(79, 'Madurinha', 1),
(80, 'psp', 1),
(81, 'virgem', 1),
(82, 'coqueiro', 1),
(83, 'Curios', 1),
(84, 'inversao', 1),
(87, 'nuquarto', 1),
(88, 'leite', 1),
(89, 'leitinho', 1),
(90, 'gnr', 1),
(91, 'xenofoba', 1),
(97, 'xenofobo', 1),
(101, 'hquer', 1),
(102, 'Madurito', 1),
(103, 'tgirl', 1),
(104, 'Domme', 1),
(105, 'Lover', 1),
(106, 'Lovers', 1),
(107, 'Rola', 1),
(109, 'Fantasy', 1),
(110, 'xxx', 1),
(111, 'piladura', 1),
(112, 'Rabuda', 1),
(113, 'fodoSuaEspos', 1),
(114, 'Militar', 1),
(115, 'leiteiro', 1),
(116, 'sarabi', 1),
(122, 'sub', 1),
(123, 'procuro', 1),
(124, 'sedutor', 1),
(125, 'proc', 1),
(126, 'falo', 1),
(127, 'casadas', 1),
(128, 'noiva', 1),
(129, 'marido', 1),
(130, 'nudista ', 1),
(242, 'sexting', 1),
(243, 'pauduro', 1),
(244, 'quer', 1),
(245, 'hmadur', 1),
(246, 'naturista', 1),
(247, 'Dtd', 1),
(248, 'GuardaNacionalRepublicana', 1),
(249, 'roleplay', 1),
(250, 'pervertido', 1);

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
(3, 'Global', 'services.brazink.net', 'Global Noticer', 'services.brazink.net', 'Services for Brazink IRC', '2024-06-29 02:13:51'),
(5, 'moi_meme', 'Brazink.1hp.ogi.230.161.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:13:55'),
(7, 'RadioPortugal', 'Brazink.13rkjv.brazink.com', 'Powered by www.brazink.com', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:14:18'),
(16, 'Log', 'localhost', '6iLog 1.2 - IRC Log', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:15:19'),
(29, 'Rui', 'Brazink.r35.2r0.140.188.IP', 'Web1 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:17:18'),
(36, 'Nacho', 'Brazink.puc4an.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:18:18'),
(39, 'Nunovla', 'Brazink.3fe0oo.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:18:21'),
(45, 'Bom_Amigo', 'Brazink.o990jj.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:18:53'),
(52, 'Filme', 'Brazink.qmo.ncb.28.104.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:19:48'),
(54, 'highspecgam', 'Brazink.80egfr.dsl.telepac.pt', 'Web1 * Está em Viseu - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:20:07'),
(58, 'Luuis', 'Brazink.t73a23.rev.vodafone.pt', 'Web1 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:20:40'),
(64, 'normal', 'Brazink.e5ekmn.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:21:48'),
(65, 'pedrocoimbra', 'Brazink.fctjhk.dsl.telepac.pt', 'Web2 * Está em Distrito de Coimbra - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:21:49'),
(66, 'Mel3', 'Brazink.4it.bdc.251.188.IP', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:21:49'),
(68, 'Lobo_da_Lua', 'Brazink.9pdkef.dsl.telepac.pt', 'IRC * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:22:18'),
(71, 'PUMA', 'Brazink.57h.1na.190.213.IP', 'App * Está em Região Autônoma da Madeira - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:22:48'),
(72, 'Joao29', 'Brazink.k0bmdg.rev.vodafone.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:22:49'),
(73, 'EpiC', 'Brazink.qivqvu.rev.vodafone.pt', 'IRC * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:23:18'),
(76, 'Andre', 'Brazink.pace0u.dsl.telepac.pt', 'Web2 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:23:48'),
(85, 'Pedro-Aveiro', 'Brazink.9purkq.rev.vodafone.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:25:01'),
(102, 'carlitos69', 'Brazink.4cj81d.rev.vodafone.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:34:04'),
(126, 'Manuel-Coimbra', 'Brazink.pfsdev.cpe.netcabo.pt', 'Web1 * Está em Distrito de Coimbra - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:47:19'),
(141, 'orquideabrancaM', 'Brazink.2i887o.netvisao.pt', 'Web2 * Está em Portalegre - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:56:03'),
(146, 'polexx', 'Brazink.amtiob.dsl.telepac.pt', 'Web2 * Está em Leiria - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:58:26'),
(147, 'Fabio_', 'Brazink.dhmqph.dsl.telepac.pt', 'Web2 * Está em Viana do Castelo - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 02:58:40'),
(155, 'Zeca48', 'Brazink.qoe.5q0.196.87.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 03:03:56'),
(165, 'anonimaAa', 'Brazink.5rg.4pb.195.191.IP', 'Web2 * Está em Bahia - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-29 03:08:12'),
(167, 'JustTalk', 'Brazink.pcamoj.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 03:08:16'),
(176, 'Admirador', 'Brazink.0373rr.cpe.netcabo.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 03:12:14'),
(185, 'Sage', 'Brazink.2avo60.cpe.netcabo.pt', 'Web2 * Está em Aveiro - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 03:16:31'),
(192, 'Antonio472', 'Brazink.3he6js.rev.vodafone.pt', 'App * Está em Distrito de Braga - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 03:20:23'),
(201, 'tesao1', 'Brazink.pjh.9t0.56.38.IP', 'Web2 * Está em Rio Grande do Sul - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-29 03:25:07'),
(202, 'Wolverine', 'Brazink.pbnpbv.rev.vodafone.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 03:26:09'),
(209, 'Joana', 'Brazink.v4n4f9.cpe.netcabo.pt', 'Web2 * Está em Distrito de Bragança - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 03:31:49'),
(211, 'decadente', 'Brazink.8eki09.rev.vodafone.pt', 'Web1 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 03:32:22'),
(214, 'jorge-coimbra', 'Brazink.1s4som.dsl.telepac.pt', 'Web2 * Está em Distrito de Castelo Branco - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 03:34:26'),
(217, 'carlos_prt', 'Brazink.sa1fg1.cpe.netcabo.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 03:35:38'),
(229, 'mudarsenha12', 'Brazink.08u.ct6.171.45.IP', 'Web2 * Está em Rio Grande do Norte - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-29 03:45:49'),
(230, 'rafa', 'Brazink.9b0dbq.dsl.telepac.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 03:49:03'),
(231, 'faro26a', 'Brazink.e48.sre.69.148.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 03:49:49'),
(232, 'DEL', 'Brazink.vch.85c.214.89.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 03:49:57'),
(233, 'H_Farda', 'Brazink.qoqntu.cpe.netcabo.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 03:50:57'),
(234, 'Carla59', 'Brazink.981lof.dsl.telepac.pt', 'Web2 * Está em Distrito da Guarda - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 03:51:54'),
(235, 'susy', 'Brazink.d1t91f.netvisao.pt', 'Web2 * Está em Aveiro - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 03:52:29'),
(236, 'HdoNorte', 'Brazink.70hp19.cpe.netcabo.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-29 03:53:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `bot_entradas`
--
ALTER TABLE `bot_entradas`
  ADD PRIMARY KEY (`id_entrada`);

--
-- Índices para tabela `bot_logs`
--
ALTER TABLE `bot_logs`
  ADD PRIMARY KEY (`id_log`);

--
-- Índices para tabela `bot_meiaspalavras`
--
ALTER TABLE `bot_meiaspalavras`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `bot_palavrasproibidas`
--
ALTER TABLE `bot_palavrasproibidas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `clones`
--
ALTER TABLE `clones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bot_entradas`
--
ALTER TABLE `bot_entradas`
  MODIFY `id_entrada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT de tabela `bot_logs`
--
ALTER TABLE `bot_logs`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT de tabela `bot_meiaspalavras`
--
ALTER TABLE `bot_meiaspalavras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de tabela `bot_palavrasproibidas`
--
ALTER TABLE `bot_palavrasproibidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT de tabela `clones`
--
ALTER TABLE `clones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
