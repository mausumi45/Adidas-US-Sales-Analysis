CREATE DATABASE movie_rating;
use movie_rating;
--- 1) reading all the data
SELECT *
FROM Adidas;
--- 2) Change the name of the columns
ALTER TABLE Adidas
CHANGE `Units Sold` Quantity text,
CHANGE `Total Sales` Total_sales text,
CHANGE `Operating Profit` Profit text,
CHANGE `Operating Margin` Margin text;

--- 3) Replacing the dollar sign from Numerical columns
UPDATE Adidas
SET Price = REPLACE(REPLACE(IFNULL(PRICE,0),',',''),'$',''),
Quantity = REPLACE(REPLACE(IFNULL(Quantity,0),',',''),'$',''),
Total_sales = REPLACE(REPLACE(IFNULL(Total_sales,0),',',''),'$',''),
Profit = REPLACE(REPLACE(IFNULL(Profit,0),',',''),'$',''),
Margin = REPLACE(REPLACE(IFNULL(Margin,0),',',''),'%','');

--- 4) Convert the datatype of columns
ALTER TABLE Adidas
MODIFY Price DECIMAL(10,2),
MODIFY Quantity int,
MODIFY Total_sales int,
MODIFY Profit int,
MODIFY Margin int;

--- 5) Distinct Retailers name
SELECT distinct Retailer
FROM Adidas;

--- 6) Distinct product type
SELECT distinct Product
From Adidas;

--- 7) distinct number of States
SELECT COUNT(distinct state) AS no_of_states
From Adidas;

--- 8) Distinct number of City 
SELECT COUNT(distinct City) AS no_of_city
From Adidas;

--- 9) Sales by Retailers
SELECT Retailer,
       SUM(Total_sales) AS sales_by_retailer
From Adidas
GROUP BY Retailer;

--- 10) Sales By Region
SELECT Region,
       SUM(Total_sales) AS sales_by_retailer
From Adidas
GROUP BY Region;

--- 11) Sales By Product
SELECT Product,
       SUM(Total_sales) AS sales_by_retailer
From Adidas
GROUP BY Product;

--- 12) Sales By Product
SELECT Product,
       SUM(Total_sales) AS sales_by_retailer
From Adidas
GROUP BY Product;

--- 13) Sales by Month
SELECT MONTH(`Invoice Date`) AS Month_,
       SUM(Total_sales) AS sales_by_retailer
From Adidas
GROUP BY MONTH(`Invoice Date`);

--- 14) Top Selling product By quntity
SELECT Product,
       SUM(Quantity) AS Top_selling_product
From Adidas
GROUP BY 1
ORDER BY Top_selling_product DESC;

--- 15) Average profi margin by products
SELECT Product,
       AVG(Margin) AS AVG_margin
From Adidas
GROUP BY 1;

--- 16) Top retailes by profits
SELECT Retailer,
       SUM(Profit) AS total_profit
From Adidas
GROUP BY 1
ORDER BY total_profit DESC;

--- 17) Monthwise total sales and margin
SELECT DATE_FORMAT(`Invoice Date`, '%M') AS month_,
       SUM(Total_sales) AS total_sale,
       SUM(Profit) AS total_profit
From Adidas
GROUP BY 1
ORDER BY total_sale DESC,
        total_profit DESC;

--- 18) Top product based on the sold by retailer 
WITH Top_product_by_retailer AS(
         SELECT Retailer,
                Product,
                Total_sales,
                DENSE_RANK() OVER(PArtition by Retailer ORDER BY Total_sales DESC) AS rank_
         From Adidas)
SELECT *
FROM Top_product_by_retailer
WHERE rank_ = 1; 

--- 19) Lowest Sales product by retailer
WITH Bottom_product_by_retailer AS(
         SELECT Retailer,
                 Product,
                Total_sales,
                DENSE_RANK() OVER(PArtition by Retailer ORDER BY Total_sales ASC) AS rank_
         From Adidas)
SELECT *
FROM Bottom_product_by_retailer
WHERE rank_ = 1; 

--- 20) Yearwise sales and profit in each sales_method
SELECT `Sales Method`,
        EXTRACT(YEAR from `Invoice Date`) as year_,
        SUM(Total_sales)  AS yearly_sales,
        SUM(Profit) AS yearly_profit
FROM adidas
GROUP BY `Sales Method`, EXTRACT(YEAR from `Invoice Date`)
ORDER BY yearly_sales DESC, yearly_profit DESC;

---- 21) Quarterly profit calculation in sales_method
SELECT  `Sales Method`,
       EXTRACT(YEAR FROM `Invoice Date`) as year_,
       EXTRACT(QUARTER FROM `Invoice Date`) AS quarter,
	   SUM(profit) As profit_
FROM adidas
GROUP BY  `Sales Method`,EXTRACT(YEAR FROM `Invoice Date`),EXTRACT(QUARTER FROM `Invoice Date`), `Sales Method`
ORDER BY  `Sales Method`;



---- 22) Top 5 States in term of Profit
SELECT state,
	   SUM(Profit) AS profit_
FROM adidas
GROUP BY state
ORDER BY profit_ DESC
LIMIT 5;

---- 23) yearly and monthly Rolling Average by retailer 
SELECT `Invoice Date`,
        retailer,
        AVG(Total_sales) OVER(PARTITION BY retailer order by YEAR(`Invoice Date`), MONTH(`Invoice Date`)) AS moving_average
FROM adidas;

--- 24) Yearly profit in sales method
WITH sum_profit_sales_method AS(
              SELECT YEAR(`Invoice Date`) AS year_,
                     `Sales Method`,
                     MAX(Profit) as max_profit
               FROM adidas
               GROUP BY YEAR(`Invoice Date`),`Sales Method`
               ORDER BY max_profit DESC) 
SELECT *
FROM sum_profit_sales_method;

--- 25) which retailer sales most product on online
SELECT `Sales Method`,
		Retailer,
        SUM(Total_sales) AS sales
FROM adidas 
WHERE `Sales Method` IN ('online')
GROUP BY `Sales Method`,Retailer
ORDER BY sales desc;

--- 26) state wise max sales in each method
SELECT * 
FROM (SELECT *,
              DENSE_RANK() OVER(PARTITION BY S.method order by S.sales DESC) as ranking_
       FROM (SELECT `Sales Method` AS method,
			         State,
                     SUM(Total_sales) AS sales
              FROM adidas 
	          GROUP BY `Sales Method`,State)AS S) AS M
WHERE M.ranking_ = 1;

 

