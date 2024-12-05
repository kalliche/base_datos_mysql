DELIMITER //

CREATE PROCEDURE get_line_stations(
  IN line_name VARCHAR(15)
)
BEGIN
  -- Declarar una variable para almacenar el ID de la línea
  DECLARE line_id BIGINT;

  -- Obtener el ID de la línea con base en su nombre
  SELECT id
  INTO line_id
  FROM `lines`
  WHERE `name` COLLATE utf8mb4_unicode_ci = line_name;

  -- Validar si se encontró un ID para la línea
  IF line_id IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'La línea especificada no existe.';
  ELSE
    -- Generar y ejecutar la consulta dinámica
    SET @sql = CONCAT(
      'SELECT ',
      '`lines_stations`.`id` AS relation_id, ',
      '`lines`.`name` AS line_name, ',
      '`stations`.`name` AS station_name ',
      'FROM `lines_stations` ',
      'INNER JOIN `stations` ',
      'ON `stations`.`id` = `lines_stations`.`station_id` ',
      'INNER JOIN `lines` ',
      'ON `lines`.`id` = `lines_stations`.`line_id` ',
      'WHERE `lines_stations`.`line_id` = ', line_id
    );

    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
  END IF;
END //

DELIMITER ;

CALL get_line_stations('Linea 3');

DROP PROCEDURE IF EXISTS get_line_stations;



--- 