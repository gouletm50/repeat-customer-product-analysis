# Repeat Customer Revenue Analysis

## Project overview

This analysis looks at which products generate the most revenue from repeat customers and whether that revenue is concentrated in a small number of products or spread across the catalog.

The goal is to understand which products are most important for repeat customer spending.

---

## Data

The dataset includes three tables:

- **orders**: order_id, customer_id, product_id, order_date, amount  
- **products**: product_id, product_name  
- **customer_segments**: derived from order history to classify customers

---

## Approach

### 1. Customer segmentation
Customers are classified based on purchase frequency:
- repeat customers = 2 or more orders
- one-time customers = 1 order

---

### 2. Data enrichment
Orders are enriched with:
- product information
- customer segment

---

### 3. Analysis focus
The analysis focuses only on repeat customer transactions.

---

### 4. Revenue calculation
Revenue is calculated per product for repeat customers.

---

### 5. Ranking
Products are ranked by repeat customer revenue, and each product’s share of total repeat revenue is calculated.

---

## SQL

All SQL logic is available in `analysis.sql`.

---

## Key findings

- Revenue from repeat customers is concentrated in a small number of products  
- Repeat customers do not distribute their spending evenly across products  
- Some products contribute disproportionately to customer retention and revenue  

---

## Next steps

- Analyze trends over time (monthly repeat revenue)
- Explore cohort behavior of repeat customers
- Identify products linked to customer retention
