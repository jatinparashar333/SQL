select u.user_id as buyer_id ,u.join_date,
sum(
case when year(order_date)=2019 then 1
else 0
end)
as orders_in_2019
from users u
left join orders on u.user_id=orders.buyer_id
group by user_id;