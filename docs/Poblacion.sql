-- Insertar datos en la tabla Cliente
INSERT INTO Cliente (Cedula, nombre) VALUES ('1234567890', 'a');
INSERT INTO Cliente (Cedula, nombre) VALUES ('0987654321', 'b');
INSERT INTO Cliente (Cedula, nombre) VALUES ('1122334455', 'c');
INSERT INTO Cliente (Cedula, nombre) VALUES ('2233445566', 'd');
INSERT INTO Cliente (Cedula, nombre) VALUES ('3344556677', 'e');

-- Insertar datos en la tabla Ciudad
INSERT INTO Ciudad (codigo, nombre) VALUES (ciudad_seq.NEXTVAL, 'Bogota');
INSERT INTO Ciudad (codigo, nombre) VALUES (ciudad_seq.NEXTVAL, 'Cali');
INSERT INTO Ciudad (codigo, nombre) VALUES (ciudad_seq.NEXTVAL, 'Pasto');
INSERT INTO Ciudad (codigo, nombre) VALUES (ciudad_seq.NEXTVAL, 'Medellin');
INSERT INTO Ciudad (codigo, nombre) VALUES (ciudad_seq.NEXTVAL, 'Boyaca');

-- Insertar datos en la tabla Sucursal
INSERT INTO Sucursal (Id, Nombre, Tamaño, Direccion, telefono, Codigo_Ciudad) VALUES (sucursal_seq.NEXTVAL, 'Sucursal Chapinero', 450, 'Carrera 13 # 57-80', '3103456789', 101);
INSERT INTO Sucursal (Id, Nombre, Tamaño, Direccion, telefono, Codigo_Ciudad) VALUES (sucursal_seq.NEXTVAL, 'Sucursal Centro Histórico', 650, 'Calle 10 # 5-50', '3124567890', 102);
INSERT INTO Sucursal (Id, Nombre, Tamaño, Direccion, telefono, Codigo_Ciudad) VALUES (sucursal_seq.NEXTVAL, 'Sucursal Poblado', 700, 'Carrera 43A # 7-50', '3135678901', 103);
INSERT INTO Sucursal (Id, Nombre, Tamaño, Direccion, telefono, Codigo_Ciudad) VALUES (sucursal_seq.NEXTVAL, 'Sucursal Ciudad Jardín', 500, 'Avenida San Joaquín # 30-45', '3146789012', 104);
INSERT INTO Sucursal (Id, Nombre, Tamaño, Direccion, telefono, Codigo_Ciudad) VALUES (sucursal_seq.NEXTVAL, 'Sucursal Usaquén', 600, 'Carrera 6A # 120-35', '3157890123', 105);

-- Insertar datos en la tabla Bodega
INSERT INTO Bodega (Id, Nombre, Tamaño, Id_Sucursal) VALUES (bodega_seq.NEXTVAL, 'Bodega Alpachino', 500, 1);
INSERT INTO Bodega (Id, Nombre, Tamaño, Id_Sucursal) VALUES (bodega_seq.NEXTVAL, 'Bodega Bambi', 300, 2);
INSERT INTO Bodega (Id, Nombre, Tamaño, Id_Sucursal) VALUES (bodega_seq.NEXTVAL, 'Bodega Bodeguisima', 400, 3);
INSERT INTO Bodega (Id, Nombre, Tamaño, Id_Sucursal) VALUES (bodega_seq.NEXTVAL, 'Bodega Zapatos', 600, 4);
INSERT INTO Bodega (Id, Nombre, Tamaño, Id_Sucursal) VALUES (bodega_seq.NEXTVAL, 'Bodega Aesthetic', 700, 5);

-- Insertar datos en la tabla Categoria
INSERT INTO Categoria (Codigo, Nombre, Descripcion, Caracteristicas_Almacenamiento) VALUES (categoria_seq.NEXTVAL, 'Bebidas', 'Líquidos refrescantes, energizantes y alcohólicos', 'Almacenar a temperatura controlada según el tipo de bebida');
INSERT INTO Categoria (Codigo, Nombre, Descripcion, Caracteristicas_Almacenamiento) VALUES (categoria_seq.NEXTVAL, 'Calzado', 'Zapatos y accesorios para distintas actividades y estilos', 'Mantener en lugar seco y ventilado');
INSERT INTO Categoria (Codigo, Nombre, Descripcion, Caracteristicas_Almacenamiento) VALUES (categoria_seq.NEXTVAL, 'Tecnología', 'Dispositivos inteligentes y soluciones digitales avanzadas', 'Proteger de golpes y humedad, almacenar en lugar seco');
INSERT INTO Categoria (Codigo, Nombre, Descripcion, Caracteristicas_Almacenamiento) VALUES (categoria_seq.NEXTVAL, 'Decoración', 'Elementos estéticos y funcionales para espacios interiores y exteriores', 'Almacenar en lugar seco, evitar exposición prolongada al sol');
INSERT INTO Categoria (Codigo, Nombre, Descripcion, Caracteristicas_Almacenamiento) VALUES (categoria_seq.NEXTVAL, 'Deportes', 'Equipos y accesorios para actividades deportivas y recreativas', 'Guardar en lugar ventilado, evitar contacto con humedad');

-- Insertar datos en la tabla DetalleCostoBodega
INSERT INTO Detalle_Costo_Bodega (Id, Costo_Unitario_Bodega, Cantidad_Existencias) VALUES (Detalle_Costo_Bodega_seq.NEXTVAL, 75.90, 200);
INSERT INTO Detalle_Costo_Bodega (Id, Costo_Unitario_Bodega, Cantidad_Existencias) VALUES (Detalle_Costo_Bodega_seq.NEXTVAL, 120.45, 50);
INSERT INTO Detalle_Costo_Bodega (Id, Costo_Unitario_Bodega, Cantidad_Existencias) VALUES (Detalle_Costo_Bodega_seq.NEXTVAL, 199.99, 15);
INSERT INTO Detalle_Costo_Bodega (Id, Costo_Unitario_Bodega, Cantidad_Existencias) VALUES (Detalle_Costo_Bodega_seq.NEXTVAL, 499.50, 10);
INSERT INTO Detalle_Costo_Bodega (Id, Costo_Unitario_Bodega, Cantidad_Existencias) VALUES (Detalle_Costo_Bodega_seq.NEXTVAL, 999.99, 5);

-- Insertar datos en la tabla EspecificacionEmpacado
INSERT INTO Especificacion_Empacado (Id, Volumen_cm3, Peso_Gr) VALUES (Especificacion_Empacado_seq.NEXTVAL, 500, 250);
INSERT INTO Especificacion_Empacado (Id, Volumen_cm3, Peso_Gr) VALUES (Especificacion_Empacado_seq.NEXTVAL, 750, 300);
INSERT INTO Especificacion_Empacado (Id, Volumen_cm3, Peso_Gr) VALUES (Especificacion_Empacado_seq.NEXTVAL, 1200, 1200);
INSERT INTO Especificacion_Empacado (Id, Volumen_cm3, Peso_Gr) VALUES (Especificacion_Empacado_seq.NEXTVAL, 5000, 500);
INSERT INTO Especificacion_Empacado (Id, Volumen_cm3, Peso_Gr) VALUES (Especificacion_Empacado_seq.NEXTVAL, 10000, 2000);

-- Insertar datos en la tabla Producto
INSERT INTO Producto (Codigo_Barras, Nombre, Precio_Unitario_Venta, Presentacion, Cantidad_Presentacion, Unidad_Medida, Fecha_Expiracion, Codigo_Categoria, Id_Especificacion_Empacado) VALUES (producto_seq.NEXTVAL, 'Manzana Roja', 1.50, 'Bolsa de 1 kg', 1, 'kg', TO_DATE('2024-12-31', 'YYYY-MM-DD'), 186, 175);
INSERT INTO Producto (Codigo_Barras, Nombre, Precio_Unitario_Venta, Presentacion, Cantidad_Presentacion, Unidad_Medida, Fecha_Expiracion, Codigo_Categoria, Id_Especificacion_Empacado) VALUES (producto_seq.NEXTVAL, 'Camiseta de Algodón', 20.00, 'Unidad', 1, 'kg', NULL, 236, 225);
INSERT INTO Producto (Codigo_Barras, Nombre, Precio_Unitario_Venta, Presentacion, Cantidad_Presentacion, Unidad_Medida, Fecha_Expiracion, Codigo_Categoria, Id_Especificacion_Empacado) VALUES (producto_seq.NEXTVAL, 'Televisor LED 32"', 499.99, 'Unidad', 1, 'kg', NULL, 286, 275);
INSERT INTO Producto (Codigo_Barras, Nombre, Precio_Unitario_Venta, Presentacion, Cantidad_Presentacion, Unidad_Medida, Fecha_Expiracion, Codigo_Categoria, Id_Especificacion_Empacado) VALUES (producto_seq.NEXTVAL, 'Sofá Modular', 899.00, 'Unidad', 1, 'kg', NULL, 336, 325);
INSERT INTO Producto (Codigo_Barras, Nombre, Precio_Unitario_Venta, Presentacion, Cantidad_Presentacion, Unidad_Medida, Fecha_Expiracion, Codigo_Categoria, Id_Especificacion_Empacado) VALUES (producto_seq.NEXTVAL, 'Muñeca Interactiva', 45.00, 'Unidad', 1, 'kg', NULL, 386, 375);

-- Insertar datos en la tabla ProductoPerecedero
INSERT INTO Producto_Perecedero (Codigo_Barras_Producto, fecha_Vencimiento) VALUES (1146, TO_DATE('2024-12-31', 'YYYY-MM-DD'));
INSERT INTO Producto_Perecedero (Codigo_Barras_Producto, fecha_Vencimiento) VALUES (1155, TO_DATE('2024-11-30', 'YYYY-MM-DD'));
INSERT INTO Producto_Perecedero (Codigo_Barras_Producto, fecha_Vencimiento) VALUES (1156, TO_DATE('2024-10-15', 'YYYY-MM-DD'));
INSERT INTO Producto_Perecedero (Codigo_Barras_Producto, fecha_Vencimiento) VALUES (1158, TO_DATE('2024-09-01', 'YYYY-MM-DD'));
INSERT INTO Producto_Perecedero (Codigo_Barras_Producto, fecha_Vencimiento) VALUES (1159, TO_DATE('2024-08-20', 'YYYY-MM-DD'));

-- Insertar datos en la tabla Proveedor
INSERT INTO Proveedor (Nit, Nombre, Direccion, Nombre_Contacto, Telefono_Contacto) VALUES ('9001234567', 'AgroSupply S.A.', 'Carrera 45 #10-30, Bogotá', 'María Fernanda Ortiz', '3101234567');
INSERT INTO Proveedor (Nit, Nombre, Direccion, Nombre_Contacto, Telefono_Contacto) VALUES ('9012345678', 'TextilAndes Ltda.', 'Calle 15 #5-25, Medellín', 'Andrés Jaramillo', '3102345678');
INSERT INTO Proveedor (Nit, Nombre, Direccion, Nombre_Contacto, Telefono_Contacto) VALUES ('9023456789', 'TecnoWorld SAS', 'Avenida 80 #20-45, Cali', 'Luisa Pérez', '3103456789');
INSERT INTO Proveedor (Nit, Nombre, Direccion, Nombre_Contacto, Telefono_Contacto) VALUES ('9034567890', 'Maderas del Norte', 'Diagonal 30 #40-50, Barranquilla', 'Carlos Ramírez', '3104567890');
INSERT INTO Proveedor (Nit, Nombre, Direccion, Nombre_Contacto, Telefono_Contacto) VALUES ('9045678901', 'Juguetelandia', 'Carrera 10 #15-60, Bucaramanga', 'Sofía Gómez', '3105678901');

-- Insertar datos en la tabla OrdenCompra
INSERT INTO Orden_Compra (Id, Fecha_Creacion, Estado, Fecha_Entrega, Nit_Proveedor, Id_Sucursal) VALUES (Orden_Compra_seq.NEXTVAL, TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'vigente', TO_DATE('2024-01-15', 'YYYY-MM-DD'), '9001234567', 1);
INSERT INTO Orden_Compra (Id, Fecha_Creacion, Estado, Fecha_Entrega, Nit_Proveedor, Id_Sucursal) VALUES (Orden_Compra_seq.NEXTVAL, TO_DATE('2024-01-02', 'YYYY-MM-DD'), 'vigente', TO_DATE('2024-01-16', 'YYYY-MM-DD'), '9012345678', 2);
INSERT INTO Orden_Compra (Id, Fecha_Creacion, Estado, Fecha_Entrega, Nit_Proveedor, Id_Sucursal) VALUES (Orden_Compra_seq.NEXTVAL, TO_DATE('2024-01-03', 'YYYY-MM-DD'), 'vigente', TO_DATE('2024-01-17', 'YYYY-MM-DD'), '9023456789', 3);
INSERT INTO Orden_Compra (Id, Fecha_Creacion, Estado, Fecha_Entrega, Nit_Proveedor, Id_Sucursal) VALUES (Orden_Compra_seq.NEXTVAL, TO_DATE('2024-01-04', 'YYYY-MM-DD'), 'vigente', TO_DATE('2024-01-18', 'YYYY-MM-DD'), '9034567890', 4);
INSERT INTO Orden_Compra (Id, Fecha_Creacion, Estado, Fecha_Entrega, Nit_Proveedor, Id_Sucursal) VALUES (Orden_Compra_seq.NEXTVAL, TO_DATE('2024-01-05', 'YYYY-MM-DD'), 'vigente', TO_DATE('2024-01-19', 'YYYY-MM-DD'), '9045678901', 5);

-- Insertar datos en la tabla RecepcionProducto
INSERT INTO Recepcion_Productos (Id, fecha_Recepcion, Id_Bodega, Id_Orden_Compra) VALUES (recepcion_productos_seq.NEXTVAL, TO_DATE('2024-10-10', 'YYYY-MM-DD'), 1, 1);
INSERT INTO Recepcion_Productos (Id, fecha_Recepcion, Id_Bodega, Id_Orden_Compra) VALUES (recepcion_productos_seq.NEXTVAL, TO_DATE('2024-08-11', 'YYYY-MM-DD'), 2, 2);
INSERT INTO Recepcion_Productos (Id, fecha_Recepcion, Id_Bodega, Id_Orden_Compra) VALUES (recepcion_productos_seq.NEXTVAL, TO_DATE('2024-06-12', 'YYYY-MM-DD'), 3, 3);
INSERT INTO Recepcion_Productos (Id, fecha_Recepcion, Id_Bodega, Id_Orden_Compra) VALUES (recepcion_productos_seq.NEXTVAL, TO_DATE('2024-02-13', 'YYYY-MM-DD'), 4, 4);
INSERT INTO Recepcion_Productos (Id, fecha_Recepcion, Id_Bodega, Id_Orden_Compra) VALUES (recepcion_productos_seq.NEXTVAL, TO_DATE('2024-01-14', 'YYYY-MM-DD'), 5, 5);

-- Insertar datos en la tabla Venta
INSERT INTO Venta (Id, Fecha, Id_Sucursal, Cedula_Cliente) VALUES (venta_seq.NEXTVAL, TO_DATE('2024-11-15', 'YYYY-MM-DD'), 1, '1234567890');
INSERT INTO Venta (Id, Fecha, Id_Sucursal, Cedula_Cliente) VALUES (venta_seq.NEXTVAL, TO_DATE('2024-08-08', 'YYYY-MM-DD'), 2, '0987654321');
INSERT INTO Venta (Id, Fecha, Id_Sucursal, Cedula_Cliente) VALUES (venta_seq.NEXTVAL, TO_DATE('2024-01-12', 'YYYY-MM-DD'), 3, '1122334455');
INSERT INTO Venta (Id, Fecha, Id_Sucursal, Cedula_Cliente) VALUES (venta_seq.NEXTVAL, TO_DATE('2024-07-18', 'YYYY-MM-DD'), 4, '2233445566');
INSERT INTO Venta (Id, Fecha, Id_Sucursal, Cedula_Cliente) VALUES (venta_seq.NEXTVAL, TO_DATE('2024-06-22', 'YYYY-MM-DD'), 5, '3344556677');

-- Insertar datos en la tabla InfoExtraBodega
INSERT INTO Info_Extra_Bodega (Codigo_Barras_Producto, Id_Bodega, Total_Existencia, Costo_Promedio, Capacidad_Almacenamiento, Nivel_Minimo_Re_Orden, Id_detalle_Costo_Bodega) VALUES (1146, 1, 150, 1.31, 2000, 50, 1);
INSERT INTO Info_Extra_Bodega (Codigo_Barras_Producto, Id_Bodega, Total_Existencia, Costo_Promedio, Capacidad_Almacenamiento, Nivel_Minimo_Re_Orden, Id_detalle_Costo_Bodega) VALUES (1155, 2, 100, 18.50, 175, 30, 2);
INSERT INTO Info_Extra_Bodega (Codigo_Barras_Producto, Id_Bodega, Total_Existencia, Costo_Promedio, Capacidad_Almacenamiento, Nivel_Minimo_Re_Orden, Id_detalle_Costo_Bodega) VALUES (1156, 3, 75, 472.00, 280, 20, 3);
INSERT INTO Info_Extra_Bodega (Codigo_Barras_Producto, Id_Bodega, Total_Existencia, Costo_Promedio, Capacidad_Almacenamiento, Nivel_Minimo_Re_Orden, Id_detalle_Costo_Bodega) VALUES (1158, 4, 30, 280.00, 366, 10, 4);
INSERT INTO Info_Extra_Bodega (Codigo_Barras_Producto, Id_Bodega, Total_Existencia, Costo_Promedio, Capacidad_Almacenamiento, Nivel_Minimo_Re_Orden, Id_detalle_Costo_Bodega) VALUES (1159, 5, 20, 17.20, 525, 5, 5);

-- Insertar datos en la tabla InfoExtraOrden
INSERT INTO Info_Extra_Orden (Codigo_Barras_Producto, Id_Orden_Compra, Cantidad, Costo_Unitario_Compra) VALUES (1146, 1, 10, 17.23);
INSERT INTO Info_Extra_Orden (Codigo_Barras_Producto, Id_Orden_Compra, Cantidad, Costo_Unitario_Compra) VALUES (1155, 2, 5, 222.00);
INSERT INTO Info_Extra_Orden (Codigo_Barras_Producto, Id_Orden_Compra, Cantidad, Costo_Unitario_Compra) VALUES (1156, 3, 2, 480.00);
INSERT INTO Info_Extra_Orden (Codigo_Barras_Producto, Id_Orden_Compra, Cantidad, Costo_Unitario_Compra) VALUES (1158, 4, 1, 390.10);
INSERT INTO Info_Extra_Orden (Codigo_Barras_Producto, Id_Orden_Compra, Cantidad, Costo_Unitario_Compra) VALUES (1159, 5, 3, 18.00);

-- Insertar datos en la tabla InfoExtraProveedor
INSERT INTO Info_Extra_Proveedor (Nit_Proveedor, codigo_barras_producto) VALUES ('9001234567', 1146);
INSERT INTO Info_Extra_Proveedor (Nit_Proveedor, codigo_barras_producto) VALUES ('9012345678', 1155);
INSERT INTO Info_Extra_Proveedor (Nit_Proveedor, codigo_barras_producto) VALUES ('9023456789', 1156);
INSERT INTO Info_Extra_Proveedor (Nit_Proveedor, codigo_barras_producto) VALUES ('9034567890', 1158);
INSERT INTO Info_Extra_Proveedor (Nit_Proveedor, codigo_barras_producto) VALUES ('9045678901', 1159);

-- Insertar datos en la tabla InfoExtraVenta
INSERT INTO Info_Extra_Venta (Codigo_Barras_Producto, Id_Venta, Cantidad, Precio_Unitario_Venta) VALUES (1146, 1, 5, 111.50);
INSERT INTO Info_Extra_Venta (Codigo_Barras_Producto, Id_Venta, Cantidad, Precio_Unitario_Venta) VALUES (1155, 2, 2, 158.00);
INSERT INTO Info_Extra_Venta (Codigo_Barras_Producto, Id_Venta, Cantidad, Precio_Unitario_Venta) VALUES (1156, 3, 1, 500.00);
INSERT INTO Info_Extra_Venta (Codigo_Barras_Producto, Id_Venta, Cantidad, Precio_Unitario_Venta) VALUES (1158, 4, 1, 400.00);
INSERT INTO Info_Extra_Venta (Codigo_Barras_Producto, Id_Venta, Cantidad, Precio_Unitario_Venta) VALUES (1159, 5, 3, 250.00);