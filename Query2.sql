-- subquery:   All the orders placed by Enrica Eckert
SELECT * 
FROM Orders
Where customer_id in (
SELECT customer_id
FROM Customer
where  lower(first_name) = "idell" and lower(last_name) = "gerritsma");

