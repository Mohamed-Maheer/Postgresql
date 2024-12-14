/* to avoid ambiguous which means the query processor cannot decide which of multiple possible references (columns) 
is intended i can use either "as" and make a name for the column that i want to retrieve like in this, when i write 
company_id as company_code and then use the new name in the query "company_code" or to do like in 
CTE 2 file. in here it's solved becuase there is no more two columns with the same name "company_id"
so there is no more Ambiguity.it becomes one called company_code in "jobs_per_company" 
and the other is called company_id in company table so there is no Ambiguity */
 
with jobs_per_company as (
select company_id as company_code , count(job_id) as no_of_jobs from job_postings
group by company_id)

select company_code, company_name, no_of_jobs from company
left join jobs_per_company on jobs_per_company.company_code = company.company_id 