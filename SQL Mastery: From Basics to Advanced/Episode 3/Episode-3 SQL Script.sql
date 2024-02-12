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
SHOW TABLES
DESC employee

ALTER TABLE employee MODIFY FirstName varchar(20)

INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Priya", "Bhatia", 26, 100000, "Bengaluru");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Sumedha", "Midha", 32, 50000, "Gurugram");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Rashmi", "Tanwar", 30, 20000, "Bengaluru");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Shivam", "Mishra", 28, 10000, "Noida");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Ajay", "Bhatia", 25, 5000, "Mumbai");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Ankit", "Sangwan", 34, 70000, "Bengaluru");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Alia", "Bhatt", 29, 50000, "Gurugram");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Jitendra", "Mishra", 31, 50000, "Bengaluru");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Sanya", "Bhatt", 29, 70000, "Gurugram");

SELECT * FROM employee

UPDATE employee SET LastName = "Tanwar"
WHERE EmpID = 6

DELETE FROM employee
WHERE EmpID = 6

DROP TABLE employee

SELECT COUNT(*) As Total_Num_Employee FROM employee
SELECT MAX(Salary) As Max_Salary FROM employee
SELECT MIN(Salary) As Min_Salary FROM employee
SELECT SUM(Salary) As Total_Cost_Company FROM employee

CREATE TABLE Courses(
CourseID INT AUTO_INCREMENT,
CourseName	varchar(50) NOT NULL,
CourseDuration INT NOT NULL,
CourseFee INT NOT NULL,
PRIMARY KEY(CourseID)
)

SHOW TABLES

CREATE TABLE Students(
StudentID	INT	AUTO_INCREMENT,
S_FirstName	varchar(50) NOT NULL,
S_LastName	varchar(50) NOT NULL,
S_Email varchar(50) NOT NULL,
S_Phone	varchar(50) NOT NULL,
S_EnrollmentDate timestamp NOT NULL,
Selected_Course	INT NOT NULL,
Years_Of_Exp INT NOT NULL,
S_Company varchar(50) NOT NULL,
Batch_Start_Date timestamp NOT NULL,
Location varchar(50) NOT NULL,
PRIMARY KEY(StudentID)
)

