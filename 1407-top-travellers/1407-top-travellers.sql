# Write your MySQL query statement below
select users.name,
case 
when sum(rides.distance)is NULL then 0
else sum(rides.distance)
end
as travelled_distance from users
left join rides on rides.user_id=users.id
group by users.id
order by travelled_distance desc,name;