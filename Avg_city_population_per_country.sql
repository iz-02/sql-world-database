-- countries where the average city population > 1000000

select country.name, avg(city.population) as average_city_pop
from country
JOIN city ON city.countrycode = country.code
group by country.name
having avg(city.population) > 1000000;  