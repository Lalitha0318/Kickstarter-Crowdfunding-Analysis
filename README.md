# <h1>Kickstarter-Crowdfunding-Analysis</h1>
**A Data-Driven Analysis of 365,000+ Crowdfunding Projects (Power BI • Tableau • SQL • Excel • MySQL)**

End-to-end analytics project on 365K+ Kickstarter campaigns using SQL, MySQL, Power BI, Tableau, and Excel. Includes data cleaning, KPI analysis, dashboards, insights, and success-factor recommendations. Demonstrates real-world data handling, visualization, and business analytics skills.

# <h1>Summary</h1>
This project analyzes 365,892 Kickstarter campaigns to uncover key success patterns, high-performing categories, and data-driven recommendations. Using SQL, MySQL, Power BI, Tableau, and Excel, I built an end-to-end pipeline for data cleaning, analysis, visualization, and insight generation. The dataset includes goal amount, pledges, categories, backers, timelines, locations, and campaign outcomes. 

This case study demonstrates strong business understanding, analytical thinking, and data storytelling.
# <h1>Dataset Overview</h1>
**•** **Total Projects:** 365.89K

**•** **Total Money Raised:** $3.46B

**•** **Total Unique Backers:** 39.97M

**•** **Overall Success Rate:** 38.35%

**•** **Average Duration of Successful Campaign:** 80.36 days

**•** **Largest Countries:** US (288K), Great Britain (83K), Canada (15K)
# <h1>Data Cleaning & Preprocessing</h1>

**Challenges faced due to large dataset (365K+ rows):**

# <h2>Excel Limitations</h2> 

**•** Excel struggled with file size

**•** Pivot tables crashed

**•** Required splitting & reformatting

# <h2>MySQL Data Loading Issues</h2>

**•** Column mismatch errors

**•** Currency symbols prevented numeric imports

**•** Mixed date formats caused parsing failures

**•** Incorrect decimal values

# <h2>Cleaning Steps</h2>
**•** Converted the Date fields to Natural Time 

**•** Built a Calendar Table

**•** Removed duplicates

**•** Standardized date formats

**•** Converted currency to decimals

**•** Cleaned goal/pledged amounts

**•** Normalized categories & mapped outcomes

**•** Performed NA/NULL handling

**Tools used:**

**Power Query, SQL, Excel, MySQL**
# <h1>SQL Analysis</h1>

Using MySQL, I performed advanced queries:

# <h2>Key Queries:</h2>

🔹Funding success rate

🔹Category performance

🔹Country-level breakdown

🔹Goal vs. success relationship

🔹Backer contribution patterns

🔹Year-based campaign activity

Demonstrates ability to handle large datasets, optimize queries, and derive insights.
# <h1>Dashboarding (Power BI, Tableau, Excel)</h1>

## **Power BI Dashboard**

<img width="3402" height="2188" alt="Kickstarter Crowdfunding Analysis_Power BI" src="https://github.com/user-attachments/assets/58a775a4-97f3-4f89-9ad2-46dd2b7aaf94" />

## **Excel Dashboard**

<img width="1525" height="832" alt="image" src="https://github.com/user-attachments/assets/5d847084-dd0f-4960-8181-17ccb8a6f8ee" />

# <h2>KPI Overview</h2>

🔹Total projects

🔹Total money raised

🔹Success/failure percentages

🔹Total backers

🔹Avg project duration

# <h2>Category Performance</h2>

🔹Top categories (Product Design, Tabletop Games, Music, Documentary)

🔹Mid-tier categories

🔹Under-performing niches

# <h2>Country/Location Insights</h2>

🔹Distribution across countries

🔹US dominance

🔹Global growth opportunities

# <h2>Goal vs Success Rate</h2>

🔹Under $1K → 60% success

🔹$1K–$10K → moderate success

🔹$10K–$100K → steep decline

🔹Over $500K → <10% success

# <h2>Year-Based Trends</h2>

🔹Peak in 2014 (59K projects)

🔹Consistent activity 2012–2017 (39K–58K)

🔹Sharp decline by 2019
# <h1>Insights & Findings</h1>
 Outcome Breakdown
| Outcome    | Count | Percentage | Insight                          |
| ---------- | ----- | ---------- | -------------------------------- |
| Failed     | 188K  | 54.54%     | Majority fail – high competition |
| Successful | 140K  | 40.63%     | Strong minority can succeed      |
| Canceled   | 32K   | 9.28%      | Often due to low traction        |
| Suspended  | 3K    | 0.86%      | Policy violations                |
# <h1>Category Insights</h1>
# <h2>Top Categories (Most Activity & Interest)</h2>
🔹Product Design — 23.2K

🔹Tabletop Games — 15.6K

🔹Music — 15.1K

🔹Documentary — 14.1K

# <h2>Mid-Tier Categories (8K–10K)</h2>

🔹Video Games

🔹Shorts

🔹Food

🔹Film & Video

🔹Art

🔹Apparel

🔹Publishing

# <h2>Low-Volume Categories (<5K)</h2>

🔹Photography

🔹Tech

🔹Comics

🔹Crafts

🔹Business

# <h1>Location Insights</h1>

🔹United States: 288K projects (majority)

🔹Great Britain: 83K

🔹Canada: 15K

🔹Most other countries: <10K

**Insight:** Huge untapped potential outside the US.

# <h1>Time-Based Trends</h1>
🔹**Peak Year: 2014 (59K projects)**

🔹**Stable Period:** **2012–2017 (39K–58K)**

🔹**Decline:** **2019 (4K projects)**

As Kickstarter evolved, the platform became more competitive, prompting creators to approach project launches more strategically.
# <h1>Key Recommendations (Business Impact)</h1>
**1. Set Realistic Funding Goals**

**•** Under $1K → ~60% success rate

**•** Over $500K → <10% success rate

🔹 Always aim for minimum viable funding first.

**2. Choose High-Performing Categories**

Best categories:

**•** Outdoors (76.5%)

 **•** Residences (73.7%)

 **•** Indie Rock

 **•** Animals

🔹 Focus on categories with proven traction.

**3. Launch Timing Is Not Critical**

**•** No strong monthly/seasonal spikes.

🔹 Focus on audience building, not launch month.

**4. Strategy Drives Success**

**•** Success correlates strongly with:

**•** Low goals

**•** Popular categories

**•** US/UK region

**•** Strong community

🔹 Success is predictable — not random.

# <h1>Key Learnings</h1>
✔ Data Processing at Scale

**•** Handled 365K+ rows, 25+ attributes
**•** Developed scalable ingestion pipelines.

✔ SQL Expertise

**•** Performed advanced aggregations, joins, date functions, and outcome modeling.

✔ Dashboard & Visualization

Created professional dashboards in:

**•** Power BI

**•** Tableau

**•** Excel

✔ Problem Solving

**•** Resolved:

**•** Data type errors

**•** Mixed formats

**•** Loading failures

**•** Currency cleansing

✔ Project Management

**•** Complete pipeline ownership:
**Raw Data → Cleaning → SQL → Dashboards → Insights → Documentation**
# <u><b>What This Project Demonstrates</b></u>
✔ End-to-end analytics

✔ Handling large datasets

✔ Business thinking

✔ Problem solving

✔ Data storytelling

✔ SQL + Dashboard + Excel mastery

✔ Clear business recommendations

✔ KPI-based analysis
# <h1>Conclusion</h1>

This Kickstarter analytics project demonstrates a complete end-to-end data workflow — from cleaning a large, messy dataset to performing advanced SQL analysis, building interactive dashboards, and generating meaningful business insights. By uncovering patterns across 365K+ campaigns, the project highlights the key drivers of crowdfunding success: realistic funding goals, strong category selection, and clear audience targeting.

Beyond the insights, this project reflects strong analytical thinking, problem-solving, data storytelling, and proficiency across SQL, MySQL, Power BI, Tableau, and Excel. It showcases the ability to work with real-world scale data, design KPIs, and deliver actionable recommendations
