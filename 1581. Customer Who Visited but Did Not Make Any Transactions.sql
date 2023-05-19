# Write your MySQL query statement below
SELECT visits.customer_id,
COUNT(visits.visit_id) AS count_no_trans
FROM Visits
LEFT 
JOIN Transactions
ON Visits.visit_id = Transactions.visit_id
WHERE Transactions.amount is null
GROUP BY 1