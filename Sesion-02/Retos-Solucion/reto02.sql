
-- ¿Cuál es el promedio de salario de los puestos?
select avg(salario) "SALARIO PROMEDIO" from puesto;

-- ¿Cuántos artículos incluyen la palabra Pasta en su nombre?
select count(*) "CANTIDAD ARTICULOS" from articulo where nombre like "%Pasta%";

-- ¿Cuál es el salario mínimo y máximo?
select max(salario) "SALARIO MAXIMO", min(salario) "SALARIO MINIMO" from puesto;

-- ¿Cuál es la suma del salario de los últimos cinco puestos agregados?
select sum(salario) "SUMA SALARIO" from (
	select salario
    from puesto
    order by id_puesto desc
    limit 6
) salarios; 