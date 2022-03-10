
/*tags number of every post */
select post.titulo, count(*) num_etiquetas
from post 
	inner join posts_etiquetas on post.id = posts_etiquetas.post_id
    inner join tags on tags.id = posts_etiquetas.etiqueta_id
group by post.id
order by num_etiquetas desc;

/*tags of every post */
select post.titulo, group_concat(nombre_etiqueta) etiquetas
from post
	inner join posts_etiquetas on post.id = posts_etiquetas.post_id
    inner join tags on tags.id = posts_etiquetas.etiqueta_id
    group by post.id;

/*tags without a post */

select *
from tags
	left join posts_etiquetas on tags.id = posts_etiquetas.etiqueta_id
where posts_etiquetas.etiqueta_id is null
