SELECT top 5 b.name as customer_name, SUM(total_sales_amount) AS total_sales
FROM  {{ ref('transformed_sales_data') }} a, {{ ref('raw_customer_data') }} b
WHERE order_year = 2023 and a.customer_id=b.id
GROUP BY b.name
ORDER BY total_sales DESC
