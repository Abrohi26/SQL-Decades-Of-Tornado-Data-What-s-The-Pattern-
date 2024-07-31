SELECT 
    year,
    month,
    Injuries_This_Month,
    Fatalties_This_Month,
    mag,
    OM AS Tornado_id  -- Include om in the outer query
FROM (
    SELECT 
        YEAR(date) AS Year,
        DATENAME(MONTH, DATE) AS month,
        SUM(CAST(Inj AS INT)) AS Injuries_This_Month,
        SUM(CAST(Fat AS INT)) AS Fatalties_This_Month,
        mag,  -- Include mag in the subquery
        MAX(mag) OVER (PARTITION BY YEAR(date), DATENAME(MONTH, DATE) ORDER BY mag DESC) AS max_mag,
        OM  -- Include OM in the subquery
    FROM [dbo].[tornados]
    GROUP BY 
        YEAR(date), DATENAME(MONTH, DATE), mag, OM  -- Group by year, month, and mag
) AS grouped_data
ORDER BY 
    Fatalties_This_Month DESC, Injuries_This_Month, year, month, max_mag, OM;