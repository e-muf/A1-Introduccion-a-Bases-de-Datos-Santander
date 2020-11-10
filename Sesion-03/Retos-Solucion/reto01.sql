use tienda;

select nombre, apellido_paterno
from empleado
where id_puesto in (
	select id_puesto
    from puesto
    where salario > 10000
);

select id_empleado, min(total_ventas), max(total_ventas)
from (
	select clave, id_empleado, count(*) total_ventas
	from venta
    group by clave, id_empleado
) ventas
group by id_empleado;

select distinct clave
from venta
where id_articulo in (
	select id_articulo
    from articulo
    where precio > 5000
);
