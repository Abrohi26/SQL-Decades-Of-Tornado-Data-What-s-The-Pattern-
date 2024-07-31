SELECT 
    (yr / 10) * 10 AS Decade, 
    COUNT(*) AS Tornado_Count
FROM 
    dbo.tornados
GROUP BY 
    (yr / 10) * 10 
ORDER BY 
    Decade;

