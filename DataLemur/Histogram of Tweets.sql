/*
Problem: Histogram of Tweets
Dialect: MySql
Link : https://datalemur.com/questions/sql-histogram-tweets
*/

-- Query 
WITH TABLOM AS (SELECT user_id, COUNT(user_id) AS sayi
FROM tweets
WHERE tweet_date BETWEEN '2022-01-01' AND '2022-12-23'
GROUP BY user_id)

SELECT sayi AS tweet_bucket, COUNT(user_id) AS users_num
FROM TABLOM
GROUP BY sayi;
