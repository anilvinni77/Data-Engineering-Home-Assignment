
select
    *,
    EXTRACT(YEAR FROM CAST(order_date AS DATE)) AS order_year,
    EXTRACT(MONTH FROM CAST(order_date AS DATE)) AS order_month,
    EXTRACT(DAY FROM CAST(order_date AS DATE)) AS order_day,
    (quantity * price) AS total_sales_amount
from {{ ref('raw_sales_data') }}
