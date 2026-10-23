-- 1. Total Revenue, COGS, Gross Profit & Margin % by Category
WITH FinancialMetrics AS (
    SELECT 
        p.category,
        p.sub_category,
        SUM(o.sales_amount) AS total_revenue,
        SUM(o.cost_amount) AS total_cost,
        SUM(o.sales_amount - o.cost_amount) AS gross_profit,
        ROUND(
            (SUM(o.sales_amount - o.cost_amount) / NULLIF(SUM(o.sales_amount), 0)) * 100, 
            2
        ) AS profit_margin_pct
    FROM orders o
    JOIN products p ON o.product_id = p.product_id
    GROUP BY p.category, p.sub_category
)
SELECT 
    category,
    sub_category,
    total_revenue,
    gross_profit,
    profit_margin_pct
FROM FinancialMetrics
ORDER BY profit_margin_pct ASC;

-- 2. Impact of High Discounts on Profitability
SELECT 
    CASE 
        WHEN discount = 0 THEN '0% (No Discount)'
        WHEN discount <= 0.10 THEN '1-10%'
        WHEN discount <= 0.20 THEN '11-20%'
        WHEN discount <= 0.30 THEN '21-30%'
        ELSE '30%+'
    END AS discount_bracket,
    COUNT(order_id) AS total_orders,
    SUM(sales_amount) AS total_revenue,
    SUM(sales_amount - cost_amount) AS total_profit,
    ROUND(AVG((sales_amount - cost_amount) / NULLIF(sales_amount, 0)) * 100, 2) AS avg_margin_pct
FROM orders
GROUP BY 1
ORDER BY total_profit ASC;
