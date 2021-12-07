-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Dez-2021 às 19:41
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `twitter_clone`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tweets`
--

CREATE TABLE `tweets` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `tweet` varchar(140) COLLATE utf8_unicode_ci NOT NULL,
  `data` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tweets`
--

INSERT INTO `tweets` (`id`, `id_usuario`, `tweet`, `data`) VALUES
(1, 1, 'xxx', '2021-12-02 15:58:46'),
(2, 1, '357', '2021-12-02 15:59:20'),
(3, 1, 'xzc', '2021-12-02 16:01:59'),
(4, 1, '', '2021-12-02 16:08:04'),
(5, 2, 'xxx', '2021-12-02 16:20:41'),
(6, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla efficitur dui mauris, eu iaculis neque viverra at. Nulla in fermentum libero.', '2021-12-02 16:28:11'),
(7, 1, 'Ut vulputate nulla consectetur fringilla scelerisque. In hac habitasse platea dictumst. Lorem ipsum dolor sit amet, consectetur adipiscing e', '2021-12-02 16:38:23'),
(8, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut at urna vehicula, pretium turpis vel, viverra neque. Integer malesuada ultricies', '2021-12-03 16:58:00'),
(9, 2, 'Quisque elementum metus in fermentum venenatis. Morbi venenatis urna neque, in viverra elit bibendum nec.', '2021-12-03 16:58:10'),
(10, 3, 'Vestibulum consectetur ipsum nulla, in euismod ante consequat et. Phasellus mattis purus a aliquam ultrices. Vivamus eu tellus dui.', '2021-12-03 16:58:31'),
(11, 3, 'Proin elementum massa erat, at scelerisque turpis efficitur sit amet. ', '2021-12-03 16:58:37'),
(12, 3, 'Praesent tempor lectus at nunc laoreet, id molestie sem cursus. Curabitur eget nibh quis odio gravida commodo. Quisque at ultricies dolor.', '2021-12-03 16:58:45'),
(13, 1, 'Nunca esquecer disso ...', '2021-12-03 16:59:46'),
(14, 1, 'Vou conseguir...', '2021-12-06 15:57:57'),
(15, 5, 'Eeeee', '2021-12-06 16:29:16'),
(16, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2021-12-06 16:56:04'),
(17, 1, 'Aliquam ut lorem sodales, tincidunt nisi vitae, semper turpis. t.', '2021-12-07 15:38:39'),
(18, 1, 'Nullam augue magna, efficitur id tellus at, molestie volutpat risus. In hac habitasse platea dictumst. Vestibulum finibus sapien vitae venen', '2021-12-07 15:38:48'),
(19, 1, 'Proin nisi mauris, condimentum a lacinia ut, ultrices a magna.', '2021-12-07 15:38:58'),
(20, 1, 'Etiam viverra, tellus non imperdiet ultrices, nulla purus mattis augue, quis varius neque augue non lorem.', '2021-12-07 15:39:11'),
(21, 1, 'Etiam velit tortor, pharetra et nunc ut, interdum mollis lectus. Nam metus tellus, facilisis at felis eget, convallis rhoncus sapien. Intege', '2021-12-07 15:39:22'),
(22, 2, 'Nunc interdum semper libero, vitae ultricies ante pellentesque nec.', '2021-12-07 15:40:02'),
(23, 1, 'Nunc interdum...?', '2021-12-07 15:40:21');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'José', 'admin@admin.com', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'Alexandra', 'user@admin.com', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'Maria', 'user2@admin.com', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'João', 'user3@admin.com', 'b4586f37b2ca1597ce77fe32980a14d1'),
(5, 'Jaqueline Sophie', 'user4@admin.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_seguidores`
--

CREATE TABLE `usuarios_seguidores` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_usuario_seguindo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `usuarios_seguidores`
--

INSERT INTO `usuarios_seguidores` (`id`, `id_usuario`, `id_usuario_seguindo`) VALUES
(6, 1, 3),
(7, 3, 1),
(10, 1, 2),
(11, 2, 1),
(12, 1, 4),
(13, 5, 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios_seguidores`
--
ALTER TABLE `usuarios_seguidores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `usuarios_seguidores`
--
ALTER TABLE `usuarios_seguidores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
