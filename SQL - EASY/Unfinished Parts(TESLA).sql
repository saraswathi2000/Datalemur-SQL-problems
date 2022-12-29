/* 
Difficulty level : Easy
Challenge :Unfinished Parts [Tesla SQL Interview Question]

Tesla is investigating bottlenecks in their production, and they need your help to extract the relevant data. 

Write a SQL query that determines which parts have begun the assembly process but are not yet finished. */


SELECT part 
FROM parts_assembly 
WHERE finish_date IS NULL
GROUP BY part;
