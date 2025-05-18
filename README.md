# 🛒 Retail Business Performance & Profitability Analysis

## 📌 Project Overview

This project focuses on analyzing retail transactional data to uncover hidden trends, detect profit-draining categories, and optimize inventory turnover using **SQL** and **Python (Pandas)**, with final visualization in **Power BI**.

![Image](https://github.com/user-attachments/assets/35dc50de-5e36-4c26-b3fa-80bb1337f355)
---

## 📂 Dataset Used

* **File:** `Retail_with_categories.csv`
* Contains transactional records including:

  * Product Name, Product Category
  * Transaction ID, Date
  * Total Items, Total Cost, Profit
  * Store Type, City, Season, Payment Method

---

## 🧰 Tools & Technologies

* **SQL (MySQL Workbench)** – Data cleaning, aggregation, view creation
* **Python (Pandas, Seaborn, Matplotlib)** – Advanced analysis & visualization
* **Power BI** – Interactive dashboard for business insights
* **Jupyter Notebook** – Python workflow and correlation analysis

---

## 📊 SQL Analysis Performed

* Cleaned null/missing records
* Created views to map `Product_Category` into logical `Category` and `Sub_Category`
* Aggregated:

  * Total Profit and Total Sales by `Category` and `Sub_Category`
  * Profit Margin calculation
* Extracted distinct product segments for visualization

---

## 📈 Python Data Analysis Highlights

* Calculated and visualized:

  * Correlation between Inventory Days and Profitability
  * Profit by Category and Sub-Category
  * Basket size analysis and item movement
* Identified:

  * Slow-moving products based on low quantities
  * Overstocked items using high `Inventory_Days`
* Segmented seasonal performance & store type patterns

---

## 📉 Power BI Dashboard Insights

* Filters: Region, Product Type, and Season
* Visuals:

  * KPIs: Total Sales, Profit, Profit Margin
  * Sales by Category and Season
  * Profit by Sub-Category
  * Scatterplot of Basket Size vs Items
  * Table of Slow-Moving Inventory
* Strategic Recommendations:

  * Promote high-profit items
  * Optimize inventory for seasonal trends
  * Address low-movement products

---

## ✅ Outcomes

* Actionable insights for business strategy
* Inventory and profitability optimization
* Strong foundation for further predictive modeling or clustering

---

## 📎 Files Included

* `SQL_Script.sql` – All SQL queries used
* `Retail_with_categories.csv` – Processed dataset
* `Retail_Analysis.ipynb` – Jupyter notebook for Python-based analysis
* `Retail_Dashboard.pbix` – Power BI dashboard (if shared)
* `Client_Report.docx` – Final documentation/report
