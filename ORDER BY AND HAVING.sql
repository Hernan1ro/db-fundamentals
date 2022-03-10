select *
from post
order by fecha_publicacion desc;

select *
from post
order by fecha_publicacion asc;

select *
from post
order by titulo asc;

select *
from post
order by titulo desc;

select *
from post
order by id desc;

select *
from post
order by fecha_publicacion asc
limit 5;

select monthname(fecha_publicacion) as post_month, estatus, count(*) as post_quantity
from post
group by estatus, post_month
having post_quantity > 1
order by post_month;
