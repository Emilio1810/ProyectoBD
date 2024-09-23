USE TranspoDB;
GO

CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100),
    Direccion NVARCHAR(250),
    Telefono NVARCHAR(15),
    Email NVARCHAR(100)
);
GO

CREATE TABLE Vehiculos (
    VehiculoID INT PRIMARY KEY IDENTITY(1,1),
    Tipo NVARCHAR(50),  
    Matricula NVARCHAR(10),
    Capacidad INT,  
    Estado NVARCHAR(50)  
);
GO


CREATE TABLE Rutas (
    RutaID INT PRIMARY KEY IDENTITY(1,1),
    Origen NVARCHAR(100),
    Destino NVARCHAR(100),
    DistanciaKM DECIMAL(5,2)  -- Distancia en kilómetros
);
GO

CREATE TABLE ServiciosTransporte (
    ServicioID INT PRIMARY KEY IDENTITY(1,1),
    ClienteID INT FOREIGN KEY REFERENCES Clientes(ClienteID),
    VehiculoID INT FOREIGN KEY REFERENCES Vehiculos(VehiculoID),
    RutaID INT FOREIGN KEY REFERENCES Rutas(RutaID),
    FechaServicio DATE,
    Costo DECIMAL(10,2),  -- Costo del servicio
    Observaciones NVARCHAR(500)  -- Notas adicionales sobre el servicio
);
GO
