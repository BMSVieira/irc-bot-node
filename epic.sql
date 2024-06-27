-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Jun-2024 às 02:50
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
(128, 'noiva', 1);

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

--
-- Índices para tabelas despejadas
--

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
-- AUTO_INCREMENT de tabela `bot_meiaspalavras`
--
ALTER TABLE `bot_meiaspalavras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de tabela `bot_palavrasproibidas`
--
ALTER TABLE `bot_palavrasproibidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT de tabela `clones`
--
ALTER TABLE `clones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=430;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
