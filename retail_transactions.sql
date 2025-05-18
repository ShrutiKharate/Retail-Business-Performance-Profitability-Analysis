SELECT * FROM enhanced_retail_transactions_dataset LIMIT 10;
SELECT 
  SUM(CASE WHEN Transaction_ID IS NULL THEN 1 ELSE 0 END) AS null_Transaction_ID,
  SUM(CASE WHEN Date IS NULL THEN 1 ELSE 0 END) AS null_Date,
  SUM(CASE WHEN Customer_Name IS NULL THEN 1 ELSE 0 END) AS null_Customer_Name,
  SUM(CASE WHEN Product IS NULL THEN 1 ELSE 0 END) AS null_Product,
  SUM(CASE WHEN Profit IS NULL THEN 1 ELSE 0 END) AS null_Profit,
  SUM(CASE WHEN Product_Category IS NULL THEN 1 ELSE 0 END) AS null_Product_Category
FROM enhanced_retail_transactions_dataset; 

SELECT DISTINCT Product_Category FROM enhanced_retail_transactions_dataset;

CREATE VIEW retail_with_categories AS
SELECT *,
  CASE
    WHEN Product_Category IN ('Ketchup', 'Mustard', 'BBQ Sauce', 'Mayonnaise') THEN 'Condiments'
    WHEN Product_Category IN ('Ice Cream', 'Yogurt', 'Cheese', 'Butter') THEN 'Dairy'
    WHEN Product_Category IN ('Spinach', 'Tomatoes', 'Potatoes', 'Carrots', 'Onions') THEN 'Vegetables'
    WHEN Product_Category IN ('Banana', 'Apple', 'Orange') THEN 'Fruits'
    WHEN Product_Category IN ('Cereal', 'Cereal Bars', 'Pancake Mix', 'Bread', 'Pasta', 'Rice') THEN 'Grains & Bakery'
    WHEN Product_Category IN ('Salmon', 'Shrimp', 'Tuna', 'Beef', 'Chicken', 'Eggs') THEN 'Meat & Seafood'
    WHEN Product_Category IN ('Tea', 'Coffee') THEN 'Beverages'
    WHEN Product_Category IN ('Soda', 'Chips', 'Jam', 'Pickles', 'Peanut Butter', 'Honey', 'Syrup', 'Olive Oil', 'Vinegar', 'Canned Soup') THEN 'Pantry & Snacks'
    WHEN Product_Category IN ('Toothpaste', 'Toothbrush', 'Shampoo', 'Shaving Cream', 'Deodorant', 'Feminine Hygiene Products', 'Hair Gel', 'Soap', 'Shower Gel') THEN 'Personal Care'
    WHEN Product_Category IN ('Laundry Detergent', 'Dish Soap', 'Cleaning Spray', 'Sponges', 'Tissues', 'Paper Towels', 'Trash Bags', 'Toilet Paper', 'Cleaning Rags') THEN 'Cleaning Supplies'
    WHEN Product_Category IN ('Vacuum Cleaner', 'Iron', 'Ironing Board', 'Extension Cords', 'Power Strips', 'Light Bulbs') THEN 'Household Electronics'
    WHEN Product_Category IN ('Mop', 'Broom', 'Dustpan', 'Trash Cans') THEN 'Cleaning Equipment'
    WHEN Product_Category IN ('Lawn Mower', 'Garden Hose', 'Plant Fertilizer') THEN 'Garden Tools'
    WHEN Product_Category IN ('Diapers', 'Baby Wipes') THEN 'Baby Care'
    WHEN Product_Category IN ('Air Freshener', 'Bath Towels', 'Hand Sanitizer') THEN 'Home & Misc'
    ELSE 'Other'
  END AS Category,
  Product_Category AS Sub_Category
FROM enhanced_retail_transactions_dataset;

select * from retail_with_categories;

select DISTINCT Category from retail_with_categories;

select DISTINCT Sub_Category from retail_with_categories;

SELECT 
  Category,
  Sub_Category,
  COUNT(*) AS total_transactions,
  SUM(Total_Cost) AS total_sales,
  SUM(Profit) AS total_profit,
  ROUND(SUM(Profit) / SUM(Total_Cost) * 100, 2) AS profit_margin_percent
FROM retail_with_categories
GROUP BY Category, Sub_Category
ORDER BY profit_margin_percent ASC;
