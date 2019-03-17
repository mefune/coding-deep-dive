-- B''H --

## Example: 
### *Code:*
```SQL

select  column #
        column_1 col_1,
        substr(column_2, 1, 1) col_2,
        case 
             when column_3 > 0 then          -- Take everything in the column_3 until the column_3:
                  substr(
                      column_3,              -- parameter 1: string we're going to disect
                      1,                     -- parameter 2: position to start from
                      column_4               -- parameter 3: how many charachters to go for 
                  ) 
             -- -------------------------------------    
             else column_3                   -- If the # is 0, show the input of column_3    
        end col_3
        column_4 col_4,
        substr(column_1, 1, 1) as col_5, -- 
        substr(column_2, 2, 1) as col_6  -- 
from    `xyz`
)

```

### *Output:*

||||
|---|---|---|
||||
||||
||||
||||
||||