-- ==========================================
-- 06_AGGREGATE_FUNCTIONS.sql
-- Topic: Aggregate Functions
-- Database: sql_practice
-- ==========================================


USE sql_practice;


-- ------------------------------------------
-- 1. COUNT()
-- ------------------------------------------

-- Counts the number of rows in the table

SELECT COUNT(*) AS total_users
FROM users;



-- ------------------------------------------
-- 2. COUNT with condition
-- ------------------------------------------

-- Count users from a specific city

SELECT COUNT(*) AS delhi_users
FROM users
WHERE city = 'Delhi';



-- ------------------------------------------
-- 3. SUM()
-- ------------------------------------------

-- Calculate total age of all users

SELECT SUM(age) AS total_age
FROM users;



-- ------------------------------------------
-- 4. AVG()
-- ------------------------------------------

-- Calculate average age of users

SELECT AVG(age) AS average_age
FROM users;



-- ------------------------------------------
-- 5. MIN()
-- ------------------------------------------

-- Find the youngest user

SELECT MIN(age) AS youngest_user
FROM users;



-- ------------------------------------------
-- 6. MAX()
-- ------------------------------------------

-- Find the oldest user

SELECT MAX(age) AS oldest_user
FROM users;



-- ------------------------------------------
-- 7. Multiple aggregates together
-- ------------------------------------------

-- Get multiple statistics in one query

SELECT 
    COUNT(*) AS total_users,
    AVG(age) AS average_age,
    MIN(age) AS youngest_user,
    MAX(age) AS oldest_user
FROM users;



-- ------------------------------------------
-- 8. Aggregate with filtering
-- ------------------------------------------

-- Average age of users from Mumbai

SELECT AVG(age) AS avg_mumbai_age
FROM users
WHERE city = 'Mumbai';



-- ------------------------------------------
-- 9. COUNT on a specific column
-- ------------------------------------------

-- Counts non-null values in a column

SELECT COUNT(email) AS users_with_email
FROM users;




-- ------------------------------------------
-- Summary
-- ------------------------------------------
-- COUNT() : Counts number of rows
-- SUM()   : Adds values in a numeric column
-- AVG()   : Calculates the average value
-- MIN()   : Finds the smallest value
-- MAX()   : Finds the largest value
--
-- Aggregate functions operate on multiple rows
-- and return a single result value.
--
-- These are commonly used with GROUP BY
-- for data analysis and reporting.