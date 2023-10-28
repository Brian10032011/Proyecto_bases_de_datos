import sqlite3

# CONEXION A LA DB
conexion = sqlite3.connect("Cadena_de_tienda_postgres.db")

# CURSOR PARA INTERACTUAR CON LA DB
cursor = conexion.cursor()

#CREANDO TABLAS 

# CATEGORIA
#cursor.execute("CREATE TABLE IF NOT EXIST Categoria(id INTEGER PRIMARY KEY ,nombre TEXT NOT NULL);")

# PRODUCTO
#cursor.execute("CREATE TABLE IF NOT EXIST Producto(id INTEGER PRIMARY KEY,nombre TEXT NOT NULL,marca TEXT NOT NULL,categoria_id INTEGER,precio_unitario INTEGER);")

# SUCURSAL
#cursor.execute("CREATE TABLE IF NOT EXIST Sucursal(id INTEGER PRIMARY KEY,nombre TEXT NOT NULL,direccion TEXT NOT NULL);")

# STOCK
#cursor.execute("CREATE TABLE IF NOT EXIST Stock(id INTEGER PRIMARY KEY,sucursal_id INTEGER,producto_id INTEGER,cantidad INTEGER(UNIQUE(sucursal_id,producto_id)) );")

# CLIENTE
#cursor.execute("CREATE TABLE IF NOT EXIST Cliente(id INTEGER PRIMARY KEY,nombre TEXT NOT NULL,telefono INTEGER);")

# ORDEN 
#cursor.execute("CREATE TABLE IF NOT EXIST Orden(id INTEGER PRIMARY KEY,cliente_id INTEGER,sucursal_id INTEGER,fecha DATE,total INTEGER);")

# ITEM
#cursor.execute("CREATE TABLE IF NOT EXIST Item(id INTEGER PRIMARY KEY,orden_id INTEGER,producto_id INTEGER,cantidad INTEGER,monto_venta INTEGER);")

#CERRAR CONEXION
cursor.close()