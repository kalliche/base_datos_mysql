-- stored procedures (procedimiento)
-- procedimiento 1
DELIMITER //
CREATE PROCEDURE calculate_distance_between_lines(
	IN station_one POINT,
	IN station_two POINT,
	IN meters BOOLEAN
)
BEGIN
	IF meters THEN
		SELECT
		ST_DISTANCE_SPHERE(station_one, station_two) AS distances;
	ELSE
		SELECT
		ST_DISTANCE_SPHERE(station_one, station_two) / 1000 AS distances;
	END IF;
END //
DELIMITER ;

-- procedimiento 2
DELIMITER //

CREATE PROCEDURE test(
  IN station_name_one VARCHAR(50),
  IN station_name_two VARCHAR(50),
  IN is_kilometers BOOLEAN
)
BEGIN
  DECLARE location_one POINT;
  DECLARE location_two POINT;
  DECLARE response FLOAT;

  -- Obtener la ubicación de la primera estación
  SELECT locations.location
  INTO location_one
  FROM locations
  INNER JOIN stations
  ON stations.id = locations.station_id
  WHERE stations.name COLLATE utf8mb4_unicode_ci = station_name_one;

  -- Obtener la ubicación de la segunda estación
  SELECT locations.location
  INTO location_two
  FROM locations
  INNER JOIN stations
  ON stations.id = locations.station_id
  WHERE stations.name COLLATE utf8mb4_unicode_ci = station_name_two;

  -- Calcular la distancia entre los puntos (usando ST_Distance)
  SET response = ST_DISTANCE(location_one, location_two);

  -- Convertir a kilómetros si se requiere
  IF is_kilometers THEN
    SET response = response / 1000;
  END IF;

  -- Retornar el resultado
  SELECT response;
END //
DELIMITER ;

CALL test('Eugenia', 'Tepito', 0);

-- llamar procedimiento
CALL calculate_distance_between_lines(
	POINT(-99.14433718, 19.40702104),
	POINT(-99.173702, 19.49039233),
	FALSE
);

-- eliminar procedimiento
DROP PROCEDURE calculate_distance_betweem_lines;

