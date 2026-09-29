-- ============================================================
-- 04 · Filtros: DISTINCT, WHERE, LIKE, NOT, AND / OR,
--      IS NULL, ORDER BY, LIMIT y UPDATE
-- Fecha: 24 de junio de 2026 · base `creadosql`
-- ============================================================

USE creadosql;

SELECT name FROM users;
SELECT user_id, name FROM users;

-- Valores sin repetir
SELECT DISTINCT * FROM users;
SELECT DISTINCT age FROM users;

-- Igualdad
SELECT * FROM users WHERE age = 15;
SELECT DISTINCT name FROM users WHERE age = 15;

-- Ordenar
SELECT * FROM users ORDER BY age;
SELECT * FROM users ORDER BY age DESC;

-- Actualizar un dato
UPDATE creadosql.users SET email = 'sara@gmail.com' WHERE user_id = 3;

SELECT * FROM users WHERE email = 'sara@gmail.com' ORDER BY age DESC;

-- Buscar por patrón
SELECT * FROM users WHERE email LIKE '%@gmail.com';
SELECT * FROM users WHERE email LIKE '%@%';

-- NOT, AND, OR
SELECT * FROM users WHERE NOT email = 'sara@gmail.com';
SELECT * FROM users WHERE NOT email = 'sara@gmail.com' AND age = 15;
SELECT * FROM users WHERE NOT email = 'sara@gmail.com' OR age = 15;
SELECT * FROM users WHERE NOT email = 'sara@gmail.com' OR age = 15 LIMIT 3;

-- Valores vacíos (NULL)
SELECT * FROM users WHERE email IS NULL;
SELECT * FROM users WHERE email IS NOT NULL;
SELECT * FROM users WHERE email IS NOT NULL AND age = 25;
SELECT * FROM users WHERE email IS NULL AND age = 15;
SELECT * FROM users WHERE email IS NOT NULL AND age = 15;
