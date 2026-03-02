# Restaurant-Order-Analysis
🍽️ MySQL analysis of restaurant order data (5,370+ orders) to identify top & least popular menu items, cuisine trends, and high-value customers. Built with SQL joins, aggregations, subqueries & time-series analysis.

---

## 🎯 Project Overview

The **Restaurant Order Analysis** project is a data-driven exploration of a restaurant's order history, providing deep insights into menu performance, customer behavior, and revenue trends, demonstrating proficiency in SQL querying, data exploration, and business intelligence storytelling using **MySQL**.

The dataset covers **January 1, 2023 – March 31, 2023**, representing the first three months of the restaurant's operation with its current menu — a critical window for evaluating how well the menu is resonating with customers.

### 🌟 What Makes This Project Special:
- **Menu Performance** – Identify the most and least ordered items across all cuisine categories
- **Revenue Intelligence** – Understand which dishes and cuisines drive the most revenue
- **Customer Behavior** – Analyze high-spend customers and their ordering preferences
- **Time-Series Trends** – Explore order patterns by date and time to identify peak periods
- **Cuisine Comparison** – Compare American, Asian, Mexican, and Italian category performance

**Target Audience:** Restaurant owners, menu strategists, food & beverage analysts, and aspiring SQL/data analysts.

---

## 🔍 Business Problem: The What, How, and Why

### 📊 WHAT – The Business Challenge

A restaurant owner has shared their point-of-sale database, containing two core tables: **menu items** and **customer orders**. The challenge is to make sense of the data and answer critical business questions:

**For Restaurant Owners:**
- Which menu items should be promoted, and which should be removed?
- Which cuisine category generates the most revenue?
- When are the peak ordering hours and days?
- Who are the highest-spending customers, and what do they order?

**For Menu Strategists:**
- Is the current menu optimized for profitability?
- Are lower-priced items hurting or helping overall revenue?
- What does the ordering behavior of top spenders reveal about preferences?

**The Core Question:** *How can we use 3 months of order data to make smarter menu and business decisions?*

---

### 🛠 HOW – The Solution Approach

#### Data Collection & Preparation

**Data Source**
- Maven Analytics Restaurant Orders Dataset
- 5,370+ orders across Q1 2023
- Two tables: `menu_items` (reference) and `order_details` (transactions)

**Key Fields:**
- `menu_item_id`, `item_name`, `category`, `price` — from `menu_items`
- `order_details_id`, `order_id`, `order_date`, `order_time`, `item_id` — from `order_details`

**Data Cleaning & Preparation**
- Reformatted `order_date` to `YYYY-MM-DD` and `order_time` to `HH:MM:SS` for MySQL compatibility
- Verified column alignment between CSV files and MySQL table schemas before import
- Used `Table Data Import Wizard` in MySQL Workbench for data loading
- Checked for and handled NULL values and data inconsistencies

**Data Modeling**
- Established a **JOIN relationship** between `order_details.item_id` and `menu_items.menu_item_id`
- Utilized `LEFT JOIN` to retain all orders, including those with unmatched menu items
- Designed queries for both single-table exploration and multi-table analysis

**SQL Techniques Used**
- `SELECT`, `WHERE`, `GROUP BY`, `ORDER BY`, `HAVING`
- `COUNT()`, `SUM()`, `AVG()`, `ROUND()`, `MIN()`, `MAX()`
- `COUNT(DISTINCT)` for unique order counts
- `LEFT JOIN` for combining menu and order data
- **Subqueries** for multi-step aggregations
- Table aliases (`od`, `mi`) for cleaner, optimized queries

---

### 💡 WHY – The Business Value & Impact

#### For Restaurant Owners
| Problem Solved | Value Delivered |
|---|---|
| Unsure which dishes to keep or remove | ✅ Ranked menu items by order frequency |
| Don't know peak business hours | ✅ Identified busiest order times and dates |
| Can't tell which cuisine earns the most | ✅ Revenue analysis by cuisine category |
| No visibility into top customer behavior | ✅ Profiled top 5 highest-spend orders |

#### For Data Analysts & BI Professionals
| Problem Solved | Value Delivered |
|---|---|
| Need a portfolio SQL project | ✅ End-to-end MySQL workflow from raw data to insights |
| Want to demonstrate JOIN and subquery skills | ✅ Real-world multi-table analysis |
| Need business context for technical skills | ✅ Tied SQL findings to actionable recommendations |

---

## 📈 Key Findings & Insights

### 🏆 Major Discoveries:
1. **Most Popular Item** – Hamburgers (American cuisine) lead in order volume
2. **Least Popular Item** – Edamame (Asian cuisine) has the lowest order count
3. **Top Revenue Cuisine** – Italian cuisine generates the highest revenue per dish despite premium pricing
4. **High-Spender Preferences** – Top 5 orders heavily favor Italian dishes (26 out of 69 items ordered)
5. **Asian Cuisine Volume** – Asian items are ordered most frequently overall, driving high order counts
6. **Order Volume** – 5,370+ unique orders recorded in just Q1 2023

### 🎯 Strategic Recommendations:
- **Expand Italian offerings** — high price point, yet extremely popular with big spenders
- **Promote Asian dishes** — highest volume category, strong upsell potential
- **Re-evaluate Edamame** — least ordered item; consider replacing or repositioning
- **Leverage peak hours** — schedule more staff and prep during identified busy periods
- **Target high-value customers** — Italian-focused promotions for high-spend customers

---

## 📂 Database Schema

### 📦 `order_details` Table (Fact Table)
| Column | Description |
|---|---|
| `order_details_id` | Unique row identifier |
| `order_id` | Groups items within a single order |
| `order_date` | Date of the order (YYYY-MM-DD) |
| `order_time` | Time of the order (HH:MM:SS) |
| `item_id` | Foreign key → `menu_items.menu_item_id` |

### 🍕 `menu_items` Table (Reference Table)
| Column | Description |
|---|---|
| `menu_item_id` | Primary key |
| `item_name` | Name of the dish |
| `category` | Cuisine type (American, Asian, Mexican, Italian) |
| `price` | Retail price in USD |

**Data Volume:** 5,370+ orders | Q1 2023 (Jan – Mar) | 4 cuisine categories | 32 menu items

---

## 🌟 Analysis Sections

### 🔎 Part 1: Explore the Menu Items Table
- Total number of items on the menu
- Most and least expensive items
- Average price per cuisine category
- Number of dishes per category

### 📋 Part 2: Explore the Order Details Table
- Date range of orders in the dataset
- Total number of orders placed
- Total number of items ordered
- Orders with the most items

### 🔗 Part 3: Analyze Customer Behavior (JOIN Analysis)
- Least and most ordered items + their categories
- Top 5 highest-spend orders
- Category breakdown for top-spending orders
- Insights into what drives high-value purchases

---

## 🛠 Tech Stack

| Tool | Purpose |
|---|---|
| 🐬 **MySQL** | Database management & SQL querying |
| 🖥️ **MySQL Workbench** | IDE for writing and running queries |

**SQL Features Used:**
- ✅ Basic queries – `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`
- ✅ Aggregations – `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`
- ✅ Grouping & filtering – `GROUP BY`, `HAVING`
- ✅ Multi-table joins – `LEFT JOIN`
- ✅ Subqueries – Nested SELECT for multi-step aggregations
- ✅ Aliases – Cleaner, optimized query writing
- ✅ Distinct counting – `COUNT(DISTINCT order_id)`

---

## 🎓 Skills Demonstrated

**Technical Skills:**
- ✅ Data Import & Preparation – CSV formatting, schema alignment, MySQL import
- ✅ SQL Querying – From basic SELECT to multi-table JOINs and subqueries
- ✅ Data Aggregation – Revenue, count, and average analysis by category
- ✅ Time-Series Analysis – Order trends by date and time
- ✅ Business Intelligence – KPI development and insight generation

**Business Skills:**
- ✅ Problem Framing – Translating business questions into SQL queries
- ✅ Insight Generation – Moving from raw results to actionable recommendations
- ✅ Stakeholder Thinking – Understanding what restaurant owners actually need
- ✅ Communication – Clear, structured analysis with business context

---

## 🏆 Project Achievements

- ✅ Implemented subqueries for complex multi-step analysis
- ✅ Applied JOIN logic to merge transaction and reference tables
- ✅ Delivered clear business recommendations from SQL findings
- ✅ Demonstrated end-to-end SQL workflow from raw data to insights

**Learning Outcomes:**
- Mastered MySQL Workbench interface and data import process
- Strengthened proficiency in multi-table SQL analysis
- Learned to translate raw query output into business strategy
- Gained experience solving real-world food & beverage analytics problems

---
