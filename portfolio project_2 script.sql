create database project2_db;
use project2_db;

# total pizza sold
select sum(quantity) as total_pizza_sold from pizza_sales;
# total revenue generated
select round(sum(total_price)) as total_revenue from pizza_sales;
# average price
select (sum(total_price)/count(order_id)) as avg_order_value from pizza_sales;
#top 5 performing pizza
SELECT pizza_name, sum(quantity) as total_pizza_sold from pizza_sales group by pizza_name order by total_pizza_sold desc limit 5;
#bottom 5 performing pizza
SELECT pizza_name, sum(quantity) as total_pizza_sold from pizza_sales group by pizza_name order by total_pizza_sold limit 5;
select pizza_name, sum(total_price) as total_pizza_revenue from pizza_sales group by pizza_name order by total_pizza_revenue desc limit 5;