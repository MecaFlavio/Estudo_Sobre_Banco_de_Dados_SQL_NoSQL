--CRIANDO NOVA TABELA
CREATE TABLE usuarios_nova (
  id INT,
  nome VARCHAR(255) NOT NULL,-- 'Nome do usuário'
  email VARCHAR(255) NOT NULL UNIQUE, --'Endereço de e-mail do usuário'
  data_nascimento DATE NOT NULL, -- 'Data de nascimento do usuário'
  endereco VARCHAR(100) NOT NULL -- 'Endereço do Cliente'
);

--MIGRANDO DADOS EM NOVA TABELA
INSERT INTO usuarios_nova (id, nome, email, endereco, data_nascimento)
SELECT id, nome, email, endereco, data_nascimento
FROM usuarios;

--Excluindo tabela antiga
DROP TABLE usuarios;

--Renomeando tabela
ALTER TABLE usuarios_nova RENAME TO usuarios;

-- Alterando tipo da coluna
ALTER TABLE usuarios ALTER COLUMN endereco TYPE VARCHAR(150);