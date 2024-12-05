USE metro_cdmx;

-- Creacion de tablas
-- Creacion de la tabla lines
CREATE TABLE `lines`(
	`id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(10) NOT NULL,
	`color` VARCHAR(15) NOT NULL,
	
	`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updatad_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	
	PRIMARY KEY (id)
)
DEFAULT CHARSET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

-- Creacion de la tabla stations
CREATE TABLE `stations`(
	`id` BIGINT(20),
	`name` VARCHAR(50) NOT NULL,
	
	`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
)
DEFAULT CHARSET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

-- Creacion de la tabla de trains
CREATE TABLE `trains`(
	`serial_number` VARCHAR(10) NOT NULL,
	
	`line_id` BIGINT(20) UNSIGNED NOT NULL,
	`type` TINYINT(4) NOT NULL,
	`year` INT(4) NOT NULL,
	
	`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	
	PRIMARY KEY (serial_number),
	CONSTRAINT `trains_line_id_foregin`
	FOREIGN KEY (`line_id`) REFERENCES `lines` (id)
)
DEFAULT CHARSET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

-- Creacion de la tabla de random para un reto dfe clase de delete
CREATE TABLE `stations_delete`(
	`id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	
	`name` VARCHAR(50) NOT NULL,
	
	`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	
	PRIMARY KEY (id)
)
DEFAULT CHARSET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

-- Creacion de la tabla lines_stations
CREATE TABLE `lines_stations` (
	`id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	
	`line_id` BIGINT(20) UNSIGNED NOT NULL,
	`station_id` BIGINT(20) UNSIGNED NOT NULL,
	
	`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (id),
	
	CONSTRAINT `lines_stations_line_id_foreign`
	FOREIGN KEY (`line_id`) REFERENCES `lines` (`id`),
	
	CONSTRAINT `lines_stations_station_id_foreign`
	FOREIGN KEY (`station_id`) REFERENCES `stations` (`id`)
)
DEFAULT CHARSET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

SELECT * FROM lines_stations;


-- Creacion de la tabla de locations
CREATE TABLE `locations` (
	`id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	
	`station_id` BIGINT(20) UNSIGNED NOT NULL,
	`location` POINT NOT NULL,
	
	`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (id),
	CONSTRAINT `locations_station_id_foreign`
	FOREIGN KEY (`station_id`) REFERENCES `stations` (`id`)
)
DEFAULT CHARSET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- Creacion de tablas de drivers
CREATE TABLE `drivers` (
	`id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(20),
	`status` BOOLEAN NOT NULL DEFAULT FALSE, 
	
	`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (id)
)
DEFAULT CHARSET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

INSERT INTO `drivers` (NAME) VALUES
("Pedro"),
("Pablo"),
("José"),
("María"),
("Amanda");

SELECT * FROM drivers;

-- Creacion de la tabla active_drivers
CREATE TABLE `active_drivers` (
	`id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	`driver_id` BIGINT(20) UNSIGNED NOT NULL,
	
	`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (id)
)
DEFAULT CHARSET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

-- Modificar una tabla stations
ALTER TABLE `stations`
MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `stations`
ADD PRIMARY KEY (id);

-- Eliminar registros de la base de datos
TRUNCATE TABLE `trains`;

DELETE FROM `lines`;
ALTER TABLE `lines` AUTO_INCREMENT = 1;