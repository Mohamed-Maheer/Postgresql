/* to avoid ambiguous which means the query processor cannot decide which of multiple possible references (columns)
is intended. i can use either the new temporary name used when i write the CTE after 'with'
like in "jobs_per_company.company_id" or to do like in CTE 1 file. 
in here it's solved becuase i specify which table i want to retrieve the company_id column from
which is "jobs_per_company.company_id" or "company.company_id"
so there is no more Ambiguity as when i don't mention which table 
i want to get the column from when the column name exists in multiple tables */

with jobs_per_company as
(select company_id , count(job_id) as no_of_jobs from job_postings group by company_id)

select company.company_id, company_name, no_of_jobs from company
left join jobs_per_company on jobs_per_company.company_id = company.company_id