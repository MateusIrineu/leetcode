-- LEETCODE: SQL 
-- EXERCISE: 180    
SELECT DISTINCT atual AS ConsecutiveNums
FROM (
SELECT 
LAG(num, 1) OVER(ORDER BY id ASC) AS anterior,
num AS atual,
LEAD(num , 1) OVER(ORDER BY id ASC) AS proximo
FROM Logs
) AS tabela_ajudante
WHERE anterior = atual AND atual = proximo;