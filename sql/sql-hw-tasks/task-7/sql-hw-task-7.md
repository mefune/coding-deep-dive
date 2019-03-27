-- B''H --

# Task: 7

[Link to Task:](https://github.com/Ylazerson/coding-deep-dive/blob/master/sql/sql-hw-tasks/sql-assignments/sql-task-007.md)

- Try to do one (and only one) "step" column in each with statement
- That you can slowly build up the solution
- Each "step" column is based on prior "step" column(s)
- If you get blocked and can't solve a certain "step" column, take a peek at sql-task-007.sql
- This is a real business-need SQL puzzle, so don't be surprised if it takes you a few days or more

### Tips:

The following SQL "tools" might help:

- `with` statement
- `case` statement
- `substr` function
- `lower` function
- `strpos` function
- `safe_cast` function
- `cast` function
- `replace` function
- `trim` function
- `concat` function

### Details:

```SQL

with step_00 as

(
select   distinct field_6, 
         -- ---------------------------------------------         
         case 
             when lower(field_6) like '%monday - friday:%' 
             then 'Y'
             else 'N'
         end step_00_mon_fri_flag
         -- ---------------------------------------------
from     `data-science-course-226116.sql_lessons.stock_exchanges_raw_input` 
         -- ---------------------------------------------
order by 1
),
         
step_01 as
    
(
select   *,
         trim(replace(field_6, 'Monday - Friday:', ''))
         step_01_remove_mon_fri
         -- ---------------------------------------------
from     step_00     
),
         -- ---------------------------------------------
         
step_02 as
    
(
select   *, 
         strpos(step_01_remove_mon_fri, ':') step_02_str_pos_of_colon
         -- ---------------------------------------------
from     step_01
),

step_03 as

(
select   *,
         case 
             when step_02_str_pos_of_colon > 0 
             then substr(
                     step_01_remove_mon_fri,            
                     1,        
                     step_02_str_pos_of_colon -1
                    )
             else ''
         end step_03_str_up_to_first_colon
         -- ---------------------------------------------
from     step_02
),

step_04 as
    
( 
select   *,
         case
             when safe_cast(step_03_str_up_to_first_colon as int64) is null 
             then cast(step_04_str_up_to_first_colon_as_int64 as null)
             else ''
         end
         -- ---------------------------------------------
from     step_03
)

select   *,
         case
            when safe_cast(
                 substr(step_01_remove_mon_fri, 1,1 as int64) is null
                 then substr(step_01_remove_mon_fri, 1, step_04_str_up_to_first_colon_as_int64)
             else ''
         end step_05_times_prefix
from     step_04
         
```