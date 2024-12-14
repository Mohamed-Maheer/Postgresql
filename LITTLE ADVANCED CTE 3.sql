with remote_skills as (select skill_id, count(job_postings.job_id) as no_of_jobs
from skills_job
join job_postings on job_postings.job_id= skills_job.job_id
where job_work_from_home= true and job_title_short='Data Analyst'
group by skill_id
order by no_of_jobs desc)

select remote_skills.skill_id,skill_name, no_of_jobs from remote_skills 
left join skills on skills.skill_id = remote_skills.skill_id order by no_of_jobs desc limit 5