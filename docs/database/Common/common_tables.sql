CREATE TABLE [dbo].[RuleType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](20) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Seq] [int] NOT NULL,
 CONSTRAINT [PK_RuleType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_RuleType_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(100,1) NOT NULL,
	[ParentId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[RuleType] [varchar](20) NOT NULL,
	[Type] [varchar](20) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[DbName] [varchar](50) NOT NULL,
	[Peroid] [nvarchar](20) NOT NULL,
	[Seq] [int] NOT NULL,
	[Enabled] [tinyint] NOT NULL,
	[IsGP] [tinyint] NOT NULL,
	[Times] [int] NOT NULL,
	[PeroidCount] [int] NOT NULL,
	[DownPageCount] [int] NOT NULL,
	[DownPageSize] [int] NOT NULL,
	[DownIntervals] [nvarchar](10) NOT NULL,
	[DownPeroid] [nvarchar](2) NOT NULL,
	[DownUrl] [varchar](200) NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_DmCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_DmCategory_DbName] UNIQUE NONCLUSTERED 
(
	[DbName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_Category_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_DmCategory_ParentId]  DEFAULT ((0)) FOR [ParentId]
GO

ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_DmCategory_Seq]  DEFAULT ((10)) FOR [Seq]
GO

ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_DmCategory_Enabled]  DEFAULT ((0)) FOR [Enabled]
GO

ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_DmCategory_IsGP]  DEFAULT ((0)) FOR [IsGP]
GO

ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_DmCategory_Created]  DEFAULT (getdate()) FOR [Created]
GO

CREATE TABLE [dbo].[NumberType](
	[Id] [int] IDENTITY(100,1) NOT NULL,
	[RuleType] [varchar](20) NOT NULL,
	[Code] [varchar](6) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Length] [int] NOT NULL,
	[Probability] [decimal](18, 18) NOT NULL,
	[Amount] [decimal](4, 2) NOT NULL,
	[Prize] [decimal](10, 2) NOT NULL,
	[Seq] [int] NOT NULL,
	[Status] [tinyint] NOT NULL
 CONSTRAINT [PK_NumberType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_NumberType_Code_Type] UNIQUE NONCLUSTERED 
(
	[Code] ASC,
	[RuleType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_NumberType_Name_Type] UNIQUE NONCLUSTERED 
(
	[Name] ASC,
	[RuleType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Dimension](
	[Id] [int] IDENTITY(100,1) NOT NULL,
	[Code] [varchar](20) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Seq] [int] NOT NULL,
	[Status] [tinyint] NOT NULL
 CONSTRAINT [PK_Dimension] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_Dimension_Type_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_Dimension_Type_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[DimensionNumberType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RuleType] [varchar](20) NOT NULL,
	[NumberType] [varchar](6) NOT NULL,
	[Dimension] [varchar](20) NOT NULL,
	[DimValue] [varchar](20) NOT NULL,
	[Probability] [decimal](18, 18) NOT NULL,
	[Nums] [int] NOT NULL,
	[Amount] [decimal](8, 2) NOT NULL,
 CONSTRAINT [PK_DimensionNumberType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_DimensionNumberType] UNIQUE NONCLUSTERED 
(
	[RuleType] ASC,
	[NumberType] ASC,
	[Dimension] ASC,
	[DimValue] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO