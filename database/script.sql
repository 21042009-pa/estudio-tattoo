CREATE DATABASE IF NOT EXISTS estudio_tatuagem;
use estudio_tatuagem;

CREATE TABLE usuario(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE clientes(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(255) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE projetos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliete_id INT NOT NULL,
    tamanho VARCHAR(100) NOT NULL,
    cor VARCHAR(100) NOT NULL,
    lugar VARCHAR(100) NOT NULL,
    FOREIGN KEY (cliete_id) REFERENCES clientes(id) 
);

CREATE TABLE sessoes(
    id INT AUTO_INCREMENT PRIMARY KEY,
    projeto_id INT NOT NULL,
    data_sessoes DATETIME NOT NULL,
    FOREIGN KEY (projetos_id) REFERENCES projetos(id)
);

INSERT INTO usuario (nome,email,senha) VALUES
('Administrador', 'admin@estudio.com', '$2b$10$K/4xJFl6cXPkwOnMwogGoO1GDjnUVvwcwb/SY9p9kewB./EKwaWUO'),
('Carlos Mecanico', 'carlos@estudio.com', '$2b$10$K/4xJFl6cXPkwOnMwogGoO1GDjnUVvwcwb/SY9p9kewB./EKwaWUO'),
('Fernanda Atendente', 'fernanda@estudio.com', '$2b$10$K/4xJFl6cXPkwOnMwogGoO1GDjnUVvwcwb/SY9p9kewB./EKwaWUO');

INSERT INTO clientes (nome,cpf, telefone, email)VALUES
('João da Silva', 'b9332f3140efaf757e4d684975ef3365', '(11)9000-1111', 'joao.silva@email.com'),
('Maria Souza', 'be4f639df4cd927594a5e3084b540dc1', '(11)9000-2222', 'maria.souza@email.com'),
('Pedro Oliveira', '65eea67226931d6bc95e431330183923', '(11)9000-3333', 'pedro.oliveira@email.com');

INSERT INTO projetos (cliete_id, tamanho, cor, lugar) VALUES
(1, '15 cm', 'Preta', 'Perna esquerda'),
(2, '30 cm', 'Preta', 'Costela'),
(3, '10 cm', 'Preta', 'Perna esquerda');

INSERT INTO sessoes (projeto_id, data_sessoes) VALUES
(1, '2026-11-05 09:00:00'),
(2, '2026-10-20 14:30:00'),
(3, '2026-10-28 08:00:00');
