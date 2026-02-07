/*
Problem: Microsoft Teams Power Users
Dialect: MySql
Link : https://datalemur.com/questions/teams-power-users
*/

-- Query 
SELECT sender_id, COUNT(message_id) AS message_count
FROM messages
WHERE sent_date BETWEEN '2022-08-01' AND '2022-08-31'
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2;
