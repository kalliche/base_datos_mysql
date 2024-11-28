USE metro_cdmx;

SELECT * FROM `lines`;  -- Seleccionar todo
SELECT `id`, `name`, `color` FROM `lines`;  -- filtrar por columnas
-- Operaciones matematicas
SELECT (2 + 2);
SELECT (2 + 2) AS resultado;
SELECT AVG(`year`) AS `year_avg` FROM `trains`;

-- Juntar tablas
SELECT `lines`.`name`, `trains`.`serial_number`, `lines`.`color`
FROM `lines`
INNER JOIN `trains`
ON `lines`.`id` = `trains`.`line_id`;

-- consultas anidadas


