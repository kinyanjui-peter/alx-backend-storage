-- SQL script to create a stored procedure named AddBonus that adds a new correction for a student.

-- Requirements:
-- - The procedure AddBonus takes 3 inputs in the specified order: user_id, project_name, score.
-- - If the project_name does not exist in the 'projects' table, it should be created.
-- - The correction (score) should be inserted into the 'corrections' table linked to the specified user and project.

-- Change the delimiter to handle stored procedure creation
DELIMITER $$

-- Create the stored procedure 'AddBonus' with input parameters
CREATE PROCEDURE AddBonus(IN user_id INT, IN project_name VARCHAR(255), IN score INT)
BEGIN
    -- Check if the project_name exists in the 'projects' table
    IF NOT EXISTS (SELECT name FROM projects WHERE name = project_name) THEN
        -- If project_name does not exist, insert it into the 'projects' table
        INSERT INTO projects (name) VALUES (project_name);
    END IF;

    -- Insert the correction (score) into the 'corrections' table
    -- Linking the user_id and the project_id (based on project_name)
    INSERT INTO corrections (user_id, project_id, score)
    VALUES (user_id, (SELECT id FROM projects WHERE name = project_name), score);
END$$

-- Reset the delimiter back to semicolon
DELIMITER ;
