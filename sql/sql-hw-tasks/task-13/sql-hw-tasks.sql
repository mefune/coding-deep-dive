-- B''H --

select   counties.*,
         --states.state_name
from     `data-science-course-226116.sql_lessons.join_test_counties` counties
         -- ---------------------
   left outer join `data-science-course-226116.sql_lessons.join_test_states`   states
      on counties.state_abbreviation = states.state_abbreviation
         -- ---------------------
where    states.state_name is null  
  and    lower(county_name) like '%ada%' 

