# northwind_catering
This is a data analyze for catering company which its name is Northwind. 
There are queries for each topic in sql file. 
Main analysis is performed on Power BI and Python. You can find Power BI dashboard visuals at the end of this page.
Python Analysis is in ipynb file

Here are our tables in data,

categories
customers
employees
order_details
orders
products
region
shippers
suppliers

Below topics are analyzed on Power BI 

-- REVENUE ANALYSIS; 
-- Total revenue
-- Revenues by date 
-- Revenue change rate
-- Revenues by categories
-- Discount rate distrubition

-- PRODUCT ANALYSIS
-- Category preferences 
-- Product Preferences
-- Analysis by countries on map 

-- LOGISTIC ANALYSIS
-- Shipper preferences
-- Average shipment days for shippers
-- Average shipment days for suppliers

-- STOCK ANALYSIS
-- Top products to be preferred 
-- Stock management for top products to be preferred


Below topics are analyzed on Python. These queries are connected to Python and analsis is performed. 

-- EMPLOYEES PERFORMANCE 
-- How many customer does each employee work with ?
-- How long have they been working 
-- Performance point is calculated by ratio of customer amounts to working days. (multiplied by 100 to get a significant number)
-- Levels of employees are defined based on performance point(PP). 
     - Silver Employee: 1 <= PP < 2
     - Bronze Employee: 2 <= PP < 3
     - Golden Employee: 2 <= PP < 4 


-- RFM ANALYSIS FOR CUSTOMERS 
-- RFM, also known as RFM analysis, is a type of customer segmentation and behavioral targeting used to help businesses rank and segment customers based on the recency, frequency, and monetary value of a transaction. 
-- Recency: How recently did the customer purchase?
-- Frequency: How often do they purchase?
-- Monetary Value: How much do they spend?
-- SCORES, 
-- Now we can give scores by splitting of values for each customer.  From low (1) to high (5) score. 
-- recency   --> from 1 to 5 / from longest difference to shortest difference 
-- frequency --> from 1 to 5 / from more amount to less amount
-- monetary  --> from 1 to 5 / from more payment to less payment

-- At the end of anaysis, we can see overall results on single table. 


POWER BI DASHBOARD VISUALS,

![Main Page](https://github.com/user-attachments/assets/9b5cba58-a09e-4452-b7f5-e2fd9908f175)

![Revenue](https://github.com/user-attachments/assets/4421e90a-4f11-4def-aff3-9d58b8fb8476)

![Product](https://github.com/user-attachments/assets/4b97bca7-2fb8-4ef0-8fe5-4e17ebaa4e60)

![Logistic](https://github.com/user-attachments/assets/15892c81-028e-42bb-b6d3-0b37a2453a39)

![Stock](https://github.com/user-attachments/assets/7e29f529-4166-44b9-944d-33d58cacbe94)

