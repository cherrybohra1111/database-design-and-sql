-- ==========================================
-- 02_SELECT.sql
-- Topic: Basic SELECT Statements
-- Database: sql_practice
-- ==========================================
USE sql_practice;

-- ------------------------------------------
-- 1. Select all columns
-- ------------------------------------------

-- Retrieves every column from the table
SELECT * 
FROM users;

SELECT * 
FROM orders;


-- ------------------------------------------
-- 2. Select specific columns
-- ------------------------------------------

-- Retrieves only selected columns instead of the entire row
SELECT name,age
FROM users;

SELECT order_id, amount
FROM orders;


-- ------------------------------------------
-- 3. Column Aliasing (AS)
-- ------------------------------------------

-- AS renames columns in the result set (does not change table structure)
SELECT name as user_name, age AS user_age
FROM users;

SELECT amount AS order_amount
FROM orders;

SELECT order_date AS placed_on
FROM orders;


-- ------------------------------------------
-- 4. DISTINCT keyword
-- ------------------------------------------

-- DISTINCT removes duplicate values
-- NULL appears once if present
SELECT DISTINCT age
FROM users;

SELECT DISTINCT city
FROM users;


-- ------------------------------------------
-- 5. Expressions inside SELECT
-- ------------------------------------------

-- Expressions allow computation on column values
-- Does NOT modify stored data (result is temporary)
SELECT name, age +5 AS age_after_5_years
FROM users;

SELECT order_id, amount*2 AS doubled_amount
FROM orders;


-- ------------------------------------------
-- 6. COUNT demonstration
-- ------------------------------------------
-- COUNT(*) counts all rows (including rows with NULL values)
SELECT COUNT(*) AS total_users
FROM users;

-- COUNT(column) ignores NULL values
SELECT COUNT(age) AS non_null_ages
FROM users;

SELECT COUNT(city) AS non_null_cities
FROM users;


-- ------------------------------------------
-- 7. LIMIT clause
-- ------------------------------------------

-- Get first 3 users
SELECT * 
FROM users
LIMIT 3;

-- Get first 5 orders
SELECT *
FROM orders
LIMIT 5;

-- LIMIT with offset (skip first 2 rows, then show 3)
SELECT *
FROM users
LIMIT 2, 3;

-- Note: Without ORDER BY, result order is not guaranteed.
