# Superstore Sales Performance Dashboard

End-to-end sales analytics project analyzing 4 years (2014–2017) of retail transaction data to identify profitability drivers and seasonal patterns.

## Business Question
Where is the business over- or under-performing, and why?

## Approach
1. **Data Cleaning (Python/Pandas)** — Cleaned and validated 9,994 rows of transaction data; corrected date formatting issues (originally stored as text); confirmed no missing values or duplicates.
2. **SQL Analysis (MySQL)** — Wrote queries using GROUP BY, aggregate functions, and date-based grouping to analyze sales by region, product, and time period.
3. **Dashboard (Power BI)** — Built an interactive dashboard with time-intelligence DAX measures (YoY growth), a Year slicer, and drill-down visuals.

## Key Findings
- **Discount-profit threshold:** Orders with discounts above 20% consistently become unprofitable. Average profit per order declines from +$96.06 (1–10% discount) to -$110.82 (30%+ discount).
- **Seasonality:** Sales consistently peak every September–December and dip every February, across all four years in the dataset.
- **Regional performance:** West and East regions drive the majority of both sales and profit; Central region underperforms on profit despite moderate sales volume.

## Tools Used
Python (Pandas), SQL (MySQL), Power BI (DAX, time-intelligence measures, data modeling)

## Files in this repository
- `data/Superstore_Cleaned.csv` — cleaned dataset
- `sql/superstore_analysis.sql` — SQL queries used for analysis
- `notebooks/data_cleaning_eda.ipynb` — Python cleaning and exploratory analysis
- `dashboard/Superstore_Sales_Dashboard.pbix` — Power BI dashboard file
- `dashboard/dashboard_screenshot.png` — dashboard preview image

## Dashboard Preview
*(screenshot will appear here once uploaded — see below)*
