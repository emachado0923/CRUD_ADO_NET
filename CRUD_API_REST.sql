CREATE DATABASE CRUD_API_REST
USE CRUD_API_REST

CREATE TABLE Productos(
    id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Nombre VARCHAR(100),
    Precio DECIMAL(12,2),
    Cantidad INT,
    Descripcion VARCHAR(100),
    FechaCreacion DATETIME
)

CREATE PROCEDURE InsertarProducto
@Nombre VARCHAR(100),
    @Precio DECIMAL(12,2),
    @Cantidad INT,
    @Descripcion VARCHAR(100),
    @FechaCreacion DATETIME
    AS BEGIN
    INSERT INTO Productos VALUES(@Nombre,@Precio,@Cantidad,@Descripcion,@FechaCreacion)
    END

CREATE PROCEDURE EliminarProducto
@id INT
AS BEGIN
DELETE FROM Productos WHERE id=@id
END

CREATE PROCEDURE ObtenerProductos
AS BEGIN
SELECT * FROM Productos
END

create PROCEDURE ObtenerProductosPorId
@id INT
AS BEGIN
SELECT * FROM Productos WHERE id=@id
END

CREATE PROCEDURE ActualizarProducto
@Id INT
    @Nombre VARCHAR(100),
    @Precio DECIMAL(12,2),
    @Cantidad INT,
    @Descripcion VARCHAR(100),
    @FechaCreacion DATETIME
    AS BEGIN
UPDATE Productos SET 
Nombre=@Nombre,
Precio=@Precio,
Cantidad=@Cantidad,
Descripcion=@Descripcion,
FechaCreacion=@FechaCreacion
END