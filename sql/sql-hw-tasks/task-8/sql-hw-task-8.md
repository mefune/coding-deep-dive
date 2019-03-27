-- B''H --

# Task: 8

- For all records which have more than 2 impressions - the avergage cost per account
- Final columns should have 
  - account
  - avg_cost_per_account
  - sum_cost
- Only include accounts where their avergage cost per account is greater than 4 dollars

## Output should look like:

|account|avg_cost_per_account|sum_cost_per_account|
|---|---|---|
|Complete Family Eye Care|4.004444444|36.04|
|E Street Eyes|4.185|50.22|
|Mall of the Americas EyeCare|4.044166667|194.12|
|TSO - Riverstone|17.02|17.02|
|Buena Vista Optometry|7.56|7.56|

# Details: 
```SQL

select   *
from     `data-science-course-226116.sql_lessons.group_by_sandbox` 

```

# Answer:

```sql

select   account,
         avg(cost)               avg_cost_per_account,
         sum(cost)               sum_cost_per_account
from     `data-science-course-226116.sql_lessons.group_by_sandbox` 
where    impressions > 2
group by account 
having   avg(cost) > 4

```