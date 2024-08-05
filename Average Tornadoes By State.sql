SELECT TOP 40 ST, tornado_count, total_years, tornado_count / total_years AS average_tornadoes 
FROM ( 
SELECT st, COUNT(*) AS Tornado_count 
FROM [dbo].[tornados]
GROUP BY st )
AS state_counts 
CROSS JOIN (
SELECT COUNT(DISTINCT yr) AS total_years 
FROM [dbo].[tornados] ) 
AS year_counts 
ORDER BY average_tornadoes DESC; 