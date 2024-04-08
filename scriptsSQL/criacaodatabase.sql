-- Criar o banco de dados
CREATE DATABASE IF NOT EXISTS salas_reunioes;

-- Usar o banco de dados
USE salas_reunioes;

-- Tabela para armazenar as salas de reuniões
CREATE TABLE salas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    capacidade INT NOT NULL,
    recursos_disponiveis TEXT,
    status ENUM('Disponível', 'Ocupada') DEFAULT 'Disponível'
);

-- Tabela para armazenar os agendamentos
CREATE TABLE agendamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sala_id INT NOT NULL,
    data_agendamento DATETIME NOT NULL,
    nome_organizador VARCHAR(100) NOT NULL,
    assunto_reuniao VARCHAR(255) NOT NULL,
    numero_participantes INT NOT NULL,
    CONSTRAINT fk_sala_id FOREIGN KEY (sala_id) REFERENCES salas(id)
);

-- Exemplo de inserção de dados para teste
INSERT INTO salas (nome, capacidade, recursos_disponiveis) VALUES
('Sala 1', 10, 'Projetor, Flipchart'),
('Sala 2', 8, 'Projetor, TV, Videoconferência');
