-- Calculo de dos estaciones en metros
SELECT 
ST_Distance_Sphere(
	POINT(-99.14912224, 19.42729875),
	POINT(-99.13303971, 19.42543703)
) AS distance;

-- Claculo de dos estaciones en kilometros
SELECT 
ST_Distance_Sphere(
	POINT(-99.14912224, 19.42729875),
	POINT(-99.13303971, 19.42543703)
) / 1000 AS distance;


SELECT
ST_Distance_Sphere(
  (
    SELECT `location`
    FROM `locations`
    WHERE `station_id` = (
      SELECT `id`
      FROM `stations`
      WHERE `name` = "Pino Suarez"
    )
  ),
  (
    SELECT `location`
    FROM `locations`
    WHERE `station_id` = (
      SELECT `id`
      FROM `stations`
      WHERE `name` = "Balderas"
    )
  )
) AS distance_by_name;

-- Consultar en kilometros con consultas anidadas
SELECT
ST_Distance_Sphere(
	(
		SELECT `locations`.`location`
		FROM `locations`
		INNER JOIN `stations`
		ON `stations`.`id` = `locations`.`station_id`
		WHERE `stations`.`name` = 'Balderas'
	),
	(
		SELECT `locations`.`location`
		FROM `locations`
		INNER JOIN `stations`
		ON `stations`.`id` = `locations`.`station_id`
		WHERE `stations`.`name` = 'Pino Suarez'
		
	)
) / 1000 AS distance;


