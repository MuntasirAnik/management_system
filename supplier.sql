USE [StockManagement]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 24-Oct-19 3:19:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](4) NULL,
	[Name] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 24-Oct-19 3:19:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](4) NULL,
	[Name] [varchar](30) NULL,
	[Address] [varchar](30) NULL,
	[Email] [varchar](30) NULL,
	[Contact] [varchar](12) NULL,
	[LoyaltyPoint] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 24-Oct-19 3:19:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Code] [varchar](4) NULL,
	[Name] [varchar](30) NULL,
	[ReOrderLevel] [int] NULL,
	[Description] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 24-Oct-19 3:19:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](4) NULL,
	[Name] [varchar](30) NULL,
	[Address] [varchar](30) NULL,
	[Email] [varchar](30) NULL,
	[Contact] [varchar](12) NULL,
	[ContactPerson] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([ID], [Code], [Name]) VALUES (1, N'1111', N'ELECTRONICS')
INSERT [dbo].[Categories] ([ID], [Code], [Name]) VALUES (4, N'1112', N'MOBILES')
INSERT [dbo].[Categories] ([ID], [Code], [Name]) VALUES (5, N'1113', N'FABRICS')
INSERT [dbo].[Categories] ([ID], [Code], [Name]) VALUES (6, N'1114', N'POWERTOOLS')
INSERT [dbo].[Categories] ([ID], [Code], [Name]) VALUES (7, N'1115', N'DECORATIONS')
INSERT [dbo].[Categories] ([ID], [Code], [Name]) VALUES (8, N'1116', N'CHEMICALS')
INSERT [dbo].[Categories] ([ID], [Code], [Name]) VALUES (9, N'1117', N'ORGANIC')
INSERT [dbo].[Categories] ([ID], [Code], [Name]) VALUES (10, N'1118', N'BYCYCLES')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([ID], [Code], [Name], [Address], [Email], [Contact], [LoyaltyPoint]) VALUES (1, N'5764', N'RAFIQ ADNAN', N'DHAKA', N'r@gmail.com', N'45634566', 10)
INSERT [dbo].[Customers] ([ID], [Code], [Name], [Address], [Email], [Contact], [LoyaltyPoint]) VALUES (2, N'7888', N'SHAFIQ ADNAN', N'Feni', N'f@mail.com', N'014278479', 0)
INSERT [dbo].[Customers] ([ID], [Code], [Name], [Address], [Email], [Contact], [LoyaltyPoint]) VALUES (3, N'5786', N'TAWFIQ ADNAN', N'Feni', N'fe@mail.com', N'014278475', 0)
INSERT [dbo].[Customers] ([ID], [Code], [Name], [Address], [Email], [Contact], [LoyaltyPoint]) VALUES (4, N'3242', N'FARID SHEIKH', N'Vola', N'qwer@fggdg', N'864841811', 0)
SET IDENTITY_INSERT [dbo].[Customers] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [CategoryID], [Code], [Name], [ReOrderLevel], [Description]) VALUES (1, 4, N'2111', N'NOKIA', 10, N'Model NO. 2000.Ram 4GB,Processor AQUINOX')
INSERT [dbo].[Products] ([ID], [CategoryID], [Code], [Name], [ReOrderLevel], [Description]) VALUES (2, 9, N'2112', N'AXE BODY SPRAY', 10, N'AXE BODY SPRAY.Good Perfume')
INSERT [dbo].[Products] ([ID], [CategoryID], [Code], [Name], [ReOrderLevel], [Description]) VALUES (3, 4, N'2113', N'HUWAEI P20', 10, N'Great Phone.')
INSERT [dbo].[Products] ([ID], [CategoryID], [Code], [Name], [ReOrderLevel], [Description]) VALUES (4, 6, N'2114', N'DRILL', 10, N'Nice')
INSERT [dbo].[Products] ([ID], [CategoryID], [Code], [Name], [ReOrderLevel], [Description]) VALUES (5, 10, N'2115', N'BMX 500', 10, N'Good')
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([ID], [Code], [Name], [Address], [Email], [Contact], [ContactPerson]) VALUES (1, N'5478', N'SYSTECH', N'DHAKA', N'sys@g.com', N'122133411122', N'Sharif')
INSERT [dbo].[Suppliers] ([ID], [Code], [Name], [Address], [Email], [Contact], [ContactPerson]) VALUES (2, N'4666', N'MODERN', N'KHULNA', N'mod@maail.com', N'1258847848', N'Mokles')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [fk_products_category_id] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [fk_products_category_id]
GO
