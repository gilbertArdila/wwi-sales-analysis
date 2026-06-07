# Wide World Importers Sales & Operations Analytics

End-to-end Business Intelligence and Data Analytics project developed using SQL Server, Python, and Power BI. The project transforms transactional data from the Wide World Importers database into actionable business insights through an analytics pipeline that includes ETL, Exploratory Data Analysis (EDA), Feature Engineering, and Dashboard Development.

---

# Project Overview

The objective of this project is to analyze sales performance, customer behavior, and inventory operations using the Wide World Importers database.

The project follows a complete analytics workflow:

* Data Extraction from SQL Server
* Data Cleaning and Transformation
* Exploratory Data Analysis (EDA)
* Feature Engineering
* Analytical Dataset Creation
* Power BI Dashboard Development
* Executive Reporting

The final result is an interactive Power BI dashboard designed to support operational and strategic decision-making.

---

# Project Architecture

```text
SQL Server
    ↓
Data Extraction
    ↓
Python (Pandas)
    ↓
Exploratory Data Analysis
    ↓
Feature Engineering
    ↓
Analytics Dataset
    ↓
Power BI Dashboard
    ↓
Executive Insights
```

---

# ETL Process

Data was extracted from the Wide World Importers transactional database using SQL Server.

The extraction process consolidated information from sales, customers, products, suppliers, inventory, and geography tables into a single analytical dataset suitable for reporting and business analysis.

### Main Tables Used

* Sales.Orders
* Sales.OrderLines
* Sales.Customers
* Application.Cities
* Warehouse.StockItems
* Purchasing.Suppliers

The resulting dataset was exported and processed in Python for further analysis and feature engineering.

---

# Exploratory Data Analysis (EDA)

Exploratory analysis was performed using Python, Pandas, and Jupyter Notebook.

The analysis focused on:

* Data quality assessment
* Missing value validation
* Revenue distribution analysis
* Product performance analysis
* Customer behavior analysis
* Sales trend analysis
* Operational performance evaluation

### Key Findings

* Revenue is highly concentrated among a small group of products.
* Sales exhibit a stable growth pattern over time.
* Customer revenue is concentrated among key accounts.
* Inventory fulfillment issues are limited to a small number of products.
* Operational performance remains consistently high across cities.

---

# Feature Engineering

Several business-oriented metrics were created to improve analytical capabilities.

## Financial Metrics

* Revenue
* Cost
* Profit
* Margin Percent

## Operational Metrics

* Fill Rate
* Pending Quantity

## Inventory Metrics

* Quantity On Hand
* Stock Availability Indicators

## Customer Metrics

* Orders per Customer
* Customer Frequency
* Average Ticket

These metrics enabled the creation of executive, commercial, customer, and operational dashboards.

---

# Final Analytics Dataset

### Dataset Summary

* 231,412 Sales Records
* 227 Products
* 663 Customers

### Main Dimensions

* Customer
* Product
* Supplier
* Vendor
* City
* Date

### Main Measures

* Revenue
* Profit
* Margin Percent
* Fill Rate
* Pending Quantity
* Quantity On Hand

---

# Dashboard Development

The Power BI dashboard was structured into five analytical sections.

---

## Main Page

Provides navigation and context for the project.

![Main Page](images/Main%20page.jpg)

---

## Executive Overview

Executive summary of business performance including revenue, profit, margin, fill rate, orders, and customers.

### KPIs

* Revenue
* Profit
* Margin Percent
* Fill Rate
* Orders
* Customers

### Analysis

* Revenue Trend
* Revenue by City
* Revenue by Product
* Profit by Product

![Executive Overview](images/Executive%20Overview.jpg)

---

## Sales Performance

Commercial analysis focused on sales trends and revenue generation.

### Analysis

* Sales Trend Analysis
* Revenue by City
* Revenue by Product
* Revenue by Vendor
* Revenue by Supplier
* Order Trends

![Sales Performance](images/Sales%20Performance.jpg)

---

## Customer Analytics

Customer-focused analysis designed to identify top-performing customers and purchasing patterns.

### Analysis

* Top Customers
* Revenue by Customer
* Average Ticket
* Customer Frequency
* Customer Segmentation

![Customer Analytics](images/Customer%20Analytics.jpg)

---

## Inventory & Operations

Operational performance dashboard focused on inventory availability and order fulfillment.

### KPIs

* Average Fill Rate
* Total Pending Quantity
* Total Stock On Hand

### Analysis

* Fill Rate by Product
* Pending Quantity by Product
* Fill Rate by City
* Inventory Health

![Inventory & Operations](images/Inventory%20%26%20Operations.jpg)

---

## Executive Summary & Recommendations

Executive conclusions and strategic recommendations derived from the analysis.

The report consolidates the most relevant insights from all dashboard sections and provides actionable recommendations for business improvement.

![Executive Summary & Recommendations](images/Executive%20Summary%20%26%20Recommendations.jpg)

---

# Key Insights

### Commercial Performance

* Revenue reached approximately 177.6 million.
* Profit exceeded 88.7 million.
* Margin remained above 53%.
* The Void Fill Bag product family generated the highest revenue and profit.

### Customer Analytics

* Wingtip Toys was identified as the highest-value customer.
* Customer frequency shows a strong relationship with revenue generation.
* Average ticket value reached approximately 2,414.

### Operations & Inventory

* Fill Rate achieved 98.6%.
* Operational issues were concentrated in a small number of products.
* Inventory availability exceeded 30 million units.
* Geographic fulfillment performance remained consistently high.

---

# Technologies Used

* SQL Server
* Python
* Pandas
* NumPy
* Jupyter Notebook
* Power BI
* Git
* GitHub

---

# Author

Gilbert Ardila

Systems Engineering | Data Analytics & Business Intelligence Enthusiast

This project was developed as a complete end-to-end Business Intelligence portfolio project using the Wide World Importers database.
