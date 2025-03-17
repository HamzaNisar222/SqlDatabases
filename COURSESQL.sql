--Lecture 1 -> Selects records column wise and as a whole from a table 
SELECT * FROM film;
SELECT actor_id,first_name,last_name From actor;
SELECT * FROM customer;
SELECT first_name,last_name,email FROM customer;

--Lecture 2 -> Distinct Selects unique values in a column 
SELECT DISTINCT(rating) From film;

-- Lecture 3 -> Count Counts the rows and columns 
SELECT * FROM payment;
SELECT COUNT(*) FROM payment; -- we can also use column names to count rows 
SELECT COUNT(DISTINCT(amount)) FROM payment; -- Count How number of unique payments we recieve

-- Lecture 4 -> Where Statements and functions 
--Allows us to apply conditions on columns for the rows to be returned 
-- operators > , < , = ,<= , >= , != , <> , AND ,  OR , NOT 

SELECT * FROM customer 
WHERE first_name = 'Jared';

SELECT COUNT (*) FROM film 
WHERE rental_rate > 4 
AND replacement_cost >= 19.99
AND rating = 'R';

SELECT * FROM film 
WHERE rental_rate > 4 
AND replacement_cost >= 19.99
AND rating = 'R';

SELECT * FROM film 
WHERE rating = 'R' OR rating = 'PG-13';

SELECT * FROM film 
WHERE rating != 'R';

--Challenge 
SELECT email FROM customer 
WHERE first_name = 'Nancy'
AND last_name = 'Thomas' ;

SELECT description FROM film 
WHERE title = 'Outlaw Hanky';

SELECT phone FROM address
WHERE address = '259 Ipoh Drive';

-- Lecture 5 --> ORDER BY 
SELECT * FROM customer 
ORDER BY first_name DESC; -- We can specify the order by default its ascending

SELECT first_name,last_name,store_id FROM customer
ORDER BY store_id DESC,first_name ASC;


-- Lecture 6 --> LIMIT. 
SELECT * FROM payment 
WHERE amount != 0
ORDER BY payment_date DESC
LIMIT 5; -- LIMIT THE NUMBER OF RECORDS

-- Challenge for lec 4 and 5

SELECT customer_id FROM payment
ORDER BY payment_date
LIMIT 10;

SELECT title , length FROM film 
ORDER BY (length) ASC
LIMIT 10;-- we should avoid column names same with function names 

SELECT COUNT (*) FROM film 
WHERE length <= 50;

