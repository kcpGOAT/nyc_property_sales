SELECT  
    year_built, 
    COUNT(*) AS num_built
    FROM 
        nyc_sales
    WHERE 
        year_built BETWEEN 1900 AND 1999
    GROUP BY
        year_built
ORDER BY num_built DESC;
