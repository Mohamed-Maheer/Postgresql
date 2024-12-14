create table jan_feb_mar as select * from job_postings where extract(year from job_posted_date)=2023 and extract(month from job_posted_date)=1 or extract(month from job_posted_date)=2 or extract(month from job_posted_date)=3;

 