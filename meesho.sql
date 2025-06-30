SELECT state, COUNT(*) AS total_orders
FROM meesho
GROUP BY state
ORDER BY total_orders DESC;
