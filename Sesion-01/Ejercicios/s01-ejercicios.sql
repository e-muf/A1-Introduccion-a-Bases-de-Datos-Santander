-- Ejercicios

-- 1. Conectarse a classicmodels 
use classicmodels;

-- 2. Obtener el apellido de todos los empleados
select lastName from employees;

-- 3. Obtener el apellido, nombre y puesto de todos los empleados
select firstName, lastName, jobTitle from employees;

-- 4. Obtener todos los datos de cada empleado
select * from employees;

-- 5. Obtener apellido, nombre y puesto que tengan el puesto Sales Rep
select lastName, firstName, jobTitle from employees where jobTitle = 'Sales Rep';

-- 6. Obtener el apellido, nombre, puesto y código de oficina con el puesto Sales Rep y codigo oficina 1
select lastName, firstName, jobTitle, officeCode from employees where jobTitle = 'Sales Rep' and officeCode = 1;

-- 7. Obtener el apellido, nombre, puesto y código de oficina con el puesto Sales Rep o codigo oficina 1
select lastName, firstName, jobTitle, officeCode from employees where jobTitle = 'Sales Rep' or officeCode = 1;

-- 8. Obtener el apellido, nombre y código de oficina donde codigo oficina sea 1, 2 o 3
select lastName, firstName, officeCode from employees where officeCode in (1, 2, 3);

-- 9. Obtener apellido, nombre y puesto que tengan un puesto distinto a Sales Rep
select lastName, firstName, jobTitle from employees where jobTitle <> 'Sales Rep';

-- 10. Obtener apellido, nombre y codigo de oficina de los empleados cuya oficina sea mayor a 5
select lastName, firstName, officeCode from employees where officeCode > 5;

-- 11. Obtener apellido, nombre y codigo de oficina de los empleados cuya oficina sea menor o igual a 4
select lastName, firstName, officeCode from employees where officeCode <= 4;

-- 12. Obtener el nombre, pais y estado de todos los clientes cuyo pais es USA y estado es CA
select customerName, country, state from customers where country = 'USA' and state = 'CA'; 

-- 13. Obtener el nombre, pais, estado y limite de credito de todos los clientes cuyo pais es USA, estado es CA, y limite de credito es mayor a 100000
select customerName, country, state, creditLimit from customers where country = 'USA' and state = 'CA' and creditLimit > 100000; 

-- 14. Obtener el nombre y pais de todos los clientes de USA y France
select customerName, country from customers where country in ('USA', 'France');

-- 15. Obtener el nombre, pais y limite de credito de todos los clientes cuyo pais es USA o France, y el limite de credito es mayor a 100000
select customerName, country, creditLimit from customers where country in ('USA', 'France') and creditLimit > 100000;

-- 16. Obtener el codigo de la oficina, ciudad, telefono y pais de aquellas que se encuentran en USA y en France
select officeCode, city, phone, country from offices where country in ('USA', 'France');

-- 17. Obtener el codigo de la oficina, ciudad, telefono y pais de aquellas que no se encuentran en USA y en France 
select officeCode, city, phone, country from offices where country not in ('USA', 'France');

-- 18. Obtener el numero de orden, numero de cliente, estado y fecha de envio de las ordenes con numero 10165, 10287, 10310
select orderNumber, customerNumber, status, shippedDate from orders where orderNumber in (10165, 10287, 10310);

-- 19. Obtener el apellido y nombre de cada cliente y ordenarlos por apellido de forma ascendente
select contactLastName, contactFirstName from customers order by contactLastName ASC;

-- 20. Obtener el apellido y nombre de cada cliente y ordenarlos por apellido de forma descendente
select contactLastName, contactFirstName from customers order by contactLastName DESC;

-- 21. Obtener el apellido y nombre de cada cliente, ordenarlos por apellido de forma descendete y por nombre de forma ascendente
select contactLastName, contactFirstName from customers order by contactLastName DESC, contactFirstName ASC;

-- 22. Obtener el numero de cliente, nombre del cliente y limite de credito de los cinco clientes con mayor limite de credito
select customerNumber, customerName, creditLimit from customers order by creditLimit DESC limit 5;

-- 23. Obtener el numero de cliente, nombre del cliente y limite de credito de los cinco clientes con el menor limite de credito
select customerNumber, customerName, creditLimit from customers order by creditLimit ASC limit 5;
