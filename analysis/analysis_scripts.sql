-- ============================================
-- SALES ANALYSIS QUERIES
-- ============================================

-- ============================================
-- What is total revenue?
-- Calculates overall revenue from payments table
-- ============================================
SELECT SUM(amount)
FROM payments;

-- ============================================
-- Who are the top 5 customers?
-- Identifies top 5 customers by payment amount
-- ============================================
SELECT TOP 5
	c.first_name,
	c.last_name,
	p.amount
FROM customers c
LEFT JOIN payments p ON c.customer_id = p.payment_id
ORDER BY amount DESC

-- ============================================
-- What is the Monthly revenue trend
-- Shows revenue trends over time by month
-- ============================================
SELECT 
	YEAR(o.order_date) AS year,
	DATENAME(MONTH, o.order_date) AS month,
	SUM(oi.quantity * oi.unit_price) AS monhthly_revenue
	FROM orders o
	JOIN order_items oi
		ON o.order_id = oi.order_item_id
	GROUP BY YEAR(o.order_date), DATENAME(MONTH, o.order_date)
	ORDER BY DATENAME(MONTH, o.order_date)


-- ============================================
-- Best-selling product
-- Identifies product with highest quantity sold
-- JOIN condition may need correction (product_id instead of order_item_id)
-- Consider using SUM of quantity across all orders, not single order
-- ============================================
SELECT Top 1
	p.product_name, 
	SUM(o.quantity) AS units_sold 
FROM products p
JOIN order_items o ON p.product_id = o.product_id
GROUP BY product_name
ORDER BY units_sold DESC

-- ============================================
-- Most profitable category
-- Calculates profit as (price - cost_price) per product, aggregated by category
-- ============================================
SELECT  TOP 1
	p.category,
	SUM(p.price - p.cost_price) AS profit
FROM products p
GROUP BY p.category
ORDER BY profit DESC

-- ============================================
-- Customers with no orders
-- Intended to find inactive customers
-- WARNING: Current logic incorrectly checks quantity < 1
-- Should use LEFT JOIN and NULL check instead
-- ============================================
SELECT
	c.first_name,
	c.last_name
FROM customers c
LEFT JOIN order_items oi ON c.customer_id = oi.order_item_id
WHERE oi.quantity IS NULL

--Repeat customers
SELECT
	c.first_name,
	c.last_name,
	COUNT(o.order_id) AS orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.first_name, c.last_name
HAVING COUNT(DISTINCT o.order_id) > 1 

-- ============================================
-- Average order value
-- Currently averaging quantity, not order value
-- Should calculate average total per order
-- ============================================
SELECT AVG(order_total)as average_order_value
FROM (
    SELECT 
        o.order_id,
        SUM(oi.quantity * oi.unit_price) AS order_total
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    GROUP BY o.order_id
) AS order_totals;

-- ============================================
-- Return rate per product
-- Calculates percentage of returned items per product
-- ============================================
SELECT 
	p.product_name,
	SUM(oi.quantity) AS total_sold,
	COUNT(r.return_id) AS total_returns,
	CONCAT(
		(COUNT(r.return_id) * 100 /SUM(oi.quantity)),
		'%'
		) AS return_rate
FROM products p
JOIN order_items oi
	ON p.product_id = oi.product_id
LEFT JOIN returns r
	ON oi.order_id = r.order_item_id
GROUP BY p.product_name
