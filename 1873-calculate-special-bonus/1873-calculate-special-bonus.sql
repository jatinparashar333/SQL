
SELECT employee_id, if(employee_id % 2 = 1 AND name NOT LIKE 'M%', salary,0) as bonus
From Employees order by employee_id;