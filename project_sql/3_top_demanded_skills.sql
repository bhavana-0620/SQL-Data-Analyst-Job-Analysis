/*
-- 03_top_demanded_skills.sql

Question: What are the most in-demand skills for data analysts?
- Join job postings to inner join table similar to query 2
- Identify the top 5 in-demand skills for a data analyst
- Focus on all job postings.
- Why? Retrieves the top 5 skills with the highest demand in the job market,
  providing insights into the most valuable skills for job seekers.
*/

WITH filtered_jobs AS (
    SELECT job_id
    FROM job_postings_fact
    WHERE
        job_title LIKE '%Data Analyst%'
        AND job_title NOT LIKE '%Director%'
        AND job_title NOT LIKE '%Principal%'
        AND job_title NOT LIKE '%Manager%'
),

total_jobs AS (
    SELECT COUNT(DISTINCT job_id) AS total
    FROM filtered_jobs
)

SELECT 
    sd.skills,
    COUNT(DISTINCT sj.job_id) AS demand_count,
    COUNT(DISTINCT sj.job_id) * 100.0 / tj.total AS demand_percentage
FROM filtered_jobs fj
JOIN skills_job_dim sj 
    ON fj.job_id = sj.job_id
JOIN skills_dim sd 
    ON sj.skill_id = sd.skill_id
CROSS JOIN total_jobs tj
GROUP BY sd.skills, tj.total
ORDER BY demand_count DESC
LIMIT 5;
