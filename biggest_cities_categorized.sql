-- a list of countries and their biggest cities categorized 

select country.name as country, city.name as city, city.population as city_pop,
CASE
		WHEN city.population < 1000000 THEN "Small"
        ELSE "Large"
END as city_category
from country
JOIN city ON city.countrycode = country.code
WHERE city.population = 
					( SELECT max(city.population)
					  FROM city
                      WHERE country.code = city.countrycode)
order by city_pop DESC;