Declare @firstName as nvarchar(20);
Declare @middleName as nvarchar(20);
Declare @lastName as nvarchar(20);

SET @firstName = 'Mahbub';
SET @middleName = 'Hossain';
SET @lastName = 'Faisal';

SELECT @firstName + ' ' + @middleName + ' ' + @lastName as FullName;

-- Now Suppose the middle name is null, if that so, how to print the whole name

Declare @first as nvarchar(20);
Declare @middle as nvarchar(20);
Declare @last as nvarchar(20);

SET @first = 'Monwar';
-- SET @middle = 'Hossain'; the value is ignored so now @middle is null
SET @last = 'Babul';

-- option 1
SELECT @first + ' ' + iif(@middle is null, '', @middle) + ' ' + @last as FullName;

-- option 2
SELECT @first + ' ' + CASE WHEN @middle is null THEN '' ELSE @middle END + ' ' + @last as FullName;

-- option 3

SELECT @first + ' ' + coalesce(@middle,'') + ' ' + @last as FullName;
-- So what (coalesce) does is it checks the variable is NULL or not , If it is null, then the function will print the value given after the comma
-- else it will print the value of the variable.

-- option 4
SELECT CONCAT(@first, ' ' + @middle, ' ' , @last ) as FullName;

-- CONCAT function automatically checks for null values and if it is find one , it ignores that.