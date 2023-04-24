DECLARE @str as nvarchar(10) ;

SET @str = 'hellothere';

SELECT left(@str,2) as firstTwoChar, right(@str,2) as LastTwoChar, SUBSTRING(@str,4,2) as MiddleTwoChar;

-- If we have a string like this with spaces in both left and right

DECLARe @str2 as nvarchar(20);

SET @str2 = '     Hello     ';

SELECT LTRIM(@str2) as LTRIMString; -- This will remove the spaces of the left
SELECT RTRIM(@str2) as RTRIMString; -- This will remove the spaces of the right
SELECT LTRIM(RTRIM(@str2)) as TrimStringBothSide; -- This will remove space from both side
SELECT TRIM(@str2) as TrimBothSide; -- This will remove space from both side too

-- Replacing lowercase letters with uppercases

SELECT REPLACE(@str,'there','THERE') as ReplacedString;

SELECT REVERSE(@str) as RerversedString;

SELECT UPPER(@str) as UpperCaseString;