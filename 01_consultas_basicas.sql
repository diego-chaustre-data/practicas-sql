-- ============================================================
-- 01 · Consultas básicas (base de ejemplo `world` de MySQL)
-- Fecha: 20 de junio de 2026 · MySQL Workbench 8
-- Temas: SHOW, USE, SELECT, WHERE, ORDER BY, LIMIT
-- ============================================================

SHOW DATABASES;
USE world;
SHOW TABLES;

-- Ver todo el contenido de la tabla de países
SELECT * FROM country;

-- Solo algunas columnas
SELECT Name, Continent, Population FROM country;

-- Filtrar por continente
SELECT name, population, continent
FROM country
WHERE continent = 'South America';

SELECT name, population
FROM country
WHERE continent = 'Asia';

-- Filtrar por un número
SELECT name, population
FROM country
WHERE population > 10000;

SELECT name, population
FROM country
WHERE population < 10000;

-- Ordenar de mayor a menor y de menor a mayor
SELECT name, population
FROM country
WHERE population > 10000
ORDER BY population DESC;

SELECT name, population
FROM country
WHERE population > 10000
ORDER BY population ASC;

-- Los 10 países más poblados
SELECT name, population
FROM country
WHERE population > 10000
ORDER BY population DESC
LIMIT 10;
