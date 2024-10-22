-- subquery:   All the orders placed by Enrica Eckert
SELECT * 
FROM Orders
Where customer_id in (
SELECT customer_id
FROM Customer
<<<<<<< HEAD
where  lower(first_name) = "enrica" and lower(last_name) = "eckert");
=======
where  lower(first_name) = "idell" and lower(last_name) = "gerritsma");
>>>>>>> ba5d891 (Modified diagrams, DDL, insert and query 2,4)
