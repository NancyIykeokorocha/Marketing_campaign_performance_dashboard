# Marketing Campaign Performance Dashboard

## Overview
An end-to-end marketing analytics project analyzing campaign effectiveness across channels, customer segments, and objectives to identify where marketing budget delivers the strongest return. Built using a 35,000-row dataset spanning 2022–2024, covering 50 campaigns, 20 products, and 6 customer segments.

## Tools Used
- **MySQL** — database creation, table imports, LEFT JOIN queries
- **Excel (Power Query)** — data cleaning, type correction, calculated columns
- **Power BI** — star-schema data modeling, DAX measures, interactive dashboard

## Project Workflow
1. **MySQL** — Created a relational database and joined 4 tables (fact + 3 dimensions) using LEFT JOIN to preserve every record
2. **Excel / Power Query** — Cleaned data types, flagged data quality anomalies transparently (rather than deleting them), and built calculated metrics (CTR, CVR, ROI)
3. **Power BI** — Modeled a proper star schema, built 8 DAX measures, and designed an interactive dashboard with KPI cards, 4 charts, and 3 slicers (Channel, Segment, Year)

## Key Findings
- Search delivers the strongest return relative to spend among all channels; Influencer the weakest
- Email receives the highest channel spend, yet ranks only 4th of 6 on comparative return — a budget misalignment worth investigating
- Campaigns labeled "Retention" generated more conversions than those explicitly labeled "Conversion" (2,094,519 vs. 1,663,879)
- A small, verified data anomaly (18 of 35,000 rows) was documented and flagged rather than silently removed, preserving data integrity

## Dashboard Preview
![Marketing Campaign Dashboard](<img width="1737" height="857" alt="image" src="https://github.com/user-attachments/assets/65243caf-bfb4-4b41-a6c6-7863077606cc" />
)


## Files in This Repository
- `campaign_joined_query.sql` — the MySQL LEFT JOIN query used to build the combined dataset
- `Marketing_Campaign_Dashboard.pbix` — the full Power BI file
- `Insights_and_Recommendations.pdf` — exported summary of findings and recommendations
