-- 05_optimal_skills.sql

/*
Most optimal skills (high demand + high salary)
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

skill_stats AS (
    SELECT 
        sd.skill_id,
        sd.skills,
        COUNT(DISTINCT fj.job_id) AS demand_count,
        AVG(fj.salary_year_avg) AS avg_salary
    FROM filtered_jobs fj
    JOIN skills_job_dim sj 
        ON fj.job_id = sj.job_id
    JOIN skills_dim sd 
        ON sj.skill_id = sd.skill_id
    GROUP BY sd.skill_id, sd.skills
)

SELECT 
    skill_id,
    skills,
    demand_count,
    ROUND(avg_salary, 0) AS avg_salary
FROM skill_stats
WHERE demand_count >= 5  
ORDER BY 
    demand_count DESC,
    avg_salary DESC
    limit 25;
