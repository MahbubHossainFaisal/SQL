SELECT tbDepartment.Department,DepartmentHead, Sum(Amount) as SumOfAmount FROM tbDepartment
left join tbEmployee 
on tbDepartment.Department = tbEmployee.Department
left join tbTransaction
on tbEmployee.EmployeeNumber = tbTransaction.EmployeeNumber
Group By tbDepartment.Department, DepartmentHead


-- Shorter query of this using aliases
SELECT D.Department, DepartmentHead, Sum(Amount) as SumOfAmount from
tbDepartment as D
left join tbEmployee as E
on D.Department = E.Department
left join tbTransaction as T
on E.EmployeeNumber = T.EmployeeNumber
Group By
D.Department, D.DepartmentHead