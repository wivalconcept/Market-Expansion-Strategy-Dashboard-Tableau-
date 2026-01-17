Market Expansion Strategy Dashboard (Canada)

📌 Project Overview

This project demonstrates how data analytics can be used to support international market expansion decisions.

Using historical sales data from the United States, Germany, and France, I built an interactive Tableau dashboard to determine:

Which product categories should lead expansion

The optimal time of year to launch

The most effective sales channel strategy (online vs physical)

Canada is not present in the dataset, so existing markets are used as proxy markets to infer demand patterns and reduce expansion risk.

🎯 Business Objectives

Identify high-performing products suitable for a new market

Analyse seasonality trends to determine the best launch window

Compare online vs physical store performance

Translate insights into clear, actionable business recommendations

🗂️ Data Overview

The dataset contains transactional sales data with the following dimensions:

Country (United States, Germany, France)

Sales Channel (Online, Physical Store)

Product Category & Sub-Category

Revenue, Quantity, Cost

Month and Year of sale

Data was sourced from Microsoft SQL Server and visualised using Tableau Desktop Public Edition.

🔍 Analytical Approach


1️⃣ Product Performance Analysis

Revenue was analysed by product category across all markets.

Key Insight

Bikes are the top-performing category by revenue

Performance is consistent across multiple countries

📌 Decision:
Prioritise Bikes as the lead product category for expansion.

2️⃣ Seasonality & Timing Analysis

Monthly revenue trends were analysed by product category and channel.

Key Insights

Demand begins rising in March

Peaks between April and June

Declines during July–August

Recovers towards year-end

📌 Decision:
Launch ahead of peak demand to maximise early traction.

Recommended launch window: April–May

3️⃣ Channel Performance Analysis

Revenue was segmented by sales channel.

Key Insights

The online channel consistently outperforms physical stores

Online sales show stronger scalability and lower operational risk

Physical stores perform steadily in Europe but require higher upfront investment

📌 Decision:
Adopt an online-first expansion strategy.

4️⃣ Proxy Market Validation

Since Canada is not included in the dataset, USA and Germany were used as proxy markets due to similarities in consumer behaviour and seasonality.

Findings

Bike sales in proxy markets show consistent spring demand

Peak performance aligns with Q2 (April–June)

Online channel dominance is strongest in North America

📌 Conclusion:
Canada is likely to follow a similar seasonal and channel pattern.

✅ Final Strategic Recommendations
Area	Recommendation
Product	Focus on Bikes
Timing	Launch in April–May
Channel	Online-first strategy
Risk Mitigation	Validate demand digitally before physical expansion
📊 Dashboard Preview

The Tableau dashboard includes:

Revenue distribution by country

Monthly revenue trends by channel

Product category performance

Product × Channel × Country comparisons

📸 Dashboard screenshots are available in the /screenshots folder.

🔗 Interactive Dashboard (Tableau Public):
(Add your Tableau Public link here)

🛠 Tools & Skills Demonstrated

Tableau: Dashboard design, filters, calculated fields, relationships

SQL (Microsoft SQL Server): Data exploration and validation

Business Analytics: Market expansion analysis

Data Storytelling: Translating data into executive-level insights

📂 Repository Structure

market-expansion-strategy/
│
├── README.md
│
├── screenshots/
│   ├── dashboard_overview.png
│   ├── revenue_by_country.png
│   ├── monthly_revenue_by_channel.png
│   └── product_category_performance.png
│
├── sql/
│   └── validation_queries.sql
│
└── tableau/
    └── market_expansion_dashboard.twbx


📌 Why This Project Matters

This project reflects real-world analytics work:

Working with incomplete data

Making defensible assumptions

Using proxy markets

Communicating insights clearly to stakeholders

It demonstrates the ability to bridge data analysis and business strategy, not just build charts.

👤 Author

Valentine Chukwunwike
Data Analyst | SQL | Tableau | Python
Open to opportunities across UK & Europe

