ALTER TABLE tbEmployee
ADD Department VARCHAR(10);

SELECT * FROM tbEmployee;

--Now suppose we have put a wrong size to the department and we want to change it now.
ALTER TABLE tbEmployee
DROP COLUMN Department;

ALTER TABLE tbEmployee
ADD Department VARCHAR(20) NULL;

-- Alterting the type without dropping the column first
ALTER TABLE tbEmployee
ALTER COLUMN Department VARCHAR(25) NULL;


