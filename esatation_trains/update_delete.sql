-- Script update
-- Solucionar el actualizacion de registro
ALTER TABLE `stations`
MODIFY COLUMN `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE `lines`
MODIFY COLUMN `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE `trains` 
MODIFY COLUMN `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

-- Actualizar el nombre de un registro
UPDATE `stations`
SET `name` = 'Lázaro Cárdenas'
WHERE `id` = 1;

UPDATE `stations`
SET `name` = 'Ferreía'
WHERE `id` = 2;

UPDATE `stations`
SET `name` = 'Pantitlán'
WHERE `id` = 3;

UPDATE `stations`
SET `name` = 'Tacuba'
WHERE `id` = 4;

UPDATE `stations`
SET `name` = 'Martín Carrera'
WHERE `id` = 5;

SELECT * FROM stations;

-- Script delete
SELECT id FROM `stations` 
WHERE `name` = 'Merced';

DELETE FROM `stations`
WHERE `id` = 164;

DELETE FROM `stations`
WHERE `id` = 165;

DELETE FROM `stations`
WHERE `name` = 'Benito Cárdenas';

-- Vaciar la tabla (borrar registros)
-- Modo DELETE FROM
DELETE FROM `stations_delete`;
SELECT * FROM `stations_delete`;


-- Un DELETE FROM no restable ce los id no resetea en autoincrement
INSERT INTO `stations_delete` (`name`) VALUES
("Lázaro Cárdens"), 
("Ferería"),
("Pnttlán"), 
("Tauga"), 
("MartínCrrera"); 

-- Modo TRUNCATE
-- Un TRUNCATE TABLE si resetea los autoincrement
TRUNCATE TABLE `stations_delete`;
TRUNCATE TABLE `lines_stations`;
TRUNCATE TABLE `locations`;

INSERT INTO `stations_delete` (`name`) VALUES
("Lázaro Cárdens"), 
("Ferería"),
("Pnttlán"), 
("Tauga"), 
("MartínCrrera"); 

SELECT * FROM `stations_delete`;

-- Modo DROP TABLE (eliminar una tabla)
DROP TABLE `stations_delete`;








