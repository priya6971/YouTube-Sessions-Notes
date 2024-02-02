SHOW databases
CREATE DATABASE if not exists techforallwithpriya
SELECT database()
USE techforallwithpriya

CREATE TABLE employee(
	FirstName	varchar(20),
    LastName	varchar(20),
    Age			int,
    Salary		int, 
    Location	varchar(20)
)

DESC employee
SHOW tables