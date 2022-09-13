WITH borough_nb_raw AS (
	SELECT 
     	borough, 
     	neighborhood, 
     	ROUND(AVG(sale_price), 2) AS sale_price
     	FROM 
     		nyc_sales
        WHERE 
        	year_built > 2000 AND
            sale_price > 0
     	GROUP BY 
     		borough, 
     		neighborhood
),

borough_nb_ranks AS (
    SELECT 
        borough, 
        neighborhood,
        sale_price, 
        RANK() OVER 
            (PARTITION BY borough
             ORDER BY sale_price DESC)
        FROM 
            borough_nb_raw
)

SELECT * 
	FROM 
    	borough_nb_ranks
    WHERE 
    	rank <= 5;
