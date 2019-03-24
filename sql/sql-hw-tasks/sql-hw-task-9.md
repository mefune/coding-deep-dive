-- B''H -- 


## Task: 9


- Use the `data-science-course-226116.sql_lessons.group_by_sandbox`  table

- ***Level-of-Grain*** should be account and campaign

- Output should have 
    - account_campaign `concat`
    - cost_per_impression
    - max_cost

- order the results by cost_per_impression in descending order

- Only include results where max-cost > 80 ***or*** cost-per-impression > 5

## Output should look like:


|account_campaign|cost_per_impression|max_cost|
|---|---|---|
|Buena Vista Optometry - Search Ads - Live|5.956527778|19.44|
|Lifetime Eyecare Associates - Search Ads - Alcon - Paused|5.91|12.54|
|Kosnoski Eye Care - Search Ads - Federal Way - Paused|5.216071429|13.96|
|TSO - Custer Creek - Search Ads - Live|1.358001528|97.54|

# Answer: 
```SQL

select   concat(account, ' - ', campaign) account_campaign,
         sum(cost) / sum(impressions)     cost_per_impression,
         max(cost)                        max_cost
         -- ---------------------------------
from     `data-science-course-226116.sql_lessons.group_by_sandbox` 
         -- ---------------------------------
group by account,
         campaign 
         -- ---------------------------------
having   sum(cost) / sum(impressions) > 5
    or   max(cost) > 80
         -- ---------------------------------
order by cost_per_impression desc

```