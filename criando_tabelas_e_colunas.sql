-- Criando tabelas e colunas

CREATE TABLE viagens.usuarios (
    id INT, 
    nome VARCHAR(255) NOT NULL, -- 'Nome do usuário'
    email VARCHAR(100) NOT NUll UNIQUE, --'email do usuário'
    endereco VARCHAR(255) NOT NULL, -- 'Endereço do usuário'
    dataNascimento DATE NOT NULL -- 'Data de nascimento do usuário'
);

CREATE TABLE viagens.destinos(
    id INT,
    nome VARCHAR(255) NOT NULL UNIQUE, -- 'Nome do destino'
    descricao VARCHAR(255) NOT NULL -- 'Descrição'
);

CREATE TABLE viagens.reservas(
    id INT, -- Identificador da reserva
    id_usuario INT, -- 'referencia ao ID do usuário que fez a reserva'
    id_destino INT, -- 'referencia ao ID do destino da reserva'
    data DATE, -- 'data da reserva'
    status VARCHAR(255) DEFAULT 'pendente' -- 'status da reserva(confirmada, pendente, cancelada, etc)'
);