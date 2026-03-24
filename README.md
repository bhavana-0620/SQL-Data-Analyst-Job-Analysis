# 📊 Data Analyst Job Market Analysis (SQL Project)

---

## 📌 Introduction  
This project analyzes the data analyst job market using SQL, focusing on identifying:

- 💰 High-paying Data Analyst roles  
- 🔥 Most in-demand skills  
- 📈 Skills that balance **high demand and high salary**  

The goal is to provide **data-driven guidance** for aspiring data analysts on which skills to prioritize for career growth.


## 📂 Dataset

🔗 [Download Dataset](your_drive_link_here)


🔗 **SQL Queries:** [project_sql folder](./project_sql)

---

## 📌 Background  

With the increasing demand for data professionals, it is important to understand:

- Which roles offer the highest salaries  
- What skills are required for those roles  
- Which skills are most valuable in the job market  

This project uses job posting data containing:
- Job titles  
- Salaries  
- Locations  
- Required skills  

---

## 📌 Key Business Questions  

This analysis answers the following:

1. What are the top-paying Data Analyst jobs?  
2. What skills are required for these top-paying jobs?  
3. What skills are most in demand?  
4. Which skills are associated with higher salaries?  
5. What are the most optimal skills (high demand + high salary)?  

---

## 🛠️ Tools & Technologies  

- **SQL Server** – Data querying and analysis  
- **SSMS** – Query execution  
- **VS Code** – Project organization and version control  
- **Git & GitHub** – Version control and portfolio  

---

## 📊 Data Model Overview  

The dataset follows a **star-schema-like structure**:

- `job_postings_fact` → Main fact table  
- `company_dim` → Company details  
- `skills_dim` → Skill definitions  
- `skills_job_dim` → Bridge table (job ↔ skills)  

---

## 📈 Analysis & Approach  

---

### 🔹 1. Top Paying Data Analyst Jobs 

To accurately identify top-paying roles:

- Filtered only **true Data Analyst roles**  
- Excluded senior roles (Director, Manager, Principal)  
- Focused on roles with **valid salary data**  
- Used **window functions (ROW_NUMBER)** for ranking  

#### ✅ Key Insight  

- The highest-paying jobs for data analysts that allow remote work offer a wide range of salaries, the highest at $650,000!
- Salaries vary significantly, indicating **wide compensation bands**  
- High-paying roles often include **hybrid skill expectations**  
- Some job titles include advanced responsibilities beyond traditional analysis  


![Top Paying Roles](assets/1_top_paying_roles.png)
*Bar graph visualizing the salary for the top 10 salaries for data analysts*

---

### 🔹 2. Skills Required for Top-Paying Jobs  

- Identified top 10 highest-paying roles  
- Joined with skill data to extract required skills  

#### ✅ Key Insight  

- High-paying roles require **multi-skill combinations**  
- SQL is a baseline skill, while **Python and cloud tools** increase salary potential  
- Advanced roles combine **analysis + data engineering capabilities**

  
![Top Paying Skills](assets/2_top_paying_roles_skills.png)
*Bar graph visualizing the count of skills for the top 10 paying jobs for data analysts*

---

### 🔹 3. Most In-Demand Skills  

- Calculated demand using **percentage of job postings**  
- Filtered only relevant Data Analyst roles  

#### ✅ Key Insight  

- SQL is a **baseline requirement**, not a differentiator  
- Excel remains highly relevant for business analysis  
- Visualization tools are consistently in demand  

---

### 🔹 4. Skills Based on Salary  

- Calculated average salary per skill  
- Filtered low-frequency skills to avoid bias  

#### ✅ Key Insight  

- Some skills have **high salary but low demand** → niche skills  
- Cloud and big data tools command higher salaries  
- Cross-functional skills increase earning potential  

---

### 🔹 5. Optimal Skills (Demand + Salary)  

- Combined demand and salary metrics  
- Focused on reliable, high-frequency skills  

#### ✅ Key Insight  

- Optimal skills lie at the intersection of:
  - High demand  
  - High salary  

- Best strategy:
  👉 Focus on **balanced skill development**

---

## 🧠 Key Learnings  

Through this project, I developed:

- Advanced SQL (CTEs, joins, aggregations, window functions)  
- Business-focused analytical thinking  
- Data filtering and validation techniques  
- Structured SQL project organization  

---

## 📌 Final Insights  

- SQL is a **foundational skill** across all roles  
- Python and cloud technologies increase salary potential  
- High-paying roles require **multi-disciplinary skill sets**  
- Niche skills offer high salaries but limited opportunities  
- Optimal skills balance **demand and salary**

---

## 📌 Conclusion  

This project demonstrates how SQL can be used to extract meaningful insights from real-world data.

It highlights that success in data analytics depends on:

- Strong foundational skills  
- Continuous learning of advanced tools  
- Understanding job market trends  
