SELECT first_name, last_name FROM sakila.actor
WHERE first_name = "SCARLETT";

SELECT count(inventory_id) as Number_of_avaible FROM sakila.rental;
SELECT count(distinct(title)) as Unique_title FROM sakila.film;

SELECT 
   min(length) as min_duration, 
   max(length) as max_duration
FROM sakila.film;

SELECT
   avg(length), FLOOR((avg(length)) / 60) as 'hours',MOD((avg(length)), 60) as 'minutes'
FROM sakila.film;

SELECT count(distinct(last_name)) FROM sakila.actor;

SELECT DATEDIFF(MAX(rental_date), MIN(rental_date)) AS DateDifference
FROM sakila.rental;

SELECT rental_date, MONTH(rental_date) AS rental_month, DAYNAME(rental_date) AS rental_weekday
FROM sakila.rental
LIMIT 20;

ALTER TABLE rental
ADD COLUMN day_type VARCHAR(10);
UPDATE rental
SET day_type = CASE
    WHEN DAYOFWEEK(rental_date) IN (1, 7) THEN 'weekend'
    ELSE 'workday'
    END;
 
SELECT title,release_year FROM sakila.film;
 
SELECT title FROM sakila.film
WHERE title LIKE '%ARMAGEDDON%';

SELECT title FROM sakila.film
WHERE title LIKE '%APOLLO';

SELECT title,length FROM sakila.film
ORDER BY length DESC
LIMIT 10;

SELECT count(special_features) FROM sakila.film
WHERE special_features LIKE '%Behind the Scenes%' ;













