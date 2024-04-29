		-- 			MY ASSIGNMENT-1		--
        
-- Q1) Identify the primary keys and foreign keys in maven movies db. Discuss the differences.
use mavenmovies;
describe table_name; -- to identify primary, foreign key, and other constraints-
describe actor;
-- Primary key
-- A primary key is a column or set of columns in a table that uniquely identifies each row in that table.
-- It must contain unique values, meaning no two rows in the table can have the same value for the primary key column.

-- Foreign key--
-- A foreign key is a column or set of columns in one table whose values must match the primary key values in another table.
-- It establishes a link or relationship between two tables by referencing the primary key of one table from another table.

-- Q2)List all details of actors
select * from actor;

-- Q3) List all customer information from DB.
select * from customer;

-- Q4) List different countries.
select country from country;

-- Q5) Display all active customers.
select first_name, last_name, active from customer;

-- Q6) List of all rental IDs for customer with ID 1.
select * from rental;
select * from payment;
select customer_id, rental_id from payment where customer_id=1;

-- Q7) Display all the films whose rental duration is greater than 5 .
select * from film where rental_duration>5;

-- Q8) List the total number of films whose replacement cost is greater than $15 and less than $20.
select * from film;
select count(*) from film where replacement_cost>15 and replacement_cost<20; -- or
select count(*) from film where replacement_cost between 15 and 20;

-- Q9) Display the count of unique first names of actors.
select * from actor;
select distinct first_name from actor;
select count(distinct first_name) from actor;

-- Q10) Display the first 10 records from the customer table.
select * from customer limit 10;

-- Q11) Display the first 3 records from the customer table whose first name starts with ‘b’.
select * from customer where first_name like "b%" limit 3;

-- Q12) Display the names of the first 5 movies which are rated as ‘G’.
select * from film;
select title from film where rating = "g" limit 5;

-- Q13) Find all customers whose first name starts with "a".
select * from customer where first_name like "a%";

-- Q14) Find all customers whose first name ends with "a".
select * from customer where first_name like "%a";

-- Q15) Display the list of first 4 cities which start and end with ‘a’ .
select * from city as c where c.city like "a%a" limit 4;

-- Q16) Find all customers whose first name have "NI" in any position.
select first_name from customer where first_name like "%NI%";

-- Q17) Find all customers whose first name have "r" in the second position .
select first_name from customer where first_name like "_r%";

-- Q18) Find all customers whose first name starts with "a" and are at least 5 characters in length.
select first_name, length(first_name) from customer where first_name like "a%" and length(first_name)>=5;

-- Q19) Find all customers whose first name starts with "a" and ends with "o".
select * from customer where first_name like "a%o";

-- Q20) Get the films with pg and pg-13 rating using IN operator.
select * from film where rating in ('pg', 'pg-13');

-- Q21) Get the films with length between 50 to 100 using between operator.
select * from film where length between 50 and 100;

-- Q22) Get the top 50 actors using limit operator.
select * from actor limit 50;

-- Q23) Get the distinct film ids from inventory table.
select * from inventory;
select distinct film_id from inventory;
