# Performance Notes

## Objective

The purpose of this part of the coursework was to improve the performance of a query joining `OrderItem`, `Product` and `CustomerCity`.

## Baseline observations

The original execution plan showed inefficient access patterns, including:

- table scans
- hash match joins
- a missing index recommendation

`SET STATISTICS IO` and `SET STATISTICS TIME` were enabled to support the performance review.

## Optimisation

Non-clustered indexes were added to the join columns used by the query:

- `OrderItem.CustomerCityID`
- `OrderItem.ProductCode`
- `Product.ProductCode`

Included columns were used where appropriate to reduce extra lookups.

## Result

After the indexes were applied and the query was rerun, the execution plan showed:

- index seeks
- nested loop joins
- reduced logical reads
- lower execution time
- no remaining missing index warning for the tested query

The coursework evidence supports the direction of the improvement, but it does not contain a final numeric benchmark table. For that reason, no percentage improvement is claimed in this repository.
