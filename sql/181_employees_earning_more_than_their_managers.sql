-- LEETCODE: SQL 
-- EXERCISE: 181
SELECT
trabalhador.name AS Employee
FROM Employee AS chefe
INNER JOIN Employee AS trabalhador ON chefe.id = trabalhador.managerId
WHERE trabalhador.salary > chefe.salary;