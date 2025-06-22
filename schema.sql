
-- Table: sarees
CREATE TABLE sarees (
    saree_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    category ENUM('Silk', 'Cotton', 'Linen', 'Designer'),
    color VARCHAR(50),
    stock_quantity INT,
    price DECIMAL(10,2),
    discount DECIMAL(5,2)
);

-- Table: customers
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50)
);

-- Table: orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    status ENUM('Pending', 'Shipped', 'Delivered', 'Cancelled'),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Table: order_items
CREATE TABLE order_items (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    saree_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (saree_id) REFERENCES sarees(saree_id)
);

-- Table: payments
CREATE TABLE payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    payment_date DATE,
    payment_method ENUM('Cash', 'UPI', 'Card'),
    amount DECIMAL(10,2),
    payment_status ENUM('Success', 'Failed'),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
