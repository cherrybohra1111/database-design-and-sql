-- ==========================================
-- 04_LIKE_AND_RANGE.sql
-- Topic: Pattern Matching and Range Filtering
-- Database: sql_practice
-- ==========================================

USE sql_practice;

-- Concepts Covered:
-- 1. LIKE operator
-- 2. Wildcards (% and _)
-- 3. Pattern matching
-- 4. BETWEEN operator
-- 5. NOT BETWEEN
-- 6. Combining conditions



-- ------------------------------------------
-- 1. LIKE Operator (Pattern Matching)
-- ------------------------------------------

-- LIKE is used for partial matching instead of exact matching
-- %  -> matches any number of characters
-- _  -> matches exactly one character


-- Users whose name starts with 'A'
SELECT *
FROM users
WHERE name LIKE 'A%';


-- Users whose name ends with 'a'
SELECT * 
FROM users
WHERE name LIKE '%a';


-- Users whose name contains 'ar'
SELECT *
FROM users
WHERE name LIKE '%ar%';

--Users whose email ends with '%xyz.com';
SELECT *
FROM users
WHERE email LIKE '%xyz.com';



-- ------------------------------------------
-- 2. Single Character Wildcard (_)
-- ------------------------------------------

-- Names with exactly 4 characters
SELECT *
FROM users
WHERE name LIKE '____';


-- Names where second letter is 'a'
SELECT *
FROM users
WHERE name LIKE '_a%';



-- ------------------------------------------
-- 3. BETWEEN Operator (Range Filtering)
-- ------------------------------------------

-- BETWEEN selects values within a range
-- It is inclusive (both boundary values are included)


-- Users aged between 25 and 35
SELECT *
FROM users
WHERE age BETWEEN 25 AND 35;


-- Orders with amount between 100 and 500
SELECT * 
FROM orders
WHERE amount BETWEEN 100 AND 500;


-- Orders placed between two dates
SELECT * 
FROM orders 
WHERE order_date BETWEEN '2026-01-01' AND '2026-03-31';



-- ------------------------------------------
-- 4. NOT BETWEEN
-- ------------------------------------------

-- Users NOT aged between 25 and 35
SELECT *
FROM users
WHERE age NOT BETWEEN 25 AND 35;


-- Orders with amount NOT between 100 and 500
SELECT * 
FROM orders
WHERE amount NOT BETWEEN 100 AND 500;



-- ------------------------------------------
-- 5. Combining Range and Conditions
-- ------------------------------------------

-- Users from Delhi aged between 20 and 30
SELECT *
FROM users
WHERE city = 'Delhi'
AND age BETWEEN 20 AND 30;


-- Orders with amount between 200 and 1000 placed in 2026
SELECT *
FROM orders
WHERE amount BETWEEN 200 AND 1000
AND order_date BETWEEN '2026-01-01' AND '2026-12-31';

