create or replace view puestos19 as
select concat(e.nombre, ' ', e.apellido_paterno), p.nombre
from empleado e
join puesto p
on e.id_puesto = p.id_puesto;

select * FROM puestos19;

create or replace view empleado_articulo19 as
select v.clave, concat(e.nombre, ' ', e.apellido_paterno) nombre_empleado, a.nombre
from empleado e
join venta v
on e.id_empleado = v.id_empleado
join articulo a
on v.id_articulo = a.id_articulo;

select * FROM empleado_articulo19;

create or replace view puesto_ventas19 as
select p.nombre, count(clave) total
from puesto p
join empleado e
on e.id_puesto = p.id_puesto
join venta v
on v.id_empleado = e.id_empleado
group by p.nombre;

select *
from puesto_ventas
order by total desc
limit 1;
