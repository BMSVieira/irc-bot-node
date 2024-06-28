-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Jun-2024 às 22:14
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
(111, 'invalid', 'm - Nick demasiado curto, escolhe outro mais longo por favor.', '2024-06-28 21:05:19');

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
(90, 'MmsGrnds', 1);

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
(248, 'GuardaNacionalRepublicana', 1);

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
(11, 'Global', 'services.brazink.net', 'Global Noticer', 'services.brazink.net', 'Services for Brazink IRC', '2024-06-28 18:04:56'),
(13, 'SENHOR', 'Brazink.2ld.20m.106.187.IP', 'Web2 * Está em São Paulo - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-28 18:05:26'),
(22, 'Bom_Amigo', 'Brazink.o990jj.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 18:06:26'),
(25, 'homem1958', 'Brazink.13k7bh.dsl.telepac.pt', 'Web2 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 18:06:41'),
(28, 'moi_meme', 'Brazink.1hp.ogi.230.161.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 18:06:56'),
(39, 'Lobo_da_Lua', 'Brazink.9pdkef.dsl.telepac.pt', 'IRC * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 18:08:26'),
(40, 'RadioPortugal', 'Brazink.13rkjv.brazink.com', 'Powered by www.brazink.com', 'irc.brazink.net', 'Brazink Network', '2024-06-28 18:08:26'),
(58, 'anonima', 'Brazink.mk1.qgd.251.188.IP', 'IRC * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 18:10:56'),
(63, 'Log', 'localhost', '6iLog 1.2 - IRC Log', 'irc.brazink.net', 'Brazink Network', '2024-06-28 18:11:56'),
(67, 'danielporto', 'Brazink.8mqpm6.rev.vodafone.pt', 'Web1 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 18:12:26'),
(121, 'coimbra22', 'Brazink.sqp.2u7.251.188.IP', 'Web2 * Está em Viana do Castelo - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 18:19:26'),
(122, 'Hsimplesnorte', 'Brazink.gmk.664.137.193.IP', 'Web2 * Está em Aveiro - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 18:19:56'),
(131, 'EpiC', 'Brazink.h29okb.rev.vodafone.pt', 'IRC * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 18:21:26'),
(141, 'Luso_', 'Brazink.sflhq1.rev.vodafone.pt', 'Web1 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 18:22:26'),
(153, 'anosa', 'Brazink.cdo.7sv.102.93.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 18:25:34'),
(184, 'Trifolium', 'Brazink.ec4.2r0.140.188.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 18:35:25'),
(201, 'Rui52', 'Brazink.li1quu.rev.vodafone.pt', 'Web1 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 18:41:34'),
(225, 'filipe27', 'Brazink.lov.2hf.196.87.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 18:48:10'),
(241, 'hugo185m', 'Brazink.d8j97a.dsl.telepac.pt', 'Web2 * Está em Distrito de Beja - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 18:52:39'),
(315, 'Nickless', 'Brazink.78ij35.dsl.telepac.pt', 'IRC * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 19:15:41'),
(331, 'HazoresB40', 'Brazink.9sf.db9.29.78.IP', 'Web2 * Está em Açores - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 19:21:11'),
(361, 'jorge-coimbra', 'Brazink.1s4som.dsl.telepac.pt', 'Web2 * Está em Distrito de Castelo Branco - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 19:34:04'),
(363, 'josegomes1', 'Brazink.5uf5fj.dsl.telepac.pt', 'Web1 * Está em Leiria - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 19:34:48'),
(381, '_Luazinha_', 'Brazink.d0t.1na.190.213.IP', 'Web2 * Está em Região Autônoma da Madeira - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 19:39:27'),
(390, 'rapaz24', 'Brazink.nbap8c.dsl.telepac.pt', 'Web2 * Está em Distrito de Castelo Branco - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 19:43:54'),
(409, 'Joao_Prt', 'Brazink.c2bo7t.net.novis.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 19:50:42'),
(422, 'coimbra', 'Brazink.ocn.097.196.87.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 19:56:48'),
(441, 'joaopt', 'Brazink.clq82p.dsl.telepac.pt', 'Web2 * Está em Distrito de Évora - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:02:31'),
(446, 'PUMA', 'Brazink.57h.1na.190.213.IP', 'App * Está em Região Autônoma da Madeira - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:04:40'),
(449, 'DaBoyWhoMurderedLove', 'Brazink.dpa5hs.dsl.telepac.pt', 'Web2 * Está em Leiria - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:05:09'),
(450, 'hang', 'Brazink.6lhjt3.rev.vodafone.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:05:29'),
(459, 'RuiLisboa', 'Brazink.4sp74m.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:11:56'),
(460, '_Miguel_Porto', 'Brazink.qrae7s.rev.vodafone.pt', 'Web1 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:12:27'),
(467, 'Xis', 'Brazink.i2jcep.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:14:48'),
(469, 'BenQ', 'Brazink.i9c1u1.rev.vodafone.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:15:04'),
(478, 'ViDAETERNA_', 'Brazink.v73.r16.205.186.IP', 'Web2 * Está em Rio de Janeiro - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:18:48'),
(483, 'pedrocoimbra', 'Brazink.fctjhk.dsl.telepac.pt', 'Web2 * Está em Distrito de Coimbra - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:20:27'),
(489, 'Marco77', 'Brazink.972n3u.dsl.telepac.pt', 'App * Está em Distrito de Braga - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:20:58'),
(490, 'ninita16', 'Brazink.99ia98.dsl.telepac.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:21:00'),
(491, 'Cleopatra', 'Brazink.n3mflb.dsl.telepac.pt', 'Web2 * Está em Distrito de Faro - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:21:17'),
(502, 'ynot', 'Brazink.kq0rbs.rev.vodafone.pt', 'App * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:24:31'),
(504, 'Pierre', 'Brazink.5d0dq5.cpe.netcabo.pt', 'Web2 * Está em Distrito de Santarém - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:24:36'),
(505, 'Casadonorte', 'Brazink.9drkfi.dsl.telepac.pt', 'Web1 * Está em Aveiro - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:25:06'),
(506, 'Manuel39', 'Brazink.ba7715.dsl.telepac.pt', 'Web1 * Está em Distrito de Santarém - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:25:10'),
(514, 'hcasadodocentro', 'Brazink.dj77ci.dsl.telepac.pt', 'Web2 * Está em Distrito de Castelo Branco - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:28:04'),
(517, 'Jude', 'Brazink.dbp5fq.dsl.telepac.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:29:34'),
(518, 'Sgitaria', 'Brazink.jrkt7q.cpe.netcabo.pt', 'Web1 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:29:39'),
(521, 'JovemPT', 'Brazink.m329vb.net.novis.pt', 'Web1 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:30:39'),
(530, 'Jose_Luis', 'Brazink.iuav7o.cpe.netcabo.pt', 'Web2 * Está em Distrito de Coimbra - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:33:41'),
(533, 'humberto_', 'Brazink.o3p1m6.cpe.netcabo.pt', 'Web2 * Está em Distrito de Faro - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:34:29'),
(536, 'carpediem-it', 'Brazink.at7r3d.dsl.telepac.pt', 'Web2 * Está em Distrito de Faro - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:35:37'),
(537, 'Devyl', 'Brazink.assbpn.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:35:40'),
(538, 'Lea', 'Brazink.bg2g0u.dsl.telepac.pt', 'Web1 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:36:25'),
(543, 'O_Carioca', 'Brazink.9fr.3sm.238.170.IP', 'Web1 * Está em Rio de Janeiro - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:38:41'),
(551, 'lovemenow', 'Brazink.cbdd5b.cpe.netcabo.pt', 'App * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:41:00'),
(553, 'Antonio472', 'Brazink.3he6js.rev.vodafone.pt', 'App * Está em Distrito de Braga - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:41:25'),
(554, 'Man47', 'Brazink.obrl93.dsl.telepac.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:41:30'),
(555, '_Camila', 'Brazink.tkn74m.v-tal.net.br', 'Web2 * Está em Paraná - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:41:42'),
(559, 'carlos50', 'Brazink.o6v.f2k.69.148.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:42:57'),
(560, 'HSintra50', 'Brazink.k7gkod.rev.vodafone.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:43:06'),
(563, 'AntonioLuis', 'Brazink.1ku.v87.140.188.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:45:17'),
(573, 'EngCarinhoso', 'Brazink.dqrgr8.bl27.telepac.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:49:33'),
(575, 'ios', 'Brazink.b07.esq.69.95.IP', 'Web1 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:50:40'),
(577, 'cesarH47', 'Brazink.74m59o.dsl.telepac.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:51:26'),
(578, 'JoaoNuno', 'Brazink.ktlg3e.dsl.telepac.pt', 'Web2 * Está em Distrito de Évora - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:51:28'),
(580, 'Diabo', 'Brazink.4a2.31h.196.87.IP', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:51:57'),
(581, '_Prof_Francais', 'Brazink.pcamoj.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:52:04'),
(588, 'vasco', 'Brazink.tq1.4l6.137.193.IP', 'Web2 * Está em Distrito de Beja - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:53:45'),
(591, 'JoseMariaPrt', 'Brazink.0ld.biq.20.81.IP', 'Web2 * Está em Açores - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:54:07'),
(597, 'sandra', 'Brazink.6ci723.cpe.netcabo.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 20:56:43'),
(605, 'Lina63', 'Brazink.ns4kf7.rev.vodafone.pt', 'App * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:02:17'),
(607, 'Luis64', 'Brazink.nv9aim.dsl.telepac.pt', 'Web2 * Está em Distrito de Santarém - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:03:01'),
(608, 'Lily', 'Brazink.8ajm9e.rev.vodafone.pt', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:03:21'),
(609, 'mulher', 'Brazink.0eu7t1.dsl.telepac.pt', 'Web2 * Está em Distrito de Santarém - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:03:35'),
(612, 'Mulatinho21', 'Brazink.sc7b3k.cpe.netcabo.pt', 'Web1 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:04:07'),
(614, 'Fotografo_Lisboa', 'Brazink.0p1cqr.dsl.telepac.pt', 'Web1 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:04:43'),
(619, 'TiagoPT', 'Brazink.ulb34g.cpe.netcabo.pt', 'Web1 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:05:31'),
(620, 'Vizinho', 'Brazink.0gh.228.230.161.IP', 'Web1 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:05:32'),
(621, 'loira', 'Brazink.5bj.8id.197.168.IP', 'Web2 * Está em Ceará - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:05:36'),
(622, 'estrelinha', 'Brazink.7gk1pa.dynamic.upc.ch', 'Web2 * Está em Zúrich - Suiza', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:05:44'),
(623, 'Ricardo_38', 'Brazink.78i.t61.69.148.IP', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:06:04'),
(624, 'LuciferMstar', 'Brazink.t7iuk1.rev.vodafone.pt', 'Web1 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:06:25'),
(626, 'Dark_Angel', 'Brazink.9ur43v.rev.vodafone.pt', 'Web2 * Está em Distrito de Braga - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:06:54'),
(627, 'spazztic', 'Brazink.b0fgc7.dsl.telepac.pt', 'Web2 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:07:15'),
(630, 'LuizCarlos', 'Brazink.umli3b.dsl.telepac.pt', 'Web1 * Está em Distrito de Coimbra - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:08:23'),
(631, 'minizinha', 'Brazink.jso5a1.rev.sfr.net', 'Web2 * Está em Sena Saint Denis - Francia', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:08:36'),
(632, 'simples_pensador', 'Brazink.kc0.5ms.196.87.IP', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:09:01'),
(633, 'CaLorina', 'Brazink.h8i.4lk.69.148.IP', 'Web2 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:09:02'),
(634, 'Pedro50', 'Brazink.bs9dv0.dsl.telepac.pt', 'Web2 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:09:10'),
(637, 'BombtracK', 'Brazink.srksfq.cpe.netcabo.pt', 'Web1 * Está em Lisboa - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:10:19'),
(640, 'AgroBeto', 'Brazink.56se24.dsl.telepac.pt', 'App * Está em Distrito de Santarém - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:11:01'),
(641, 'MORENO_OLHOAZUL', 'Brazink.0eafp9.dsl.telepac.pt', 'Web2 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:11:13'),
(643, 'Ana_Maria', 'Brazink.129ftu.cpe.netcabo.pt', 'Web2 * Está em Setúbal - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:12:04'),
(644, 'Sozinho39', 'Brazink.jdnlun.bl27.telepac.pt', 'Web1 * Está em Distrito do Porto - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:12:38'),
(645, 'pedro07', 'Brazink.ucfckq.dsl.telepac.pt', 'Web2 * Está em Distrito de Braga - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:12:52'),
(646, 'Atreus', 'Brazink.b0d.7lh.14.209.IP', 'Web2 * Está em São Paulo - Brasil', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:12:56'),
(647, 'susy', 'Brazink.d1t91f.netvisao.pt', 'Web2 * Está em Aveiro - Portugal', 'irc.brazink.net', 'Brazink Network', '2024-06-28 21:13:31');

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
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT de tabela `bot_meiaspalavras`
--
ALTER TABLE `bot_meiaspalavras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de tabela `bot_palavrasproibidas`
--
ALTER TABLE `bot_palavrasproibidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT de tabela `clones`
--
ALTER TABLE `clones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=648;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
