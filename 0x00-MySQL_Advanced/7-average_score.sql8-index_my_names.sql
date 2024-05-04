-- SQL script to create a stored procedure ComputeAverageScoreForUser

-- Change the delimiter to handle stored procedure creation
DELIMITER $$

-- Create the stored procedure 'ComputeAverageScoreForUser' with input parameter 'user_id'
CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id INT)
BEGIN
    -- Declare variables to hold the total score and number of corrections
    DECLARE total_score FLOAT;
    DECLARE num_corrections INT;

    -- Calculate the total score and number of corrections for the specified user
    SELECT SUM(score), COUNT(*) INTO total_score, num_corrections
    FROM corrections
    WHERE user_id = user_id;

    -- Calculate the average score
    DECLARE avg_score FLOAT;
    IF num_corrections > 0 THEN
        SET avg_score = total_score / num_corrections;
    ELSE
        SET avg_score = 0;
    END IF;

    -- Update the 'average_score' for the specified user in the 'users' table
    UPDATE users
    SET average_score = avg_score
    WHERE id = user_id;
    
    -- Display a message indicating the completion of the procedure
    SELECT CONCAT('Average score computed and updated for user with id: ', user_id) AS message;
END$$

-- Reset the delimiter back to semicolon
DELIMITER ;