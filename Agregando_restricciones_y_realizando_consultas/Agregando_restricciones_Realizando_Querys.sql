#AGREGANDO RESTRICCIONES

alter table producto
add constraint fk_categoria 
foreign key (categoria_id) references Categoria(id); 

alter table Stock 
add constraint fk_sucursal
foreign key (sucursal_id) references Sucursal (id),
add constraint fk_producto
foreign key (producto_id) references Producto (id);

alter table Orden
add constraint fk_cliente
foreign key (cliente_id) references Cliente (id),
add constraint fk_sucursal
foreign key (sucursal_id) references Sucursal (id);

alter table Item
add constraint fk_orden
foreign key (orden_id) references Orden  (id),
add constraint fk_producto 
foreign key (producto_id) references Producto (id);


#REALIZANDO QUERYS

#1.Calcular el precio promedio de los productos en cada categoría
select Categoria.nombre as nombre_producto, avg(Producto.precio_unitario) as Precio_promedio 
from Categoria
join Producto on Categoria.id  = Producto.categoria_id
group by Categoria.nombre  ,    precio_unitario = precio_unitario 
order by Precio_promedio asc;


#2.Obtener la cantidad total de productos en stock por categoría
select Categoria.nombre as nombre_categoria , sum(cantidad) as total_productos
from Categoria 
join Producto on Categoria.id = Producto.categoria_id
join Stock on Producto.categoria_id = Stock.producto_id
group by Categoria.nombre , cantidad = cantidad
order by total_productos asc; 


#3.Calcular el total de ventas por sucursal
select Sucursal.nombre as nombre_sucursal , sum(Orden.total) as total_ventas
from Sucursal 
join Orden on Sucursal.id = Orden.sucursal_id 
group by Sucursal.nombre, Orden.total = Orden.total;


#4.Obtener el cliente que ha realizado el mayor monto de compras
select Cliente.nombre as nombre_cliente , sum(Item.monto_venta) as monto_compras
from Cliente 
join Orden on Cliente.id = Orden.cliente_id 
join Item on Orden.id = Item.orden_id
group by Cliente.nombre , monto_venta = monto_venta
order by monto_compras desc limit 1;












