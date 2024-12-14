/*union it retrieves unique rows 
union all it retrieves all rows even duplicated*/

SELECT  Company_id,job_title_short,job_location FROM JAN

UNION all

SELECT  Company_id,job_title_short,job_location from feb

UNION all

SELECT  Company_id,job_title_short,job_location from mar

order by company_id
