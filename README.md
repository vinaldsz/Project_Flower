# Project_Flower
Includes requirements and full end to end implementation of small business application.  
This repository is for BUILD: Project I / Design & Implement a Relational Database.

How to Run:

Describe the requirements of the problem with a simple document that lists the rules of the database in the problem domain language. Then from that list of rules and notes highlight the list of possible nouns and actions you identified.  
Requirements.pdf

Analyze the problem and create a conceptual model in UML using a tool of your choice (e.g., LucidChart, Enterprise Architect, ArgoUML, Visual Paradigm, ERwin, TOAD) as discussed during class and provided in the references and resources below. Additional requirements and clarifications will be provided in the #general channel on Slack. The diagram must contain at least three classes, at least one to many relationship and one many to many. All relationships, except generalization, must have full multiplicity constraints and labeled as appropriate. Classes must have proper names, descriptions, and attributes with domain types. Try to avoid building a model with more than 10 entities.  
UML_Class_Diagram.JPG

From the Conceptual Model, construct a logical data model expressed as an ERD using a language of your choice (other than UML) and a tool of your choice. The logical data model may not have any many-to-many relationships, so introduce association entities as needed.  
ERD_Crow_Foot.JPG

From the logical model, define a relational schema in at least BCNF. Using functional dependencies, show that the schema in in at least BCNF.  
BCNF.pdf

Create a set of SQL data definition statements for the above model and realize that schema in SQLite3 by executing the script from the SQLite3, the console or Node. You can use DB Browser to generate these statements.  

flower.db  
flower_DDL.sql

Populate the tables with test data.  
Insert_Queries.sql

Define and execute at least five queries that show your database. At least one query must contain a join of at least three tables, one must contain a subquery, one must be a group by with a having clause, and one must contain a complex search criterion (more than one expression with logical connectors).  

Query1.sql - This query retrieves expense incured by farmers in the month of Oct 2023 along with the category the expense belongs to.

Query2.sql - TAll the orders placed by Enrica Eckert.

Query3.sql - All the farmer_ids that have expense greater than 500.

Query4.sql - This query retrieves farmers who have incurred expenses over $500, who have more than one product in their inventory, and who are located in a specific state (e.g., "California").

Query5.sql - This query retrieves total Expenses by Category.
