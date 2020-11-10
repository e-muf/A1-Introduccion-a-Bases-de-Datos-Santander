create or replace view puestos19 as
select concat(e.nombre, ' ', e.apellido_paterno), p.nombre
from empleado e
join puesto p
on e.id_puesto = p.id_puesto;

select v.clave, concat(e.nombre, ' ', e.apellido_paterno) nombre_empleado, a.nombre
from empleado e
join venta v
on e.id_empleado = v.id_empleado
join articulo a
on v.id_articulo = a.id_articulo;

select p.nombre, count(clave) total
from puesto p
join empleado e
on e.id_puesto = p.id_puesto
join venta v
on v.id_empleado = e.id_empleado
group by p.nombre;


