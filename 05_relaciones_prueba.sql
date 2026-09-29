-- ============================================================
-- 05 · Primer intento de modelo con dos tablas
-- Fecha: 22 de agosto de 2026 · base `prueba_aprendido`
-- (Datos de práctica ficticios)
-- ============================================================

CREATE SCHEMA prueba_aprendido;

CREATE TABLE prueba_aprendido.contactos (
  Id_conct  INT NOT NULL,
  nombre    VARCHAR(100) NULL,
  apellido  VARCHAR(100) NULL,
  direccion VARCHAR(150) NULL,
  PRIMARY KEY (Id_conct)
);

CREATE TABLE prueba_aprendido.telefonos (
  idtelefonos   INT NOT NULL,
  telefonoscol  VARCHAR(15) NULL,
  tipo_telef    INT NULL,
  telefonoscol1 VARCHAR(45) NULL,
  PRIMARY KEY (idtelefonos)
);

INSERT INTO prueba_aprendido.contactos (Id_conct, nombre, apellido, direccion)
VALUES (1, 'Ana', 'Pérez', 'Calle 1'),
       (2, 'Luis', 'Gómez', 'Calle 2');

SELECT * FROM prueba_aprendido.contactos;

-- Lo que sigue en mi aprendizaje:
--  * agregar la llave foránea id_contacto en `telefonos`
--    para relacionar cada teléfono con su contacto
--  * consultar ambas tablas juntas con INNER JOIN
