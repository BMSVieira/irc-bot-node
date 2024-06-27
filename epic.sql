-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Jun-2024 às 21:40
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
(84, 'Sassy', 1);

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
(0, 'marido', 1),
(0, 'nudista ', 1);

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
(3, 'Lobo_da_Lua', 'Brazink.9pdkef.dsl.telepac.pt', 'IRC * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:43:08'),
(4, 'Log', 'localhost', '6iLog 1.2 - IRC Log', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:43:10'),
(5, 'Global', 'services.brazink.net', 'Global Noticer', 'services.brazink.net', 'Services for Brazink IRC', '2024-06-27 18:43:11'),
(8, 'SolitaryMan', 'Brazink.rh1.mcf.129.217.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:43:35'),
(13, 'Vampirao', 'Brazink.jc3.gdf.63.148.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:44:05'),
(15, 'Pedroo', 'Brazink.bim.g3n.150.169.IP', 'Web2 * Está em São Paulo - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:44:35'),
(16, 'coimbra22', 'Brazink.os15fc.dsl.telepac.pt', 'Web2 * Está em Distrito de Coimbra - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:44:35'),
(17, 'Bom_Amigo', 'Brazink.o990jj.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:44:35'),
(22, 'powerPT', 'Brazink.fkr4s4.rev.vodafone.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:45:05'),
(29, 'sugartiina', 'Brazink.apeuo7.dsl.telepac.pt', 'Web2 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:45:35'),
(33, 'Hsimplesnorte', 'Brazink.gmk.664.137.193.IP', 'Web2 * Está em Aveiro - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:46:05'),
(55, 'Haydee', 'Brazink.1jc61p.dsl.telepac.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:49:35'),
(60, 'homem1958', 'Brazink.13k7bh.dsl.telepac.pt', 'Web2 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:50:05'),
(66, 'Unica', 'Brazink.3q2u6a.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:50:35'),
(71, 'Catiaa', 'Brazink.2tt.k7v.182.168.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:51:05'),
(72, 'UmBichoDe2Metros', 'Brazink.3sf656.dsl.telepac.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:51:35'),
(73, 'moi_meme', 'Brazink.1hp.ogi.230.161.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:51:35'),
(81, 'xico', 'Brazink.8ek.h2n.230.161.IP', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:52:05'),
(88, 'stEFFen', 'Brazink.4rdgan.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:53:17'),
(97, 'GordoFeioCareca', 'Brazink.c7t.h60.240.83.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:54:35'),
(98, 'paulo-54', 'Brazink.99q2js.rev.vodafone.pt', 'Web1 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:54:35'),
(99, 'gramp', 'Brazink.7l5ebn.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:55:05'),
(100, 'Sonhador', 'Brazink.7oc1sd.dsl.telepac.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:55:05'),
(109, 'Slowdive', 'Brazink.gc3sup.dsl.telepac.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:56:35'),
(110, 'Empresario', 'Brazink.tuim81.dsl.telepac.pt', 'Web1 * Está em Aveiro - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:56:35'),
(112, 'Desconhecido', 'Brazink.1cllv8.abo.wanadoo.fr', 'Web2 * Está em  - Francia', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:57:04'),
(115, '_Miguel_Porto', 'Brazink.qrae7s.rev.vodafone.pt', 'Web1 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:57:05'),
(122, 'EpiC', 'Brazink.h29okb.rev.vodafone.pt', 'IRC * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:58:06'),
(130, 'ViDAETERNA_', 'Brazink.v73.r16.205.186.IP', 'Web2 * Está em Rio de Janeiro - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-27 18:58:36'),
(137, 'Conde', 'Brazink.rig7tm.rev.vodafone.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 19:00:09'),
(144, 'Method', 'Brazink.9i9h32.cpe.netcabo.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 19:01:27'),
(173, 'carlinhos69', 'Brazink.6a59c2.veloxzone.com.br', 'Web2 * Está em Bahia - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-27 19:10:44'),
(176, 'normal', 'Brazink.e5ekmn.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 19:11:34'),
(184, 'MorenoComBarba', 'Brazink.aja.01g.189.37.IP', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 19:15:23'),
(206, '_joana', 'Brazink.rnu4tb.cpe.netcabo.pt', 'Web1 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 19:24:43'),
(223, 'AdmiravelMundoNovo', 'Brazink.m00828.dsl.telepac.pt', 'Web2 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 19:31:53'),
(227, 'RadioPortugal', 'Brazink.13rkjv.brazink.com', 'Powered by www.brazink.com', 'irc.brazink.net', 'Brazink Network', '2024-06-27 19:35:05'),
(242, 'BenQ', 'Brazink.i9c1u1.rev.vodafone.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 19:42:50'),
(252, 'RuiLisboa', 'Brazink.4sp74m.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 19:44:14'),
(254, 'simpaticoo', 'Brazink.hqt.f2k.69.148.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 19:45:11'),
(259, 'carolinav', 'Brazink.idfigf.cpe.netcabo.pt', 'Web2 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 19:47:02'),
(264, 'Jorge_SunSet', 'Brazink.i7reae.rev.vodafone.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 19:48:51'),
(279, 'EscuteirinhaMadeirense', 'Brazink.cmbtgv.ptr83.nosmadeira.net', 'Web2 * Está em Região Autônoma da Madeira - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 19:54:28'),
(283, 'Tina', 'Brazink.mqrlsb.netvisao.pt', 'Web2 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 19:54:56'),
(288, 'hcasdominho', 'Brazink.kv2m9u.dsl.telepac.pt', 'Web1 * Está em Distrito de Braga - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 19:56:40'),
(293, 'p92', 'Brazink.02uscp.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 19:57:55'),
(299, 'Jjay', 'Brazink.j18vlk.dsl.telepac.pt', 'Web2 * Está em Distrito de Braga - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:00:27'),
(300, 'NMC', 'Brazink.cdbhu7.ptr84.nosmadeira.net', 'Web2 * Está em Região Autônoma da Madeira - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:00:30'),
(302, 'Margarita', 'Brazink.jrkt7q.cpe.netcabo.pt', 'Web1 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:00:49'),
(314, 'Menina_40', 'Brazink.rb7e2r.dsl.telepac.pt', 'Web2 * Está em Distrito de Santarém - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:04:27'),
(315, 'Vina58', 'Brazink.981lof.dsl.telepac.pt', 'Web2 * Está em Distrito da Guarda - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:04:43'),
(316, 'sandro78', 'Brazink.c80.8me.250.92.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:04:50'),
(318, 'nuno_', 'Brazink.l76t7b.cpe.netcabo.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:05:20'),
(319, 'MessyMind', 'Brazink.po6r1g.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:05:23'),
(321, 'BrunoVLMed33', 'Brazink.cc6.574.32.177.IP', 'Web2 * Está em São Paulo - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:05:54'),
(328, 'Rita', 'Brazink.q34.jqt.230.161.IP', 'Web1 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:07:52'),
(329, 'NunoR', 'Brazink.li1quu.rev.vodafone.pt', 'Web1 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:07:54'),
(333, 'bigboyxunga', 'Brazink.5ltj2b.netvisao.pt', 'Web2 * Está em Distrito de Faro - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:09:27'),
(338, 'Anaa', 'Brazink.ca8lrd.dsl.telepac.pt', 'Web2 * Está em Distrito de Coimbra - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:11:18'),
(341, 'salome', 'Brazink.nbi.vp3.214.89.IP', 'Web2 * Está em  - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:12:29'),
(343, 'Antonella', 'Brazink.beh.vpj.225.200.IP', 'Web2 * Está em Santa Catarina - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:13:14'),
(346, 'Vadio', 'Brazink.og7.1v0.210.88.IP', 'Web2 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:13:54'),
(347, 'fernanda52', 'Brazink.u46.2b0.226.84.IP', 'Web2 * Está em Zug - Suiza', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:14:01'),
(348, 'Adelia', 'Brazink.9jc.m9k.17.201.IP', 'Web2 * Está em Rio de Janeiro - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:14:01'),
(352, 'Moreno_Leiria', 'Brazink.lnlg20.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:15:28'),
(356, 'Tugao', 'Brazink.81d4rl.rev.vodafone.pt', 'Web1 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:16:53'),
(366, 'Clonado', 'Brazink.e2q4f7.rev.vodafone.pt', 'App * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:19:44'),
(367, 'olhar', 'Brazink.5vn5gc.dsl.telepac.pt', 'Web2 * Está em Distrito de Coimbra - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:19:52'),
(368, 'Joao_Prt', 'Brazink.c2bo7t.net.novis.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:20:15'),
(374, 'thiago77', 'Brazink.oc5.d4v.189.45.IP', 'Web2 * Está em Ceará - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:22:22'),
(375, 'BadBadMary', 'Brazink.0u0hc4.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:22:40'),
(377, 'rapaz24', 'Brazink.nbap8c.dsl.telepac.pt', 'Web2 * Está em Distrito de Castelo Branco - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:23:06'),
(378, 'Alquimia', 'Brazink.6d1.m64.189.37.IP', 'Web1 * Está em Leiria - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:23:17'),
(380, 'Trifolium', 'Brazink.aa0.v7h.214.89.IP', 'Web2 * Está em  - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:23:45'),
(385, 'Tictac', 'Brazink.q68.k26.250.92.IP', 'Web2 * Está em  - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:25:42'),
(389, 'MARCO', 'Brazink.df5dt5.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:26:39'),
(391, 'John_Carter', 'Brazink.rlr09f.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:26:52'),
(394, 'ios', 'Brazink.kl1.m6i.214.89.IP', 'Web1 * Está em Leiria - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:28:06'),
(398, 'lyra', 'Brazink.p6qvnb.rev.vodafone.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:29:17'),
(400, 'Daniela', 'Brazink.vk4cv8.dsl.telepac.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:29:48'),
(401, 'RapazVst', 'Brazink.c9r.h8i.191.179.IP', 'Web2 * Está em Amazonas - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:31:06'),
(402, 'anosa', 'Brazink.cdo.7sv.102.93.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:31:15'),
(406, 'Ela', 'Brazink.uvg.m0q.124.177.IP', 'Web1 * Está em Bahia - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:33:08'),
(407, 'Filme', 'Brazink.uio.h9d.28.104.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:33:36'),
(409, 'tiago27', 'Brazink.18frt7.cpe.netcabo.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:33:57'),
(413, 'susy', 'Brazink.d1t91f.netvisao.pt', 'Web2 * Está em Aveiro - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:35:00'),
(414, 'ricardo_38', 'Brazink.nokdko.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:35:24'),
(415, 'agroAzores', 'Brazink.ghc.a3n.29.78.IP', 'Web2 * Está em Açores - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:35:25'),
(416, 'MalumaTuFoiExpulso', 'Brazink.iktkmb.dsl.telepac.pt', 'Web2 * Está em Distrito de Évora - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:35:28'),
(418, 'i732', 'Brazink.si7.5ms.196.87.IP', 'App * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:36:31'),
(419, 'Mariaana', 'Brazink.c5odgg.dsl.telepac.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:36:35'),
(420, 'Ligia48', 'Brazink.gvd.09b.192.177.IP', 'Web1 * Está em Rio de Janeiro - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:36:51'),
(421, 'Marco_q', 'Brazink.3ms.1al.251.188.IP', 'Web2 * Está em Viseu - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:38:36'),
(422, '_Strauss_', 'Brazink.qmhml7.dsl.telepac.pt', 'Web1 * Está em Aveiro - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:38:38'),
(423, 'filipe27', 'Brazink.kcavi7.cpe.netcabo.pt', 'Web2 * Está em  - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:38:51'),
(424, '_Luazinha_', 'Brazink.d0t.1na.190.213.IP', 'Web2 * Está em Região Autônoma da Madeira - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-27 20:39:08');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
