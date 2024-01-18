--1. Soru
SELECT DISTINCT replacement_cost FROM film;

--2. Soru
SELECT COUNT(DISTINCT replacement_cost) FROM film;

--3. Soru
SELECT COUNT(*) FROM film
WHERE title LIKE 'T%' AND rating 'G';

--4. Soru
SELECT COUNT(*) FROM country
WHERE country LIKE '_____';

--5. Soru
SELECT COUNT(*) FROM city
WHERE city ILIKE '%r';