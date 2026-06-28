SELECT DISTINCT id
FROM(
    SELECT
    id,
    temperature AS atual,
    recordDate,
    LAG(temperature, 1) OVER(ORDER BY recordDate ASC) AS anterior,
    LAG(recordDate, 1) OVER(ORDER BY recordDate ASC) AS data_anterior
    FROM Weather
) AS aux
WHERE anterior < atual AND recordDate = data_anterior + INTERVAL '1 day';