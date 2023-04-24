Declare @var as numeric(7,2) = 3;

SELECT POWER(@var,5);
SELECT SQUARE(@var);
SELECT POWER(@var,0.5);
SELECT SQRT(@Var);

Go

Declare @var as numeric(7,2)  = 12.345;

SELECT FLOOR(@var) as FloorNumber;
SELECT CEILING(@Var) as CeilingNumber;
SELECT ROUND(@Var,2) as RoundNumber;

GO;

SELECT PI() as PINumber;
SELECT EXP(1) as e;
Declare @var as numeric(7,2) = -456;
SELECT ABS(@var);
SELECT SIGN(@var); --@var is negative so Sign will be showed -1; for positives sign will be +1, for 0 sign will be 0;

GO

SELECT RAND(243) * 100; -- Generates Random number

DECLARE @var2 as decimal(4,3) = 4.153;

SELECT FLOOR(@var2);
SELECT ceiling(@var2);
SELECT ROUND(@var2,1);
