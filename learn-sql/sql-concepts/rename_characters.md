-- B''H --

## Example:
### *Code:*

```SQL
select   case column_1
             when 1 then 'One'                -- Note: take into acocunt the data type
             when 'One' then 1
             -- ------------------
             else column_1
         end column_2
from     `xyz`
```

### *Output:*

|column_1|column_2|
|---|---|
| 1 | One |
| One | 1 |
| 2 | 2 |
     