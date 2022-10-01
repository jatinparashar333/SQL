# Write your MySQL query statement below
select s.name from salesPerson s
where s.sales_id not in
(select Orders.sales_id from Orders
left join Company on orders.com_id=Company.com_id
where name='RED');