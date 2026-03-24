-- 01_top_paying_jobs.sql

/*
What are the top paying data analyst jobs? 
- Only Data Analyst roles
- Location - Anywhere 
- Remove null salaries
*/

WITH ranked_jobs AS (
    SELECT
        jp.job_id,
        jp.job_title,
        jp.job_location,
        jp.job_schedule_type,
        jp.salary_year_avg,
        jp.job_posted_date,
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
)
SELECT 
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    company_name
FROM ranked_jobs
WHERE rank <= 10
ORDER BY salary_year_avg DESC;
