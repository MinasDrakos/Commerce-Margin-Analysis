# -Commerce-Margin-Analysis
An end-to-end data analytics project identifying root causes behind a 20% revenue growth paired with declining net profits, focusing on negative margins, return costs, and excessive discounts.
# E-Commerce Financial Performance & Margin Analysis

## 📌 Executive Summary
An end-to-end data analytics project evaluating the profitability leakage of an e-commerce platform. Despite a 20% YoY increase in top-line revenue, net profit decreased by 4.2%. This analysis identifies the root causes using SQL, Python, and Power BI, providing actionable recommendations to restore operational margins.

---

## 🔍 Key Findings & Recommendations
- **High Discounts Erode Margins:** Promotional discounts exceeding 25% consistently generated negative net margins across primary product lines.
- **Problematic Product Categories:** Oversized items and specific sub-categories accounted for over 60% of total loss due to inflated fulfillment and return costs.
- **Strategic Recommendations:**
  - Enforce a 20% hard cap on automated promotional discounts.
  - Renegotiate logistics supplier terms for bulky freight to minimize shipping variances.
  - Restructure pricing tiers to protect contribution margins without hurting order volume.

---

## 🛠️ Tech Stack & Methodology
- **SQL (PostgreSQL):** CTEs, Window Functions, and multi-table joins to model transaction logs and compute unit economics.
- **Python (Pandas, Seaborn, Matplotlib):** Data cleaning, exploratory data analysis (EDA), and discount elasticity modeling.
- **Power BI:** Dynamic executive dashboard with custom DAX measures, variance analysis (waterfall charts), and margin breakdown.

---

## 📊 Dashboard Preview
*(Add your dashboard screenshots below)*

![Dashboard Overview](visuals/dashboard_overview.png)

---

## 📂 Repository Structure
```text
├── data/
│   └── sample_data.csv            <- Sample dataset
├── sql/
│   └── analysis.sql               <- SQL queries for KPI and margin extraction
├── src/
│   └── margin_deepdive.py         <- Python analysis and visualizations
├── visuals/
│   └── dashboard_overview.png     <- Power BI dashboard preview
└── README.md
