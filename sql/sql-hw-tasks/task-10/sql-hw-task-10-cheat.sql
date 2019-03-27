-- B''H --



select   account,
         count(distinct campaign) number_of_distinct_campaigns,
         count(*) number_of_records
from     `data-science-course-226116.sql_lessons.group_by_sandbox` 
group by account
having   count(distinct campaign) > 2         
order by number_of_records desc




select   account,
         count(distinct campaign) number_of_distinct_campaigns,
         count(*) number_of_records,  
         -- --------------------------------------------------- 
         string_agg(distinct campaign, ', ' order by campaign) campaigns_csv
         -- --------------------------------------------------- 
from     `data-science-course-226116.sql_lessons.group_by_sandbox`         
         -- ---------------------------------------------------
group by account
         -- ---------------------------------------------------
having   count(distinct campaign) > 2
         -- ---------------------------------------------------
order by number_of_records desc


