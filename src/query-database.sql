\c store;

-- SELECT ALL records from customers.
SELECT *
FROM customers;

-- SELECT first_name from customers.
SELECT first_name
FROM customers;

-- Show the full name of the customer whose id is 1
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM customers
WHERE id = 1;

-- UPDATE the record for id = 1 on the customer.
UPDATE customers
SET first_name = 'Lerato', last_name = 'Mabitso'
WHERE id = 1;

-- DELETE the record from customers for customer id = 2.
DELETE FROM customers
WHERE id = 2;

-- Select all unique statuses from orders and get a count of the number of orders for each unique status.
SELECT status, COUNT(*) AS order_count
FROM orders
GROUP BY status;

-- Return the maximum payment made on payments table.
SELECT MAX(amount) AS maximum_payment
FROM payments;

-- Select all customers from the customers table, sorted by the country column.
SELECT *
FROM customers
ORDER BY country;

-- Select all products with a price BETWEEN R100 and R600.
SELECT *
FROM products
WHERE buy_price BETWEEN 100 AND 600;

-- Select all fields from customers where the country is “Germany” AND the city is “Berlin”.
SELECT *
FROM customers
WHERE country = 'Germany' AND city = 'Berlin';

-- Select all fields from customers where the city is “Cape Town” OR “Durban”.
SELECT *
FROM customers
WHERE city = 'Durban' OR city = 'Cape Town';

--Select all records from products where the price is greater than R500.
SELECT *
FROM products
WHERE buy_price > 500;

-- Return the sum of the amounts on the payments table.
SELECT SUM(amount) AS total
FROM payments;

-- Count the number of shipped orders in the orders table.
SELECT COUNT(*) AS number_of_shipped_orders
FROM orders
WHERE status = 'Shipped';

-- Return the average price of all products, in Rands and Dollars.
SELECT ROUND(AVG(buy_price), 2) AS average_price_in_rands,
       ROUND(AVG(buy_price/12), 2) AS average_price_in_dollars
FROM products;

-- Using INNER JOIN create a query that selects all payments with customer information.
SELECT p.*, c.first_name, c.last_name, c.email, c.city, c.country
FROM payments p
INNER JOIN customers c ON p.customer_id = c.id;

-- Select all products that have turnable front wheels.
SELECT *
FROM products
WHERE description ILIKE '%turnable front wheels%';

