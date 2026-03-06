-- ==========================================
-- 05_ORDER_BY.sql
-- Topic: Sorting Query Results
-- Database: sql_practice
-- ==========================================


USE sql_practice;


-- ------------------------------------------
-- 1. ORDER BY (Ascending - default)
-- ------------------------------------------

-- Sort users by age in ascending order
SELECT *
FROM users
ORDER BY age ASC;



-- ------------------------------------------
-- 2. ORDER BY Descending
-- ------------------------------------------

-- Sort users by age from highest to lowest

SELECT *
FROM users
ORDER BY age DESC;



-- ------------------------------------------
-- 3. ORDER BY Without Specifying ASC
-- ------------------------------------------

-- ASC is the default sorting order

SELECT *
FROM users
ORDER BY age;



-- ------------------------------------------
-- 4. Sorting by Multiple Columns
-- ------------------------------------------

-- First sort by city alphabetically
-- If two users are in the same city,
-- sort them by age (highest first)

SELECT *
FROM users
ORDER BY city, age DESC;



-- ------------------------------------------
-- 5. ORDER BY Specific Columns Only
-- ------------------------------------------

-- Show selected columns and sort by age

SELECT name, age, city
FROM users
ORDER BY age DESC;



-- ------------------------------------------
-- 6. ORDER BY with LIMIT
-- ------------------------------------------

-- Get top 3 oldest users
SELECT * 
FROM users
ORDER BY age DESC
LIMIT 3;



-- ------------------------------------------
-- 7. Sorting Orders by Amount
-- ------------------------------------------

-- Sort orders by amount (smallest to largest)

SELECT * 
FROM orders
ORDER BY amount ASC;



-- ------------------------------------------
-- 8. Sorting Orders by Date
-- ------------------------------------------

-- Show newest orders first

SELECT *
FROM orders
ORDER BY order_date DESC;



-- ------------------------------------------
-- 9. ORDER BY Using Column Position
-- ------------------------------------------
-- Sort by the 3rd selected column (age)

-- SQL allows sorting using the column position
-- from the SELECT list.
--
-- 1 → name
-- 2 → city
-- 3 → age
--
-- ORDER BY 3 DESC sorts the result by
-- the third selected column (age) in
-- descending order.

SELECT name, city, age
FROM users
ORDER BY 3 DESC;



-- ------------------------------------------
-- 10. ORDER BY with Expressions
-- ------------------------------------------
-- Sort users based on age after 5 years

SELECT name, age, age + 5 AS future_age
FROM users
ORDER BY future_age DESC;



-- ------------------------------------------
-- Important Note
-- ------------------------------------------
-- Without ORDER BY, SQL does NOT guarantee row order.
-- The database may return rows in any order.