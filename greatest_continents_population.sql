-- continents with total population > 500000000

select continent, sum(population) as population
from country
group by continent
having sum(population)> 500000000;