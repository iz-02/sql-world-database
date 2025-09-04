


-- a list of the biggest cities in each country

SELECT c.name AS country, ci.name AS city, ci.population
FROM country c
JOIN city ci ON ci.countrycode = c.code
WHERE ci.population = (
    SELECT MAX(ci2.population)
    FROM city ci2
    WHERE ci2.countrycode = c.code
);