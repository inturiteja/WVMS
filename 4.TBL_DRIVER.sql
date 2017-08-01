USE [WVMSDB]
GO
IF OBJECT_ID('dbo.TBL_DRIVER','U') IS NOT NULL
BEGIN
	DROP TABLE [dbo].[TBL_DRIVER];
END
GO
CREATE TABLE [dbo].[TBL_DRIVER]
(
	[DriverId] int IDENTITY(1,1) NOT NULL,
	[Name] varchar(50) NULL,
	[NameArabic] varchar(50) NULL,
	[Position] varchar(50) NULL,
	[Nationality] varchar(50) NULL,
	[BasicSalary] varchar(50) NULL,
	[JoiningDate] datetime NULL,
	[BirthDate] datetime NULL,
	[Location] varchar(50) NULL,
	[Section] varchar(50) NULL,
	[Department] varchar(50) NULL,
	[BadgeNo] varchar(50) NULL,
	[RoomNo] varchar(50) NULL,
	[LicensesNo] varchar(50) NULL,
	[Type] varchar(50) NULL,
	[LicensesExpiryDate] date NULL,
	[PassportInfo] varchar(50) NULL,
	[IssueDate] date NULL,
	[PassportExpiryDate] date NULL,
	[CivilIDInfo] varchar(50) NULL,
	[CivilIDIssueDate] date NULL,
	[CivilIDExpiryDate] date NULL,
	[VisaType] varchar(50) NULL,
	[InsuranceInfo] varchar(50) NULL,
	[InsuranceIssueDate] date NULL,
	[InsuranceExpiryDate] date NULL,
	[InsuredBy] varchar(50) NULL,
	[Status] varchar(50) NULL,
	[StatusDate] date NULL,
	[Remarks] varchar(150) NULL,
	[IS_ACTIVE] BIT NOT NULL,
	[COMMENTS] VARCHAR(20) NULL,
	[VERSION] INT NOT NULL DEFAULT (1),
	[LAST_MODIFIED_AT] DATETIME NULL DEFAULT (GETDATE()),
	[LAST_MODIFIED_BY] VARCHAR(20) NOT NULL,
	CONSTRAINT [PK_TBL_DRIVER] PRIMARY KEY([DriverId]),
	CONSTRAINT [FK_TBL_DRIVER_NAME] UNIQUE ([NAME])
)

GO