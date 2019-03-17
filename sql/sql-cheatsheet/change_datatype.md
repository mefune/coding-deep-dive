-- B''H --

# DataTypes:

-

|Type|Code|Function|
|---|---|---|
|integer|`int64`|rounded numbers
|numeric|`numeric`|decimal numbers
|string|`string`|neutral characters
|---|---|---|

## Example:
### *Code:*

```SQL

select   cast(column_1 as string) c_1_string,      
         cast(column_2 as int64) c_2_integer,
         cast(column_3 as numeric) c_3_numeric 
from     `xyz`
```

### *Output:*

|c_1_string|c_2_integer|c_3_numeric|
|---|---|---|
| 01 | 1 | 1.1 |
| 02 | 2 | 2.1 |
| 03 | 3 | 3.1 |
| 04 | 4 | 4.1 |
| 05 | 5 | 5.1 |