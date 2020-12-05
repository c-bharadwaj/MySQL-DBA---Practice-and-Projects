USE sloppyjoes;

SELECT 
	staff_id,
	COUNT(order_id) AS orders_served
FROM customer_orders
GROUP BY staff_id;

DELIMITER //
CREATE PROCEDURE sp_staffOrdersServed ()
BEGIN
	SELECT 
		staff_id,
		COUNT(order_id) AS orders_served
	FROM customer_orders
	GROUP BY staff_id;
END //
DELIMITER ;

CALL sp_staffOrdersServed;

