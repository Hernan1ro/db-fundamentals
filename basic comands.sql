CREATE TABLE people (
	person_id int,
	last_name varchar(255),
    first_name varchar(255),
    address varchar(255),
    city varchar(255)
);

INSERT INTO people (last_name, first_name, address, city)
VALUES ("Hernandez", "Hernande", "calle 19", "Santa Marta");

SELECT first_name, last_name
FROM people;

DROP TABLE people