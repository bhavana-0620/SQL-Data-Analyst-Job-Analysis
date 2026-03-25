-- 05_optimal_skills.sql

/*
Goal: Identify "Optimal" skills—those that are both high-demand and high-salary.
- Combines demand (Count) and value (Avg Salary) into a single analysis.
- Filters for remote roles (Anywhere) to keep the comparison consistent.
- Demonstrates advanced multi-metric aggregation in a single query.
*/

WITH skill_metrics AS (
    SELECT 
        sd.skill_id,
        sd.skills,
        COUNT(sjd.job_id) AS demand_count,
        AVG(jp.salary_year_avg) AS avg_salary
    FROM 
        job_postings_fact AS jp
    INNER JOIN skills_job_dim AS sjd 
        ON jp.job_id = sjd.job_id
    INNER JOIN skills_dim AS sd 
        ON sjd.skill_id = sd.skill_id
    WHERE 
        jp.job_title_short = 'Data Analyst' 
        AND jp.salary_year_avg IS NOT NULL
        AND jp.job_work_from_home = TRUE
    GROUP BY 
        sd.skill_id
)

SELECT 
    skills,
    demand_count,
    ROUND(avg_salary, 0) AS avg_salary
FROM 
    skill_metrics
WHERE 
    demand_count > 10 
    avg_salary DESC, 
    demand_count DESC
LIMIT 25;
