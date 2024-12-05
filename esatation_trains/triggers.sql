SELECT * FROM DRIVERS D;
-- driver trigger

DELIMITER //
CREATE TRIGGER update_active_drivers
AFTER UPDATE
ON `drivers`
FOR EACH ROW
BEGIN

    IF NEW.status = 1 THEN
        INSERT INTO `active_drivers` (driver_id) VALUES (NEW.id);
    ELSE
        DELETE FROM `active_drivers` WHERE driver_id = NEW.id;
    END IF;

END; //

DELIMITER ;

-- conductor trabajando
UPDATE `drivers` SET status = 1 WHERE id = 1;

-- conductor no trabajando
UPDATE `drivers` SET status = 0 WHERE id = 1;


SELECT * FROM ACTIVE_DRIVERS AD;

--- ==================================================
--- ==================================================

CREATE TRIGGER update_updated_at_field
BEFORE UPDATE 
ON `lines`
FOR EACH ROW 
SET NEW.updatad_at = NOW(); 