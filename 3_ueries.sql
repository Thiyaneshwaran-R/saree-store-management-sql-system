1. Top-selling sarees by quantity
SELECT s.name, SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN sarees s ON oi.saree_id = s.saree_id
GROUP BY s.saree_id
ORDER BY total_sold DESC;

2. Pending orders
SELECT o.order_id, c.name, o.order_date, o.total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.status = 'Pending';

3. Total monthly revenue
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(total_amount) AS revenue
FROM orders
WHERE status = 'Delivered'
GROUP BY month
ORDER BY month;

4. Sarees with low stock (below 10 units)
SELECT name, stock_quantity
FROM sarees
WHERE stock_quantity < 10;
