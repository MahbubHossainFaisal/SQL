SELECT * FROM sleep_efficiency;

-- Problem 1
-- Find out the average sleep duration of top 15 male candidates who's sleep duration are equal to 7.5 or greater than 7.5.
SELECT CAST(AVG(sleep_duration) as NUMERIC(10,2)) as avg_sleep_duration FROM
(SELECT sleep_duration FROM sleep_efficiency
WHERE sleep_duration >= 7.5 AND gender = 'Male' ORDER BY sleep_duration DESC LIMIT 15) as Top_15_Male_Candidate;


-- Problem 2
-- Show avg deep sleep time for both gender. Round result at 2 decimal places.

--ALTER TABLE sleep_efficiency ALTER COLUMN deep_sleep_percentage TYPE FLOAT;
--ALTER TABLE sleep_efficiency ALTER COLUMN sleep_duration TYPE FLOAT;
--ALTER TABLE sleep_efficiency ALTER COLUMN sleep_efficiency  TYPE FLOAT;
--ALTER TABLE sleep_efficiency ALTER COLUMN rem_sleep_percentage   TYPE FLOAT;
--ALTER TABLE sleep_efficiency ALTER COLUMN light_sleep_percentage  TYPE FLOAT;
--ALTER TABLE sleep_efficiency ALTER COLUMN alcohol_consumption   TYPE FLOAT;


SELECT gender,AVG(sleep_duration*(deep_sleep_percentage/100)) as deep_sleep_time
FROM sleep_efficiency GROUP BY gender;

-- Problem 3
-- Find out the lowest 10th to 30th light sleep percentage records where deep sleep percentage values are between 25 to 45.
-- Display age, light sleep percentage and deep sleep percentage columns only.

SELECT id,age,light_sleep_percentage,deep_sleep_percentage FROM sleep_efficiency
WHERE deep_sleep_percentage BETWEEN 25 AND 45
ORDER BY light_sleep_percentage OFFSET 10 LIMIT 20;
