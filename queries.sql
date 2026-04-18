USE atharvshop;

-- Customers
SELECT * FROM customers;

-- Orders with customer name
SELECT o.order_id, c.name
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- Order details
SELECT o.order_id, p.name, oi.quantity
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN orders o ON oi.order_id = o.order_id;

-- Total order amount
SELECT o.order_id, SUM(p.price * oi.quantity) AS total
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN orders o ON oi.order_id = o.order_id
GROUP BY o.order_id;

-- Payments
SELECT * FROM payments;
