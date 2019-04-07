-- B''H --

with step_1
as
(
select   account,                           
         day,
         cost,
         -- -------------------------------------------------
          avg(cost) over (
             partition by  account
             order by      account_day_seq_no
             range between 3 preceding and current row
         ) moving_avg_4_days  
         -- -------------------------------------------------
from     `data-science-course-226116.sql_lessons.google_ads_etl_step_2` 
         -- -------------------------------------------------
),

step_2 as
(
select   *,
         dense_rank() over (
             partition by account
             order by     moving_avg_4_days desc
         ) account_moving_avg_4_days_dense_rank
from     step_1 
         -- -------------------------------------------------
)

select   *
from     step_2
where    account_moving_avg_4_days_dense_rank = 1
order by account
         



 dense_rank() over (
             partition by account
             order by     day
         ) account_day_seq_no,
         *

     /*  avg(cost) over (
             partition by  account
             order by      day, pk_id
             rows between 2 preceding and current row
         ) moving_avg_3_rows  

    */

         sum(cost) over (
             partition by  account
             order by      day
             range between unbounded preceding and current row
         ) cumalitive_cost_using_range,
         -- -------------------------------------------------
         sum(cost) over (
             partition by account
             order by     day, pk_id
             rows between unbounded preceding and current row
         ) cumalitive_cost_using_rows,         
         -- -------------------------------------------------
  
         -- -------------------------------------------------
         avg(cost) over (
             partition by  account
             order by      day, pk_id
             rows between 2 preceding and current row
         ) moving_avg_3_rows     
         -- -------------------------------------------------


