-- Write a query to find all orders that have a total amount greater than the average total amount of all orders.

-- Solution:

-- SELECT order_id 
-- FROM orders 
-- WHERE total_amount > (SELECT AVG(total_amount) FROM orders);