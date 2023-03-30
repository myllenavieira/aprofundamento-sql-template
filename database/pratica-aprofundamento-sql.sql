-- Active: 1680127027189@@127.0.0.1@3306
-- Conecte o arquivo pratica-aprofundamento-sql.db com a extensão MySQL e ative a conexão aqui

-- Deletar tabela
DROP TABLE pokemons;

-- Criar tabela
CREATE TABLE pokemons (
    id INTEGER PRIMARY KEY UNIQUE NOT NULL,
    name TEXT UNIQUE NOT NULL,
    type TEXT NOT NULL,
    hp INTEGER NOT NULL,
    attack INTEGER NOT NULL,
    defense INTEGER NOT NULL,
    special_attack INTEGER NOT NULL,
    special_defense INTEGER NOT NULL,
    speed INTEGER NOT NULL
);

-- Popular tabela
INSERT INTO pokemons (
    id,
    name,
    type,
    hp,
    attack,
    defense,
    special_attack,
    special_defense,
    speed
)
VALUES 
    (1, "bulbasaur", "grass", 45, 49, 49, 65, 65, 45),
    (2, "ivysaur", "grass", 60, 62, 63, 80, 80, 60),
    (3, "venusaur", "grass", 80, 82, 83, 100, 100, 80),
    (4, "charmander", "fire", 39, 52, 43, 60, 50, 65),
    (5, "charmeleon", "fire", 58, 64, 58, 80, 65, 80),
    (6, "charizard", "fire", 78, 84, 78, 109, 85, 100),
    (7, "squirtle", "water", 44, 48, 65, 50, 64, 43),
    (8, "wartortle", "water", 59, 63, 80, 65, 80, 58),
    (9, "blastoise", "water", 79, 83, 100, 85, 105, 78);

-- Buscar todos os pokemons
SELECT * FROM pokemons;

-- Práticas

-- Prática 1 --

-- Buscar (SELECT) pokemons com speed maior (>) que 60 --
SELECT * FROM pokemons
WHERE speed > 60;

-- Buscar (SELECT) pokemons que tenham attack e special_attack maiores ou iguais (>=) a 60 --
SELECT * FROM pokemons
WHERE attack >= 60 AND special_attack >= 60;

-- Buscar (SELECT) pokemons que tenham no nome o termo "saur" no final
SELECT * FROM pokemons
WHERE name LIKE "%saur";

-- Buscar pokemon que tenha "to" no meio do nome --
SELECT * FROM pokemons
WHERE name LIKE "%to%";

-- Buscar pokemons que onome começa com "Ch" --
SELECT * FROM pokemons
WHERE name LIKE "ch%";

-- Prática 2 --

-- Busque na tabela pokemons a média simples (AVG) da coluna hp --
SELECT AVG(hp) AS MédiaHP FROM pokemons;

-- Busque o número (COUNT) do número de linhas da tabela pokemons --
SELECT COUNT(*) AS TotalDePokemons FROM pokemons;

-- Prática 3 --
-- Busque todos os pokemons e ordene-os baseado na coluna defense em ordem decrescente (DESC) --
SELECT * FROM pokemons
ORDER BY defense DESC;

-- Busque novamente o número de pokemons cadastrados baseado na coluna type --
SELECT COUNT(*) AS NumeroDeTipos, type FROM pokemons
GROUP BY "type";

-- Busque todos os pokemons, limite o resultado a 3 linhas iniciando a partir da 5 linha --
SELECT * FROM pokemons
LIMIT 3
OFFSET 5;

-- Fixação --
-- Busque todos os pokemons, filtre para mostrar somente os tipos "fire" ou "grass", ordem crescente na coluna attack, limitado a 3 linhas iniciando a partir da terceira --
SELECT * FROM pokemons
WHERE "type" = "fire" OR "type" = "grass"
ORDER BY attack ASC
LIMIT 3 OFFSET 2;
