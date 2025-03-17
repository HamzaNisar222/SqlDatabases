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
