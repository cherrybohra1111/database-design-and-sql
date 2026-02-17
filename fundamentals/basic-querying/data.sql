INSERT INTO users (id, name, age, email,city) VALUES
(1, 'Alice', 25, 'alice@xyz.com', 'Delhi'),
(2, 'Betty', 30, 'betty@xyz.com', 'Mumbai'),
(3, 'Charlie', 20, 'Charlie@xyz.com', 'Kolkata'),
(4, 'Daina', 28, 'daina@xyz.com', 'Bangalore'),
(5, 'Eve', 40, 'eve@xyz.com', 'Jaipur'),
(6, 'Farhan', NULL, 'farhan@xyz.com', 'Hyderabad'),
(7, 'Gita', 22, NULL, 'Chennai'),
(8, 'Harsh', 35, 'harsh@xyz.com', NULL),
(9, 'Isha', NULL, NULL, 'Pune'),
(10, 'John', 29, 'john@xyz.com', 'Delhi');

INSERT INTO orders (order_id,user_id, amount, order_date) VALUES
(101,1,100.00,'2026-01-02'),
(102,2,150.50,'2026-03-02'),
(103,3,50.25,'2026-10-01'),
(104,1,1000.75,'2026-01-01'),
(105,4,250.00,'2026-01-02'),
(106, 2, NULL, '2026-04-01'),
(107, 5, 300.00, NULL),
(108, 6, 450.75, '2026-06-15'),
(109, 7, NULL, NULL),
(110, 8, 1200.00, '2026-02-20');

