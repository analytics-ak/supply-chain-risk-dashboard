USE supply_chain_db;

SELECT
    COUNT(*) AS total_rows,
    SUM(CASE WHEN `Order Id` IS NULL THEN 1 ELSE 0 END) AS null_order_id,
    SUM(CASE WHEN `Delivery Status` IS NULL THEN 1 ELSE 0 END) AS null_delivery_status,
    SUM(CASE WHEN `Sales` IS NULL THEN 1 ELSE 0 END) AS null_sales,
    SUM(CASE WHEN `Order Profit Per Order` IS NULL THEN 1 ELSE 0 END) AS null_profit
FROM supply_chain;

SELECT DISTINCT `Delivery Status`, COUNT(*) as count
FROM supply_chain
GROUP BY `Delivery Status`
ORDER BY count DESC;

SELECT DISTINCT `Shipping Mode`, COUNT(*) as count
FROM supply_chain
GROUP BY `Shipping Mode`
ORDER BY count DESC;

SELECT DISTINCT `Delivery Status`
FROM supply_chain
LIMIT 10;

SELECT DISTINCT `Shipping Mode`, COUNT(*) as count
FROM supply_chain
GROUP BY `Shipping Mode`
ORDER BY count DESC;