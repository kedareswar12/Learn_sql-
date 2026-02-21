USE zara ;

SELECT * FROM products;
DELETE FROM products WHERE sales_volume < 1000;

--  truncate command 
TRUNCATE table products ;
-- if you do this it will erase the complete data 

SELECT * FROM products;
--  DELETE table products;



