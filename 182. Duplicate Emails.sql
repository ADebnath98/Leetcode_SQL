SELECT email from Person 
GROUP BY 1
having count(id) >1