/*
===============================================================================
 Database Schema Creation Script for retail System
===============================================================================
 This script creates the core tables for an retail database including:
 customers, products, orders, order_items, payments, and returns tables.
 
 Each table is created with appropriate primary keys, foreign key constraints,
 and data types. The script first checks for existing tables and drops them
 before recreation to ensure a clean slate.
===============================================================================
*/

/*
------------------------------------------------------------------------------
 Table: customers
 Purpose: Stores customer personal information and account details
 Columns:
   - customer_id: Unique identifier for each customer (Primary Key)
   - first_name: Customer's first name
   - last_name: Customer's last name
   - email: Customer's email address
   - city: Customer's city of residence
   - signup_date: Date when customer registered
------------------------------------------------------------------------------
*/
IF OBJECT_ID('customers', 'U') IS NOT NULL
DROP TABLE customers
CREATE TABLE customers (
	customer_id int PRIMARY KEY,
	first_name NVARCHAR(55),
	last_name NVARCHAR(55),
	email NVARCHAR(55),
	city NVARCHAR(55),
	signup_date DATE
);

/*
------------------------------------------------------------------------------
 Table: products
 Purpose: Contains product catalog information
 Columns:
   - product_id: Unique identifier for each product (Primary Key)
   - product_name: Name/title of the product
   - category: Product category/classification
   - price: Current selling price
   - cost_price: Original cost/wholesale price of the product
------------------------------------------------------------------------------
*/
IF OBJECT_ID('products ', 'U') IS NOT NULL
DROP TABLE products 
CREATE TABLE products (
	product_id INT PRIMARY KEY,
	product_name NVARCHAR(55),
	category NVARCHAR(55),
	price INT,
	cost_price INT
);

/*
------------------------------------------------------------------------------
 Table: orders
 Purpose: Records customer order header information
 Columns:
   - order_id: Unique identifier for each order (Primary Key)
   - customer_id: References the customer who placed the order
   - order_date: Date when order was placed
   - order_status: Current status (e.g., pending, shipped, delivered)
   
 Foreign Key: customer_id references customers.customer_id
------------------------------------------------------------------------------
*/
IF OBJECT_ID('orders ', 'U') IS NOT NULL
DROP TABLE orders 
CREATE TABLE orders (
	order_id INT PRIMARY KEY,
	customer_id INT,
	order_date DATE,
	order_status NVARCHAR(55),
	FOREIGN KEY (customer_id) REFERENCES customers
);

/*
------------------------------------------------------------------------------
 Table: order_items
 Purpose: Stores line item details for each order
 Columns:
   - order_item_id: Unique identifier for each order line item (Primary Key)
   - order_id: References the parent order
   - product_id: References the product being ordered
   - quantity: Number of units ordered
   - unit_price: Price per unit at time of order
   
 Foreign Keys:
   - order_id references orders.order_id
   - product_id references products.product_id
------------------------------------------------------------------------------
*/
IF OBJECT_ID('order_items ', 'U') IS NOT NULL
DROP TABLE order_items 
CREATE TABLE order_items (
	order_item_id INT PRIMARY KEY,
	order_id INT,
	product_id INT,
	quantity INT,
	unit_price INT,
	FOREIGN KEY (order_id) REFERENCES orders,
	FOREIGN KEY (product_id) REFERENCES products,
);

/*
------------------------------------------------------------------------------
 Table: payments
 Purpose: Records payment transactions for orders
 Columns:
   - payment_id: Unique identifier for each payment (Primary Key)
   - order_id: References the order being paid for
   - payment_date: Date when payment was made
   - payment_method: Method used (credit card, PayPal, etc.)
   - amount: Payment amount
   
 Foreign Key: order_id references orders.order_id
------------------------------------------------------------------------------
*/
IF OBJECT_ID('payments ', 'U') IS NOT NULL
DROP TABLE payments 
CREATE TABLE payments (
	payment_id INT PRIMARY KEY,
	order_id INT,
	payment_date DATE,
	payment_method NVARCHAR(55),
	amount INT,
	FOREIGN KEY (order_id) REFERENCES orders
);

/*
------------------------------------------------------------------------------
 Table: returns
 Purpose: Tracks product returns and reasons
 Columns:
   - return_id: Unique identifier for each return (Primary Key)
   - order_item_id: References the specific order item being returned
   - return_date: Date when return was processed
   - reason: Reason code/description for the return
   
 Note: This table does not have explicit foreign key constraints but
 order_item_id should logically reference order_items.order_item_id
------------------------------------------------------------------------------
*/
IF OBJECT_ID('returns ', 'U') IS NOT NULL
DROP TABLE returns 
CREATE TABLE returns (
	return_id INT PRIMARY KEY,
	order_item_id INT,
	return_date DATE,
	reason NVARCHAR(55)
);
