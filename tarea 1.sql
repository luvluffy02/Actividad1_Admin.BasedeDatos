USE [AkirasBoutiques];
GO

---------------------------------------------------------
-- 1. CREACIÓN DE LA TABLA SUCURSALES
---------------------------------------------------------
CREATE TABLE [dbo].[sucursales](
    [id_sucursal] [int] NOT NULL,
    [nombre_sucursal] [varchar](100) NOT NULL,
    [encargado] [varchar](100) NOT NULL,
    [direccion] [varchar](150) NOT NULL,
    [telefono] [varchar](20) NOT NULL,
    [ciudad] [varchar](50) NOT NULL,
    [estado] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED ([id_sucursal] ASC)
);
GO

---------------------------------------------------------
-- 2. CREACIÓN DE LA TABLA EMPLEADOS
---------------------------------------------------------
CREATE TABLE [dbo].[empleados](
    [id_empleado] [int] IDENTITY(1,1) NOT NULL,
    [nombre] [varchar](50) NOT NULL,
    [apellido] [varchar](50) NOT NULL,
    [direccion] [varchar](150) NOT NULL,
    [telefono] [varchar](20) NOT NULL,
    [edad] [int] NOT NULL,
    [id_sucursal] [int] NOT NULL,
    [email] [varchar](100) NOT NULL,
    [contrasena] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED ([id_empleado] ASC),
CONSTRAINT [FK_empleado_sucursal] FOREIGN KEY([id_sucursal]) 
REFERENCES [dbo].[sucursales] ([id_sucursal])
);
GO

---------------------------------------------------------
-- 3. INSERCIÓN DE LAS 7 SUCURSALES OFICIALES
---------------------------------------------------------
INSERT INTO [dbo].[sucursales] ([id_sucursal], [nombre_sucursal], [encargado], [direccion], [telefono], [ciudad], [estado]) VALUES 
(1, 'Akira’s Boutique: Las Mercedes', 'Sonia Alejandra Fernández Moreno', 'Calle Roble #507 Fracc. Las Mercedes', '444 783 1225', 'San Luis Potosí', 'San Luis Potosí'),
(2, 'Akira’s Boutique: Obraje', 'Fernando Calderón Ayala', 'Calle Dr. Jesús Díaz de León #438 col. Obraje', '449 378 0921', 'Aguascalientes', 'Aguascalientes'),
(3, 'Akira’s Boutique: Galerías Mazatlán', 'Daniela Fernanda Díaz Ordaz', 'Av. de la Marina #6204, Marina, local 35', '669 293 2059', 'Mazatlán', 'Sinaloa'),
(4, 'Akira’s Boutique: Zapopan', 'Mario Alberto Jiménez Salcido', 'Av. Manuel J. Clouthier 525 col. Benito Juárez', '333 784 1230', 'Zapopan', 'Jalisco'),
(5, 'Akira´s Boutique: Melchor', 'Yesenia Guadalupe Campos Rojo', 'Av. Melchor Ocampo #2528 Zona Centro', '614 390 6721', 'Chihuahua', 'Chihuahua'),
(6, 'Akira’s Boutique: Constitución', 'Tamara Alejandra Bernal Ramos', 'Calle Constitución #106 Zona Centro', '618 196 2954', 'Durango', 'Durango'),
(7, 'Akira’s Boutique: Centro', 'Samuel Enrique Barrios Enciso', 'Av. Hidalgo #338 Zacatecas Centro', '492 930 1250', 'Zacatecas', 'Zacatecas');
GO

---------------------------------------------------------
-- 4. INSERCIÓN DE EMPLEADOS (Ejemplo básico para iniciar)
---------------------------------------------------------
INSERT INTO [dbo].[empleados] ([nombre], [apellido], [direccion], [telefono], [edad], [id_sucursal], [email], [contrasena]) VALUES
('Carlos', 'Pérez', 'Av. Venustiano Carranza 120', '4441112233', 25, 1, 'carlos.perez@akiras.com', 'pass123'),
('María', 'Gómez', 'Calle Zafiro 310', '4442223344', 28, 1, 'maria.gomez@akiras.com', 'pass123'),
('Sofía', 'Ramírez', 'Av. Alameda 102', '4491112233', 24, 2, 'sofia.ramirez@akiras.com', 'pass123'),
('Miguel', 'Ángel', 'Alameda Sur 45', '4492223344', 31, 2, 'miguel.angel@akiras.com', 'pass123');
GO
SELECT * FROM sucursales;
SELECT * FROM empleados;