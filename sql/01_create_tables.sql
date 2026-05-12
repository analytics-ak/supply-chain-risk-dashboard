CREATE DATABASE IF NOT EXISTS supply_chain_db;

USE supply_chain_db;

SHOW DATABASES;

CREATE TABLE `supply_chain` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `Type` VARCHAR(100),
    `Days for shipping (real)` INT,
    `Days for shipment (scheduled)` INT,
    `Benefit per order` DECIMAL(12,2),
    `Sales per customer` DECIMAL(12,2),
    `Delivery Status` VARCHAR(50),
    `Late_delivery_risk` TINYINT,
    `Category Id` INT,
    `Category Name` VARCHAR(150),
    `Customer City` VARCHAR(100),
    `Customer Country` VARCHAR(100),
    `Customer Email` VARCHAR(255),
    `Customer Fname` VARCHAR(100),
    `Customer Id` INT,
    `Customer Lname` VARCHAR(100),
    `Customer Password` VARCHAR(255),
    `Customer Segment` VARCHAR(50),
    `Customer State` VARCHAR(100),
    `Customer Street` VARCHAR(255),
    `Customer Zipcode` VARCHAR(20),
    `Department Id` INT,
    `Department Name` VARCHAR(150),
    `Latitude` DECIMAL(10,7),
    `Longitude` DECIMAL(10,7),
    `Market` VARCHAR(100),
    `Order City` VARCHAR(100),
    `Order Country` VARCHAR(100),
    `Order Customer Id` INT,
    `order date (DateOrders)` DATETIME,
    `Order Id` INT,
    `Order Item Cardprod Id` INT,
    `Order Item Discount` DECIMAL(12,2),
    `Order Item Discount Rate` DECIMAL(8,4),
    `Order Item Id` INT,
    `Order Item Product Price` DECIMAL(12,2),
    `Order Item Profit Ratio` DECIMAL(8,4),
    `Order Item Quantity` INT,
    `Sales` DECIMAL(12,2),
    `Order Item Total` DECIMAL(12,2),
    `Order Profit Per Order` DECIMAL(12,2),
    `Order Region` VARCHAR(100),
    `Order State` VARCHAR(100),
    `Order Status` VARCHAR(50),
    `Order Zipcode` VARCHAR(20),
    `Product Card Id` INT,
    `Product Category Id` INT,
    `Product Description` TEXT,
    `Product Image` TEXT,
    `Product Name` VARCHAR(255),
    `Product Price` DECIMAL(12,2),
    `Product Status` TINYINT,
    `shipping date (DateOrders)` DATETIME,
    `Shipping Mode` VARCHAR(50),

    PRIMARY KEY (`id`),
    KEY `idx_customer_id` (`Customer Id`),
    KEY `idx_order_id` (`Order Id`),
    KEY `idx_order_customer_id` (`Order Customer Id`),
    KEY `idx_order_date` (`order date (DateOrders)`),
    KEY `idx_shipping_date` (`shipping date (DateOrders)`),
    KEY `idx_category_id` (`Category Id`),
    KEY `idx_department_id` (`Department Id`),
    KEY `idx_product_card_id` (`Product Card Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE '.../supply-chain-risk-performance-dashboard/data/raw/DataCoSupplyChainDataset.csv'
INTO TABLE `supply_chain`
CHARACTER SET latin1
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

SELECT COUNT(*) as Total_rows FROM supply_chain;

