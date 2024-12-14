select company_id,company_name  from company 
where company_id in 
(select company_id from job_postings where job_no_degree_mention = true)
order by company_id