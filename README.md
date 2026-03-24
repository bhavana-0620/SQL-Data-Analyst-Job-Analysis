📊 Data Analyst Job Market Analysis (SQL Project)
📌 Introduction

This project analyzes the data analyst job market using SQL, focusing on identifying:

💰 High-paying Data Analyst roles
🔥 Most in-demand skills
📈 Skills that balance high demand and high salary

The goal is to provide data-driven guidance for aspiring data analysts on which skills to prioritize for career growth.

📊 dataset used: [https://drive.google.com/drive/folders/1lUWa3KBU6z7cSb1P_hBM7zDzoKY8IstN?usp=drive_link](url)

🔗 SQL Queries: [SQL_PROJECT_Folder](/project_sql/)


📌 Background

With the increasing demand for data professionals, it is important to understand:

Which roles offer the highest salaries
What skills are required for those roles
Which skills are most valuable in the job market

This project uses job posting data containing:

Job titles
Salaries
Locations
Required skills
📌 Key Business Questions

This analysis answers the following:

What are the top-paying Data Analyst jobs?
What skills are required for these top-paying jobs?
What skills are most in demand?
Which skills are associated with higher salaries?
What are the most optimal skills (high demand + high salary)?
🛠️ Tools & Technologies
SQL Server – Data querying and analysis
SSMS – Query execution
VS Code – Project organization and version control
Git & GitHub – Version control and portfolio
📊 Data Model Overview

The dataset follows a star-schema-like structure:

job_postings_fact → Main fact table
company_dim → Company details
skills_dim → Skill definitions
skills_job_dim → Bridge table (job ↔ skills)
📈 Analysis & Approach
🔹 1. Top Paying Data Analyst Jobs (image-1.png)

To accurately identify top-paying roles:

Filtered only true Data Analyst roles
Excluded senior roles (Director, Manager, Principal)
Focused on roles with valid salary data
Used window functions (ROW_NUMBER) for ranking
✅ Key Insight
Salaries vary significantly, indicating wide compensation bands
High-paying roles often include hybrid skill expectations (analytics + engineering)
Some job titles labeled as “Data Analyst” include advanced responsibilities
🔹 2. Skills Required for Top-Paying Jobs
Identified top 10 highest-paying roles
Joined with skill data to extract required skills
✅ Key Insight
High-paying roles require multi-skill combinations
SQL is a baseline skill, but Python and cloud tools increase salary potential
Advanced roles combine analysis + data engineering capabilities
🔹 3. Most In-Demand Skills
Calculated demand using percentage of job postings (not just counts)
Filtered only relevant Data Analyst roles
✅ Key Insight
SQL is a baseline requirement, not a differentiator
Excel remains highly relevant for business analysis
Visualization tools (Tableau, Power BI) are consistently in demand
🔹 4. Skills Based on Salary
Calculated average salary per skill
Included only skills with sufficient job counts to avoid bias
✅ Key Insight
Some skills show high salary but low demand → niche skills
Big data and cloud tools command higher salaries
Skills bridging analytics and engineering are more valuable
🔹 5. Optimal Skills (Demand + Salary)
Combined demand and salary metrics
Filtered unreliable low-frequency skills
✅ Key Insight
Optimal skills lie at the intersection of:
High demand
High salary
Best career strategy:
👉 Focus on skills that balance both, not just one
🧠 Key Learnings

Through this project, I developed:

Advanced SQL skills (CTEs, joins, aggregations, window functions)
Ability to translate business questions into SQL queries
Understanding of data quality issues and filtering logic
Experience in building structured, reusable SQL workflows
📌 Final Insights
SQL is a foundational skill, required across most roles
Python and cloud technologies increase earning potential
High-paying roles often require multi-disciplinary skills
Niche skills offer high salaries but limited opportunities
Optimal skills combine high demand + high salary
📌 Conclusion

This project demonstrates how SQL can be used to extract meaningful insights from real-world data.

The analysis highlights that success in data analytics depends on:

Building strong foundational skills
Expanding into advanced and specialized tools
Understanding market demand trends

