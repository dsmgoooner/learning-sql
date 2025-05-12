/* Data Definition Language */

-- Create Table

CREATE TABLE persons(
	id INT NOT NULL UNIQUE,
    first_name VARCHAR(50) NOT NULL,
    country VARCHAR(15),
    phone VARCHAR(15) NOT NULL,
    CONSTRAINT pk_persons PRIMARY KEY (id)
);

-- ALTER Table


ALTER TABLE persons
-- ADD email VARCHAR(15) NOT NULL;
DROP column email;

-- DELETE table
DROP TABLE persons