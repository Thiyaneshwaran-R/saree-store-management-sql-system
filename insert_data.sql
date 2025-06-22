
-- Sample sarees
INSERT INTO sarees (name, category, color, stock_quantity, price, discount) VALUES
('Kanchipuram Silk', 'Silk', 'Red', 20, 2500.00, 10.00),
('Banarasi Silk', 'Silk', 'Green', 15, 3200.00, 15.00),
('Cotton Casual', 'Cotton', 'Blue', 30, 1200.00, 5.00),
('Designer Saree', 'Designer', 'Black', 10, 4500.00, 20.00),
('Linen Comfort', 'Linen', 'Beige', 25, 1800.00, 0.00);

-- Sample customers
INSERT INTO customers (name, email, phone, city) VALUES
('Aishwarya R', 'aishu@example.com', '9876543210', 'Chennai'),
('Meena S', 'meena@example.com', '9123456780', 'Madurai'),
('Pooja D', 'pooja@example.com', '9988776655', 'Coimbatore');

-- Sample orders
INSERT INTO orders (customer_id, order_date, total_amount, status) VALUES
(1, '2025-06-18', 5000.00, 'Delivered'),
(2, '2025-06-19', 3200.00, 'Pending'),
(3, '2025-06-20', 1200.00, 'Shipped');

-- Sample order items
INSERT INTO order_items (order_id, saree_id, quantity, unit_price) VALUES
(1, 1, 2, 2500.00),
(2, 2, 1, 3200.00),
(3, 3, 1, 1200.00);

-- Sample payments
INSERT INTO payments (order_id, payment_date, payment_method, amount, payment_status) VALUES
(1, '2025-06-18', 'UPI', 5000.00, 'Success'),
(2, '2025-06-19', 'Cash', 3200.00, 'Failed'),
(3, '2025-06-20', 'Card', 1200.00, 'Success');
