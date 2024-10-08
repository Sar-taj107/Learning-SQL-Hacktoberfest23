# Full Outer Join with GROUP BY in SQL

## Introduction

A **full outer join** in SQL allows you to combine the results of both a left and right join, keeping all rows from both tables even if there is no match. If there is no match, `NULL` values will be used to fill the gaps. This join is useful when you want to retain all records from both tables.

A **GROUP BY** clause is used in SQL to group rows by a particular column so that aggregate functions (like `SUM`, `COUNT`, etc.) can be applied to each group.

## SQL Full Outer Join Syntax

```sql
SELECT columns, aggregate_function(column)
FROM table1
FULL OUTER JOIN table2
ON table1.common_column = table2.common_column
GROUP BY columns;
