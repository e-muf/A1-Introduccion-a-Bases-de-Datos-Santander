select v.clave, e.nombre, e.apellido_paterno
from empleado e
join venta v
on e.id_empleado = v.id_empleado;

select v.clave, a.nombre
from articulo a
join venta v
on a.id_articulo = v.id_articulo;

select v.clave, ROUND(SUM(a.precio), 2) TOTAL
from venta v
join articulo a
on v.id_articulo = a.id_articulo
group by v.clave;