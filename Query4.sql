-- Complex search : This query retrieves farmers who have incurred expenses over $500, who have more than one product in their inventory, and who are located in a specific state (e.g., "California")

SELECT 
    f.farmer_id,
    f.first_name,
    f.last_name,
    SUM(CAST(REPLACE(e.amount, '$', '') AS REAL)) AS total_expense,
    COUNT(i.product_id) AS product_count
FROM 
    Farmer f
JOIN 
    Farmer_Expense fe ON f.farmer_id = fe.farmer_id
JOIN 
    Expense e ON fe.expense_id = e.expense_id
JOIN 
    Inventory i ON f.farmer_id = i.farmer_id
WHERE 
    f.state = 'California'
GROUP BY 
    f.farmer_id, f.first_name, f.last_name
HAVING 
    SUM(CAST(REPLACE(e.amount, '$', '') AS REAL)) > 500
    AND COUNT(i.product_id) > 1;