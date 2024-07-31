 SELECT yr, COUNT(*) AS Tornado_count 
FROM [dbo].[tornados]
GROUP BY yr 
ORDER BY yr; 
