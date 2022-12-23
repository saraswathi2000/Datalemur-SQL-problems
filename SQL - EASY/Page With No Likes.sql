/* 
Difficulty Level : Easy
Challenge : Page with no likes ( facebook SQL interview Question)

Assume you are given the tables below about Facebook pages and page likes. 
Write a query to return the page IDs of all the Facebook pages that don't have any likes. The output should be in ascending order.*/

SELECT p.page_id 
FROM pages p
LEFT JOIN page_likes l ON p.page_id = l.page_id
WHERE l.page_id IS NULL
ORDER BY p.page_id  ; 
