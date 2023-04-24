-- Like operator

--- % = 0-infinity characters

SELECT * FROM [dbo].[tbEmployee] where EmployeeLastName like '%d'

-- _ = 1 character
--[A-G] = in the range of A-G
--[AGQ] = A,G or Q
--[^AGQ] = Not A,G or Q


-- If to find a percentage sign in the columns here is the syntex
SELECT * FROM [dbo].[tbEmployee] where EmployeeLastName like '[%]%'