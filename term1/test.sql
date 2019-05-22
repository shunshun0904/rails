-- SQLを書こう！
select d.division_name, count(m.division_id)
from member m  left join division d on m.division_id = d.division_id
group by m.division_id
