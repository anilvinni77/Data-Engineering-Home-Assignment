
SELECT top 1 customer_id,b.name as customer_name, COUNT(order_id) AS order_volume
FROM transformed_sales_data a, raw_customer_data b
WHERE order_year = 2023 and a.customer_id=b.id
AND order_month = 10
GROUP BY customer_id,customer_name
ORDER BY order_volume DESC;