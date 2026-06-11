-- LEETCODE: SQL 
-- EXERCISE: 177
CREATE OR REPLACE FUNCTION NthHighestSalary(N INT) RETURNS TABLE (Salary INT) 
AS $$
BEGIN
    IF N < 1 THEN
        RETURN QUERY SELECT NULL::INT AS Salary;
    ELSE
        N := N - 1;
  RETURN QUERY (
    SELECT (
    SELECT DISTINCT Employee.salary
    FROM Employee 
    ORDER BY salary DESC 
    LIMIT 1
    OFFSET N
    ) AS Salary
  );
  END IF;
END;
$$ LANGUAGE plpgsql;