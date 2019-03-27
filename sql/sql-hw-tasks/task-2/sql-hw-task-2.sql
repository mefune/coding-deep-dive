-- B''H --

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