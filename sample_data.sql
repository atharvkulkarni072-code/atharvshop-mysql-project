USE atharvshop;

INSERT INTO customers (name, email) VALUES
('Atharv', 'atharv@gmail.com'),
('Rahul', 'rahul@gmail.com');

INSERT INTO products (name, price, stock) VALUES
('Laptop', 60000, 10),
('Phone', 20000, 20),
('Headphones', 2000, 50);

INSERT INTO orders (customer_id) VALUES
(1),
(2);

INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 3, 2),
(2, 2, 1);

INSERT INTO payments (order_id, amount, payment_method) VALUES
(1, 64000, 'UPI'),
(2, 20000, 'Card');
