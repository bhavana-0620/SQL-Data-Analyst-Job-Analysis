/*
-- 04_top_paying_skills.sql

Top skills based on salary
- Average salary associated with each skill for Data Analyst positions
- Roles with specified salaries, regardless of location
*/

WITH filtered_jobs AS (
    SELECT 
        job_id,
        salary_year_avg
    FROM job_postings_fact
    WHERE 
        salary_year_avg IS NOT NULL
        AND job_title LIKE '%Data Analyst%'
        AND job_title NOT LIKE '%Director%'
        AND job_title NOT LIKE '%Principal%'
        AND job_title NOT LIKE '%Manager%'
),

skill_salary AS (
    SELECT 
        sd.skills,
        COUNT(DISTINCT fj.job_id) AS job_count,
        AVG(fj.salary_year_avg) AS avg_salary
    FROM filtered_jobs fj
    JOIN skills_job_dim sj 
        ON fj.job_id = sj.job_id
    JOIN skills_dim sd 
        ON sj.skill_id = sd.skill_id
    GROUP BY sd.skills
)

SELECT 
    skills,
    ROUND(avg_salary, 0) AS avg_salary
FROM skill_salary
WHERE job_count >= 5   
ORDER BY avg_salary DESC
LIMIT 25;
