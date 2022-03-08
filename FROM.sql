SELECT *
FROM users
	LEFT JOIN post ON users.id = post.usuario_id;
    
SELECT *
FROM users
	RIGHT JOIN post ON users.id = post.usuario_id;
    
select *
from users
	inner join post on users.id = post.usuario_id;


/*traer toda la información */
select *
from users
	left join post on users.id = post.usuario_id
union
select *
from users
	right join post on users.id = post.usuario_id;
	
/*Diferencias simetricas */
select *
from users
	left join post on users.id = post.usuario_id
    where post.usuario_id is null
union
select *
from users
	right join post on users.id = post.usuario_id
	where post.usuario_id is null;
