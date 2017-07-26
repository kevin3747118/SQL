WITH CTE AS(
   SELECT column1, 
       RN = ROW_NUMBER() OVER(PARTITION BY column1 ORDER BY column1)
   from table
)
DELETE FROM CTE WHERE RN > 1