-- B''H --

## Example:
### *Code:*
```SQL
select  *
Where   substr(coloumn_1, 1, 3)
            in (`w`, '%x%', 'y%', '%z')
from    `xyz`
```

### *Output:*

| # |||
|---|---|---|
| 1 |||
| 2 |||
| 3 |||
| 4 |||
| 5 |||