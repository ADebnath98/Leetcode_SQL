Select name, population, area 
from world
where (area >= '3000000' OR population >= '25000000')
group by 1,2,3