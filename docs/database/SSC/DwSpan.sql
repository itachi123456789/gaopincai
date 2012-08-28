CREATE TABLE [dbo].[DwPeroidSpan](
	[P] [bigint]  NOT NULL,
	[D1Spans] [int] NOT NULL,
	[P2Spans] [int] NOT NULL,
	[P3Spans] [int] NOT NULL,
	[P4Spans] [int] NOT NULL,
	[P5Spans] [int] NOT NULL,
	[C2Spans] [int] NOT NULL,
	[C3Spans] [int] NOT NULL
 CONSTRAINT [PK_DwPeroidSpan_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[DwHeSpan](
	[P] [bigint]  NOT NULL,
	[D1Spans] [int] NOT NULL,
	[P2Spans] [int] NOT NULL,
	[P3Spans] [int] NOT NULL,
	[P4Spans] [int] NOT NULL,
	[P5Spans] [int] NOT NULL,
	[C2Spans] [int] NOT NULL,
	[C3Spans] [int] NOT NULL
 CONSTRAINT [PK_DwHeSpan_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DwHeWeiSpan](
	[P] [bigint]  NOT NULL,
	[D1Spans] [int] NOT NULL,
	[P2Spans] [int] NOT NULL,
	[P3Spans] [int] NOT NULL,
	[P4Spans] [int] NOT NULL,
	[P5Spans] [int] NOT NULL,
	[C2Spans] [int] NOT NULL,
	[C3Spans] [int] NOT NULL
 CONSTRAINT [PK_DwHeWeiSpan_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DwDaXiaoSpan](
	[P] [bigint]  NOT NULL,
	[D1Spans] [int] NOT NULL,
	[P2Spans] [int] NOT NULL,
	[P3Spans] [int] NOT NULL,
	[P4Spans] [int] NOT NULL,
	[P5Spans] [int] NOT NULL,
	[C2Spans] [int] NOT NULL,
	[C3Spans] [int] NOT NULL
 CONSTRAINT [PK_DwDaXiaoSpan_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DwDanShuangSpan](
	[P] [bigint]  NOT NULL,
	[D1Spans] [int] NOT NULL,
	[P2Spans] [int] NOT NULL,
	[P3Spans] [int] NOT NULL,
	[P4Spans] [int] NOT NULL,
	[P5Spans] [int] NOT NULL,
	[C2Spans] [int] NOT NULL,
	[C3Spans] [int] NOT NULL
 CONSTRAINT [PK_DwDanShuangSpan_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DwZiHeSpan](
	[P] [bigint]  NOT NULL,
	[D1Spans] [int] NOT NULL,
	[P2Spans] [int] NOT NULL,
	[P3Spans] [int] NOT NULL,
	[P4Spans] [int] NOT NULL,
	[P5Spans] [int] NOT NULL,
	[C2Spans] [int] NOT NULL,
	[C3Spans] [int] NOT NULL
 CONSTRAINT [PK_DwZiHeSpan_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DwLu012Span](
	[P] [bigint]  NOT NULL,
	[D1Spans] [int] NOT NULL,
	[P2Spans] [int] NOT NULL,
	[P3Spans] [int] NOT NULL,
	[P4Spans] [int] NOT NULL,
	[P5Spans] [int] NOT NULL,
	[C2Spans] [int] NOT NULL,
	[C3Spans] [int] NOT NULL
 CONSTRAINT [PK_DwLu012Span_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

