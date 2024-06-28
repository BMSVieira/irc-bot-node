-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Jun-2024 às 03:02
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
(23, 'prohibited', 'maduro - Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!', '2024-06-28 01:32:09');

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
(87, 'sexting', 1);

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
(244, 'quer', 1);

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
(4, 'Global', 'services.brazink.net', 'Global Noticer', 'services.brazink.net', 'Services for Brazink IRC', '2024-06-28 01:08:20'),
(6, 'Baixinha16', 'Brazink.bs0.ga6.189.37.IP', 'App * Está em Distrito da Guarda - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:08:25'),
(8, 'Vampirao', 'Brazink.jc3.gdf.63.148.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:08:45'),
(9, 'Mel3', 'Brazink.4it.bdc.251.188.IP', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:08:46'),
(10, 'Bom_Amigo', 'Brazink.o990jj.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:08:46'),
(12, 'vicentola', 'Brazink.tfb.2kr.182.168.IP', 'Web2 * Está em Distrito de Coimbra - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:09:15'),
(15, 'carolinav', 'Brazink.idfigf.cpe.netcabo.pt', 'Web2 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:09:45'),
(17, 'normal', 'Brazink.e5ekmn.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:09:46'),
(21, 'pedrocoimbra', 'Brazink.fctjhk.dsl.telepac.pt', 'Web2 * Está em Distrito de Coimbra - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:10:15'),
(22, 'Filme', 'Brazink.qmo.ncb.28.104.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:10:16'),
(29, 'ViDAETERNA_', 'Brazink.v73.r16.205.186.IP', 'Web2 * Está em Rio de Janeiro - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:10:46'),
(31, 'mulher41norte', 'Brazink.37fsu7.net.novis.pt', 'Web2 * Está em Distrito de Braga - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:10:50'),
(33, 'Kurt', 'Brazink.psl61u.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:11:16'),
(36, 'Grisalho78', 'Brazink.6hs056.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:11:33'),
(37, 'Flash', 'Brazink.8rk5v6.rev.vodafone.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:11:45'),
(38, 'moi_meme', 'Brazink.1hp.ogi.230.161.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:11:46'),
(39, 'hugo', 'Brazink.rurci1.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:11:57'),
(40, 'PannaCotta', 'Brazink.dor.vp8.250.188.IP', 'Web1 * Está em Distrito de Coimbra - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:12:15'),
(42, 'Leon', 'Brazink.7qfrc6.net.novis.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:12:16'),
(49, 'SolitaryMan', 'Brazink.rh1.mcf.129.217.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:13:15'),
(50, 'Ricardo81', 'Brazink.hak9ul.cpe.netcabo.pt', 'Web1 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:13:16'),
(56, 'silva_lx', 'Brazink.46bnmo.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:14:16'),
(57, 'Laura---', 'Brazink.gc3sup.dsl.telepac.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:14:16'),
(62, 'Homem47Lx', 'Brazink.j268vl.cpe.netcabo.pt', 'Web1 * Está em  - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:14:46'),
(65, 'AsuZ', 'Brazink.h29okb.rev.vodafone.pt', 'Web1 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:15:16'),
(68, 'Nickless', 'Brazink.78ij35.dsl.telepac.pt', 'IRC * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:15:46'),
(70, 'bruno35', 'Brazink.vhu9ou.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:16:16'),
(74, 'Lobo_da_Lua', 'Brazink.9pdkef.dsl.telepac.pt', 'IRC * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:16:46'),
(86, 'RadioPortugal', 'Brazink.13rkjv.brazink.com', 'Powered by www.brazink.com', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:18:16'),
(87, 'Pedro35_', 'Brazink.a93.dc5.189.37.IP', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:18:16'),
(90, 'isa', 'Brazink.g94cbf.net.novis.pt', 'Web1 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:18:46'),
(95, 'decadente', 'Brazink.8eki09.rev.vodafone.pt', 'Web1 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:19:13'),
(96, 'CaLorina', 'Brazink.h8i.4lk.69.148.IP', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:19:16'),
(98, 'Romantico42', 'Brazink.5qdtls.dsl.telepac.pt', 'App * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:19:46'),
(101, 'cafelx', 'Brazink.m5na3q.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:20:16'),
(103, 'Cinquentaoo', 'Brazink.4n4c05.rev.vodafone.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:20:27'),
(104, 'EpiC', 'Brazink.h29okb.rev.vodafone.pt', 'IRC * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:20:46'),
(107, 'tiktak', 'Brazink.igfg27.dsl.telepac.pt', 'Web2 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:21:16'),
(112, 'Pirolita', 'Brazink.er6.097.196.87.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:21:46'),
(116, 'Malandro', 'Brazink.7ol.8g1.205.213.IP', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:22:16'),
(119, 'FierceFriend', 'Brazink.fha5ba.dsl.telepac.pt', 'Web2 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:22:46'),
(124, 'Jorge_', 'Brazink.0fi75i.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:23:16'),
(127, 'Log', 'localhost', '6iLog 1.2 - IRC Log', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:23:30'),
(129, 'carlitosmau65', 'Brazink.huqmud.cpe.netcabo.pt', 'Web2 * Está em Distrito de Santarém - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:23:46'),
(140, 'Heilla', 'Brazink.cfgok9.internet58.com.br', 'Web1 * Está em Rondônia - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:27:24'),
(141, 'Paulo40', 'Brazink.to4.0po.230.161.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:27:38'),
(145, 'hcasadoo', 'Brazink.c252p7.dsl.telepac.pt', 'Web1 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:29:21'),
(149, 'Pequeninaabelhinha', 'Brazink.rsa.btc.29.189.IP', 'Web2 * Está em São Paulo - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:30:38'),
(156, 'preta', 'Brazink.fip4ha.net.novis.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:32:43'),
(158, 'Dubay', 'Brazink.5n8582.net.novis.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:33:13'),
(162, 'MulataLx', 'Brazink.ndu9ll.cpe.netcabo.pt', 'Web1 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:35:17'),
(163, 'Nacho', 'Brazink.b5j3qq.rev.vodafone.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:35:42'),
(166, 'MasterofPuppets', 'Brazink.nl7.iir.250.188.IP', 'Web2 * Está em Portalegre - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:38:26'),
(171, 'RodrigoG', 'Brazink.goccrc.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:39:10'),
(176, 'Homem_braga_pt', 'Brazink.o4oi9j.rev.vodafone.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:41:52'),
(177, 'carlos', 'Brazink.4oaemq.cpe.netcabo.pt', 'Web2 * Está em Viana do Castelo - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:42:09'),
(179, 'anonimaAa', 'Brazink.5rg.4pb.195.191.IP', 'Web2 * Está em Bahia - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:42:30'),
(180, 'Sweet_Man_Lx', 'Brazink.0p1cqr.dsl.telepac.pt', 'Web1 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:44:21'),
(182, 'Hlx', 'Brazink.obrl93.dsl.telepac.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:45:05'),
(191, 'Joao33PT', 'Brazink.e5cpj8.rev.vodafone.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:48:24'),
(192, 'PUMA', 'Brazink.57h.1na.190.213.IP', 'App * Está em Região Autônoma da Madeira - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:48:38'),
(193, 'CarolinaCarolCaro', 'Brazink.6qclff.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:51:22'),
(194, 'Tatiana_SP_Capital', 'Brazink.73u.53d.40.189.IP', 'App * Está em São Paulo - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:52:04'),
(195, 'Luis64', 'Brazink.nv9aim.dsl.telepac.pt', 'Web2 * Está em Distrito de Santarém - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:52:10'),
(197, 'Antonio19', 'Brazink.vvaqgk.dsl.telepac.pt', 'Web2 * Está em Vila Real - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:53:00'),
(199, 'Nuno55', 'Brazink.ns4kf7.rev.vodafone.pt', 'App * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:53:26'),
(200, 'Filipe_nrt', 'Brazink.fblail.net.novis.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:53:32'),
(204, 'BadBadMary', 'Brazink.0u0hc4.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:55:04'),
(206, 'portugal', 'Brazink.u015p1.cpe.netcabo.pt', 'Web2 * Está em  - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:55:18'),
(207, 'h_39', 'Brazink.vve.31h.196.87.IP', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:55:24'),
(208, 'Ribatejano', 'Brazink.trbd6b.dsl.telepac.pt', 'Web2 * Está em Distrito de Beja - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:55:28'),
(211, 'Luuis', 'Brazink.t73a23.rev.vodafone.pt', 'Web1 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:57:27'),
(213, '_Miguel_', 'Brazink.plua8q.cpe.netcabo.pt', 'Web1 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 01:59:14'),
(214, 'trolha', 'Brazink.141ftc.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 02:00:09'),
(216, 'Silmar', 'Brazink.kg7.a39.69.148.IP', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 02:01:44'),
(217, 'tiago124', 'Brazink.lu5j7o.dsl.telepac.pt', 'Web2 * Está em Distrito de Braga - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 02:02:27');

--
-- Índices para tabelas despejadas
--

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
-- AUTO_INCREMENT de tabela `bot_logs`
--
ALTER TABLE `bot_logs`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `bot_meiaspalavras`
--
ALTER TABLE `bot_meiaspalavras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de tabela `bot_palavrasproibidas`
--
ALTER TABLE `bot_palavrasproibidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT de tabela `clones`
--
ALTER TABLE `clones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
