-- Expense incured by farmers in the month of Oct 2023 along with the category the expense belongs to (3+ joins)
SELECT a.farmer_id, CONCAT(a.first_name,' ',a.last_name) Farmer_Name, c.date,d.category_name
FROM farmer  a 
JOIN Farmer_Expense b ON a.farmer_id=b.farmer_id
JOIN Expense c ON b.expense_id = c.expense_id
JOIN Expense_Category d ON c.expense_category_id=d.expense_category_id
where strftime("%Y-%m","date") = "2023-10"
order by a.farmer_id asc
;