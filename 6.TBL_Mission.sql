USE [WVMSDB]
GO
IF OBJECT_ID('dbo.TBL_Mission','U') IS NOT NULL
BEGIN
	DROP TABLE [dbo].[TBL_Mission];
END
GO
CREATE TABLE [dbo].[TBL_Mission](
	[MissionId] [int] IDENTITY(1,1) NOT NULL,
	[MissionDate] [datetime] NULL,
	[Description] [varchar](150) NULL,
	[TNRNo] [int] NULL,
	[ConveyClearanceNo] [int] NULL,
	[RequestingUnit] [varchar](50) NULL,
	[ExcertingUnit] [varchar](50) NULL,
	[ExcertName] [varchar](50) NULL,
	[MobileNo] [int] NULL,
	[TimeOfEscertArrivalToHL] [datetime] NULL,
	[ActualDepTime] [datetime] NULL,
	[EstDateReturn] [datetime] NULL,
	[Origin] [varchar](50) NULL,
	[POCOrigin] [varchar](50) NULL,
	[Destination] [varchar](50) NULL,
	[DestPOC] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[NoOfVehicles] [int] NULL,
	[NoOfBT] [int] NULL,
	[NoOfSpareVehicle] [int] NULL,
	[IS_ACTIVE] BIT NOT NULL,
	[COMMENTS] VARCHAR(20) NULL,
	[VERSION] INT NOT NULL DEFAULT (1),
	[LAST_MODIFIED_AT] DATETIME NULL DEFAULT (GETDATE()),
	[LAST_MODIFIED_BY] VARCHAR(20) NOT NULL,
	CONSTRAINT [PK_TBL_Mission] PRIMARY KEY([MissionId])
 )
GO