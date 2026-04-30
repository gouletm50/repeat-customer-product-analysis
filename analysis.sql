WITH customer_segments AS (
  SELECT
    customer_id,
    CASE
      WHEN COUNT(order_id) >= 2 THEN 'repeat customer'
      ELSE 'one-time customer'
    END AS customer_type
  FROM orders
  GROUP BY customer_id
),

enriched_orders AS (
  SELECT
    o.order_id,
    o.customer_id,
    o.product_id,
    p.product_name,
    o.amount,
    cs.customer_type
  FROM orders o
  JOIN customer_segments cs
    ON o.customer_id = cs.customer_id
  JOIN products p
    ON o.product_id = p.product_id
),

product_revenue_repeat AS (
  SELECT
    product_id,
    product_name,
    SUM(amount) AS repeat_customer_revenue
  FROM enriched_orders
  WHERE customer_type = 'repeat customer'
  GROUP BY product_id, product_name
),

ranked_products AS (
  SELECT
    product_id,
    product_name,
    repeat_customer_revenue,
    
    SUM(repeat_customer_revenue) OVER () AS total_repeat_revenue,
    
    RANK() OVER (ORDER BY repeat_customer_revenue DESC) AS revenue_rank
  FROM product_revenue_repeat
)

SELECT
  product_id,
  product_name,
  repeat_customer_revenue,
  repeat_customer_revenue * 1.0 / total_repeat_revenue AS revenue_share,
  revenue_rank
FROM ranked_products
WHERE revenue_rank <= 5;
