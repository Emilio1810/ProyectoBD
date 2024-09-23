USE TranspoDB;
GO

CREATE LOGIN admin_user WITH PASSWORD = 'AdminPassword123';
CREATE USER admin_user FOR LOGIN admin_user;
GO

EXEC sp_addrolemember 'db_owner', 'admin_user';
GO

CREATE LOGIN gerente_user WITH PASSWORD = 'GerentePassword123';
CREATE USER gerente_user FOR LOGIN gerente_user;
GO

EXEC sp_addrolemember 'db_datareader', 'gerente_user';
GO

CREATE LOGIN analista_user WITH PASSWORD = 'AnalistaPassword123';
CREATE USER analista_user FOR LOGIN analista_user;
GO

EXEC sp_addrolemember 'db_datareader', 'analista_user';
EXEC sp_addrolemember 'db_datawriter', 'analista_user';
GO
