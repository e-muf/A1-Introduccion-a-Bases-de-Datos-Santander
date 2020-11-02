use tienda;

-- ¿Qué artículos incluyen la palabra Pasta en su nombre?
select * from articulo where nombre like '%Pasta%';

-- ¿Qué artículos incluyen la palabra Cannelloni en su nombre?
select * from articulo where nombre like '%Cannelloni%';

-- ¿Qué nombres están separados por un guión (-) por ejemplo Puree - Kiwi?
select * from articulo where nombre like '%-%';

-- ¿Qué puestos incluyen la palabra Designer?
select * from puesto where nombre like '%Designer%';

-- ¿Qué puestos incluyen la palabra Developer?
select * from puesto where nombre like '%Developer%';
