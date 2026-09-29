-- ============================================================
-- 02 · Funciones de agregación, GROUP BY y HAVING
-- Fechas: 20 y 21 de junio de 2026 · base `world`
-- ============================================================

USE world;

-- Totales de toda la tabla
SELECT SUM(population)   FROM country;
SELECT MAX(population)   FROM country;
SELECT MIN(population)   FROM country;
SELECT AVG(population)   FROM country;
SELECT COUNT(population) FROM country;

-- Población total por continente
SELECT continent, SUM(population) AS totalPoblacion
FROM country
GROUP BY continent;

-- Cuántos países hay en cada continente
SELECT continent, COUNT(*) AS TotalPaises
FROM country
GROUP BY continent;

-- Población promedio por continente, de mayor a menor
SELECT continent, AVG(population) AS promedioPaises
FROM country
GROUP BY continent
ORDER BY promedioPaises DESC;

-- Solo los continentes con más de 20 países (HAVING filtra grupos)
SELECT continent, COUNT(*) AS TotalPaises
FROM country
GROUP BY continent
HAVING TotalPaises > 20;
