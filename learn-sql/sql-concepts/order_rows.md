-- B''H --


## Example:
### *Code:*
```SQL

select   *
from     `xyz`
order by substr(
                column_2,       -- parameter 1: string we're going to disect
                4,              -- parameter 2: position to start from
                1               -- parameter 3: how many charachters to go for
               )      
```

### *Output:*

|#|column_1|column_2|
|---|---|---|
|4| 45123 | 45-1-23 |
|5| 51234 | 51-2-34 |
|1| 12345 | 12-3-45 |
|2| 23451 | 23-4-51 |
|3| 34512 | 34-5-12 |