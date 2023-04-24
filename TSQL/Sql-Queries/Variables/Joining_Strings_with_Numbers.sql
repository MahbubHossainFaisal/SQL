Select 'The Number is : ' + CONVERT(varchar(20),5432) as Number;
Select 'The Number is : ' + CAST(5432 as varchar(20)) as Number;

-- Different currency type conversion
SELECT 'My salary is : $' + CONVERT(varchar(20),5321.2) as Salary;
SELECT 'My Salary is in Euro: ' + FORMAT(5432.3,'C','en-GB') as Salary;
SELECT 'My Salary is in French: ' + FORMAT(5432.3,'C','fr-FR') as Salary;
SELECT 'My Salary is in Japan: ' + FORMAT(5432.3,'C','ja-JP') as Salary;

-- More info https://docs.microsoft.com/en-us/dotnet/standard/base-types/standard-numeric-format-strings