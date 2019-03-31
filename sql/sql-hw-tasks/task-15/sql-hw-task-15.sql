-- B''H --


select   states.state_name,
         baby.gender,
         baby.name,
         sum(baby.number) number_of_babies
         -- ---------------------
from     `bigquery-public-data.usa_names.usa_1910_current`          baby
         -- ---------------------
   left outer join `data-science-course-226116.sql_lessons.states`  states
      on baby.state = states.state_abbreviation
         -- ---------------------
group by states.state_name,
         baby.gender,
         baby.name
         -- ---------------------
having   sum(baby.number) > 370000
         -- ---------------------
order by number_of_babies desc





/*Use the follwoing tables:

bigquery-public-data.usa_names.usa_1910_current
data-science-course-226116.sql_lessons.states
Join the states and the names tables

Level-of-Grain: state_name/gender/name

For that level-of-grain get the number (sum) of the baby names

Only show where the number of baby names is greater than 370000

Order results by number_of_babies in descending order

*/