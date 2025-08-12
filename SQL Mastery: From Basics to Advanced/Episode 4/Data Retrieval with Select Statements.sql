SHOW DATABASES
USE techforallwithpriya
SHOW TABLES
SELECT * FROM employee

-- Create a table by the name of courses having field 
-- named "CourseID", "CourseName", "Course_duration_months", "CourseFee"

CREATE TABLE Course(
CourseID INT AUTO_INCREMENT,
CourseName varchar(50) NOT NULL,
CourseDuration_Months INT NOT NULL,
CourseFee INT NOT NULL,
PRIMARY KEY(CourseID))

DESC Course

-- Insert the course details inside the table named courses
-- "The Complete Excel Mastery Course", 3, 1499
-- "DSA for Interview Preparation", 2, 4999
-- "SQL Bootcamp", 1, 2999

INSERT INTO Course(CourseName,CourseDuration_Months,CourseFee) Values("The Complete Excel Mastery Course",3,1499);
INSERT INTO Course(CourseName,CourseDuration_Months,CourseFee) Values("DSA For Interview Preparation",2,4999);
INSERT INTO Course(CourseName,CourseDuration_Months,CourseFee) Values("SQL Bootcamp",1,2999);

SELECT * FROM Course

CREATE TABLE Learners(
Learner_Id INT AUTO_INCREMENT,
LearnerFirstName VARCHAR(50) NOT NULL,
LearnerLastName VARCHAR(50) NOT NULL,
LearnerPhoneNo VARCHAR(15) NOT NULL,
LearnerEmailID VARCHAR(50),
LearnerEnrollmentDate TIMESTAMP NOT NULL,
SelectedCourses INT NOT NULL,
YearsOfExperience INT NOT NULL,
LearnerCompany VARCHAR(50),
SourceOfJoining VARCHAR(50) NOT NULL,
Batch_Start_Date TIMESTAMP NOT NULL,
Location VARCHAR(50) NOT NULL,
PRIMARY KEY(Learner_Id),
UNIQUE KEY(LearnerEmailID),
FOREIGN KEY(SelectedCourses) REFERENCES Course(CourseID));

DESC Learners

-- Insert the learners details in the Learners table
-- Batch start date '1' - '2024-02-29'
-- Batch start date '2' - '2024-01-16'
-- Batch start date '3' - '2024-03-25'
INSERT INTO Learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,Batch_Start_Date,Location) VALUES ("Akash", "Mishra", '9998887776', "akash@gmail.com", '2024-01-21', 1, 4, "Amazon", "LinkedIn", '2024-02-29', "Bengaluru");
INSERT INTO Learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,Batch_Start_Date,Location) VALUES("Rishikesh","Joshi","9950192388", "carjkop@gmail.com", '2024-03-19', 3, 2, "HCL", "Youtube", '2024-03-25', "Chennai");
INSERT INTO Learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,Batch_Start_Date,Location) VALUES("Jeevan","Hegde", "9657856732","jeevanhegdek@yahoo.co.in", '2024-01-15', 2, 0, "", "Linkedin", '2024-01-16', "Noida");
INSERT INTO Learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,Batch_Start_Date,Location) VALUES("Akhil","George","7689558930", "akhil.george.8743@gmail.com", '2024-03-13', 3, 4, "Accenture", "Community", '2024-03-25', "Bengaluru");
INSERT INTO Learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,Batch_Start_Date,Location)VALUES("Sidhish","Kumar","6475765443", "sidhishkumar@gmail.com",'2024-01-10', 1, 4, "Meta", "Youtube", '2024-03-29', "Bengaluru");
INSERT INTO Learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,Batch_Start_Date,Location) VALUES("NagaSai","Sreedhar","9182937061", "saisreedhar2001@gmail.com", '2024-03-17', 3, 4, "TCS", "Community", '2024-03-25', "Mumbai");

SELECT * FROM Learners

-- Data Analysis [Employee, Course, Learners]
-- 1. Give me the record of the employee getting highest salary
SELECT * FROM employee
ORDER BY Salary DESC
LIMIT 1


SELECT MAX(Salary) as max_salary FROM employee
SELECT MIN(Salary) as min_salary FROM employee


SELECT *
FROM employee
WHERE Salary = (
    SELECT MAX(Salary)
    FROM employee
    
);

SELECT * FROM employee


-- 2. Give me the record of the employee getting highest salary and age is bigger than 30
SELECT * FROM employee 
WHERE age > 30 
ORDER BY Salary DESC 
LIMIT 1

-- 3. Display the number of enrollments in the webiste of techforallwithpriya
SELECT COUNT(*) as num_of_enrollments 
FROM Learners

-- 4. Display the number of enrollments for the courseid = 3[SQL Bootcamp]
SELECT COUNT(*) AS num_of_learners_SQL
FROM Learners 
WHERE SelectedCourses=3 ;

SELECT * FROM Learners

-- 5. Count the number of learners enrolled in the month of Jan
-- '2024-02-29'
SELECT COUNT(*) as num_learners_jan FROM Learners
WHERE LearnerEnrollmentDate LIKE '%-01-21'

-- 6. Update the Jeevan data with years of experience as 1 and learner company as "Amazon"
Update Learners 
SET YearsOfExperience = 2, LearnerCompany = 'Amazon' 
WHERE Learner_Id = 4

SELECT * FROM Learners

-- 7. Count the number of companies where learners currently doing their job
-- Count -> count the non null entries
-- Unique count of the companies
SELECT COUNT(DISTINCT LearnerCompany) as distinct_companies 
FROM Learners












