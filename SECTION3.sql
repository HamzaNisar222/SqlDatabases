-- SECTION 3 INCLUDES
-- Aggregate function
-- group by theory and Implementation
-- having filtering with group by 

-- 1 Aggregate FUNCTIONS
   -- they take multiple inputs and give a single output 
   --  Examples
   		-- AVG()
		   	-- Returns float value we can use ROUND() TO SPECIFY THE PRESISION AFTER DECIMAL
		-- COUNT()  
			-- IT RETURNS THE NUMBER OF ROWS 
		-- SUM()
		-- MIN()
		-- MAX()
	-- NOTE : They only happen in where clause and having clause 

SELECT * FROM film ;

-- MIN MAX 
SELECT Max(replacement_cost) FROM film;
SELECT Min(replacement_cost) FROM film;
SELECT MAX(replacement_cost),MIN(replacement_cost) FROM film;

-- AVG
SELECT AVG(replacement_cost) FROM film;
SELECT ROUND(AVG(replacement_cost),2) FROM film;

-- 2 GROUP BY 
	-- it is used to group the result by one or more columns 
	-- it is used with aggregate functions 
	-- it is used to group the result by one or more columns
	-- This is the most basic use of group by

SELECT category_column , agg(data_column) FROM table_name GROUP BY category_column;

	-- The group by clause must appear right after the where clause or from clause and before the order by clause 
	-- if you want to order by the result of the group by you can use the order by clause 

SELECT category_column, agg(data_column) FROM table_name GROUP BY category_column ORDER BY agg(data_column) DESC;

	-- the column that we group by should match the column that we use in the select statement 

SELECT category_column, agg(data_column) FROM table_name GROUP BY category_column ORDER BY agg(data_column) DESC;

	-- We can use multiple columns to group by 

SELECT category_column, another_column, agg(data_column) 
FROM table_name 
GROUP BY category_column, another_column 
ORDER BY agg(data_column) DESC;

	-- If we are using order by along with group by we must use the aggregate function we used in the select statement 
	-- When you're using GROUP BY and ORDER BY together, you must reference either the column(s) used in GROUP BY or the aggregate function(s) used in SELECT when using ORDER BY.
	-- If you're ordering by an aggregated result (like SUM(data_column), COUNT(another_column), etc.), you need to reference the aggregate function in the ORDER BY clause.
	-- You don’t necessarily need to include every column from the GROUP BY in the ORDER BY clause, but if you want to sort based on an aggregated value, you should use that aggregation in the ORDER BY clause.


-- Part one group by Ends Here 

-- Part two group by Exercise 
	-- These are the examples of the group by clause
	-- Selects everything from the payment table
Select * from payment
	-- Selects the customer_id and the count of the amount from the payment table and orders the result by the count of the amount in descending order
	-- This is the example of the group by clause with the count function
	-- Question answered : How many payments did each customer make?
Select customer_id , Count(amount) from payment group by customer_id order by count(amount) DESC;
	-- Selects the customer_id and the staff_id and the sum of the amount from the payment table and orders the result by the customer_id
	-- This is the example of the group by clause with the sum function
	-- Question answered : How much did each staff member process?
Select customer_id,staff_id,sum(amount) from payment group by staff_id,customer_id order by customer_id;
	-- Selects the date and the sum of the amount from the payment table and orders the result by the sum of the amount in descending order	
	-- This is the example of the group by clause with the sum function
	-- Question answered : How much was processed for each day?
Select date(payment_date) ,sum(amount)from payment group by date(payment_date) order by sum(amount) desc;

-- Part three group by Exercise 
	-- Problem 1: We want to give a bonus to the staff member who handled the most payments. How many payments did each staff member handle and who gets the bonus?
	select staff_id,count(payment_id) from payment group by staff_id order by count(payment_id) Desc;
	-- Problem 2: We want to know average replacement cost of movies by rating 
	select rating , avg(replacement_cost) from film group by rating order by avg(replacement_cost);
	--problem 3: we want give away cupons to the customers who have spent the most money. how much has each customer spent and who gets the cupon?
	select customer_id, sum(amount) from payment group by customer_id order by sum(amount) desc limit 5;