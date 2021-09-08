select * from suppliers s limit 30;

--1. Qu� contactos de proveedores tienen la posici�n de sales representative?
select s.company_name,s.contact_name, s.contact_title from suppliers s where s.contact_title='Sales Representative';

--2. Qu� contactos de proveedores no son marketing managers?
select s.company_name, s.contact_name, s.contact_title from suppliers s where s.contact_title!='Marketing Manager';

--3. Cuales �rdenes no vienen de clientes en Estados Unidos?
select s.company_name, s.contact_name,s.country from suppliers s where s.country!='USA';

--4. Qu� productos de los que transportamos son quesos?
select p.product_name from products p where p.category_id=4;

--5. Qu� ordenes van a B�lgica o Francia?
select o.order_id, o.ship_country from orders o where o.ship_country='Belgium' or o.ship_country ='France';

--6. Qu� �rdenes van a LATAM?
select o.order_id, o.ship_country from orders o 
where o.ship_country='Mexico' 
or o.ship_country='Argentina' 
or o.ship_country='Brazil'
or o.ship_country='Venezuela'
--order by o.ship_country
;

--7. Qu� �rdenes no van a LATAM?
select o.order_id, o.ship_country from orders o 
where o.ship_country!='Mexico' 
and o.ship_country!='Argentina' 
and o.ship_country!='Brazil'
and o.ship_country!='Venezuela'
--order by o.ship_country
;

--8. Necesitamos los nombres completos de los empleados, nombres y apellidos unidos en un mismo registro


--9. Cu�nta lana tenemos en inventario?

--10. Cuantos clientes tenemos de cada pa�s?