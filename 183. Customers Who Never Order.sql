Select name as Customers from Customers
where Id NOT IN(Select CustomerId from Orders); 