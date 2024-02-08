SHOW databases
CREATE database if not exists techforallwithpriya
USE techforallwithpriya
SELECT database()

CREATE TABLE employee
(
	EmpID		int AUTO_INCREMENT,
	FirstName	varchar(50) NOT NULL,
    LastName	varchar(50) NOT NULL,
    Age			INT NOT NULL,
    Salary		INT NOT NULL,
    Location	varchar(50) NOT NULL,
    PRIMARY KEY(EmpID)
)

DESC employee

INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Priya", "Bhatia", 26, 100000, "Bengaluru");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Sumedha", "Midha", 32, 50000, "Gurugram");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Rashmi", "Tanwar", 30, 20000, "Bengaluru");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Shivam", "Mishra", 28, 10000, "Noida");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Ajay", "Bhatia", 25, 5000, "Mumbai");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Ankit", "Sangwan", 34, 70000, "Bengaluru");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Alia", "Bhatt", 29, 50000, "Gurugram");


SELECT * FROM employee

SELECT FirstName, LastName FROM employee

SELECT FirstName, LastName, Salary FROM employee WHERE Salary >= 50000
ORDER BY Salary DESC
LIMIT 2

DROP TABLE employee
SHOW tables