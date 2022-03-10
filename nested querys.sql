select new_table_projection.date, count(*) as posts_count
from (
	select date(min(fecha_publicacion)) as date, year(fecha_publicacion) as post_year
    from post
    group by post_year
    ) as new_table_projection
    group by new_table_projection.date
    order by new_table_projection.date;
    
select *
from post
where fecha_publicacion = (
 select max(fecha_publicacion)
 from post
 );