-- In derived table u can't use order by under inner table
SELECT * FROM 
(SELECT E.EmployeeNumber as ENumber, E.EmployeeFirstName, E.EmployeeLastName,
T.EmployeeNumber as TNumber, Sum(T.Amount) as TotalAmount
from tbEmployee as E
right join 
tbTransaction as T
on E.EmployeeNumber = T.EmployeeNumber
Group By E.EmployeeNumber, E.EmployeeFirstName,T.EmployeeNumber,E.EmployeeLastName
) as NewTable
WHERE ENumber IS Not NULL
ORDER BY ENumber,TNumber,EmployeeFirstName,EmployeeLastName
