/* Data Manipulation Language */

-- INSERT COMMAND

INSERT INTO persons
	SELECT * 
    FROM customers;

-- UPDATE COMMAND
UPDATE persons
SET score = 0
WHERE score is NULL;

-- DELETE COMMAND
DELETE FROM persons
WHERE id > 5;