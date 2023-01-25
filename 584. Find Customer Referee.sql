SELECT name from Customer
where referee_id <> 2 or referee_id is NULL
order by name asc