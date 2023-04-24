-- DELETE those employee informations in tbTransaction those who doesn't have any informations in tbEmployee
Begin transaction
SELECT count(*) From tbTransaction


-- HERE IS THE QUERY

DELETE tbTransaction 
from tbEmployee as E
right join 
tbTransaction as T
on E.EmployeeNumber = T.EmployeeNumber
WHERE E.EmployeeNumber IS NULL



-- if you want to retrive the data
Rollback Transaction

SELECT count(*) From tbTransaction