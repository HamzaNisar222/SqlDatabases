-- Done with 22 lecture Including challenges 
-- LECTURE-23 BETWEEN 
SELECT * FROM payment
WHERE amount BETWEEN 8 AND 9;

SELECT * FROM payment WHERE payment_date 
BETWEEN '2007-02-1' and '2007-02-15'
ORDER BY payment_id DESC;

SELECT * FROM payment WHERE payment_date 
NOT BETWEEN '2007-02-1' and '2007-02-14';

-- Lecture-24 IN. and NOT IN 

-- ON INT VALUES 
SELECT DISTINCT(amount) FROM payment ORDER BY amount ASC;
SELECT * FROM payment WHERE amount IN (0.00,1,98,0.99,1.99) ORDER BY payment_date ASC;
SELECT * FROM payment WHERE amount NOT IN (0.00,1,98,0.99,1.99) ORDER BY payment_date ASC;

-- ON STRING VALUES 
SELECT * FROM customer ;
SELECT * FROM customer WHERE first_name IN ('Jhon','Jake','Julie') ORDER BY create_date ASC;
SELECT * FROM customer WHERE first_name NOT IN ('Jhon','Jake','Julie') ORDER BY create_date ASC;

-- Lecture-25 LIKE AND ILIKE
-- Used to match a specific pattern in string data with use of wild card characters 
-- 1 %   2 _ such mails having gmail.com
-- like is case sensitive ILIKE is not case sensitive according to The expression we are giving 
-- A% starts with A
-- %a ends with small a

SELECT * FROM customer WHERE first_name LIKE 'J%'
AND last_name NOT ILIKE '%e';
SELECT * FROM customer WHERE first_name LIKE '%ama%';
SELECT * FROM customer WHERE first_name LIKE '%her%';
SELECT * FROM customer WHERE first_name LIKE '_her%';
SELECT * FROM customer WHERE first_name LIKE '_am___';
