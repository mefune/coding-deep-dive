-- B''H --

1. Select all lines starting with `x`
2. Select all lines ending with `x`
3. Select all lines that have `x` in them
4. Select all lines from after `x` (x2 parts)

Multiples:

5. Select: 
   - string we're going to disect `x`, 
   - position to start from `y`, 
   - how many charachters to go for `z` 
6. Select: 
   - string we're going to disect `x`, 
   - position to start from `y`, 
   - how many charachters to go for `z`
     - *start*, 
     - *end*, 
     - *that contain* `xyz`,
     - *position*
7. Select:
   - string we're going to disect `x`, 
   - position to start from `y`, 
     - substr




## Example 1: 
### *Code:*

```SQL

select   *

where    column_1 like '%i'                    -- any line that ends with 'i'
   or    column_2 like 'i%'                    -- any line that starts with 'i'
   or    column_3 like '%i%'                   -- any line that has 'i' in the middle
  and    substr(
             column_4,                         -- parameter 1: string we're going to disect
             3,                                -- parameter 2: position to start from
             1                                 -- parameter 3: how many charachters to go for
               )                      
            ) in ('a', 'e', 'i', 'o', 'u')     -- is one of these charactars 

```

### *Output:* 

|#|column_0|column_1|column_2|column_3|column_4|
|---|---|---|---|---|---|
| 1 | a-e-i-o-u | --- | --- | a-e-i-o-u | i-o-u |
| 2 | e-i-o-u-a | --- | --- | e-i-o-u-a | o-u-a |
| 3 | i-o-u-a-e | --- | i-o-u-a-e | i-o-u-a-e | u-a-e |
| 4 | o-u-a-e-i | o-u-a-e-i | --- | o-u-a-e-i | a-e-i |
| 5 | u-a-e-i-o | ---| ---| u-a-e-i-o | e-i-o |
