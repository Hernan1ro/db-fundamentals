SELECT *
FROM post
WHERE categoria_id IS NOT NULL;

select *
from post
where usuario_id is not null 
	and estatus = "activo"
    and id < 50
    and categoria_id=2;
    
    