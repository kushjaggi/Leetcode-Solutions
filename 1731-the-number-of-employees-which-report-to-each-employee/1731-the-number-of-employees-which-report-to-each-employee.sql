# Write your MySQL query statement below
select reports_to as employee_id, 
       (select name from employees e1 where e.reports_to = e1.employee_id) name,
       count(reports_to) reports_count,
       round(avg(age)) average_age 
from employees e
group by reports_to
having reports_count > 0
order by employee_id