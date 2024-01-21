-- 1.Soru film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
SELECT COUNT(*) AS FilmSayisi
FROM film
WHERE length > (SELECT AVG(length) FROM film);

-- 2. Soru film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT COUNT(*) AS FilmSayisi
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

-- 3. Soru film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
SELECT *
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

-- 4. Soru payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
SELECT customer_id, COUNT(*) AS ToplamAlisverisSayisi
FROM payment
GROUP BY customer_id
ORDER BY ToplamAlisverisSayisi DESC;
