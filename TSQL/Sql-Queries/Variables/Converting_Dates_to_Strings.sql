/*
string and datetime are not in the same hierrarchy because string is in the lower position,
then numbers is above that and then datetime.
so if we want to add a string and datetime together,they will give error,
That's why we have to convert datetime into nvarchar by CAST function
*/

DECLARE @mydate as datetime = '2015-06-25 01:02:03.456';
-- SELECT 'the date and time is '+ @myDate as ConvertedDate; THis won't work

SELECT 'The date and time is:' +  CONVERT(nVarchar(20),@mydate) as ConvertedDate;


-- What parse function does is, it takes a string and convert it to a date format or can convert into Number
SELECT PARSE('Oct 20, 2011' AS DATE) AS ValueDT


-- Formate date as long and short date
SELECT FORMAT(CAST('2022-01-02 01:02:03.455' as datetime),'D') as FormattedLongDate; -- this will show date in name like january 2 2022
SELECT FORMAT(CAST('2022-01-02 01:02:03.455' as datetime),'d') as FormattedShortDate; -- this will show date in short like 1/2/2022

-- Format date as British format
SELECT FORMAT(CAST('2022-01-02 01:02:03.455' as datetime),'dd-MM-yyyy') as FormattedBritishDate;


-- More info
-- https://www.youtube.com/watch?v=DYCWOzzOycU
-- https://www.youtube.com/watch?v=J66l4V1Cwh4
-- https://www.youtube.com/watch?v=bBvPi0Id3fw
-- https://www.youtube.com/watch?v=oWiPp09V6ok
-- https://www.youtube.com/watch?v=fIfJAopDjeQ
-- https://www.youtube.com/watch?v=60HcxUQka1Q
-- https://www.youtube.com/watch?v=VMxd03O2U4E
