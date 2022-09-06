ALTER TABLE 
    nyc_sales
	ALTER COLUMN borough TYPE VARCHAR(255);

UPDATE 
	nyc_sales
    SET borough = (
      	CASE 
      		WHEN borough = '1'
      			THEN 'Manhattan'
      		WHEN borough = '2'
      			THEN 'Bronx'
      		WHEN borough = '3'
      			THEN 'Brooklyn'
      		WHEN borough = '4'
      			THEN 'Queens'
      		WHEN borough = '5'
      			THEN 'Staten Island'
      		ELSE borough
      	END);
