 DELIMITER $$

CREATE TRIGGER log_invalid_email
BEFORE INSERT ON register
FOR EACH ROW
BEGIN
    INSERT INTO log_table (log_message)
    VALUES (CONCAT('Checking email: ', NEW.email));

    IF EXISTS (SELECT 1 FROM register WHERE email = NEW.email) THEN
        INSERT INTO log_table (log_message)
        VALUES (CONCAT('Duplicate email found: ', NEW.email));

        INSERT INTO invalid_login_attempts (email, reason)
        VALUES (NEW.email, 'Duplicate email');
        
        -- Commented out SIGNAL to test logging behavior without it
        -- SIGNAL SQLSTATE '45000'
        -- SET MESSAGE_TEXT = 'Duplicate email logged. Insert operation denied.';
    END IF;
END$$

DELIMITER ;
DELIMITER $$

CREATE TRIGGER log_incorrect_password
AFTER UPDATE ON register
FOR EACH ROW
BEGIN
    IF (NEW.password != OLD.password) THEN
        INSERT INTO invalid_login_attempts (email, reason)
        VALUES (NEW.email, 'Incorrect password');
    END IF;
END$$

DELIMITER ;