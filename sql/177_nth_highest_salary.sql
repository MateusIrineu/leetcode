-- LEETCODE: SQL 
-- EXERCISE: 177
CREATE OR REPLACE FUNCTION NthHighestSalary(N INT) RETURNS TABLE (Salary INT) 
AS $$
BEGIN
    N := N - 1;
  RETURN QUERY (
    SELECT (
    SELECT DISTINCT salary
    FROM Employee 
    ORDER BY salary DESC 
    LIMIT 1
    OFFSET N
    ) AS Salary
  );
END;
$$ LANGUAGE plpgsql;