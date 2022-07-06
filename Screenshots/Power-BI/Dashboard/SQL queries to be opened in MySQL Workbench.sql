# these firstly were used to view the tables

SELECT * FROM sales.customers;

SELECT * FROM sales.date;

SELECT * FROM sales.markets;

SELECT *  FROM sales.products; 

SELECT distinct sales.product_type FROM sales.products;

SELECT * FROM sales.transactions;

SELECT count(*  ) FROM sales.transactions;

# All transactions count done in Chennai market
SELECT count(*) FROM sales.transactions where market_code = "Mark001";

# All transactions in year 2019
SELECT sales.transactions.*, sales.date.date FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date where sales.date.year = 2019