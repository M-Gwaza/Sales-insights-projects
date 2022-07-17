
### Source

[Codebasics tutorials](https://www.youtube.com/watch?v=hhZ62IlTxYs&list=PLeo1K3hjS3utcb9nKtanhcn8jd2E0Hp9b) 

###  Overview

- AtliQ Hardware is a Computer Hardware & Peripheral Manufacturer across India. Their clients include Surge Stores, Nomad Stores, Excel Stores and Electricalsara Stores. 
- Bahavian Patel, The Sales Director is having issues, the market is growing everyday and wants help to easily track regional sales from North, South and Central India.
- Reports about sales are sent in form of Excel sheets and it is difficult to track everything inorder to know where they are lacking 

### NOTE

- Everything about the project was already done in [Sales Insights Project](https://github.com/M-Gwaza/Sales-insights-projects/edit/main/README.md)
- Here, Data exploration, ETL( Extract, Transform and Load), Analysis and Visualization processes were showcased in Tableau.


### Table of contents

1. The Data Source
2. Data Cleaning
3. Data Visualization

### 1. The Data Source

- A connection was made to MySQLWorkbench referencing the previous [Sales Insights Project](https://github.com/M-Gwaza/Sales-insights-projects/edit/main/README.md)

  #### The Tables

        1. Transactions
     
    ![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Tableau/Screenshots/transactions.png)
     
        2. Markets
 
    ![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Tableau/Screenshots/markets.png) 
 
        3. Date

    ![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Tableau/Screenshots/date.png)

        4. Customers
 
    ![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Tableau/Screenshots/customers.png)
 
        5. Products
 
    ![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Tableau/Screenshots/products.png)
    
#### The Data Model
- The tables are linked in a Star Schema format:

        1. Fact Table being Transactions table
        2. Dimension Tables being Markets, Date, Customers and Products
  
  ![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Tableau/Screenshots/Star%20schema.png)

### 2. Data Cleaning

- Three processes were done to clean the raw data from MySql Database:
      
      1. Filter out Transactions Table Sales Amount Column with values less than 1
      
        Before
       
    ![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Tableau/Screenshots/transactions_sales_amount.png)
            
        Action
      
    ![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Tableau/Screenshots/filter_sales_amount_less%20_than_1.png)
      
        After
            
            
      
      2. Correct Transactions Table Currency Column with duplicated values INR and USD
      
      
            Before
            
            
            Action
      
    ![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Tableau/Screenshots/filter_usd_inr.png)
      
            After
            
            
      
      
      3. Filter out Market Name with values are NY and Paris (since the focus is on India)

      
            Before
            
            
            Action
      
   ![alt text](https://github.com/M-Gwaza/Sales-insights-projects/blob/main/Tableau/Screenshots/filter_market_name_ny_paris.png)
      
            After
            
            
      
