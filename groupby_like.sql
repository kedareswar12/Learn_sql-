CREATE Database if not exists zara ;
use zara;

CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,         -- Unique identifier for each record
    product_id VARCHAR(50) NOT NULL,           -- Product ID from source
    product_position VARCHAR(20) 		 ,     -- Position in store (Aisle, End-cap)
    promotion ENUM('Yes', 'No') NOT NULL,      -- Promotion status
    product_category VARCHAR(50) 		,      -- Category (e.g., Clothing)
    -- enum data type only accept the one value from the fixed list like any one of the yes or no --
    
    seasonal ENUM('Yes', 'No') NOT NULL,       -- Seasonal indicator 
    
    sales_volume INT NOT NULL,                 -- Sales volume
    brand VARCHAR(50) NOT NULL,                -- Brand name
    url VARCHAR(255) NOT NULL,                 -- Product URL
    sku VARCHAR(50) NOT NULL,                  -- SKU number
    name VARCHAR(255) NOT NULL,                -- Product name
    description TEXT NOT NULL,                 -- Product description
    price DECIMAL(10,2) NOT NULL,              -- Price
    currency VARCHAR(10) NOT NULL,             -- Currency code (e.g., USD)
    scraped_at DATETIME NOT NULL,              -- Timestamp of data scrape
    terms VARCHAR(50) NOT NULL,                -- Terms (e.g., jackets)
    section VARCHAR(50) NOT NULL               -- Section (e.g., MAN)
);

SELECT * FROM products;
SELECT price , name FROM products;id


SELECT price AS RETAIL_PRICE , name AS NAME FROM products;

SELECT product_id, promotion FROM products WHERE promotion = 'Yes';
SELECT * FROM products WHERE (promotion = 'No');

-- like clause --

select * from products WHERE name LIKE '%jack%';
select * from products WHERE description  LIKE '%Slim fit%';

SELECT * from products WHERE section in ('MAN,','WOMAN');
SELECT * from products WHERE terms in ('shoes','jeans');

SELECT COUNT(*) FROM products;
SELECT avg (price) FROM products;
SELECT MIN(PRICE) FROM products;
SELECT MAX(PRICE) FROM products;


-- order by clause in 
SELECT * FROM products ORDER BY price ASC;
SELECT * FROM products ORDER BY price DESC;

SELECT terms , count(*) FROM products GROUP BY terms;

-- update 
SELECT * FROM products WHERE price > 100 ;
UPDATE  products SET promotion = 'yes' WHERE price > 100;
