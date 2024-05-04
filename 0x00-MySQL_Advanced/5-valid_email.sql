-- SQL script to create a trigger that resets the attribute valid_email
-- only when the email has been changed.

-- Context: This trigger is designed to handle user email validation within the database.

-- Change the delimiter to handle trigger creation
DELIMITER $$

-- Create the trigger 'resets_valid_email' before updating the 'users' table
CREATE TRIGGER resets_valid_email BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    -- Check if the new email value is different from the old email value
    IF NEW.email != OLD.email THEN
        -- If the email has changed, set valid_email to 0 (not valid)
        SET NEW.valid_email = 0;
    END IF;
END$$
