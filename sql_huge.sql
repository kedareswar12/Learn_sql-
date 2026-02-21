CREATE DATABASE if not exists ZARA;
USE ZARA ;

CREATE TABLE  if not exists products (
    product_id      INT PRIMARY KEY AUTO_INCREMENT,   --
    product_position VARCHAR(50) NOT NULL ,         
    promotion        ENUM('Yes','No'),    
    product_category VARCHAR(100),        
    seasonal         ENUM('Yes','No'),    -- seasonal flag
    sales_volume     INT,                 -- numeric sales volume
    brand            VARCHAR(100),        -- e.g., 'Zara'
    url              TEXT,                -- product link
    sku              VARCHAR(50),         -- stock keeping unit
    name             VARCHAR(255),        -- product name
    description      TEXT,                -- product description
    price            DECIMAL(10,2),       -- price with decimals
    currency         VARCHAR(10),         -- e.g., 'USD'
    scraped_at       DECIMAL(15,5),       -- timestamp-like numeric
    terms            VARCHAR(100),        -- e.g., 'jackets'
    section          VARCHAR(50)          -- e.g., 'MAN'
);
SELECT * FROM products ;

INSERT INTO products (
  product_id, product_position, promotion, product_category, seasonal,
  sales_volume, brand, url, sku, name, description, price, currency,
  scraped_at, terms, section
) VALUES (
  185102, 'Aisle', 'No', 'Clothing', 'No',
  2823, 'Zara', 'https://www.zara.com/us/en/basic-puffer-jacket-p06985450.html',
  '272145190-250-2', 'BASIC PUFFER JACKET',
  'Puffer jacket made of tear-resistant ripstop fabric. High collar and adjustable long sleeves with adhesive straps. Welt pockets at hip. Adjustable hem with side elastics. Front zip closure.',
  19.99, 'USD', 45341.36824, 'jackets', 'MAN'
);
-- Insertion into the mysql in bulk - using data import wizard 




