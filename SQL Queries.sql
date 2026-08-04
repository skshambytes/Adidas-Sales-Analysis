-- create database Sales_db;
use sales_db;
-- select * from adidas_sales;
-- set SQL_SAFE_UPDATES = 0

-- update adidas_sales
-- set `Operating Profit` = replace(`Operating Profit`,',','')

-- select distinct`Invoice Date` from adidas_sales limit 5

-- update adidas_sales 
-- set `Invoice Date` = str_to_date(`Invoice Date` , '%d-%m-%y')
-- describe adidas_sales



-- Q1 ) What is our total sales , profit and unit sold ?

-- select sum(
-- cast(replace(replace(`Total Sales`,'$',''),',','')
-- as decimal(12,2))) as Total_sales from  adidas_sales limit 5

-- -- select sum(`Units Sold`) as unit_sold from adidas_sales

-- select sum(
-- cast(replace(replace(`Operating Profit`,'$',''),',','')
-- as decimal(12,2))) as total_profit from adidas_sales 


-- select * from adidas_sales;

-- Q2) which region contribute the most sales ?

-- select `Region` , SUM(`Total Sales`) as Total_sales from adidas_sales 
-- group by `Region`
-- order by Total_sales desc

-- Q3 ) which state generates  the most revenue ?	

-- select sum(`Total Sales`) as Total_sales  , `State` from adidas_sales
-- group by `State`
-- order by Total_sales desc 

-- Q4 ) Which retailer has the highest sales ?

-- select `Retailer` , sum(`Total Sales`) as Total_sales  from adidas_sales
-- group by `Retailer` 
-- order by Total_sales desc

-- Q5) Which product sales the most unit ?
-- select `Product` , sum(`Units Sold`) as Total_units from adidas_sales
-- group by `Product`
-- order by Total_units desc


-- Q6 ) which product generates the highest profit ?

-- select `Product` , sum(`Total Sales`) as Total_sales from adidas_sales
-- group by `Product`
-- order by Total_sales desc

-- Q7) What are the monthly sales trend ?

-- select monthname(`Invoice Date`) as month,  sum(`Total Sales`) as Total_sales from adidas_sales
-- group by month(`Invoice Date`),
-- monthname(`Invoice Date`)
-- order by Total_sales desc



-- select `Invoice Date` ,
-- month(`Invoice Date`),
-- monthname(`Invoice Date`)
-- from adidas_sales
-- limit 5


-- Q8 ) Which sales method (Online , In-Store , Outlet) Performs the best ?

-- select `Sales Method` , sum(`Total Sales`) as Total_sales from adidas_sales
-- group by `Sales Method`
-- order by Total_sales desc

-- Q9 ) What are top 5 products by sales ?


-- select `Product` , sum(`Total Sales`) as Total_sales from adidas_sales
-- group by `Product`
-- order by Total_sales desc 

-- Q10) Which region have the lowest salas ?

-- select `Region` , sum(`Total Sales`) as Total_sales from adidas_sales
-- group  by `Region`
-- order by Total_sales asc limit 1



-- select `State` , sum(`Total Sales`) as Total_sales , round(sum(`Total Sales`)*100 / (select sum(`Total Sales`) from adidas_sales),2) as Sales_percentage from adidas_sales
-- group by `State`
-- order by Total_sales desc

-- select `Region` , sum(`Total Sales`) as Total_sales , round(sum(`Total Sales`)*100 / (select sum(`Total Sales`) from adidas_sales),2) as Sales_Percentage from adidas_sales 
-- group by `Region`
-- order by Total_sales
