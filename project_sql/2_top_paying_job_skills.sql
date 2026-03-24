/*
-- 02_top_paying_job_skills.sql

Skills required for the top-paying data analyst jobs
- Top 10 highest-paying Data Analyst jobs from first query
- Specific skills required for these roles

*/

WITH ranked_jobs AS (
    SELECT
        jp.job_id,
        jp.job_title,
        jp.salary_year_avg,
        cd.name AS company_name,
        ROW_NUMBER() OVER (ORDER BY jp.salary_year_avg DESC) AS rank
    FROM job_postings_fact jp
    LEFT JOIN company_dim cd 
        ON jp.company_id = cd.company_id
    WHERE
        jp.salary_year_avg IS NOT NULL
        AND jp.job_work_from_home = 1
        AND jp.job_title LIKE '%Data Analyst%'
        AND jp.job_title NOT LIKE '%Director%'
        AND jp.job_title NOT LIKE '%Principal%'
        AND jp.job_title NOT LIKE '%Manager%'
),

top_paying_jobs AS (
    SELECT *
    FROM ranked_jobs
    WHERE rank <= 10
)

SELECT 
    tpj.job_id,
    tpj.job_title,
    tpj.company_name,
    tpj.salary_year_avg,
    sd.skills
FROM top_paying_jobs tpj
INNER JOIN skills_job_dim sj 
    ON tpj.job_id = sj.job_id
INNER JOIN skills_dim sd 
    ON sj.skill_id = sd.skill_id
ORDER BY 
    tpj.salary_year_avg DESC;
