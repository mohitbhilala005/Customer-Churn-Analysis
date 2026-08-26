# 📊 Customer Churn Analysis

## 📌 Project Overview

This project analyzes customer churn data to identify key factors associated with customer attrition and uncover high-risk customer segments.

The analysis was performed using **MySQL** for data exploration and business analysis, with **Power BI** planned for interactive dashboard development.

The objective is to transform customer-level data into actionable business insights that can support customer retention strategies.

---

## 🎯 Business Objective

The key objectives of this project are to:

- Measure the overall customer churn rate
- Identify customer segments with high churn
- Analyze churn across contract types
- Evaluate the impact of tenure on customer retention
- Analyze churn by payment method and internet service
- Examine the relationship between monthly charges and churn
- Evaluate the association between support/protection services and churn
- Identify high-risk customer segments
- Develop actionable recommendations for improving customer retention

---

## 🛠️ Tools & Technologies

- **MySQL** – Data analysis and SQL querying
- **Power BI** – Interactive dashboard and visualization
- **Microsoft Excel / CSV** – Data source
- **GitHub** – Project documentation and version control

---

## 📂 Project Structure

```text
Customer-Churn-Analysis/
│
├── data/
│   └── customer_churn_cleaned.csv
│
├── sql/
│   └── customer_churn_analysis.sql
│
├── powerbi/
│   └── Customer_Churn_Dashboard.pbix
│
├── screenshots/
│   └── dashboard-preview.png
│
└── README.md
📊 Dataset

The dataset contains 7,043 customer records and 21 customer attributes, including:

Customer demographics
Tenure
Contract type
Internet service
Payment method
Monthly charges
Total charges
Online security
Technical support
Device protection
Customer churn status
🔍 SQL Analysis

The MySQL analysis covers:

Overall customer churn
Churn by contract type
Churn by internet service
Churn by payment method
Churn by customer tenure
Churn by monthly charges
Churn by demographics
Churn by support and protection services
High-risk customer segmentation
📈 Key Findings
Overall Churn
Total customers: 7,043
Churned customers: 1,869
Overall churn rate: 26.54%
Contract Type
Month-to-month: 42.71% churn
One year: 11.27% churn
Two year: 2.83% churn
Tenure
0–12 months: 47.44% churn
60+ months: 6.61% churn
Payment Method
Electronic check: 45.29% churn
Credit card (automatic): 15.24% churn
Internet Service
Fiber optic: 41.89% churn
DSL: 18.96% churn
No internet service: 7.40% churn
High-Risk Segment

The highest observed churn rate among sufficiently large segments was:

Month-to-month + 0–12 months tenure + Electronic check

Customers: 954
Churned: 602
Churn rate: 63.10%
💡 Business Insights

The analysis indicates that churn is particularly concentrated among:

Newer customers
Month-to-month customers
Electronic-check users
Fiber-optic customers
Customers without selected support/protection services

These patterns can help businesses prioritize retention efforts toward high-risk customer segments.

🚀 Business Recommendations
1. Focus on Early-Tenure Retention

Develop targeted onboarding and engagement programs for customers during their first 12 months.

2. Encourage Longer-Term Contracts

Provide appropriate incentives for month-to-month customers to consider annual or longer-term contracts.

3. Monitor Electronic-Check Customers

Investigate the high churn observed among electronic-check users and encourage convenient automatic payment options where appropriate.

4. Improve Fiber-Optic Customer Experience

Investigate service quality, pricing, support, and customer experience among fiber-optic customers.

5. Promote Support & Protection Services

Evaluate targeted offers for customers who do not currently use services such as Online Security, Tech Support, Online Backup, and Device Protection.

⚠️ Analytical Note

The findings in this project represent associations observed in the dataset and do not establish causal relationships.

For example, a higher churn rate among customers without a particular service does not necessarily mean that adding the service will directly reduce churn.

📊 Power BI Dashboard

An interactive Power BI dashboard will be added to this repository.

The dashboard will provide:

Executive churn KPIs
Churn by contract
Churn by tenure
Churn by payment method
Churn by internet service
Customer risk segmentation
Service-level churn analysis
Interactive filters
👤 Author

Mohit Bhilala

B.Tech – Agricultural & Food Engineering
Indian Institute of Technology Kharagpur
