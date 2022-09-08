SELECT 
	borough, 
    ROUND(AVG(gross_sq_ft) + AVG(land_sq_ft), 2) AS total_sq_ft 
    FROM 
    	nyc_sales
    WHERE 
    	year_built >= 2000
    GROUP BY 
    	borough
ORDER BY 
	total_sq_ft DESC;
