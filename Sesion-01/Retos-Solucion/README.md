# Reto 1: Estructura de una tabla

``` sql
use tienda;
describe articulo;
describe puesto;
describe venta;
```

| Tipo | Descripcion |
|------|-------------|
| int | Número entero |
| double | Número decimal |
| varchar | Cadena de carecteres variable |
| timestamp | Fecha y Hora |


# Reto 2: Estructura básica de una consulta

- ¿Cuál es el nombre de los empleados con el puesto 4?

``` sql
SELECT nombre FROM empleados WHERE id_puesto = 4;
```

- ¿Qué puestos tienen un salario mayor a $10,000?

``` sql
SELECT * FROM puesto WHERE salario > 10000;
```

- ¿Qué articulo tienen un precio mayor a $1,000 y un iva mayor a 100?

``` sql
SELECT * FROM articulo WHERE precio = 1000 AND iva > 100;
```

- ¿Qué ventajas tiene los artículos 135 y 963 y fueron hechas por los empleados 835 o 369?

``` sql
SELECT * FROM venta 
WHERE id_articulo IN (135, 963) AND id_empleado IN (835, 369);
```


