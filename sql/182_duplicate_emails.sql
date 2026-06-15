-- LEETCODE: SQL 
-- EXERCISE: 182
SELECT DISTINCT
igual.email AS "Email"
FROM Person AS equal
INNER JOIN Person AS igual ON equal.email = igual.email
AND equal.id <> igual.id;git 