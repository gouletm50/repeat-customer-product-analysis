# Repeat Customer Product Revenue Analysis

## Business Objective

This project analyzes which products generate the most revenue from repeat customers and whether revenue is concentrated among a small number of products or distributed across many.

---

## Dataset

This analysis uses three tables:

### orders
- order_id
- customer_id
- product_id
- order_date
- amount

### products
- product_id
- product_name

### customer_segments (derived)
- customer_type (repeat customer / one-time customer)

---

## Analytical Approach

### 1. Customer Segmentation

Customers are classified as:
- Repeat customers (2 or more orders)
- One-time customers (1 order)

---

### 2. Data Enrichment

Each order is enriched with:
- product information
- customer segment (repeat or one-time)

---

### 3. Filtering

Only repeat customer transactions are used for the analysis.

---

### 4. Aggregation

Revenue is calculated per product for repeat customers.

---

### 5. Ranking and Share Analysis

Products are ranked by repeat customer revenue and their share of total repeat customer revenue is calculated.

---

## SQL Implementation

The full SQL logic is available in `analysis.sql`.

---

## Key Insights

- Repeat customer revenue is concentrated in a subset of products.
- A small number of products generate a significant portion of repeat customer revenue.
- This suggests repeat customers have strong product preferences rather than evenly distributed purchasing behavior.

---

## Next Steps

- Add time-based analysis (monthly trends)
- Build cohort analysis for customer retention
- Create a Power BI dashboard for visualization
