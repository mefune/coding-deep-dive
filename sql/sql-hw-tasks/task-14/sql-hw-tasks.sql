-- B''H --


select   states.state_abbreviation,   
         states.state_name,
         count(counties.county_name) numeber_of_counties
from     `data-science-course-226116.sql_lessons.join_test_states`              states
         -- ---------------------
   left outer join `data-science-course-226116.sql_lessons.join_test_counties`  counties
      on counties.state_abbreviation = states.state_abbreviation
         -- ---------------------
group by states.state_name,
         states.state_abbreviation
         -- ---------------------
having   count(counties.county_name) > 140
    or   count(counties.county_name) < 2
         -- ---------------------
order by numeber_of_counties desc







 /* Use the follwoing tables:


Join the states to the counties and show how many counties are in each state

Only show where the count is more than 14 

or less than 2

*/