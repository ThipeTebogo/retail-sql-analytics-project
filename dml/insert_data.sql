/*
===============================================================================
 Sample Data Population Script for retail Database
===============================================================================
 This script populates all tables (customers, products, orders, order_items, 
 payments, and returns) with realistic sample data for testing and development
 purposes. Each INSERT statement includes 30 records with appropriate 
 relationships maintained between tables.
===============================================================================
*/

/*
------------------------------------------------------------------------------
 Customers Table Data Population
 Purpose: Insert 30 sample customer records with South African names and cities
 Data Characteristics:
   - Includes diverse South African first names and surnames
   - Covers major South African cities (Johannesburg, Cape Town, Durban, etc.)
   - Signup dates range from January 2023 to April 2024
   - All email addresses follow consistent naming convention
------------------------------------------------------------------------------
*/
INSERT INTO Customers (customer_id, first_name, last_name, email, city, signup_date) VALUES
(1, 'John', 'Mokoena', 'john.mokoena@email.com', 'Johannesburg', '2023-01-15'),
(2, 'Sarah', 'Naidoo', 'sarah.naidoo@email.com', 'Durban', '2023-02-10'),
(3, 'David', 'Smith', 'david.smith@email.com', 'Cape Town', '2023-03-05'),
(4, 'Lerato', 'Khumalo', 'lerato.khumalo@email.com', 'Johannesburg', '2023-03-18'),
(5, 'Michael', 'Van Wyk', 'michael.vanwyk@email.com', 'Pretoria', '2023-04-02'),
(6, 'Thabo', 'Ndlovu', 'thabo.ndlovu@email.com', 'Soweto', '2023-04-15'),
(7, 'Emily', 'Brown', 'emily.brown@email.com', 'Cape Town', '2023-05-01'),
(8, 'Sipho', 'Dlamini', 'sipho.dlamini@email.com', 'Johannesburg', '2023-05-20'),
(9, 'Karen', 'Peters', 'karen.peters@email.com', 'Port Elizabeth', '2023-06-03'),
(10, 'Brian', 'Meyer', 'brian.meyer@email.com', 'Pretoria', '2023-06-15'),
(11, 'Nomsa', 'Zulu', 'nomsa.zulu@email.com', 'Durban', '2023-07-04'),
(12, 'Kevin', 'Jacobs', 'kevin.jacobs@email.com', 'Cape Town', '2023-07-19'),
(13, 'Amanda', 'Williams', 'amanda.williams@email.com', 'Johannesburg', '2023-08-02'),
(14, 'Patrick', 'Mthembu', 'patrick.mthembu@email.com', 'Durban', '2023-08-21'),
(15, 'Jessica', 'Taylor', 'jessica.taylor@email.com', 'Pretoria', '2023-09-05'),
(16, 'Sibusiso', 'Mabena', 'sibusiso.mabena@email.com', 'Polokwane', '2023-09-18'),
(17, 'Laura', 'Anderson', 'laura.anderson@email.com', 'Cape Town', '2023-10-01'),
(18, 'Peter', 'Botha', 'peter.botha@email.com', 'Johannesburg', '2023-10-15'),
(19, 'Nandi', 'Cele', 'nandi.cele@email.com', 'Durban', '2023-11-03'),
(20, 'George', 'Clark', 'george.clark@email.com', 'Pretoria', '2023-11-20'),
(21, 'Linda', 'Nkosi', 'linda.nkosi@email.com', 'Soweto', '2023-12-01'),
(22, 'Daniel', 'Scott', 'daniel.scott@email.com', 'Cape Town', '2023-12-10'),
(23, 'Olivia', 'Adams', 'olivia.adams@email.com', 'Johannesburg', '2024-01-05'),
(24, 'James', 'Hill', 'james.hill@email.com', 'Pretoria', '2024-01-22'),
(25, 'Grace', 'Mokoena', 'grace.mokoena@email.com', 'Polokwane', '2024-02-04'),
(26, 'Henry', 'Baker', 'henry.baker@email.com', 'Cape Town', '2024-02-18'),
(27, 'Faith', 'Dube', 'faith.dube@email.com', 'Durban', '2024-03-03'),
(28, 'Chris', 'Roberts', 'chris.roberts@email.com', 'Johannesburg', '2024-03-19'),
(29, 'Angela', 'Daniels', 'angela.daniels@email.com', 'Port Elizabeth', '2024-04-02'),
(30, 'Victor', 'Sithole', 'victor.sithole@email.com', 'Pretoria', '2024-04-15');

/*
------------------------------------------------------------------------------
 Products Table Data Population
 Purpose: Insert 30 sample products across multiple categories
 Categories Covered:
   - Electronics (10 products): Laptops, peripherals, audio equipment
   - Furniture (5 products): Office and home furniture
   - Sportswear (5 products): Athletic clothing and accessories
   - Home Appliances (5 products): Kitchen and household appliances
   - Stationery (5 products): Office and school supplies
 Note: All prices are in South African Rand (ZAR) with reasonable markups
------------------------------------------------------------------------------
*/
INSERT INTO products
(product_id, product_name, category, price, cost_price)
VALUES
(1, 'Laptop Pro 15', 'Electronics', 15000.00, 11000.00),
(2, 'Wireless Mouse', 'Electronics', 350.00, 200.00),
(3, 'Mechanical Keyboard', 'Electronics', 1200.00, 800.00),
(4, '27 Inch Monitor', 'Electronics', 4200.00, 3000.00),
(5, 'USB-C Charger', 'Electronics', 450.00, 250.00),
(6, 'Office Chair', 'Furniture', 2800.00, 1900.00),
(7, 'Standing Desk', 'Furniture', 6500.00, 4800.00),
(8, 'Desk Lamp', 'Furniture', 320.00, 150.00),
(9, 'Bookshelf', 'Furniture', 2100.00, 1500.00),
(10, 'Filing Cabinet', 'Furniture', 1700.00, 1100.00),
(11, 'Running Shoes', 'Sportswear', 1200.00, 700.00),
(12, 'Gym Shorts', 'Sportswear', 350.00, 180.00),
(13, 'Sports T-Shirt', 'Sportswear', 300.00, 150.00),
(14, 'Yoga Mat', 'Sportswear', 400.00, 220.00),
(15, 'Water Bottle', 'Sportswear', 150.00, 70.00),
(16, 'Coffee Maker', 'Home Appliances', 1800.00, 1200.00),
(17, 'Blender', 'Home Appliances', 950.00, 600.00),
(18, 'Microwave Oven', 'Home Appliances', 2300.00, 1700.00),
(19, 'Electric Kettle', 'Home Appliances', 420.00, 260.00),
(20, 'Air Fryer', 'Home Appliances', 2700.00, 1900.00),
(21, 'Notebook Pack', 'Stationery', 120.00, 60.00),
(22, 'Ballpoint Pens', 'Stationery', 80.00, 30.00),
(23, 'Desk Organizer', 'Stationery', 200.00, 100.00),
(24, 'Sticky Notes', 'Stationery', 60.00, 20.00),
(25, 'Printer Paper', 'Stationery', 250.00, 150.00),
(26, 'Bluetooth Speaker', 'Electronics', 850.00, 550.00),
(27, 'Smart Watch', 'Electronics', 3200.00, 2400.00),
(28, 'Tablet 10 Inch', 'Electronics', 5200.00, 4000.00),
(29, 'Gaming Headset', 'Electronics', 980.00, 620.00),
(30, 'External Hard Drive', 'Electronics', 1400.00, 950.00);

/*
------------------------------------------------------------------------------
 Orders Table Data Population
 Purpose: Insert 30 sample orders with various statuses
 Data Characteristics:
   - Orders span from January 2023 to March 2023
   - References valid customer IDs (1-20) with some customers placing multiple orders
   - Order statuses include: Delivered, Shipped, Processing, Cancelled
   - Demonstrates realistic order distribution across customers
------------------------------------------------------------------------------
*/
INSERT INTO orders (order_id, customer_id, order_date, order_status)
VALUES 
(1, 1, '2023-01-05', 'Delivered'),
(2, 2, '2023-01-07', 'Shipped'),
(3, 3, '2023-01-10', 'Delivered'),
(4, 4, '2023-01-12', 'Cancelled'),
(5, 5, '2023-01-15', 'Delivered'),
(6, 6, '2023-01-18', 'Processing'),
(7, 7, '2023-01-20', 'Delivered'),
(8, 8, '2023-01-23', 'Shipped'),
(9, 9, '2023-01-25', 'Delivered'),
(10, 10, '2023-01-28', 'Processing'),
(11, 11, '2023-02-02', 'Delivered'),
(12, 12, '2023-02-04', 'Cancelled'),
(13, 13, '2023-02-07', 'Delivered'),
(14, 14, '2023-02-09', 'Shipped'),
(15, 15, '2023-02-12', 'Delivered'),
(16, 16, '2023-02-15', 'Processing'),
(17, 17, '2023-02-18', 'Delivered'),
(18, 18, '2023-02-20', 'Shipped'),
(19, 19, '2023-02-23', 'Delivered'),
(20, 20, '2023-02-25', 'Cancelled'),
(21, 1, '2023-03-01', 'Delivered'),
(22, 3, '2023-03-04', 'Processing'),
(23, 5, '2023-03-06', 'Delivered'),
(24, 7, '2023-03-09', 'Shipped'),
(25, 9, '2023-03-12', 'Delivered'),
(26, 11, '2023-03-15', 'Processing'),
(27, 13, '2023-03-18', 'Delivered'),
(28, 15, '2023-03-20', 'Cancelled'),
(29, 17, '2023-03-23', 'Delivered'),
(30, 19, '2023-03-26', 'Shipped');

/*
------------------------------------------------------------------------------
 Order Items Table Data Population
 Purpose: Insert 30 order line items linking orders to products
 Data Characteristics:
   - Each order may have multiple items (demonstrated by orders 1 having 2 items)
   - References valid order_ids (1-29) and product_ids (1-10)
   - Quantities range from 1-5 units per item
   - Unit prices match product catalog prices
   - Total of 30 line items across all orders
------------------------------------------------------------------------------
*/
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price)
VALUES
(1, 1, 3, 2, 199.99),
(2, 1, 5, 1, 349.99),
(3, 2, 2, 4, 99.99),
(4, 3, 1, 1, 599.99),
(5, 4, 7, 3, 49.99),
(6, 5, 6, 2, 129.99),
(7, 6, 8, 1, 899.99),
(8, 7, 4, 5, 39.99),
(9, 8, 9, 2, 249.99),
(10, 9, 10, 1, 799.99),
(11, 10, 3, 2, 199.99),
(12, 11, 5, 1, 349.99),
(13, 12, 2, 3, 99.99),
(14, 13, 6, 2, 129.99),
(15, 14, 7, 4, 49.99),
(16, 15, 8, 1, 899.99),
(17, 16, 4, 2, 39.99),
(18, 17, 9, 3, 249.99),
(19, 18, 1, 1, 599.99),
(20, 19, 10, 2, 799.99),
(21, 20, 3, 1, 199.99),
(22, 21, 6, 2, 129.99),
(23, 22, 5, 1, 349.99),
(24, 23, 2, 4, 99.99),
(25, 24, 8, 1, 899.99),
(26, 25, 7, 3, 49.99),
(27, 26, 9, 2, 249.99),
(28, 27, 4, 2, 39.99),
(29, 28, 10, 1, 799.99),
(30, 29, 1, 3, 599.99);

/*
------------------------------------------------------------------------------
 Payments Table Data Population
 Purpose: Insert 30 payment records for orders
 Data Characteristics:
   - Each order has one corresponding payment
   - Payment methods include: Credit Card, Debit Card, PayPal, EFT
   - Payment amounts calculated as (quantity × unit_price) from order_items
   - Payment dates typically 1-3 days after order date
   - Demonstrates various payment methods across different order values
------------------------------------------------------------------------------
*/
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, amount)
VALUES
(1, 1, '2023-01-06', 'Credit Card', 749.97),
(2, 2, '2023-01-08', 'Debit Card', 399.96),
(3, 3, '2023-01-11', 'PayPal', 599.99),
(4, 4, '2023-01-12', 'Credit Card', 149.97),
(5, 5, '2023-01-16', 'EFT', 259.98),
(6, 6, '2023-01-19', 'Debit Card', 899.99),
(7, 7, '2023-01-21', 'Credit Card', 199.95),
(8, 8, '2023-01-24', 'PayPal', 499.98),
(9, 9, '2023-01-26', 'Debit Card', 799.99),
(10, 10, '2023-01-29', 'EFT', 399.98),
(11, 11, '2023-02-03', 'Credit Card', 349.99),
(12, 12, '2023-02-05', 'Debit Card', 299.97),
(13, 13, '2023-02-08', 'PayPal', 259.98),
(14, 14, '2023-02-10', 'Credit Card', 199.96),
(15, 15, '2023-02-13', 'EFT', 899.99),
(16, 16, '2023-02-16', 'Debit Card', 79.98),
(17, 17, '2023-02-19', 'Credit Card', 749.97),
(18, 18, '2023-02-21', 'PayPal', 599.99),
(19, 19, '2023-02-24', 'Debit Card', 1599.98),
(20, 20, '2023-02-26', 'EFT', 199.99),
(21, 21, '2023-03-02', 'Credit Card', 259.98),
(22, 22, '2023-03-05', 'Debit Card', 349.99),
(23, 23, '2023-03-07', 'PayPal', 399.96),
(24, 24, '2023-03-10', 'Credit Card', 899.99),
(25, 25, '2023-03-13', 'EFT', 149.97),
(26, 26, '2023-03-16', 'Debit Card', 499.98),
(27, 27, '2023-03-19', 'Credit Card', 79.98),
(28, 28, '2023-03-21', 'PayPal', 799.99),
(29, 29, '2023-03-24', 'Debit Card', 1799.97),
(30, 30, '2023-03-27', 'EFT', 599.99);

/*
------------------------------------------------------------------------------
 Returns Table Data Population
 Purpose: Insert 30 return records for various order items
 Data Characteristics:
   - References order_item_ids (1-30) with some items being returned
   - Return reasons include: Damaged item, Wrong item, Changed mind, Defective, Late delivery, Size issues
   - Return dates typically 4-7 days after order date
   - Demonstrates realistic return patterns across different products
   - Multiple return reasons provide variety for analysis
------------------------------------------------------------------------------
*/
INSERT INTO returns (return_id, order_item_id, return_date, reason)
VALUES
(1, 2, '2023-01-10', 'Damaged item'),
(2, 4, '2023-01-14', 'Wrong item delivered'),
(3, 5, '2023-01-18', 'Customer changed mind'),
(4, 7, '2023-01-22', 'Defective product'),
(5, 9, '2023-01-27', 'Size not correct'),
(6, 11, '2023-02-02', 'Damaged item'),
(7, 13, '2023-02-06', 'Late delivery'),
(8, 15, '2023-02-11', 'Customer changed mind'),
(9, 17, '2023-02-15', 'Wrong item delivered'),
(10, 18, '2023-02-19', 'Defective product'),
(11, 20, '2023-02-23', 'Damaged item'),
(12, 22, '2023-02-28', 'Size not correct'),
(13, 23, '2023-03-03', 'Customer changed mind'),
(14, 24, '2023-03-06', 'Defective product'),
(15, 25, '2023-03-09', 'Late delivery'),
(16, 26, '2023-03-12', 'Damaged item'),
(17, 27, '2023-03-15', 'Wrong item delivered'),
(18, 28, '2023-03-18', 'Customer changed mind'),
(19, 29, '2023-03-20', 'Defective product'),
(20, 30, '2023-03-23', 'Damaged item'),
(21, 3, '2023-03-26', 'Late delivery'),
(22, 6, '2023-03-28', 'Wrong item delivered'),
(23, 8, '2023-03-30', 'Customer changed mind'),
(24, 10, '2023-04-02', 'Defective product'),
(25, 12, '2023-04-04', 'Damaged item'),
(26, 14, '2023-04-06', 'Size not correct'),
(27, 16, '2023-04-08', 'Customer changed mind'),
(28, 19, '2023-04-10', 'Wrong item delivered'),
(29, 21, '2023-04-12', 'Defective product'),
(30, 1, '2023-04-14', 'Damaged item');
