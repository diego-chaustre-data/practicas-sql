-- ============================================================
-- 03 · Crear una base de datos, una tabla e insertar datos
-- Fechas: 21 al 24 de junio de 2026
-- Temas: CREATE DATABASE, CREATE TABLE, PRIMARY KEY,
--        AUTO_INCREMENT, NULL / NOT NULL, INSERT, ALTER TABLE
-- (Datos de práctica ficticios)
-- ============================================================

CREATE DATABASE creadosql;

CREATE TABLE creadosql.new_table (
  user_id   INT NOT NULL AUTO_INCREMENT,
  name      VARCHAR(50)  NOT NULL,
  surname   VARCHAR(100) NOT NULL,
  age       INT NULL,
  init_date DATE NULL,
  email     VARCHAR(50) NULL,
  PRIMARY KEY (user_id)
);

-- La fecha va en formato AAAA-MM-DD (al principio la escribí al revés y falló)
INSERT INTO creadosql.new_table (user_id, name, surname, age, init_date, email)
VALUES (1, 'Brais', 'Moure', 36, '2010-04-29', 'brais@ejemplo.com');

INSERT INTO creadosql.new_table (user_id, name, surname, age, init_date, email)
VALUES (2, 'Sara', 'Mora', 20, '2023-10-12', 'sara@gmail.com');

INSERT INTO creadosql.new_table (user_id, name, surname, age)
VALUES (3, 'Carlos', 'Azaustre', 15);

INSERT INTO creadosql.new_table (user_id, name, surname)
VALUES (4, 'Savitar', 'Jona');

INSERT INTO creadosql.new_table (user_id, name, surname, age, email)
VALUES (5, 'Miriam', 'Gonzalez', 15, 'miriam@gmail.com');

INSERT INTO creadosql.new_table (user_id, name, surname)
VALUES (6, 'Martin', 'Beta');

-- Cambiarle el nombre a la tabla
ALTER TABLE creadosql.new_table RENAME TO creadosql.users;
