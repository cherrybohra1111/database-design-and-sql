-- ==========================================
-- 03_WHERE.sql
-- Topic: Filtering Data using WHERE clause
-- Database: sql_practice
-- ==========================================

USE sql_practice;


-- ------------------------------------------
-- 1. Comparison Operators
-- ------------------------------------------

-- Equality
SELECT *
FROM users
WHERE city = 'Delhi';

-- Inequality (!= and <> are equivalent)
-- Note: <> is ANSI standard, != is MySQL-supported
SELECT *
FROM users
WHERE city != 'Delhi';

SELECT *
FROM users
WHERE city <> 'Delhi';

-- Using NOT with equality (similar behavior)
SELECT *
FROM users
WHERE NOT (city = 'Delhi');

-- Greater than
SELECT *
FROM users
WHERE age > 25;

-- Less than or equal to
SELECT *
FROM users
WHERE age <= 30;

-- Orders with amount greater than 200
SELECT *
FROM orders
WHERE amount > 200;



-- ------------------------------------------
-- 2. Logical Operators (AND / OR)
-- ------------------------------------------

-- Users older than 25 AND from Delhi
SELECT *
FROM users
WHERE age > 25 AND city = 'Delhi';

-- Users from Mumbai OR Pune
SELECT *
FROM users
WHERE city = 'Mumbai' OR city = 'Pune';

-- Orders with amount > 200 AND placed on 2026-01-02
SELECT *
FROM orders
WHERE amount > 200 AND order_date = '2026-01-02';



-- ------------------------------------------
-- 3. NULL Handling (Critical Concept)
-- ------------------------------------------

-- IMPORTANT:
-- NULL comparisons do not work with = or !=
-- Always use IS NULL / IS NOT NULL

-- Users where age is NULL
SELECT *
FROM users
WHERE age IS NULL;

-- Users where email is NOT NULL
SELECT *
FROM users
WHERE email IS NOT NULL;

-- Orders where amount is NULL
SELECT *
FROM orders
WHERE amount IS NULL;



-- ------------------------------------------
-- 4. BETWEEN Operator
-- ------------------------------------------

-- BETWEEN is inclusive of both boundary values
SELECT *
FROM users
WHERE age BETWEEN 25 AND 35;

SELECT *
FROM orders
WHERE amount BETWEEN 100 AND 500;



-- ------------------------------------------
-- 5. IN Operator
-- ------------------------------------------

-- IN simplifies multiple OR conditions
SELECT *
FROM users
WHERE city IN ('Delhi', 'Mumbai', 'Chennai');



-- ------------------------------------------
-- 6. Combined Conditions
-- ------------------------------------------

-- Users aged above 25 AND city in selected list
SELECT *
FROM users
WHERE age > 25 AND city IN ('Delhi', 'Mumbai');

-- Orders where amount is NOT NULL AND greater than 300
SELECT *
FROM orders
WHERE amount IS NOT NULL AND amount > 300;



-- ------------------------------------------
-- 7. NOT with AND / OR (De Morgan's Law)
-- ------------------------------------------

-- Original condition:
-- Users older than 25 AND from Delhi
SELECT *
FROM users
WHERE age > 25 AND city = 'Delhi';

-- Negating the whole condition
SELECT *
FROM users
WHERE NOT (age > 25 AND city = 'Delhi');

-- Equivalent using De Morgan’s Law
-- NOT (A AND B)  →  (NOT A) OR (NOT B)
SELECT *
FROM users
WHERE age <= 25 OR city <> 'Delhi';


-- Another Example:

-- Original:
SELECT *
FROM users
WHERE age > 25 OR city = 'Delhi';

-- Negated:
SELECT *
FROM users
WHERE NOT (age > 25 OR city = 'Delhi');

-- Equivalent:
-- NOT (A OR B) → (NOT A) AND (NOT B)
SELECT *
FROM users
WHERE age <= 25 AND city <> 'Delhi';