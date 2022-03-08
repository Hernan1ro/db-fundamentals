SELECT *
from post
where estatus != "inactivo";

SELECT *
from post
where id < 50;


SELECT *
from post
where titulo like '%escandalo%';

SELECT *
from post
where titulo like 'escandalo%';
SELECT *
from post
where titulo like '%roja';

select *
from post
where fecha_publicacion > '2025-01-01';

select *
from post
where fecha_publicacion between '2023-01-01' and '2025-12-31';


select *
from post 
where id between 50 and 60;

select *
from post
where year(fecha_publicacion) between "2023" and "2024";

select *
from post 
where month(fecha_publicacion) = "04";
