UPDATE Salary
SET sex = Case 
WHEN sex = 'm' THEN 'f'
ELSE 'm'
END;