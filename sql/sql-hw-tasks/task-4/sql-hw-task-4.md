-- B''H --

# Task: 4

- Show columns in result:
  - county name (up to 'city' or up to 'County')
  - first digit of the county name ----
  - county fips code (cast to integer)
  - where state abbreviation starts with a, d, n, o, p
- order by county fips code

### Details:

```SQL
-- --------------
SELECT   *  
FROM     `data-science-course-226116.sql_lessons.counties` 
-- --------------
```
   
# Plan:

1) strpos city country
2) substr county_name 1 to strpos
3) substr county name 1,1
4) cast tips code as int64
5) where lower, state abr like a...
6) order by tips code

# Answer: 
From Baruch
```SQL
select 
       -- ------------------------------------------
       case
          when lower(county_name) like '%city%' then
          substr(county_name,1,
              strpos(lower(county_name),'city') - 1
              )
          when lower(county_name) like '%county%' then
             substr(county_name,1,
                strpos(lower(county_name),'county') - 1
                )
          else county_name
       end county_plain,
        -- ------------------------------------------
       substr(county_name,1,1) first_char,
        -- ------------------------------------------
       cast(county_fips_code as int64) fips_code
       -- -------------------------------------------
from `data-science-course-226116.sql_lessons.counties`
where lower(substr(state_abbreviation,1,1)) in ('a','d','n','o','p')
order by county_fips_code
```