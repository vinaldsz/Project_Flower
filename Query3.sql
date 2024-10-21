-- group by and having: All the farmer_ids that have expense greater than 500

SELECT 
    fe.farmer_id,
    SUM(CAST(REPLACE(e.amount, '$', '') AS REAL)) AS total_expense
FROM 
    Farmer_Expense fe
JOIN 
    Expense e ON fe.expense_id = e.expense_id
GROUP BY 
    fe.farmer_id
HAVING 
    total_expense > 500;