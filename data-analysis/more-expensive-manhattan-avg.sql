WITH manhattan_avg AS (
    SELECT 
        AVG(sale_price)
        FROM
            nyc_sales
        WHERE 
            sale_price > 0 AND
            borough = 'Manhattan'
), 
borough_totals AS (
    SELECT
        borough, 
        COUNT(*) AS total
        FROM 
            nyc_sales
        GROUP BY
            borough
), 
borough_greater AS (
    SELECT
        borough, 
        COUNT(*) AS num_greater
        FROM 
            nyc_sales
        WHERE 
            sale_price > (
                SELECT *
                    FROM
                        manhattan_avg
            ) AND
            borough != 'Manhattan'
        GROUP BY
            borough
)
SELECT 
    borough_totals.borough, 
    num_greater, 
    total
    FROM 
        borough_totals
    INNER JOIN
        borough_greater ON 
            borough_totals.borough = borough_greater.borough;
