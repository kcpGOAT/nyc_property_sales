ALTER TABLE nyc_sales
    ALTER COLUMN
      	land_sq_ft TYPE BIGINT USING (land_sq_ft::BIGINT),
    ALTER COLUMN
      	gross_sq_ft TYPE BIGINT USING (gross_sq_ft::BIGINT),
    ALTER COLUMN
      	sale_price TYPE BIGINT USING (sale_price::BIGINT);
