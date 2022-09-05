DELETE FROM nyc_sales
    WHERE 
        land_sq_ft = ' -  ' OR
        gross_sq_ft = ' -  ' OR
        sale_price = ' -  ';
