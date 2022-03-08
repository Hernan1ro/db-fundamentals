
/*Seleccionar post y filtrarlos por fecha"*/
SELECT * 
FROM post 
WHERE fecha_publicacion < "2024-01-02";

/*Seleccionar todos los posts*/
select *
from post;
/*Seleccionar datos parciales*/
select titulo, fecha_publicacion, estatus 
from post;
/*Seleccionar datos y cambiarles el nombre*/
select titulo as encabezado, fecha_publicacion as publicado_en, estatus as estado
from post;
/*constar registros en la base de datos */
select count(*) as numero_posts
from post;
