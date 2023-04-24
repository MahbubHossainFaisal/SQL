--Summarizing Queries

--Query No: 01

/* Find count of employees whose last name starts with A,B,C...Z
-- Like for employees whose lastname starts with A are 57

*/

SELECT left(EmployeeLastName,1) as LastNameStartsWith, count(*) NumberOfEmployees
FROM dbo.tbEmployee 
GROUP BY left(EmployeeLastName,1)
ORDER BY left(EmployeeLastName,1) DESC;

-- SELECT the top 5 rows of the previous query

SELECT TOP 5 left(EmployeeLastName,1) as LastNameStartsWith, count(*) NumberOfEmployees
FROM dbo.tbEmployee 
GROUP BY left(EmployeeLastName,1)
ORDER BY left(EmployeeLastName,1) ;

-- SELECT only the employees whose count is greater than 50

SELECT left(EmployeeLastName,1) as LastNameStartsWith, count(*) NumberOfEmployees
FROM dbo.tbEmployee 
GROUP BY left(EmployeeLastName,1)
HAVING count(*) > 50
ORDER BY left(EmployeeLastName,1) ;

-- SELECT The same previous query but this time all employee date of birth must be > 1986

SELECT left(EmployeeLastName,1) as LastNameStartsWith, count(*) NumberOfEmployees
FROM dbo.tbEmployee  Where DateOfBirth > '19860101'
GROUP BY left(EmployeeLastName,1)
HAVING count(*) >= 20
ORDER BY left(EmployeeLastName,1) ;