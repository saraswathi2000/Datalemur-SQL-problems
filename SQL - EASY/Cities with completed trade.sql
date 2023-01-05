/*
Difficulty level : Easy
challenge : Cities With Completed Trade

You are given the tables below containing information on Robinhood trades and users.
Write a query to list the top three cities that have the most completed trade orders in descending order.

Output the city and number of orders.

*/

SELECT u.city as city,COUNT(t.user_id) as total_orders
FROM users u 
INNER JOIN trades t on u.user_id = t.user_id 
WHERE t.status ='Completed'
GROUP BY u.city
ORDER BY total_orders DESC 
LIMIT 3;
