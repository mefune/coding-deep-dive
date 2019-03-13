-- B''H --

# Task: 5

- There are 6 class codes

|Row|fips_class_code
|---|---|
|1|C7|
|2|H1|
|3|H4|
|4|H5|
|5|H6|

- make a query that returns this:

|fips_class_code|char_1|char_2|char_2_desc
|---|---|---|---|
|H1|H|1|One
|H4|H|4|Four
|H5|H|5|Five
|H6|H|6|Six
|C7|C|7|Seven

- ordered by char_2

### Details:
```SQL

select   distinct 
         fips_class_code         
from     `data-science-course-226116.sql_lessons.counties`

```

# Answer:
From Baruch
```SQL
select   distinct fips_class_code,
         -- ----------------------------
         substr(fips_class_code, 1, 1) as char_1,
         substr(fips_class_code, 2, 1) as char_2,
         -- ----------------------------
         case cast(substr(fips_class_code, 2, 1) as int64)
             when 1 then 'One'
             when 2 then 'Two'
             when 3 then 'Three'
             when 4 then 'Four'
             when 5 then 'Five'
             when 6 then 'Six'
             when 7 then 'Seven'
         end char2_desc
         -- ----------------------------
from     `data-science-course-226116.sql_lessons.counties`
         -- ----------------------------
order by char_2
```