USE restaurant_db;

-- 1. View the menu_items table.
select * from menu_items;

-- 2. Find the number of items on the menu.
select count(*) from menu_items;

-- 3. What are the least and most expensive items on the menu?.
select * from menu_items
order by price;

select * from menu_items
order by price desc;

-- 4. How many italian dishes are on the menu?
select count(*) from menu_items
where category='Italian';

-- 5. What are the least and most expensive Italien dishes on the menu?
select * from menu_items
where category='Italian'
order by price;

-- 6. How many dishes in each category?
SELECT category, count(item_name) as num_item_name
FROM menu_items
GROUP BY category;

-- 7. What is the Average dish price within each category?
SELECT category, avg(price) as Avg_Price
FROM menu_items
GROUP BY category;