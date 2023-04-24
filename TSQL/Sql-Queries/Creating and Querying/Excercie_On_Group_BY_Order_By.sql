-- Order of a query
/*
SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
*/

-- SELECT the number of employees that has born in months 
-- Like the number of employees in Jan (Month 1) , number of employees in feb (Month 2)

SELECT  DATEPART(month,DateOfBirth) as MonthNumber, Count(*) as EmployeeNumber
FROM tbEmployee
GROUP BY DATEPART(month,DateOfBirth)
ORDER BY DATEPART(month,DateOfBirth)

-- DATEPART is giving the month number
-- Change the month number to monthname

SELECT  DATENAME(month,DateOfBirth) as MonthNumber, Count(*) as EmployeeNumber
FROM tbEmployee
GROUP BY DATENAME(month,DateOfBirth)
ORDER BY DATENAME(month,DateOfBirth)

-- But the above statement will not provide a proper order by months it will sort the months alphabetically

-- So we need to do this to get the correct result

SELECT  DATENAME(month,DateOfBirth) as MonthNumber, Count(*) as EmployeeNumber
FROM tbEmployee
GROUP BY DATENAME(month,DateOfBirth), DATEPART(month,DateOfBirth) -- we have to add this extra group by clause and then order by with it
ORDER BY DATEPART(month,DateOfBirth)



-- Another Query
--Count the number of people who have got midlde name

SELECT  Count(EmployeeMiddleName) as EmployeeWithAMiddleName
FROM dbo.tbEmployee Where EmployeeMiddleName is NOT NULL 
-- IF you don't give this where clause result will be same as Count() function doesn't count the NULL value


-- Find the number of people who don't have a middle name

SELECT Count(*) - Count(EmployeeMiddleName) as EmployeeNumberWithNoMiddleName
FROM dbo.tbEmployee


-- Recreate the whole query with the number of people that has middle name and the number of people that don't have middle name

SELECT  DATENAME(month,DateOfBirth) as MonthNumber, Count(*) as EmployeeNumber,
Count(EmployeeMiddleName) as EmployeeNumberWithAMiddleName,
Count(*) - Count(EmployeeMiddleName) as EmployeeNumberWithNoMiddleName,
FORMAT(MIN(DateOfBirth),'dd-MM-yyyy') as EarliestDateOfBirth,
FORMAT(Max(DateOfBirth),'dd-MM-yyyy')as LatestDateOfBirth
FROM tbEmployee
GROUP BY DATENAME(month,DateOfBirth), DATEPART(month,DateOfBirth) -- we have to add this extra group by clause and then order by with it
ORDER BY DATEPART(month,DateOfBirth)
