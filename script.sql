USE [LTNC]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 1/22/2021 8:45:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IdAccount] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[IdAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cart]    Script Date: 1/22/2021 8:45:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Total] [float] NULL,
	[Status] [int] NULL,
	[IdCart] [int] IDENTITY(1,1) NOT NULL,
	[IdAccount] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[IdCart] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CartDetail]    Script Date: 1/22/2021 8:45:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartDetail](
	[IdCartDetail] [int] IDENTITY(1,1) NOT NULL,
	[IdCart] [int] NULL,
	[IdProduct] [int] NULL,
	[Number] [int] NOT NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_CartDetail] PRIMARY KEY CLUSTERED 
(
	[IdCartDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[image]    Script Date: 1/22/2021 8:45:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[image](
	[name] [nvarchar](500) NULL,
	[photo] [varbinary](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Note]    Script Date: 1/22/2021 8:45:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Note](
	[Id] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](500) NULL,
 CONSTRAINT [PK_Note] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 1/22/2021 8:45:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[IdProduct] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Price] [float] NULL,
	[Description] [nvarchar](max) NULL,
	[MadeOfProduct] [nvarchar](500) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Username], [Password], [IdAccount]) VALUES (N'admin', N'admin', 1)
INSERT [dbo].[Account] ([Username], [Password], [IdAccount]) VALUES (N'dinh', N'dinh', 2)
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([Total], [Status], [IdCart], [IdAccount]) VALUES (319000000, 1, 1, 1)
INSERT [dbo].[Cart] ([Total], [Status], [IdCart], [IdAccount]) VALUES (6000000, 1, 4, 1)
INSERT [dbo].[Cart] ([Total], [Status], [IdCart], [IdAccount]) VALUES (220000000, 1, 5, 1)
INSERT [dbo].[Cart] ([Total], [Status], [IdCart], [IdAccount]) VALUES (0, 0, 6, 1)
INSERT [dbo].[Cart] ([Total], [Status], [IdCart], [IdAccount]) VALUES (6000000, 1, 7, 2)
INSERT [dbo].[Cart] ([Total], [Status], [IdCart], [IdAccount]) VALUES (0, 0, 8, 2)
SET IDENTITY_INSERT [dbo].[Cart] OFF
SET IDENTITY_INSERT [dbo].[CartDetail] ON 

INSERT [dbo].[CartDetail] ([IdCartDetail], [IdCart], [IdProduct], [Number], [Price]) VALUES (1, 1, 1, 4, 24000000)
INSERT [dbo].[CartDetail] ([IdCartDetail], [IdCart], [IdProduct], [Number], [Price]) VALUES (2, 1, 2, 11, 220000000)
INSERT [dbo].[CartDetail] ([IdCartDetail], [IdCart], [IdProduct], [Number], [Price]) VALUES (4, 1, 3, 2, 40000000)
INSERT [dbo].[CartDetail] ([IdCartDetail], [IdCart], [IdProduct], [Number], [Price]) VALUES (5, 1, 4, 5, 95000000)
INSERT [dbo].[CartDetail] ([IdCartDetail], [IdCart], [IdProduct], [Number], [Price]) VALUES (9, 1, 1, 1, 6000000)
INSERT [dbo].[CartDetail] ([IdCartDetail], [IdCart], [IdProduct], [Number], [Price]) VALUES (10, 1, 1, 1, 6000000)
INSERT [dbo].[CartDetail] ([IdCartDetail], [IdCart], [IdProduct], [Number], [Price]) VALUES (11, 1, 1, 1, 6000000)
INSERT [dbo].[CartDetail] ([IdCartDetail], [IdCart], [IdProduct], [Number], [Price]) VALUES (12, 1, 1, 1, 6000000)
INSERT [dbo].[CartDetail] ([IdCartDetail], [IdCart], [IdProduct], [Number], [Price]) VALUES (13, 1, 1, 1, 6000000)
INSERT [dbo].[CartDetail] ([IdCartDetail], [IdCart], [IdProduct], [Number], [Price]) VALUES (14, 1, 1, 1, 6000000)
INSERT [dbo].[CartDetail] ([IdCartDetail], [IdCart], [IdProduct], [Number], [Price]) VALUES (15, 1, 2, 11, 220000000)
INSERT [dbo].[CartDetail] ([IdCartDetail], [IdCart], [IdProduct], [Number], [Price]) VALUES (16, 1, 1, 1, 6000000)
INSERT [dbo].[CartDetail] ([IdCartDetail], [IdCart], [IdProduct], [Number], [Price]) VALUES (17, 1, 1, 1, 6000000)
INSERT [dbo].[CartDetail] ([IdCartDetail], [IdCart], [IdProduct], [Number], [Price]) VALUES (18, 4, 1, 1, 6000000)
INSERT [dbo].[CartDetail] ([IdCartDetail], [IdCart], [IdProduct], [Number], [Price]) VALUES (19, 5, 2, 11, 220000000)
INSERT [dbo].[CartDetail] ([IdCartDetail], [IdCart], [IdProduct], [Number], [Price]) VALUES (20, 6, 2, 1, 20000000)
INSERT [dbo].[CartDetail] ([IdCartDetail], [IdCart], [IdProduct], [Number], [Price]) VALUES (21, 6, 3, 1, 20000000)
INSERT [dbo].[CartDetail] ([IdCartDetail], [IdCart], [IdProduct], [Number], [Price]) VALUES (22, 7, 1, 1, 6000000)
INSERT [dbo].[CartDetail] ([IdCartDetail], [IdCart], [IdProduct], [Number], [Price]) VALUES (23, 8, 2, 1, 20000000)
SET IDENTITY_INSERT [dbo].[CartDetail] OFF
INSERT [dbo].[image] ([name], [photo]) VALUES (N'abc', 0x5B42403365636432336439)
INSERT [dbo].[image] ([name], [photo]) VALUES (N'abc', 0x5B42403365636432336439)
INSERT [dbo].[image] ([name], [photo]) VALUES (N'abc', 0x5B42403536396366633336)
INSERT [dbo].[image] ([name], [photo]) VALUES (N'abc', 0x5B42403536396366633336)
INSERT [dbo].[image] ([name], [photo]) VALUES (N'abc', 0x5B42403536396366633336)
INSERT [dbo].[image] ([name], [photo]) VALUES (N'abc', 0x5B42403333656364613932)
INSERT [dbo].[image] ([name], [photo]) VALUES (N'abc', 0x5B42403333656364613932)
INSERT [dbo].[image] ([name], [photo]) VALUES (N'abc', 0x5B42403333656364613932)
INSERT [dbo].[image] ([name], [photo]) VALUES (N'abc', 0x5B42403536396366633336)
INSERT [dbo].[image] ([name], [photo]) VALUES (N'abc', 0x5B42403365636432336439)
INSERT [dbo].[image] ([name], [photo]) VALUES (N'abc', 0x5B42403365636432336439)
INSERT [dbo].[image] ([name], [photo]) VALUES (N'abc', 0x5B42403763626432313365)
INSERT [dbo].[Note] ([Id], [Name]) VALUES (N'2222', N'abc')
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([IdProduct], [Name], [Price], [Description], [MadeOfProduct]) VALUES (1, N'Nokia X7', 6000000, N'', N'Trung Quốc')
INSERT [dbo].[Product] ([IdProduct], [Name], [Price], [Description], [MadeOfProduct]) VALUES (2, N'SamSung Galaxy S21', 20000000, N'', N'Hàn Quốc')
INSERT [dbo].[Product] ([IdProduct], [Name], [Price], [Description], [MadeOfProduct]) VALUES (3, N'SamSung Galaxy S20+', 20000000, N'', N'Han Quoc')
INSERT [dbo].[Product] ([IdProduct], [Name], [Price], [Description], [MadeOfProduct]) VALUES (4, N'SamSung Galaxy S21 +', 19000000, N'No Descript', N'Han Quoc')
SET IDENTITY_INSERT [dbo].[Product] OFF
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([IdAccount])
REFERENCES [dbo].[Account] ([IdAccount])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[CartDetail]  WITH CHECK ADD  CONSTRAINT [FK_CartDetail_Cart] FOREIGN KEY([IdCart])
REFERENCES [dbo].[Cart] ([IdCart])
GO
ALTER TABLE [dbo].[CartDetail] CHECK CONSTRAINT [FK_CartDetail_Cart]
GO
ALTER TABLE [dbo].[CartDetail]  WITH CHECK ADD  CONSTRAINT [FK_CartDetail_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[CartDetail] CHECK CONSTRAINT [FK_CartDetail_Product]
GO
