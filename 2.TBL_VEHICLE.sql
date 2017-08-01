USE [WVMSDB]
GO
IF OBJECT_ID('dbo.TBL_VEHICLE','U') IS NOT NULL
BEGIN
	DROP TABLE dbo.TBL_VEHICLE;
END
GO
CREATE TABLE dbo.TBL_VEHICLE
(
	[VehicleID] int IDENTITY(1,1) NOT NULL,
	[Owner] varchar(50) NOT NULL,
	[VehicleYear] date NULL,
	[Make] varchar(50) NULL,
	[Model] varchar(50) NULL,
	[LicensePlate] int NOT NULL,
	[VINNo] varchar(80) NULL,
	[TrailerNo] varchar(30) NULL,
	[KeyNo] varchar(20) NULL,
	[DoorNo] varchar(50) NULL,
	[Type] varchar(20) NULL,
	[Color] varchar(20) NULL,
	[RegistrationInfo] varchar(50) NULL,
	[IssueDate] date NULL,
	[ExpiryDate] date NULL,
	[DefaultDriver] varchar(50) NULL,
	[Remarks] varchar(150) NULL,
	[IS_ACTIVE] BIT NOT NULL DEFAULT(1),
	[VERSION] INT NOT NULL DEFAULT(1),
	[LAST_MODIFIED_AT] DATETIME NOT NULL DEFAULT(GETDATE()),
	[LAST_MODIFIED_BY] VARCHAR(50) NOT NULL
	CONSTRAINT [PK_TBL_VEHICLE] PRIMARY KEY ([VehicleID]),
	CONSTRAINT [UQ_TBL_VEHICLE_OWNER] UNIQUE ([Owner])
)
GO

