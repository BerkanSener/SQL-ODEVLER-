--1. Soru
select * from country
where country like 'A%a';

--2. Soru
SELECT * FROM country
WHERE length(country) >=6 AND country LIKE '%n';

--3. Soru
SELECT title FROM film
WHERE title ILIKE '%t%';

--4. Soru
SELECT * FROM film
WHERE title LIKE 'C%' AND length > 90 AND renral_rate0= 2.99;