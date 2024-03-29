-- IMPLICIT CONVERSION

DECLARE @var as Decimal(5,2) = 3;

SELECT @var


-- EXPLICIT CONVERSION

SELECT CONVERT(decimal(5,2),3)/2;
SELECT CAST(3 as decimal(5,2))/2;

SELECT 3/2;
SELECT 3/2.0;

SELECT CONVERT(int,12.345) + CONVERT(int,12.7);
SELECT CONVERT(int,12.345+12.7);
