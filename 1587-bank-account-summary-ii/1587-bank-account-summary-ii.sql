select name,sum(amount) as balance from transactions
inner join users on transactions.account=users.account
group by transactions.account
having balance>10000;