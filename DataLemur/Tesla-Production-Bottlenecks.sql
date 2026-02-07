/*
Problem: Tesla Production Bottlenecks
Dialect: MySql
Link : https://datalemur.com/questions/tesla-unfinished-parts
*/

-- Query
SELECT part,assembly_step
FROM parts_assembly
where finish_date IS NULL
