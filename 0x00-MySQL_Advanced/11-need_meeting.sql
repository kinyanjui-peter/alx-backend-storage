-- The view need_meeting should return all students name when:
-- They score are under (strict) to 80
-- AND no last_meeting date OR more than a month

-- An SQL that creates a view need_meeting that lists all students
-- that have a score under 80 (strict) and no last_meeting or more than 1 month.
-- The view need_meeting should return all students name when:
-- They score are under (strict) to 80
-- AND no last_meeting date OR more than a month

-- An SQL that creates a view need_meeting that lists all students
-- that have a score under 80 (strict) and no last_meeting or more than 1 month.
DROP VIEW IF EXISTS need_meeting;
CREATE VIEW need_meeting
AS SELECT name FROM students
WHERE score < 80 AND last_meeting is NULL
OR last_meeting < DATE_SUB(NOW(), INTERVAL 1 MONTH);