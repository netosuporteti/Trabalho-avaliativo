-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Tempo de geração: 30/03/2024 às 03:40
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `agendamentosalas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `agendamentos`
--

CREATE TABLE `agendamentos` (
  `id` int(11) NOT NULL,
  `data_agendamento` date NOT NULL,
  `nome_organizador` varchar(100) NOT NULL,
  `assunto_reuniao` varchar(255) NOT NULL,
  `numero_participantes` int(11) NOT NULL,
  `nomeSala` varchar(100) NOT NULL,
  `hora_agendamento` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `agendamentos`
--

INSERT INTO `agendamentos` (`id`, `data_agendamento`, `nome_organizador`, `assunto_reuniao`, `numero_participantes`, `nomeSala`, `hora_agendamento`) VALUES
(4, '2024-02-28', 'e', 'e', 1, 'Sala 1', '04:49:00'),
(5, '2024-03-30', 'Organizador 1', 'Reunião de equipe', 5, 'Sala 1', '09:00:00'),
(6, '2024-03-31', 'Organizador 2', 'Apresentação de projeto', 8, 'Sala 1', '14:30:00'),
(7, '2024-03-30', 'Organizador 3', 'Brainstorming', 6, 'Sala 2', '10:00:00'),
(8, '2024-03-31', 'Organizador 4', 'Treinamento', 10, 'Sala 2', '13:00:00'),
(9, '2024-03-30', 'Organizador 5', 'Reunião de planejamento', 4, 'Sala 3', '11:00:00'),
(10, '2024-03-31', 'Organizador 6', 'Entrevistas de emprego', 3, 'Sala 3', '15:00:00'),
(11, '2024-03-30', 'Organizador 7', 'Apresentação de resultados', 7, 'Sala 4', '11:30:00'),
(12, '2024-03-31', 'Organizador 8', 'Sessão de brainstorming', 5, 'Sala 4', '16:00:00'),
(13, '2024-03-30', 'Organizador 9', 'Reunião de vendas', 8, 'Sala 5', '12:00:00'),
(14, '2024-03-31', 'Organizador 10', 'Apresentação de marketing', 6, 'Sala 5', '17:00:00'),
(15, '2024-04-01', 'João', 'Reunião de Projeto', 5, 'Sala 1', '09:00:00'),
(16, '2024-04-05', 'Maria', 'Apresentação de Vendas', 8, 'Sala 1', '14:00:00'),
(17, '2024-04-02', 'Carlos', 'Brainstorming de Marketing', 6, 'Sala 2', '10:30:00'),
(18, '2024-04-06', 'Ana', 'Treinamento de Equipe', 10, 'Sala 2', '13:00:00'),
(19, '2024-04-03', 'Fernanda', 'Planejamento Estratégico', 12, 'Sala 3', '11:00:00'),
(20, '2024-04-07', 'Roberto', 'Feedback de Desempenho', 7, 'Sala 3', '15:30:00'),
(21, '2024-04-04', 'Lúcia', 'Apresentação de Novos Produtos', 4, 'Sala 4', '12:00:00'),
(22, '2024-04-08', 'Pedro', 'Entrevistas de Emprego', 3, 'Sala 4', '16:00:00'),
(23, '2024-04-01', 'Camila', 'Apresentação de Relatório', 10, 'Sala 5', '10:00:00'),
(24, '2024-04-05', 'Mariana', 'Discussão de Projetos Futuros', 15, 'Sala 5', '14:30:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `salas`
--

CREATE TABLE `salas` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `capacidade` int(11) NOT NULL,
  `recursos_disponiveis` text DEFAULT NULL,
  `status` enum('Disponível','Ocupada') DEFAULT 'Disponível'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `salas`
--

INSERT INTO `salas` (`id`, `nome`, `capacidade`, `recursos_disponiveis`, `status`) VALUES
(1, 'Sala 1', 0, '', 'Disponível'),
(11, 'Sala 2', 8, 'TV, mesa redonda', 'Disponível'),
(12, 'Sala 3', 12, 'Computador, cadeiras confortáveis', 'Disponível'),
(13, 'Sala 4', 6, 'Mesa de conferência, ar-condicionado', 'Disponível'),
(14, 'Sala 5', 15, 'Cafeteira, micro-ondas', 'Disponível');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `agendamentos`
--
ALTER TABLE `agendamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agendamentos`
--
ALTER TABLE `agendamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `salas`
--
ALTER TABLE `salas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
