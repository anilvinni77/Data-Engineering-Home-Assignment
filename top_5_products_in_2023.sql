SELECT top 5 product_id, SUM(total_sales_amount) AS total_sales
FROM {{ ref('transformed_sales_data') }}
WHERE order_year = 2023 GROUP BY product_id
ORDER BY total_sales DESC
