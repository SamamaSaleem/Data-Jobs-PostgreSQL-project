SELECT 
    job_title_short AS title,
    job_location AS location,
    job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date,
    EXTRACT(MONTH FROM job_posted_date) AS job_month,
    EXTRACT(YEAR FROM job_posted_date) AS job_year
FROM job_postings_fact
LIMIT 5;
