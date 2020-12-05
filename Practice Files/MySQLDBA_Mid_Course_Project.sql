USE mavenmoviesmini;

/*
OBJECTIVE:
	1. Design a better set of tables to store data in the existing schema.
    2. Explain to the owner why the current system is not optimized to scale and how I propose to improve it
    3. Create a new schema with your ideal specifications and populate it with data. 
*/


/* Q1. Take a look at mavenmoviesmini schema. 
What do you notice about it? How many tables are there? 
What does the data represent? What do you think about the current schema? */

SELECT * FROM inventory_non_normalized;

-- There is only 1 table
-- The table has all details of inventory, films and stores in the same table that makes this not efficient
-- We could break this table into 3 - Inventory, Films and Stores or Stores and Addresses

/* Q2. If you want to break out the data from inventory_non_normalized table into multiple tables, how many tables do you think would be ideal?
What would you name those tables?
*/

-- Inventory Table: (inventory_id PK , film_id, store_id)
-- Film Table: (film_id PK, title, description, release_year, rental_rate, rating)
-- Store Table: (store_id PK, store_manager_first_name, store_manager_last_name, store_address, store_city, store_district) 

/* Q3. Based on your answer from Q2, create a new schema with the tables you think will best serve this data set.
You can use SQL code or Workbench's UI tools.
*/

CREATE SCHEMA mavenmoviesmini_normalized;

USE mavenmoviesmini_normalized;

/* Q4. Next, use the data from the original schema to populate the tables in your newly optimized schema.
*/

INSERT INTO inventory (inventory_id, film_id, store_id)
SELECT DISTINCT inventory_id, film_id, store_id
FROM mavenmoviesmini.inventory_non_normalized;

SELECT * FROM inventory;

INSERT INTO film (film_id, title, description, release_year, rental_rate, rating)
SELECT DISTINCT film_id, title, description, release_year, rental_rate, rating
FROM mavenmoviesmini.inventory_non_normalized;

SELECT * FROM film;

INSERT INTO store (store_id, store_manager_first_name, store_manager_last_name, store_address, store_city, store_district)
SELECT DISTINCT store_id, store_manager_first_name, store_manager_last_name, store_address, store_city, store_district
FROM mavenmoviesmini.inventory_non_normalized; 

SELECT * FROM store;

/* Q5. Make sure your new tables have the proper primary keys defined and the applicable foreign keys added.
Add any constraints you think should apply to the data as well (unique, non-Null etc)
*/


/* Q6. Finally after doing all this technical work, write a brief summary of what you have done in a way that your non-technical client can understand
Communicate what you did and why your new schema design is better
*/


