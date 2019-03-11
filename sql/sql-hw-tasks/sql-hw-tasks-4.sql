-- B''H --

/*
Show columns in result:


    - county name (up to 'city' or up to 'County')

    - first digit of the county name ----

    - county fips code (cast to integer)
    
where state abbreviation starts with a, d, n, o, p

order by county fips code
*/
----------------
SELECT   *  
FROM     `data-science-course-226116.sql_lessons.counties` 
----------------
/*   
1) strpos city country
2) substr county_name 1 to strpos
3) substr county name 1,1
4) cast tips code as int64
5) where lower, state abr like a...
6) order by tips code
*/