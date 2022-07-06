![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Screenshots/Sales.png)

#### Source

[Codebasics tutorials](https://www.youtube.com/watch?v=hhZ62IlTxYs&list=PLeo1K3hjS3utcb9nKtanhcn8jd2E0Hp9b) 

###  Overview

- AtliQ Hardware is a Computer Hardware & Peripheral Manufacturer across India. Their clients include Surge Stores, Nomad Stores, Excel Stores and Electricalsara Stores. 
- Bahavian Patel, The Sales Director is having issues, the market growing everyday and wants help to easily track regional sales from North, South and Central India.
- Reports about sales are sent in form of Excel sheets and it is difficult to know were they lacking 


### Table of Contents
1. Problem Statement
2. Data Exploration and Analysis using SQL
3. Data Cleaning and ETL
4. Building a Dashboard / a report

### 1. Problem Statement

- **AIMs Grid** (For Project Managers and Leaders) was used inorder to clearly define the problem and expected results

   1. Purpose
      - Getting simple understandable digestible insights instead of alot of excel sheets for making better data-driven decision about the business.

   2. Stakeholders:
      - Sales Director : Bahavin Patel of all the three Regions
      - Marketing Team
      - Customer Service Team
      - IT
      - Data & Analytics Team

   3. End result
      - An automated dashboard providing real-time insights how sales are

   4. Success Criteria
      - Dashboard showing real-time insights about the business
      - Sales team able to make better decisions whilst with reduced 10% cost of total time spent preparing about the insights
      - 20% saved time by Sales analysts to reinvest the time in other activities to better the business
### 2. Data Exploration and Analysis using SQL

- **Data source** provided is within the project
- Dataset name is **Sales** with 4 tables namely: 

1. Customers
  
   > SELECT * sales.customers
   
   ![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Screenshots/SQL-Queries/all%20customers-sql.png)
  
2. Transactions
   
   > SELECT sales.transactions
   
   ![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Screenshots/SQL-Queries/All%20transactions.png)
3. Products
  
   > SELECT * sales.products

   ![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Screenshots/SQL-Queries/all%20products.png)
 
 4. Markets
   
   > SELECT * sales.markets
   
   ![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Screenshots/SQL-Queries/all%20markets.png)
   
 5. Dates
  
   > SELECT * sales.dates

   ![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Screenshots/SQL-Queries/all%20dates.png)
   
 **SQL Queries to analyze the data**

1. All transactions count

> SELECT count(*) FROM sales.transactions  ;

![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Screenshots/SQL-Queries/All%20transactions%20(count).png)

2. All transactions count done in Chennai market

> SELECT count(*) FROM sales.transactions where market_code = "Mark001";

![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Screenshots/SQL-Queries/All%20transactions%20done%20in%20Chennai%20market%20(count).png)

3. All transactions in year 2019

> SELECT sales.transactions.*, sales.date.date FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date where sales.date.year = 2019

![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Screenshots/SQL-Queries/All%20transactions%20done%20in%20Chennai%20market%20(count).png)
 

### 3. Data Cleaning and ETL using Power BI

- Loaded the database and it's tables using MySQL Database connector in Power BI

- **The Data Model** in Power BI
    - This is a **Star schema**
      1. Fact Table being Transactions table
      2. Dimensions Table being the Cutomers, Markets, Dates and Products table
    
![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Screenshots/Power-BI/data%20model.png)

- Tranformed data in Power Query
    - Markets table
      1. Removed New York and Paris in market-name column using zone column
      
      ![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Screenshots/Power-BI/power-query/remove%20NY%20and%20Paris.png)
      
    - Transactions table
      1. Removed -1 and 0 in sales_amount column

      ![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Screenshots/Power-BI/power-query/remove%20-1%20%26%200.png)

      2. Converted USD currency to INR using a new conditional column
      
      ![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Screenshots/Power-BI/power-query/convert%20USD%20to%20INR.png)
      
      3. Remove duplicated currency of USD and INR in new currency

      ![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Screenshots/Power-BI/power-query/remove%20USD%20or%20INR.png)

### 4. Building a Dashboard using Power BI
-   Firstly created **base measures**:
     
     1. Revenue = SUM('sales transactions'[sales_amount])
     2. Total Sales Quantity = SUM('sales transactions'[sales_qty])

-   Building the Dashboard
      
      1. Used **Revenue measure** to create a **Card**
      2. Used **Total Sales Quantity measure** to create another **Card**
      3. Used the **Revenue and Total Sales Quantity measures** against **date with year table** to create **Line graphs**
      4. Used **Revenue** to create **Clustered bar charts** against :
         1. Customer (Filtered Top 5)
         2. Market   (Filtered Top 5)
      
      5. Used **Total Sales Quantity** to create other **Clustered bar charts** against:
         1. Customer (Filtered Top 5)
         2. Market   (Filtered Top 5) 


### Final Dashboard Report

![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Screenshots/Power-BI/Dashboard/dashboard%20report.png)


### Key Takeaways

-  Electricalsara Stores is the number one customer
-  Delhi NCR is the number one market where business is good
-  Business was good in 2018 but after that it declined
