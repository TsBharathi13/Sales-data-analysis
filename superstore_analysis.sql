-- 1. Count No. of rows - total orders in dataset
SELECT COUNT(*) FROM superstore_db.superstore;   

-- 2. See table columns and data types 
DESCRIBE superstore_db.superstore;

-- 3. Total Sales and Profit (convert text to numbers using CAST)
SELECT 
  SUM(CAST(Sales AS DECIMAL(10,2))) AS total_sales,
  SUM(CAST(Profit AS DECIMAL(10,2))) AS total_profit
FROM superstore_db.superstore;


-- 4. Sales by Category
SELECT Category, SUM(CAST(Sales AS DECIMAL(10,2))) AS sales      -- sum calculate total sales 
FROM superstore_db.superstore
GROUP BY Category    -- groups data by categories
ORDER BY sales DESC;    -- it shows highest first 


-- 5. Top 5 profitable Sub-Categories
SELECT Sub_Category, SUM(CAST(Profit AS DECIMAL(10,2))) AS profit
FROM superstore_db.superstore
GROUP BY Sub_Category
ORDER BY profit DESC
LIMIT 5;   -- only top 5 highest profit



-- 6. Loss-making Sub-Categories
SELECT Sub_Category, SUM(CAST(Profit AS DECIMAL(10,2))) AS profit
FROM superstore_db.superstore
GROUP BY Sub_Category
ORDER BY profit ASC
LIMIT 5;




-- 7. Sales by Region
SELECT Region, SUM(CAST(Sales AS DECIMAL(10,2))) AS sales,
SUM(CAST(Profit AS DECIMAL(10,2))) AS profit
FROM superstore_db.superstore
GROUP BY Region
ORDER BY sales DESC;







