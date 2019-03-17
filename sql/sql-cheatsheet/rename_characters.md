-- B''H --

## Example:
### *Code:*

```SQL
select   column_1
         case
             when 1 then 'One'
             -- ------------------
             else column_1
         end column_2
from     `xyz`
```

### *Output:*

|column_1|column_2|
|---|---|
| 1 | One |
| 1 | One |
| 2 | 2 |
     