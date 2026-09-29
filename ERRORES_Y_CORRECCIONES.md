# Errores que cometí y cómo los corregí

Todos estos errores salen de mi historial real de MySQL Workbench. Los dejo aquí porque así fue como aprendí.

| Lo que escribí (con error) | Qué estaba mal | Cómo quedó bien |
|---|---|---|
| `Order Desc` | A `ORDER` le faltaba `BY` y la columna | `ORDER BY population DESC` |
| `Limit by 10000` | `LIMIT` no lleva `BY` | `LIMIT 10` |
| `select name, population SUM population ...` | Las funciones van con paréntesis y separadas por coma | `SELECT SUM(population) FROM country` |
| `select continent SUM(population) ...` | Faltaba la coma entre columnas | `SELECT continent, SUM(population) ...` |
| `group by totalPoblacion` | Se agrupa por la categoría, no por el total | `GROUP BY continent` |
| `sum(country)` para contar países | `SUM` suma números; para contar filas se usa `COUNT` | `COUNT(*) AS TotalPaises` |
| `avg(*)` | `AVG` necesita una columna numérica | `AVG(population)` |
| `having > 20` | A `HAVING` le faltaba qué comparar | `HAVING TotalPaises > 20` |
| `... LIMIT 3 ORDER BY age DESC` | El orden importa: `ORDER BY` va antes de `LIMIT` | `... ORDER BY age DESC LIMIT 3` |
| `select distinct From users` | `DISTINCT` necesita columnas | `SELECT DISTINCT age FROM users` |
| `SELECT name From creadosql` | `creadosql` es la base de datos, no la tabla | `SELECT name FROM users` |
| `init_date = '29-04-2010'` | MySQL guarda las fechas como AAAA-MM-DD | `'2010-04-29'` |
| `showtables` | Faltaba el espacio | `SHOW TABLES` |
