-- B''H --



### *Code:*

```SQL

with step_1 as
(
select  column_1 col_1
from    `xyz`
),
-- -----------------
step_2 as
(
select  col_1   
from    step_1
)

```

### *Output:*

|col_1|
|---|
| 1 |
| 2 |
| 3 |