-- B''H --


# Task: 11


- from `data-science-course-226116.sql_lessons.group_by_sandbox`  table

---

- ***Level-of-Grain***: first digit of character of account
    - Note, there is a **bug** at this moment in BigQuery. 
    - If you use an alias in the SELECT clause you must use that alias in the GROUP BY and ORDER BY clause (if you need that logic to be used in those clauses)

---

- Output columns:
    - account_char_1
    - avg_cost
    - min_cost
    - max_cost
    - cost_range

- note the cost-range is the max-cost minus the min-cost    

- only return results where the number of impressions is between 4 and 8 and the cost more than 5    

- also, only show records where the avg_cost > 9

## Output should look like:


|account_char_1|avg_cost|min_cost|max_cost|cost_range|
|---|---|---|---|---|
|M|10.8075|5.73|26.23|20.5|
|P|9.788705882|5.09|39.63|34.54|
|T|9.743109125|5.01|97.54|92.53|
