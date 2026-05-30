# Zeltech E-commerce Order Analysis Customer Insights
SQL analysis of customer behavior, order trends, and product performance

<br/>
An e-commerce company, Zeltech,  wants to understand: 
 <br/> 
<br/> Which customers are most valuable? (total spent)
<br/> Who's a repeat buyer? (order frequency)
<br/> What's the average order value by product category? 
<br/>  Which customers haven't ordered in 30+ days? (churn risk)
 <br/> <br/>
Covers 

 
<br/> Structuring multi-JOIN queries
<br/> GROUP BY + aggregations (SUM, COUNT, AVG)
<br/> Date filtering & calculations
<br/> Subqueries to solve complex problems
<br/> Clean SQL organization
 <br/>DuckDB

## Key Findings
- **Top Customer: Carol White
- **Repeat Customers: Alice Johnson, Bob Smith  and Carol White
- **Top Category: Electronics with 11 items sold 
- **Churn Risk Customers: David Brown, Alice Johnson , Emma Davis - Its been long since they bought from the store 

## Database Schema
- customers: customer_id, customer_name, email, registration_date, country
- orders:order_id, customer_id, order_date, total_amount
- order_items: order_item_id, order_id, product_id, product_name, category, quantity, unit_price
- products: product_id, product_name, category, price


How to check for customers who have ordered more than three times but havent ordered for the last 30 days - customer churning : 
WHERE COUNT(o.order_id) > 3 AND MAX(o.order_date) < CURRENT_DATE - INTERVAL '30 days'

