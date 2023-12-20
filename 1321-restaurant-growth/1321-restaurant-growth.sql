# Write your MySQL query statement below
select 
    a.visited_on as visited_on, 
    SUM(b.day_sum) as amount,
    round(sum(b.day_sum) / 7, 2) as average_amount
from
  (select visited_on, sum(amount) as day_sum from Customer group by visited_on ) a,
  (select visited_on, sum(amount) as day_sum from Customer group by visited_on ) b
where datediff(a.visited_on, b.visited_on) between 0 and 6 and
    a.visited_on - 6 >= (select min(visited_on) from Customer)
group by a.visited_on
order by a.visited_on