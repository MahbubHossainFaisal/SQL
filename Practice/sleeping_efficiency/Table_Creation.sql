CREATE TABLE sleep_efficiency(
ID INTEGER PRIMARY KEY,
Age INTEGER,
Gender VARCHAR(10),
Bedtime TIMESTAMP,
Wakeuptime TIMESTAMP,
Sleep_duration REAL,
Sleep_efficiency REAL,
REM_sleep_percentage INTEGER,
Deep_sleep_percentage INTEGER,
Light_sleep_percentage INTEGER,
Awakenings INTEGER,
Caffeine_consumption INTEGER,
Alcohol_consumption INTEGER,
Smoking_status VARCHAR(5),
Exercise_frequency INTEGER
);