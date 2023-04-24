-- Standard function for current date

SELECT CURRENT_TIMESTAMP as TimeRightNow;

-- Another option to get current date

SELECT GETDATE() as TimeRightNow;

-- SytemDate
SELECT SYSDATETIME() as RightNow;

-- Adding Year with a date
SELECT DATEADD(year,2,'2020-01-02 03:04:05') as AddedYear;

-- Adding month with a date;
SELECT DATEADD(month,3,'2020-01-02 03:04:05') as AddedMonth;

-- Addng day with a date
SELECT DATEADD(day,12,'2020-01-02 03:04:05') as AddedDay; -- can also change hour,minute,second,microsecond  like this

-- Extract Date part from full date

SELECT DATEPART(month,'2020-03-02 03:04:05') as ExtractedMonth;

SELECT  DATEPART(year,'2020-03-02 03:04:05') as ExtractedYear;


-- Getting weekname from todays date

SELECT DATENAME(WEEKDAY, getdate()) as Today;

-- Getting month name from todays date
SELECT DATENAME(MONTH, getdate()) as ThisMonth;

-- Getting year name from todays date
SELECT DATENAME(YEAR, getdate()) as ThisYear;

-- getting difference of Year from a particular date to current date

SELECT DATEDIFF(Year,'2015-01-02 03:04:05', getdate()) as YearDifference;

-- getting difference of Month from a particular date to current date

SELECT DATEDIFF(Month,'2015-01-02 03:04:05', getdate()) as MonthDifference;

-- getting difference of hour from a particular date to current date
SELECT DATEDIFF(Hour,'2015-01-02 03:04:05', getdate()) as HourDifference; -- similar can be done for second,milisecond











