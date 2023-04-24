-- 1)
declare @mydate as datetime = '2022-02-21 12:34:56.124';
SELECT @mydate as MyDate;

-- 2)
-- can add how many decimal place microseconds we want to see
declare @mydate2 as datetime2(4) = '20220221 12:34:56.124';
SELECT @mydate2 as Mydate2;

-- 3)
SELECT DATEFROMPARTS(2022,06,23) as ThisDate;
-- 4)
Select DATETIME2FROMPARTS(2022,05,23,12,34,56,124,3) as ThatDate;
-- 5)
SELECT year(@mydate) as ThisYear, month(@mydate) as ThisMonth, day(@mydate) as ThisDay;