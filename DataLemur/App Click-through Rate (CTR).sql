/*
Problem: App Click-through Rate (CTR)
Dialect: MySql
Link : https://datalemur.com/questions/click-through-rate
*/

-- Query 
WITH GECICI AS ( SELECT app_id,
    SUM(CASE WHEN event_type = 'impression' THEN 1 ELSE 0 END) AS impressionT,
    SUM(CASE WHEN event_type = 'click' THEN 1 ELSE 0 END) AS clickT
  FROM events
  WHERE timestamp >= '2022-01-01' AND timestamp <= '2022-12-31'
  GROUP BY app_id
)

SELECT 
app_id, ROUND(100.0 * clickT / impressionT, 2) AS ctr
FROM GECICI;
