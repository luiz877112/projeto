-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 11-Nov-2024 às 22:54
-- Versão do servidor: 5.7.11
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_prefeitura_sp`
--
CREATE DATABASE IF NOT EXISTS `bd_prefeitura_sp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_prefeitura_sp`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_protocolos`
--

CREATE TABLE `tb_protocolos` (
  `num_protocolo` int(11) NOT NULL,
  `nome_completo` varchar(255) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `email` varchar(70) NOT NULL,
  `telefone` varchar(25) NOT NULL,
  `setor_resp` enum('Finanças','Administração','Infraestrutura') DEFAULT NULL,
  `detalhes` text NOT NULL,
  `data_hora` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_protocolos`
--

INSERT INTO `tb_protocolos` (`num_protocolo`, `nome_completo`, `cpf`, `email`, `telefone`, `setor_resp`, `detalhes`, `data_hora`) VALUES
(10000, 'FABIO DE OLIVEIRA SILVA', '23123234240', 'fabiodeoliveirabr@gmail.com', '(81) 92832-2939', 'Infraestrutura', 'Rua interditada', '2024-11-08 21:27:17'),
(10001, 'FABIO DE OLIVEIRA SILVA', '23123234240', 'fabiodeoliveirabr@gmail.com', '(81) 92832-2939', 'Infraestrutura', 'Arvore com risco de cair', '2024-11-08 21:28:08'),
(10002, 'FABIO DE OLIVEIRA SILVA', '23123234240', 'fabiodeoliveirabr@gmail.com', '(81) 92832-2939', 'Infraestrutura', 'Arvore com risco de cair', '2024-11-08 21:31:00'),
(10003, 'FABIO DE OLIVEIRA SILVA', '23123234240', 'fabiodeoliveirabr@gmail.com', '(81) 92832-2939', 'Infraestrutura', 'Arvore com risco de cair', '2024-11-08 21:32:29'),
(10004, 'FABIO DE OLIVEIRA SILVA', '23123234240', 'fabiodeoliveirabr@gmail.com', '(81) 92832-2939', 'Infraestrutura', 'Arvore com risco de cair', '2024-11-08 21:35:36'),
(10005, 'FABIO DE OLIVEIRA SILVA', '09090', 'fabiodeoliveirabr@gmail.com', '8196337119', 'Finanças', 'aksaksl', '2024-11-08 21:52:46'),
(10006, 'FABIO DE OLIVEIRA SILVA', '232323', 'fabiodeoliveirabr@gmail.com', '8196337119', 'Administração', '3skdlksdlk', '2024-11-08 21:53:31'),
(10007, 'FABIO DE OLIVEIRA SILVA', 'wqqwqw', 'fabiodeoliveirabr@gmail.com', '8196337119', 'Finanças', 'zkdkzjk', '2024-11-08 21:56:01'),
(10008, 'FABIO DE OLIVEIRA SILVA', 'wqqwqw', 'fabiodeoliveirabr@gmail.com', '8196337119', 'Finanças', 'zkdkzjk', '2024-11-08 21:56:34'),
(10009, 'FABIO DE OLIVEIRA SILVA', 'wqqwqw', 'fabiodeoliveirabr@gmail.com', '8196337119', 'Finanças', 'zkdkzjk', '2024-11-08 21:56:45'),
(10010, 'Fábio de Oliveira e Silva fabiodeoliveirabr', '2309', 'fabiodeoliveirabr@gmail.com', '81992883019', 'Finanças', 'plsadklas', '2024-11-08 21:57:23'),
(10011, 'Fábio de Oliveira e Silva fabiodeoliveirabr', '2309', 'fabiodeoliveirabr@gmail.com', '81992883019', 'Finanças', 'plsadklas', '2024-11-08 21:57:32'),
(10012, 'Fábio de Oliveira e Silva fabiodeoliveirabr', '2309', 'fabiodeoliveirabr@gmail.com', '81992883019', 'Finanças', 'plsadklas', '2024-11-09 08:09:43'),
(10013, 'Fábio de Oliveira e Silva fabiodeoliveirabr', '4444', 'fabiodeoliveirabr@gmail.com', '81992883019', 'Administração', '343434', '2024-11-11 18:39:29'),
(10014, 'Fábio de Oliveira e Silva fabiodeoliveirabr', '34355', 'fabiodeoliveirabr@gmail.com', '81992883019', 'Administração', '3343434', '2024-11-11 18:41:45'),
(10015, 'Fábio de Oliveira e Silva fabiodeoliveirabr', '454545', 'fabiodeoliveirabr@gmail.com', '81992883019', 'Finanças', '343434', '2024-11-11 18:48:54'),
(10016, 'FABIO DE OLIVEIRA SILVA', '66556565', 'fabiodeoliveirabr@gmail.com', '8196337119', 'Administração', 'lskdl klkals klaksl aka', '2024-11-11 19:47:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_protocolos`
--
ALTER TABLE `tb_protocolos`
  ADD PRIMARY KEY (`num_protocolo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_protocolos`
--
ALTER TABLE `tb_protocolos`
  MODIFY `num_protocolo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10017;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
