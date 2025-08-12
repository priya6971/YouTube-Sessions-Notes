USE techforallwithpriya
SHOW TABLES

DESC learners
SELECT * FROM LEARNERS
SELECT * FROM course_update
DESC course_update
SELECT * FROM course

-- CourseId, CourseName, EnrollmentCount
-- Inner Join
-- Subqueries in SQL
-- Query 1 -> More optimized as it firstly filters the records and then doing a join.
-- So, less join operations are required
SELECT CourseID, CourseName, temptable.EnrollmentCount
FROM course
JOIN
(SELECT SelectedCourses,COUNT(*) AS EnrollmentCount
FROM Learners
GROUP BY SelectedCourses
ORDER BY EnrollmentCount DESC
LIMIT 1) as temptable
ON course.CourseID = temptable.SelectedCourses;


-- Another way to solve the above problem
-- CourseId, CourseName, EnrollmentCount
-- Query 2
SELECT CourseID, CourseName, COUNT(*) as EnrollmentCount
FROM Learners
JOIN course
ON Learners.SelectedCourses = course.CourseID
GROUP BY SelectedCourses
ORDER BY EnrollmentCount DESC
LIMIT 1