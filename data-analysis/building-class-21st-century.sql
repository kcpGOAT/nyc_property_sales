SELECT
	building_class_category AS class, 
	COUNT(building_class_category) AS num_built
    FROM 
    	nyc_sales
    WHERE 
    	year_built >= 2000 AND
        sale_price > 0
    GROUP BY 
    	building_class_category
ORDER BY 
	num_built DESC;
