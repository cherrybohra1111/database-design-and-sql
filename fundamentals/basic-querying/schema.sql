CREATE TABLE users (
    id INT,
    name VARCHAR(100),
    age INT,
    email VARCHAR(100),
    city VARCHAR(100)
);

CREATE TABLE orders (
    order_id INT,
    user_id INT,
    amount DECIMAL(10,2),
    order_date DATE
);