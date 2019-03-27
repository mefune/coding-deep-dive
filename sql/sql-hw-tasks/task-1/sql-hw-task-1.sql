--B''H --

select   state_name name,
         cast(states_fips_code as int64) fips_code,
         concat(state_abbreviation, ' - ', state_name) state_concat
         -- ----------------------------------------------------
from     `data-science-course-226116.sql_lessons.states` 
         -- ----------------------------------------------------
where    lower(state_name) like '%o%'
   or    lower(state_name) like '%i%'
         -- ----------------------------------------------------
order by fips_code