create table feb as select * from job_postings where extract(year from job_posted_date)= 2023 
and extract(month from job_posted_date )= 2;

create table mar as select * from job_postings where extract(year from job_posted_date)= 2023 
and extract(month from job_posted_date )= 3;

