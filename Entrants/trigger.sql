DELIMITER $$
 
CREATE TRIGGER before_points_delete
BEFORE DELETE
ON Points FOR EACH ROW
BEGIN
    INSERT INTO PointsArchives(entrants_id, zno_id, point)
    VALUES(OLD.entrants_id, OLD.zno_id, OLD.point);
END$$    
 
DELIMITER ;



DELIMITER $$
 
CREATE TRIGGER before_entrants_insert
BEFORE INSERT
ON Entrants FOR EACH ROW
BEGIN
    DECLARE age INT;
    DECLARE year_now INT;
    DECLARE msg VARCHAR(128);
    
    SELECT extract(year from date_of_birth), extract(year from now())
    INTO age, year_now
    FROM Entrants;
    
    IF year_now - age >= 18 THEN
        SET msg = concat('MyTriggerError: Trying to insert too young student: ', cast(new.date_of_birth as char));
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg;
    END IF; 
 
END $$
 
DELIMITER ;



DELIMITER $$
 
CREATE TRIGGER after_entrants_insert
AFTER INSERT
ON Entrants FOR EACH ROW
BEGIN
    IF NEW.date_of_birth IS NULL THEN
        INSERT INTO reminders(memberId, message)
        VALUES(new.id, CONCAT('Hi ', NEW.lastname, NEW.firstname, ', please update your date of birth.'));
    END IF;
END$$
 
DELIMITER ;



DELIMITER $$
 
CREATE TRIGGER before_points_update
BEFORE UPDATE
ON Points FOR EACH ROW
BEGIN
    DECLARE errorMessage VARCHAR(255);
    SET errorMessage = CONCAT('The new point ',
                        NEW.point,
                        ' cannot be greater than 200');
                        
    IF new.point > 200 THEN
        SIGNAL SQLSTATE '45000' 
		SET MESSAGE_TEXT = errorMessage;
    END IF;
END $$
 
DELIMITER ;



DELIMITER $$
 
CREATE TRIGGER after_vnz_update
AFTER UPDATE
ON VNZs FOR EACH ROW
BEGIN
    IF OLD.address <> new.address THEN
        INSERT INTO VNZsChanges(vnzsId, beforeAddress, afterAddress)
        VALUES(old.id, old.address, new.address);
    END IF;
END$$
 
DELIMITER ;