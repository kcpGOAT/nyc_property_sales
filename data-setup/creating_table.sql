CREATE TABLE nyc_sales (
	id SERIAL, 
  	borough INT, 
  	neighborhood VARCHAR(255), 
  	building_class_category VARCHAR(255), 
  	tax_class_present VARCHAR(255), 
  	block INT, 
  	lot INT, 
  	easement VARCHAR(255), 
  	building_class_present VARCHAR(255), 
  	address VARCHAR(255), 
  	apartment_number VARCHAR(255), 
  	zipcode INT, 
  	num_residential INT, 
  	num_commercial INT, 
  	num_total INT, 
  	land_sq_ft VARCHAR(255), 
  	gross_sq_ft VARCHAR(255), 
  	year_built INT, 
  	tax_class_initial VARCHAR(255), 
  	building_class_initial VARCHAR(255), 
  	sale_price VARCHAR(255), 
  	sale_date DATE
);