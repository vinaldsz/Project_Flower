--Total Expenses by Category
SELECT 
    ec.category_name,
    SUM(CAST(REPLACE(e.amount, '$', '') AS REAL)) AS total_expense
FROM 
    Expense_Category ec
LEFT JOIN 
    Expense e ON ec.expense_category_id = e.expense_category_id
GROUP BY 
    ec.expense_category_id, ec.category_name;