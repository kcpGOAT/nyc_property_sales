SELECT
    zipcode, 
    borough,
    COUNT(zipcode) AS count
    FROM 
        nyc_sales
    WHERE 
        year_built >= 2000
    GROUP BY
        zipcode, borough
ORDER BY 
    count DESC;
