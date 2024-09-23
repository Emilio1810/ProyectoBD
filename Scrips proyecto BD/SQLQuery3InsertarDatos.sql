INSERT INTO Clientes (Nombre, Direccion, Telefono, Email)
VALUES ('Juan Pérez', 'Calle 123, San José', '2222-3333', 'juan.perez@mail.com'),
       ('María Gómez', 'Avenida Central, Heredia', '2244-5566', 'maria.gomez@mail.com');
GO


INSERT INTO Vehiculos (Tipo, Matricula, Capacidad, Estado)
VALUES ('Camión', 'ABC123', 5, 'Operativo'),
       ('Furgón', 'XYZ789', 10, 'En mantenimiento');
GO


INSERT INTO Rutas (Origen, Destino, DistanciaKM)
VALUES ('San José', 'Alajuela', 18.5),
       ('Liberia', 'Tamarindo', 63.2);
GO

INSERT INTO ServiciosTransporte (ClienteID, VehiculoID, RutaID, FechaServicio, Costo, Observaciones)
VALUES (1, 1, 1, '2024-09-22', 150.00, 'Entrega a tiempo'),
       (2, 2, 2, '2024-09-23', 250.00, 'Retraso por mantenimiento');
GO
