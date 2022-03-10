/* sort by group */
SELECT estatus, COUNT(*) quantity
FROM post
group by estatus;

/* sort by group and sum columns */
SELECT estatus, SUM(id) suma_id
FROM post
GROUP BY estatus;

/* sort by group and show post quantity by year */
select year(fecha_publicacion) as post_year, count(*) as post_quantity
from post
group by post_year;

/* sort by group and show post quantity by month */
select monthname(fecha_publicacion) as post_month, count(*) as post_quantity
from post
group by post_month;

/* sort by group and show post quantity by month and active every month */
select estatus, monthname(fecha_publicacion) as post_month, count(*) as post_quantity
from post
group by post_month, estatus;
