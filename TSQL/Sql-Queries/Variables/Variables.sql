-- version 1 variable

-- 0-255 --> tinyint
-- -32767 - 32767 --> smallint
-- -8388608 to 8388607 --> mediumint
-- -2147483648 to 2147483647 --> int
-- -9223372036854775808 to 9223372036854775807 --> bigint

USE master;
Declare @var1 int = 20000;




-- version 2 variable
SET @var1  = 200000;

SELECT @var1 as variable1;
Go


-- Decimal Numbers
-- decimal(), numeric() are functionally equal.

Declare @var2 numeric (18,8);

-- first param is about total digit size, and second param is about the total digit size after .


SET @var2 = 1000000000.1234567822;

SELECT @var2 as Variable2;

-- Then there is smallmoney, money type which stores decimal place upto 4 digits, like ---> 12323422.3221

-- float type
-- two types of float, float(24), float(53)
-- first one store 4 bytes value, second one stores 8 bytes

DECLARE @var3 as float(24);

set @var3 = 212312121231.32;

SELECT @var3 as variable3;