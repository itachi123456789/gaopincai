CREATE TABLE [dbo].[DwNumber](
	[P] [bigint] NOT NULL,
	[D1] [int] NOT NULL,
	[D2] [int] NOT NULL,
	[D3] [int] NOT NULL,
	[P2] [char](4) NOT NULL,
	[C2] [char](4) NOT NULL,
	[P3] [char](6) NOT NULL,
	[C3] [char](6) NOT NULL,
	[G2] [char](4) NOT NULL,
	[Z2] [char](4) NOT NULL,
	[G3] [char](6) NOT NULL,
	[Z3] [char](6) NOT NULL,
	[N] [int] NOT NULL,
	[Seq] [int] NOT NULL,
	[Date] [int] NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_DwNumber_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

----------------------span tables----------------------------------

CREATE TABLE [dbo].[DwPeroidSpan](
	[P] [bigint]  NOT NULL,
	[D1Spans] [int] NOT NULL,
	[D2Spans] [int] NOT NULL,
	[D3Spans] [int] NOT NULL,
	[P2Spans] [int] NOT NULL,
	[C2Spans] [int] NOT NULL,
	[P3Spans] [int] NOT NULL,
	[C3Spans] [int] NOT NULL,
	[G2Spans] [int] NOT NULL,
	[Z2Spans] [int] NOT NULL,
	[G3Spans] [int] NOT NULL,
	[Z3Spans] [int] NOT NULL
 CONSTRAINT [PK_DwPeroidSpan_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[DwDaXiaoSpan](
	[P] [bigint]  NOT NULL,
	[D1Spans] [int] NOT NULL,
	[D2Spans] [int] NOT NULL,
	[D3Spans] [int] NOT NULL,
	[P2Spans] [int] NOT NULL,
	[C2Spans] [int] NOT NULL,
	[P3Spans] [int] NOT NULL,
	[C3Spans] [int] NOT NULL,
	[G2Spans] [int] NOT NULL,
	[Z2Spans] [int] NOT NULL,
	[G3Spans] [int] NOT NULL,
	[Z3Spans] [int] NOT NULL
 CONSTRAINT [PK_DwDaXiaoSpan_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DwDanShuangSpan](
	[P] [bigint]  NOT NULL,
	[D1Spans] [int] NOT NULL,
	[D2Spans] [int] NOT NULL,
	[D3Spans] [int] NOT NULL,
	[P2Spans] [int] NOT NULL,
	[C2Spans] [int] NOT NULL,
	[P3Spans] [int] NOT NULL,
	[C3Spans] [int] NOT NULL,
	[G2Spans] [int] NOT NULL,
	[Z2Spans] [int] NOT NULL,
	[G3Spans] [int] NOT NULL,
	[Z3Spans] [int] NOT NULL
 CONSTRAINT [PK_DwDanShuangSpan_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DwZiHeSpan](
	[P] [bigint]  NOT NULL,
	[D1Spans] [int] NOT NULL,
	[D2Spans] [int] NOT NULL,
	[D3Spans] [int] NOT NULL,
	[P2Spans] [int] NOT NULL,
	[C2Spans] [int] NOT NULL,
	[P3Spans] [int] NOT NULL,
	[C3Spans] [int] NOT NULL,
	[G2Spans] [int] NOT NULL,
	[Z2Spans] [int] NOT NULL,
	[G3Spans] [int] NOT NULL,
	[Z3Spans] [int] NOT NULL
 CONSTRAINT [PK_DwZiHeSpan_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DwLu012Span](
	[P] [bigint]  NOT NULL,
	[D1Spans] [int] NOT NULL,
	[D2Spans] [int] NOT NULL,
	[D3Spans] [int] NOT NULL,
	[P2Spans] [int] NOT NULL,
	[C2Spans] [int] NOT NULL,
	[P3Spans] [int] NOT NULL,
	[C3Spans] [int] NOT NULL,
	[G2Spans] [int] NOT NULL,
	[Z2Spans] [int] NOT NULL,
	[G3Spans] [int] NOT NULL,
	[Z3Spans] [int] NOT NULL
 CONSTRAINT [PK_DwLu012Span_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DwHeSpan](
	[P] [bigint]  NOT NULL,
	[P2Spans] [int] NOT NULL,
	[C2Spans] [int] NOT NULL,
	[P3Spans] [int] NOT NULL,
	[C3Spans] [int] NOT NULL,
	[G2Spans] [int] NOT NULL,
	[Z2Spans] [int] NOT NULL,
	[G3Spans] [int] NOT NULL,
	[Z3Spans] [int] NOT NULL
 CONSTRAINT [PK_DwHeSpan_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DwHeWeiSpan](
	[P] [bigint]  NOT NULL,
	[P2Spans] [int] NOT NULL,
	[C2Spans] [int] NOT NULL,
	[P3Spans] [int] NOT NULL,
	[C3Spans] [int] NOT NULL,
	[G2Spans] [int] NOT NULL,
	[Z2Spans] [int] NOT NULL,
	[G3Spans] [int] NOT NULL,
	[Z3Spans] [int] NOT NULL
 CONSTRAINT [PK_DwHeWeiSpan_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DwJiSpan](
	[P] [bigint]  NOT NULL,
	[P2Spans] [int] NOT NULL,
	[C2Spans] [int] NOT NULL,
	[P3Spans] [int] NOT NULL,
	[C3Spans] [int] NOT NULL,
	[G2Spans] [int] NOT NULL,
	[Z2Spans] [int] NOT NULL,
	[G3Spans] [int] NOT NULL,
	[Z3Spans] [int] NOT NULL
 CONSTRAINT [PK_DwJiSpan_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DwJiWeiSpan](
	[P] [bigint]  NOT NULL,
	[P2Spans] [int] NOT NULL,
	[C2Spans] [int] NOT NULL,
	[P3Spans] [int] NOT NULL,
	[C3Spans] [int] NOT NULL,
	[G2Spans] [int] NOT NULL,
	[Z2Spans] [int] NOT NULL,
	[G3Spans] [int] NOT NULL,
	[Z3Spans] [int] NOT NULL
 CONSTRAINT [PK_DwJiWeiSpan_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DwKuaDuSpan](
	[P] [bigint]  NOT NULL,
	[P2Spans] [int] NOT NULL,
	[C2Spans] [int] NOT NULL,
	[P3Spans] [int] NOT NULL,
	[C3Spans] [int] NOT NULL,
	[G2Spans] [int] NOT NULL,
	[Z2Spans] [int] NOT NULL,
	[G3Spans] [int] NOT NULL,
	[Z3Spans] [int] NOT NULL
 CONSTRAINT [PK_DwKuaDuSpan_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DwACSpan](
	[P] [bigint]  NOT NULL,
	[P3Spans] [int] NOT NULL,
	[C3Spans] [int] NOT NULL,
	[G3Spans] [int] NOT NULL,
	[Z3Spans] [int] NOT NULL
 CONSTRAINT [PK_DwACSpan_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DwDaXiaoBiSpan](
	[P] [bigint]  NOT NULL,
	[P2Spans] [int] NOT NULL,
	[C2Spans] [int] NOT NULL,
	[P3Spans] [int] NOT NULL,
	[C3Spans] [int] NOT NULL,
	[G2Spans] [int] NOT NULL,
	[Z2Spans] [int] NOT NULL,
	[G3Spans] [int] NOT NULL,
	[Z3Spans] [int] NOT NULL
 CONSTRAINT [PK_DwDaXiaoBiSpan_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[DwZiHeBiSpan](
	[P] [bigint]  NOT NULL,
	[P2Spans] [int] NOT NULL,
	[C2Spans] [int] NOT NULL,
	[P3Spans] [int] NOT NULL,
	[C3Spans] [int] NOT NULL,
	[G2Spans] [int] NOT NULL,
	[Z2Spans] [int] NOT NULL,
	[G3Spans] [int] NOT NULL,
	[Z3Spans] [int] NOT NULL
 CONSTRAINT [PK_DwZiHeBiSpan_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[DwDanShuangBiSpan](
	[P] [bigint]  NOT NULL,
	[P2Spans] [int] NOT NULL,
	[C2Spans] [int] NOT NULL,
	[P3Spans] [int] NOT NULL,
	[C3Spans] [int] NOT NULL,
	[G2Spans] [int] NOT NULL,
	[Z2Spans] [int] NOT NULL,
	[G3Spans] [int] NOT NULL,
	[Z3Spans] [int] NOT NULL
 CONSTRAINT [PK_DwDanShuangBiSpan_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[DwLu012BiSpan](
	[P] [bigint]  NOT NULL,
	[P2Spans] [int] NOT NULL,
	[C2Spans] [int] NOT NULL,
	[P3Spans] [int] NOT NULL,
	[C3Spans] [int] NOT NULL,
	[G2Spans] [int] NOT NULL,
	[Z2Spans] [int] NOT NULL,
	[G3Spans] [int] NOT NULL,
	[Z3Spans] [int] NOT NULL
 CONSTRAINT [PK_DwLu012BiSpan_P] PRIMARY KEY CLUSTERED 
(
	[P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

----------------------------------------------dimension tables ------------------------------------

CREATE TABLE [dbo].[DmDate](
	[Date] [int] NOT NULL,
	[Year] [int] NULL,
	[Month] [int] NULL,
	[Day] [int] NULL,
	[Week] [int] NULL,
	[Quantum] [int] NULL,
 CONSTRAINT [PK_DmDate] PRIMARY KEY CLUSTERED 
(
	[Date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[DmDX](
	[Id] [char](2) NOT NULL,
	[NumberType] [char](2) NOT NULL,
	[Number] [char](2) NOT NULL,
	[DaXiao] [char](1) NOT NULL,
	[DanShuang] [char](1) NOT NULL,
	[ZiHe] [char](1) NOT NULL,
	[Lu012] [char](1) NOT NULL,
	[He] [int] NOT NULL,
	[HeWei] [int] NOT NULL,
	[DaCnt] [int] NOT NULL,
	[XiaoCnt] [int] NOT NULL,
	[DanCnt] [int] NOT NULL,
	[ShuangCnt] [int] NOT NULL,
	[ZiCnt] [int] NOT NULL,
	[HeCnt] [int] NOT NULL,
	[Lu0Cnt] [int] NOT NULL,
	[Lu1Cnt] [int] NOT NULL,
	[Lu2Cnt] [int] NOT NULL,
	[Ji] [int] NOT NULL,
	[JiWei] [int] NOT NULL,
	[KuaDu] [int] NOT NULL,
	[AC] [int] NOT NULL,
	[DaXiaoBi] [char](3) NOT NULL,
	[ZiHeBi] [char](3) NOT NULL,
	[DanShuangBi] [char](3) NOT NULL,
	[Lu012Bi] [char](5) NOT NULL
 CONSTRAINT [PK_DmDx] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[DmP2](
	[Id] [char](4) NOT NULL,
	[NumberType] [char](2) NOT NULL,
	[Number] [char](5) NOT NULL,
	[DaXiao] [char](3) NOT NULL,
	[DanShuang] [char](3) NOT NULL,
	[ZiHe] [char](3) NOT NULL,
	[Lu012] [char](3) NOT NULL,
	[He] [int] NOT NULL,
	[HeWei] [int] NOT NULL,
	[DaCnt] [int] NOT NULL,
	[XiaoCnt] [int] NOT NULL,
	[DanCnt] [int] NOT NULL,
	[ShuangCnt] [int] NOT NULL,
	[ZiCnt] [int] NOT NULL,
	[HeCnt] [int] NOT NULL,
	[Lu0Cnt] [int] NOT NULL,
	[Lu1Cnt] [int] NOT NULL,
	[Lu2Cnt] [int] NOT NULL,
	[Ji] [int] NOT NULL,
	[JiWei] [int] NOT NULL,
	[KuaDu] [int] NOT NULL,
	[AC] [int] NOT NULL,
	[DaXiaoBi] [char](3) NOT NULL,
	[ZiHeBi] [char](3) NOT NULL,
	[DanShuangBi] [char](3) NOT NULL,
	[Lu012Bi] [char](5) NOT NULL
 CONSTRAINT [PK_DmP2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[DmC2](
	[Id] [char](4) NOT NULL,
	[NumberType] [char](2) NOT NULL,
	[Number] [char](5) NOT NULL,
	[DaXiao] [char](3) NOT NULL,
	[DanShuang] [char](3) NOT NULL,
	[ZiHe] [char](3) NOT NULL,
	[Lu012] [char](3) NOT NULL,
	[He] [int] NOT NULL,
	[HeWei] [int] NOT NULL,
	[DaCnt] [int] NOT NULL,
	[XiaoCnt] [int] NOT NULL,
	[DanCnt] [int] NOT NULL,
	[ShuangCnt] [int] NOT NULL,
	[ZiCnt] [int] NOT NULL,
	[HeCnt] [int] NOT NULL,
	[Lu0Cnt] [int] NOT NULL,
	[Lu1Cnt] [int] NOT NULL,
	[Lu2Cnt] [int] NOT NULL,
	[Ji] [int] NOT NULL,
	[JiWei] [int] NOT NULL,
	[KuaDu] [int] NOT NULL,
	[AC] [int] NOT NULL,
	[DaXiaoBi] [char](3) NOT NULL,
	[ZiHeBi] [char](3) NOT NULL,
	[DanShuangBi] [char](3) NOT NULL,
	[Lu012Bi] [char](5) NOT NULL
 CONSTRAINT [PK_DmC2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[DmP3](
	[Id] [char](6) NOT NULL,
	[NumberType] [char](2) NOT NULL,
	[Number] [char](8) NOT NULL,
	[DaXiao] [char](5) NOT NULL,
	[DanShuang] [char](5) NOT NULL,
	[ZiHe] [char](5) NOT NULL,
	[Lu012] [char](5) NOT NULL,
	[He] [int] NOT NULL,
	[HeWei] [int] NOT NULL,
	[DaCnt] [int] NOT NULL,
	[XiaoCnt] [int] NOT NULL,
	[DanCnt] [int] NOT NULL,
	[ShuangCnt] [int] NOT NULL,
	[ZiCnt] [int] NOT NULL,
	[HeCnt] [int] NOT NULL,
	[Lu0Cnt] [int] NOT NULL,
	[Lu1Cnt] [int] NOT NULL,
	[Lu2Cnt] [int] NOT NULL,
	[Ji] [int] NOT NULL,
	[JiWei] [int] NOT NULL,
	[KuaDu] [int] NOT NULL,
	[AC] [int] NOT NULL,
	[DaXiaoBi] [char](3) NOT NULL,
	[ZiHeBi] [char](3) NOT NULL,
	[DanShuangBi] [char](3) NOT NULL,
	[Lu012Bi] [char](5) NOT NULL
 CONSTRAINT [PK_DmP3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[DmC3](
	[Id] [char](6) NOT NULL,
	[NumberType] [char](2) NOT NULL,
	[Number] [char](8) NOT NULL,
	[DaXiao] [char](5) NOT NULL,
	[DanShuang] [char](5) NOT NULL,
	[ZiHe] [char](5) NOT NULL,
	[Lu012] [char](5) NOT NULL,
	[He] [int] NOT NULL,
	[HeWei] [int] NOT NULL,
	[DaCnt] [int] NOT NULL,
	[XiaoCnt] [int] NOT NULL,
	[DanCnt] [int] NOT NULL,
	[ShuangCnt] [int] NOT NULL,
	[ZiCnt] [int] NOT NULL,
	[HeCnt] [int] NOT NULL,
	[Lu0Cnt] [int] NOT NULL,
	[Lu1Cnt] [int] NOT NULL,
	[Lu2Cnt] [int] NOT NULL,
	[Ji] [int] NOT NULL,
	[JiWei] [int] NOT NULL,
	[KuaDu] [int] NOT NULL,
	[AC] [int] NOT NULL,
	[DaXiaoBi] [char](3) NOT NULL,
	[ZiHeBi] [char](3) NOT NULL,
	[DanShuangBi] [char](3) NOT NULL,
	[Lu012Bi] [char](5) NOT NULL	
 CONSTRAINT [PK_DmC3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[DmG2](
	[Id] [char](4) NOT NULL,
	[NumberType] [char](2) NOT NULL,
	[Number] [char](5) NOT NULL,
	[DaXiao] [char](3) NOT NULL,
	[DanShuang] [char](3) NOT NULL,
	[ZiHe] [char](3) NOT NULL,
	[Lu012] [char](3) NOT NULL,
	[He] [int] NOT NULL,
	[HeWei] [int] NOT NULL,
	[DaCnt] [int] NOT NULL,
	[XiaoCnt] [int] NOT NULL,
	[DanCnt] [int] NOT NULL,
	[ShuangCnt] [int] NOT NULL,
	[ZiCnt] [int] NOT NULL,
	[HeCnt] [int] NOT NULL,
	[Lu0Cnt] [int] NOT NULL,
	[Lu1Cnt] [int] NOT NULL,
	[Lu2Cnt] [int] NOT NULL,
	[Ji] [int] NOT NULL,
	[JiWei] [int] NOT NULL,
	[KuaDu] [int] NOT NULL,
	[AC] [int] NOT NULL,
	[DaXiaoBi] [char](3) NOT NULL,
	[ZiHeBi] [char](3) NOT NULL,
	[DanShuangBi] [char](3) NOT NULL,
	[Lu012Bi] [char](5) NOT NULL
 CONSTRAINT [PK_DmG2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[DmG3](
	[Id] [char](6) NOT NULL,
	[NumberType] [char](2) NOT NULL,
	[Number] [char](8) NOT NULL,
	[DaXiao] [char](5) NOT NULL,
	[DanShuang] [char](5) NOT NULL,
	[ZiHe] [char](5) NOT NULL,
	[Lu012] [char](5) NOT NULL,
	[He] [int] NOT NULL,
	[HeWei] [int] NOT NULL,
	[DaCnt] [int] NOT NULL,
	[XiaoCnt] [int] NOT NULL,
	[DanCnt] [int] NOT NULL,
	[ShuangCnt] [int] NOT NULL,
	[ZiCnt] [int] NOT NULL,
	[HeCnt] [int] NOT NULL,
	[Lu0Cnt] [int] NOT NULL,
	[Lu1Cnt] [int] NOT NULL,
	[Lu2Cnt] [int] NOT NULL,
	[Ji] [int] NOT NULL,
	[JiWei] [int] NOT NULL,
	[KuaDu] [int] NOT NULL,
	[AC] [int] NOT NULL,
	[DaXiaoBi] [char](3) NOT NULL,
	[ZiHeBi] [char](3) NOT NULL,
	[DanShuangBi] [char](3) NOT NULL,
	[Lu012Bi] [char](5) NOT NULL
 CONSTRAINT [PK_DmG3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[DmZ2](
	[Id] [char](4) NOT NULL,
	[NumberType] [char](2) NOT NULL,
	[Number] [char](5) NOT NULL,
	[DaXiao] [char](3) NOT NULL,
	[DanShuang] [char](3) NOT NULL,
	[ZiHe] [char](3) NOT NULL,
	[Lu012] [char](3) NOT NULL,
	[He] [int] NOT NULL,
	[HeWei] [int] NOT NULL,
	[DaCnt] [int] NOT NULL,
	[XiaoCnt] [int] NOT NULL,
	[DanCnt] [int] NOT NULL,
	[ShuangCnt] [int] NOT NULL,
	[ZiCnt] [int] NOT NULL,
	[HeCnt] [int] NOT NULL,
	[Lu0Cnt] [int] NOT NULL,
	[Lu1Cnt] [int] NOT NULL,
	[Lu2Cnt] [int] NOT NULL,
	[Ji] [int] NOT NULL,
	[JiWei] [int] NOT NULL,
	[KuaDu] [int] NOT NULL,
	[AC] [int] NOT NULL,
	[DaXiaoBi] [char](3) NOT NULL,
	[ZiHeBi] [char](3) NOT NULL,
	[DanShuangBi] [char](3) NOT NULL,
	[Lu012Bi] [char](5) NOT NULL
 CONSTRAINT [PK_DmZ2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[DmZ3](
	[Id] [char](6) NOT NULL,
	[NumberType] [char](3) NOT NULL,
	[Number] [char](8) NOT NULL,
	[DaXiao] [char](5) NOT NULL,
	[DanShuang] [char](5) NOT NULL,
	[ZiHe] [char](5) NOT NULL,
	[Lu012] [char](5) NOT NULL,
	[He] [int] NOT NULL,
	[HeWei] [int] NOT NULL,
	[DaCnt] [int] NOT NULL,
	[XiaoCnt] [int] NOT NULL,
	[DanCnt] [int] NOT NULL,
	[ShuangCnt] [int] NOT NULL,
	[ZiCnt] [int] NOT NULL,
	[HeCnt] [int] NOT NULL,
	[Lu0Cnt] [int] NOT NULL,
	[Lu1Cnt] [int] NOT NULL,
	[Lu2Cnt] [int] NOT NULL,
	[Ji] [int] NOT NULL,
	[JiWei] [int] NOT NULL,
	[KuaDu] [int] NOT NULL,
	[AC] [int] NOT NULL,
	[DaXiaoBi] [char](3) NOT NULL,
	[ZiHeBi] [char](3) NOT NULL,
	[DanShuangBi] [char](3) NOT NULL,
	[Lu012Bi] [char](5) NOT NULL
 CONSTRAINT [PK_DmZ3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO