/* 
THE SITUATION: 
	A new client, BUBS GLOVER, the owner of BUBS BIGTIME BABY BOOTIES has reached out to me for help in building his business a 
    database from the ground up.
THE OBJECTIVE:
	Use your MySQL Database Administration Skills to:
    Design a database from scratch, which will capture information on Bubs' customers, thepurchases they make, his products and 
    his employees.
*/


/* Q1: Bubs wants you to track information on his customers (first name, last name and email), his employees (first name, last name,
start date, position held), his products, and the purchases customers make (which customer, when it was purchased, for how much money
etc). Think about how many tables you should create. Which data goes in which tables? How should the tables relate to one another?
*/
-- table 1: customers (customer_id, first_name, last_name, email)
-- table 2: employees (employee_id, first_name, last_name, start_date, position)
-- table 3: products (product_id, product_name, launch_date)
-- table 4: customer_purchases (customer_purchase_id, customer_id, product_id, purchased_at, amount_usd)



/* Q2: Given the database design you came up with, use Workbench to create an EER diagram of the database. 
Include things like primary keys and foreign keys and anything else you think you should have in the tables. 
Make sure to use reasonable data types for each column.
*/




/* Q3: Create a schema called bubsbooties. Within that schema, create the tables that you have diagrammed out. Make sure they relate
to each other and that they have the same reasonable data types that you selected previously.
*/






/* Q4: Add any constraints thay you think your table's columns should have. Think through which columns need to be unique, 
which ones are allowed to have NULL values etc. 
*/  

-- customer_id is unique


/* Q5: Insert atleast 3 records of data into each table. The exact values do not matter so feel free to make them up.
*/

SELECT * FROM customers;

INSERT INTO customers VALUES
(1,'Kathleen','McPauler','kmcpauler@abc.com'),
(2,'Landon','Oliver','loliver@abc.com'),
(3,'Ella','Grace','egrace@abc.com')
;

SELECT * FROM employees;

INSERT INTO employees VALUES
(1,'Andy','Brodick', 'Manager','2019-06-01'),
(2,'Chance','Dell','Cashier','2019-09-01'),
(3,'Elsa','Farrow','Salesman','2019-07-01')
; 

SELECT * FROM products;

INSERT INTO products VALUES
(1,'mini_booties','2019-01-01'),
(2,'medium_booties','2019-01-01'),
(3,'big_booties','2019-01-01')
;

SELECT * FROM customer_purchases;

INSERT INTO customer_purchases VALUES
(1,1,3,2,'2019-09-01',39.99),
(2,2,2,3,'2019-09-02',49.99),
(3,3,1,1,'2019-09-03',29.99)
;
