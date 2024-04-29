--Você está criando um banco de dados simples para registrar informações pessoais das pessoas. 
-- O banco terá uma tabela com:
--Colunas para ID, 
--nome completo, 
--idade, gênero, 
--nacionalidade, 
--e-mail, 
--estado civil, 
--nome do pai,
--nome da mãe. 

-- Criado o banco de dados
CREATE DATABASE informacoes_pessoais;

-- Uso do banco de dados
USE informacoes_pessoais;

-- Criado a tabela de informações pessoais
CREATE TABLE Pessoas (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(255),
    idade INT,
    genero VARCHAR(10),
    nacionalidade VARCHAR(50),
    email VARCHAR(255),
    estado_civil VARCHAR(20),
    nome_pai VARCHAR(255),
    nome_mae VARCHAR(255)
);

--Após criar o banco, você adiciona três pessoas como exemplo. 

-- Inserindo as informações do exemplo
INSERT INTO Pessoas (nome_completo, idade, genero, nacionalidade, email, estado_civil, nome_pai, nome_mae) VALUES 
('Xandão Rei Sol', 54, 'Masculino', 'Brasileiro', 'xandaoreisol@stf.com', 'Casado', 'Zeus', 'Hera'),
('Tio Elon dos Foguetes', 51, 'Masculino', 'Americano', 'elon@x.com', 'Divorciado', 'Errol', 'Maye'),
('Mark Olho de Sauron', 39, 'Masculino', 'Americano', 'sauron@fb.com', 'Casado', 'Edward', 'Karen');

--Agora, pense em uma pessoa que você conhece e escolha um número para ser o ID dela. 
-- Essa pessoa será atualizada com novas informações. 

-- Atualizando informações de uma pessoa conhecida, mas apenas alguns dados como se essa pessoa fizesse parte da tabela
UPDATE Pessoas 
SET nome_completo = 'Lule da Silva', idade = 78, estado_civil = 'Casado'
WHERE ID = 51;

-- Em seguida, escolha outro número de ID de uma pessoa que deseja remover completamente do banco de dados.

-- Remover completamente uma pessoa do banco de dados, sendo essa uma pessoa aleário do ID 666
DELETE FROM Pessoas 
WHERE ID = 666;
