USE restaurant_db;

-- 1. View the menu_items table.
SELECT * FROM menu_items;

-- 2. Find the number of items on the menu. (32 items)
SELECT COUNT(*) FROM menu_items;

-- 3. What are the least and most expensive items on the menu? (least expensive edamame 5.00, most expensive shrimp scampi 19.95)
SELECT * FROM menu_items
ORDER BY price;

SELECT * FROM menu_items
ORDER BY price DESC;

-- 4. How many Italian dishes are on the menu? (9 items)
SELECT COUNT(*) FROM menu_items
WHERE category='Italian';

-- 5. What are the least and most expensive Italian dishes on the menu? (least expensive spaghetti 14.50, most shrimp scampi 19.95)
Select *
FROM menu_items
WHERE category='Italian'
ORDER BY price;

Select *
FROM menu_items
WHERE category='Italian'
ORDER BY price DESC;

-- 6. How many dishes are in each category?
SELECT category, COUNT(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY category;

'American','6'
'Asian','8'
'Mexican','9'
'Italian','9'

-- 7. What is the average dish price within each category?
SELECT category, AVG(price) AS avg_price
FROM menu_items
GROUP BY category;

'American','10.066667'
'Asian','13.475000'
'Mexican','11.800000'
'Italian','16.750000'
