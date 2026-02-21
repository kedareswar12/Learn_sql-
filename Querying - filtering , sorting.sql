use zara;
select * from products ;

SELECT product_id AS PID , promotion  AS pr , url, sku AS s FROM products;
 
SELECT name , price AS Price_Value FROM products ORDER BY PRICE DESC ;

SELECT * FROM products LIMIT 5;
SELECT * FROM products LIMIT 5 offset 5;


--  Arthimatic operation 
SELECT Name , price , price * .90 AS discounted_price FROM products;

SELECT brand , name, concat(name, '- ', brand ) as brand_and_name FROM products ;


-- WHERE CLAUSE 
SELECT * FROM products WHERE promotion = 'Yes';

-- Group BY
SELECT product_category, count(*) FROM products GROUP BY product_category;
 
SELECT * FROM products WHERE price BETWEEN 0 and 1000;

SELECT promotion , count(*) FROM products GROUP BY promotion;


SELECT section, sum(sales_volume) as total_sales FROM products GROUP BY section having total_sales > 100000 ;