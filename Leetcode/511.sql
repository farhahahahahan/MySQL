# Write your MySQL query statement below
select player_id, event_date first_login
from
(
select *, dense_rank() over(partition by player_id order by event_date) new
from Activity
) dt1
where new = 1
