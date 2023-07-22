SELECT DISTINCT s1.*
  FROM Stadium s1
  JOIN Stadium s2
  JOIN Stadium s3
    ON (s1.id = s2.id - 1 AND s1.id = s3.id - 2)
    OR (s1.id = s2.id + 1 AND s1.id = s3.id - 1)
    OR (s1.id = s2.id + 1 AND s1.id = s3.id + 2)
 WHERE s1.people >= 100 
   AND s2.people >= 100
   AND s3.people >= 100
 ORDER BY visit_date 