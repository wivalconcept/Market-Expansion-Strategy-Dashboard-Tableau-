/* ============================================================
   Project: Market Expansion Strategy – Canada
   Purpose: SQL data validation and exploratory analysis
   Author: Valentine Chukwunwike
   ============================================================ */

/* ------------------------------------------------------------
   1. ROW COUNT CHECK
   ------------------------------------------------------------
   Purpose:
   - Confirm total number of records
   - Ensure no data loss during ingestion
*/
SELECT 
    COUNT(*) AS total_rows
FROM sales;


/* ------------------------------------------------------------
   2. NULL VALUE CHECK (CRITICAL FIELDS)
   ------------------------------------------------------------
   Purpose:
   - Validate completeness of key analytical dimensions
   - Country, Product Category, Channel, Revenue
*/
SELECT
    COUNT(*) AS total_rows,
    SUM(CASE WHEN country IS NULL THEN 1 ELSE 0 END) AS null_country,
    SUM(CASE WHEN product_category IS NULL THEN 1 ELSE 0 END) AS null_product_category,
    SUM(CASE WHEN channel IS NULL THEN 1 ELSE 0 END) AS null_channel,
    SUM(CASE WHEN revenue IS NULL THEN 1 ELSE 0 END) AS null_revenue
FROM sales;


/* ------------------------------------------------------------
   3. NEGATIVE REVENUE CHECK
   ------------------------------------------------------------
   Purpose:
   - Ensure revenue values are logically valid
*/
SELECT
    COUNT(*) AS negative_revenue_rows
FROM sales
WHERE revenue < 0;


/* ------------------------------------------------------------
   4. REVENUE BY COUNTRY (PROXY MARKET VALIDATION)
   ------------------------------------------------------------
   Purpose:
   - Identify strongest existing markets
   - Validate USA, Germany, France as proxy markets for Canada
*/
SELECT
    country,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY country
ORDER BY total_revenue DESC;


/* ------------------------------------------------------------
   5. REVENUE BY SALES CHANNEL
   ------------------------------------------------------------
   Purpose:
   - Compare Online vs Physical Store performance
   - Support channel strategy recommendation
*/
SELECT
    channel,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY channel
ORDER BY total_revenue DESC;


/* ------------------------------------------------------------
   6. PRODUCT CATEGORY PERFORMANCE
   ------------------------------------------------------------
   Purpose:
   - Identify top-performing product categories
   - Support product selection for expansion
*/
SELECT
    product_category,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY product_category
ORDER BY total_revenue DESC;


/* ------------------------------------------------------------
   7. MONTHLY SEASONALITY ANALYSIS
   ------------------------------------------------------------
   Purpose:
   - Identify peak demand months
   - Support optimal launch timing decision
*/
SELECT
    month,
    SUM(revenue) AS monthly_revenue
FROM sales
GROUP BY month
ORDER BY 
    CASE month
        WHEN 'January' THEN 1
        WHEN 'February' THEN 2
        WHEN 'March' THEN 3
        WHEN 'April' THEN 4
        WHEN 'May' THEN 5
        WHEN 'June' THEN 6
        WHEN 'July' THEN 7
        WHEN 'August' THEN 8
        WHEN 'September' THEN 9
        WHEN 'October' THEN 10
        WHEN 'November' THEN 11
        WHEN 'December' THEN 12
    END;


/* ------------------------------------------------------------
   8. MONTHLY REVENUE BY CHANNEL
   ------------------------------------------------------------
   Purpose:
   - Validate that online channel dominance holds across months
*/
SELECT
    month,
    channel,
    SUM(revenue) AS monthly_revenue
FROM sales
GROUP BY month, channel
ORDER BY 
    CASE month
        WHEN 'January' THEN 1
        WHEN 'February' THEN 2
        WHEN 'March' THEN 3
        WHEN 'April' THEN 4
        WHEN 'May' THEN 5
        WHEN 'June' THEN 6
        WHEN 'July' THEN 7
        WHEN 'August' THEN 8
        WHEN 'September' THEN 9
        WHEN 'October' THEN 10
        WHEN 'November' THEN 11
        WHEN 'December' THEN 12
    END;


/* ------------------------------------------------------------
   9. BIKE CATEGORY DEEP DIVE
   ------------------------------------------------------------
   Purpose:
   - Validate Bikes as expansion-ready category
   - Compare performance across countries and channels
*/
SELECT
    country,
    channel,
    SUM(revenue) AS bike_revenue
FROM sales
WHERE product_category = 'Bikes'
GROUP BY country, channel
ORDER BY bike_revenue DESC;


/* ------------------------------------------------------------
   10. DUPLICATE RECORD CHECK (OPTIONAL)
   ------------------------------------------------------------
   Purpose:
   - Identify potential duplicate transactions
   - Adjust keys if order_id/product_id not available
*/
SELECT
    COUNT(*) - COUNT(DISTINCT CONCAT(order_id, product_id)) AS duplicate_rows
FROM sales;
