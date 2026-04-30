# Repeat Customer Revenue Analysis

## Business Objective

This project analyzes which products generate the most revenue from repeat customers and evaluates whether repeat customer revenue is concentrated in a small number of products or distributed across the catalog.

The goal is to identify product-level revenue concentration among loyal customers.

---

## Dataset

The analysis uses three tables:

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

This analysis follows a structured BI workflow:

### 1. Customer Segmentation
Customers are classified as:
- Repeat customers (2+ orders)
- One-time customers (1 order)

---

### 2. Data Enrichment
Each order is enriched with:
- product information
- customer segment (repeat vs one-time)

---

### 3. Filtering
Only repeat customer transactions are used for the analysis.

---

### 4. Aggregation
Revenue is calculated per product for repeat customers.

---

### 5. Ranking and Share Analysis
Products are ranked by repeat customer revenue, and each product’s share of total repeat customer revenue is calculated.

---

## SQL Implementation

The full SQL logic is available in `analysis.sql`.

---

## Key Insights

- Repeat customer revenue is concentrated in a subset of products.
- A small number of products account for a significant share of loyal customer revenue.
- This indicates strong product preference among repeat customers rather than evenly distributed purchasing behavior.

---

## Next Steps

- Monthly trend analysis of repeat customer revenue
- Cohort analysis of customer retention behavior
- Dashboard visualization in Power BI or Tableau
