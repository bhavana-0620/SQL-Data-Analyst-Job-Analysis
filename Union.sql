--January
CREATE table january_jobs as
    select *
    from job_postings_fact
    where extract(month from job_posted_date) =1;

--February  
CREATE TABLE february_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 2;

--March
CREATE TABLE march_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 3;

--now performing union

select 
    job_title_short,
    company_id,
    job_location
from 
    january_jobs
UNION
select 
    job_title_short,
    company_id,
    job_location
from 
    february_jobs
UNION
select 
    job_title_short,
    company_id,
    job_location
from 
    march_jobs;

-- union all 
select 
    job_title_short,
    company_id,
    job_location
from 
    january_jobs
UNION all 
select 
    job_title_short,
    company_id,
    job_location
from 
    february_jobs
UNION all
select 
    job_title_short,
    company_id,
    job_location
from 
    march_jobs;
