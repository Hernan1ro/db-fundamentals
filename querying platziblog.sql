/*show quantity order by category */
select c.nombre_categoria, count(*) cant_posts
from categories as c
	inner join post as p on c.id = p.categoria_id
group by c.id
order by cant_posts desc
limit 6;
/*cantidad de post por usuarios*/
select u.nickname, count(*) cant_posts
from users as u
	inner join post as p on u.id = p.usuario_id
group by u.id
order by cant_posts desc
limit 1;

/*sobre que escribe cada usuario*/
select u.nickname, count(*) cant_posts, group_concat(nombre_categoria)
from users as u
	inner join post as p on u.id = p.usuario_id
    inner join categories as c on c.id = p.categoria_id
group by u.id;

/*traer los posts huerfanos*/
select *
from users as u
	left join post on u.id = post.usuario_id
where post.usuario_id is null;

