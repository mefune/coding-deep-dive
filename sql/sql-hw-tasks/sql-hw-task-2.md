-- B''H --

# Task: 2

- Show columns:
    - state abbreviation
    - 1st charachter of state name 
- Order the results by the 3rd charachter of the state name
- Only show records where 3rd charachter of state name is eiter a, e, i, o , u    

# Answer:
Form Baruch
```SQL


select   state_abbreviation,
         substr(state_name, 1, 1) state_1st_char 
         -- ---------------------------------------------------
from     `data-science-course-226116.sql_lessons.states` 
         -- ---------------------------------------------------
where    lower(
               substr(state_name, 3, 1)
              ) in ('a', 'e', 'i', 'o', 'u')
         -- ---------------------------------------------------
order by substr(state_name, 3, 1)

```