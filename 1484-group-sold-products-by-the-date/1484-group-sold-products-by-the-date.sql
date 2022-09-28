# Write your MySQL query statement below


# Almost immediately detected, the only serious challange of this problem is how to aggregate # the product names in one cell. In MySql, this can be done using GROUP_CONCAT, in which you 
# can also specify the sorting mechanism for the group concatenation (aggregation). The rest #is simple.



select sell_date,count(distinct product) as num_sold,
group_concat(distinct product order by product separator ',') as products
from activities group by sell_date;